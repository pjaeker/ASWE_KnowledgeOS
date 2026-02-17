#!/usr/bin/env bash
set -euo pipefail

# OptionB Security Incremental Scan (fast)
#
# Scopes:
#   staged    -> git index (ready-to-commit)
#   worktree  -> modified tracked files (not staged)
#   new       -> untracked files
#   changed   -> staged + worktree + new
#   all       -> delegates to scan_all.sh
#
# Usage examples:
#   bash scripts/optionb/scan_incremental.sh --scope changed
#   bash scripts/optionb/scan_incremental.sh --scope staged
#
# Controls:
#   OPTIONB_SCAN_STRICT=1|0     (default 1) missing tools => fail or skip
#   OPTIONB_SCAN_TRIVY=1|0      (default 0) include trivy fs (slow)
#   OPTIONB_SCAN_OSV=1|0        (default 1) include osv-scanner when dep files touched
#   OPTIONB_SCAN_GITLEAKS=1|0   (default 1) include gitleaks on touched files
#   OPTIONB_DRY_RUN=1|0         (default 0) print actions only
#
STRICT="${OPTIONB_SCAN_STRICT:-1}"
DO_TRIVY="${OPTIONB_SCAN_TRIVY:-0}"
DO_OSV="${OPTIONB_SCAN_OSV:-1}"
DO_GITLEAKS="${OPTIONB_SCAN_GITLEAKS:-1}"
DRY="${OPTIONB_DRY_RUN:-0}"

SCOPE="changed"
if [ "${1:-}" = "--scope" ]; then
  SCOPE="${2:-changed}"
fi

say() { echo -e "\n== $* =="; }
have() { command -v "$1" >/dev/null 2>&1; }

need_tool() {
  local t="$1"
  if have "$t"; then return 0; fi
  if [ "$STRICT" = "1" ]; then
    echo "MISSING tool: $t"
    echo "Hint (Windows): scripts/optionb/install_security_tools_windows.ps1"
    exit 2
  else
    echo "WARN: missing tool: $t (skipped)"
    return 1
  fi
}

run() {
  if [ "$DRY" = "1" ]; then
    echo "+ $*"
    return 0
  fi
  "$@"
}

repo_root="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$repo_root" ]; then
  echo "ERROR: not inside a git repo."
  exit 1
fi
cd "$repo_root"

collect_files() {
  local scope="$1"
  case "$scope" in
    staged)
      git diff --cached --name-only --diff-filter=ACMR
      ;;
    worktree)
      git diff --name-only --diff-filter=ACMR
      ;;
    new)
      git ls-files --others --exclude-standard
      ;;
    changed)
      { git diff --cached --name-only --diff-filter=ACMR
        git diff --name-only --diff-filter=ACMR
        git ls-files --others --exclude-standard
      } | awk 'NF' | sort -u
      ;;
    all)
      echo "__ALL__"
      ;;
    *)
      echo "ERROR: unknown scope '$scope'"
      exit 1
      ;;
  esac
}

FILES="$(collect_files "$SCOPE")"

if echo "$FILES" | grep -qx "__ALL__"; then
  say "Delegating to full scan"
  run bash scripts/optionb/scan_all.sh
  exit 0
fi

if [ -z "${FILES// /}" ]; then
  say "No files in scope ($SCOPE). Nothing to scan."
  exit 0
fi

# 0) Preflight + repo gates (fast, deterministic)
say "Preflight"
run bash scripts/optionb/preflight.sh

say "Repo Gates"
run bash scripts/optionb/run_gates.sh

# Create a temp dir containing only touched files (for gitleaks dir scan)
TMPDIR="$(mktemp -d 2>/dev/null || mktemp -d -t optionbscan)"
cleanup() { rm -rf "$TMPDIR"; }
trap cleanup EXIT

# Copy files that exist (skip deletions)
while IFS= read -r f; do
  [ -z "$f" ] && continue
  if [ -f "$f" ]; then
    mkdir -p "$TMPDIR/$(dirname "$f")"
    cp "$f" "$TMPDIR/$f"
  fi
done <<< "$FILES"

# 1) Secrets: gitleaks on touched files only
if [ "$DO_GITLEAKS" = "1" ]; then
  say "Secret Scan (gitleaks) on touched files"
  if need_tool gitleaks; then
    run gitleaks dir "$TMPDIR" --no-banner --verbose
  fi
fi

# 2) Shell scripts: shellcheck only on touched *.sh
say "ShellCheck (touched *.sh)"
if need_tool shellcheck; then
  SHS="$(echo "$FILES" | awk '/\.sh$/ {print}')" || true
  if [ -n "$SHS" ]; then
    while IFS= read -r s; do
      [ -f "$s" ] && run shellcheck "$s"
    done <<< "$SHS"
  else
    echo "No .sh files touched."
  fi
fi

# 3) Python: bandit only on touched *.py
say "Bandit (touched *.py)"
if need_tool bandit; then
  PYS="$(echo "$FILES" | awk '/\.py$/ {print}')" || true
  if [ -n "$PYS" ]; then
    # bandit wants paths; run per file for clear mapping
    while IFS= read -r p; do
      [ -f "$p" ] && run bandit -q "$p"
    done <<< "$PYS"
  else
    echo "No .py files touched."
  fi
fi

# 4) Dependency scan (OSV) only if relevant manifests/lockfiles touched
if [ "$DO_OSV" = "1" ]; then
  say "Dependency Scan (osv-scanner) when dep files touched"
  DEP_HIT="$(echo "$FILES" | awk '
    /package-lock\.json$/ ||
    /pnpm-lock\.yaml$/ ||
    /yarn\.lock$/ ||
    /package\.json$/ ||
    /requirements.*\.txt$/ ||
    /poetry\.lock$/ ||
    /pyproject\.toml$/ ||
    /go\.mod$/ ||
    /pom\.xml$/ {print; exit 0}
  ')" || true
  if [ -n "$DEP_HIT" ]; then
    if need_tool osv-scanner; then
      run osv-scanner scan --recursive .
    fi
  else
    echo "No dependency manifests/lockfiles touched (skipped OSV)."
  fi
fi

# 5) Optional: Trivy (slow) – only when explicitly enabled
if [ "$DO_TRIVY" = "1" ]; then
  say "Filesystem Scan (trivy)"
  if need_tool trivy; then
    run trivy fs .
  fi
else
  echo "Trivy disabled by default for incremental scans. Enable via OPTIONB_SCAN_TRIVY=1."
fi

say "DONE: Incremental scan passed (scope=$SCOPE)"
