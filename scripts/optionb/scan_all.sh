#!/usr/bin/env bash
set -euo pipefail

# OptionB Security "Scan All" (local-first)
# Strict mode: missing tools cause failure (default). Disable via: OPTIONB_SCAN_STRICT=0
STRICT="${OPTIONB_SCAN_STRICT:-1}"

say() { echo -e "\n== $* =="; }
have() { command -v "$1" >/dev/null 2>&1; }

need_tool() {
  local t="$1"
  if have "$t"; then return 0; fi
  if [ "$STRICT" = "1" ]; then
    echo "MISSING tool: $t"
    echo "Hint (Windows): run scripts/optionb/install_security_tools_windows.ps1"
    exit 2
  else
    echo "WARN: missing tool: $t (skipped)"
    return 1
  fi
}

say "Preflight"
bash scripts/optionb/preflight.sh

say "Repo Gates"
bash scripts/optionb/run_gates.sh

say "Secret Scan (gitleaks)"
if need_tool gitleaks; then
  gitleaks detect --source . --no-git --verbose
fi

say "Dependency Scan (osv-scanner)"
if need_tool osv-scanner; then
  osv-scanner scan --recursive .
fi

say "Filesystem Scan (trivy)"
if need_tool trivy; then
  trivy fs .
fi

if [ -d "apps/portal" ]; then
  say "npm audit (apps/portal)"
  if need_tool npm; then
    (cd apps/portal && npm audit --audit-level=high) || {
      echo "npm audit found issues (audit-level=high)."
      exit 3
    }
  fi
fi

say "pip-audit (if requirements*.txt exist)"
if ls requirements*.txt >/dev/null 2>&1; then
  if need_tool pip-audit; then
    for f in requirements*.txt; do
      echo "Scanning $f"
      pip-audit -r "$f"
    done
  fi
else
  echo "No requirements*.txt found (skipped)."
fi

say "DONE: Scan All passed"
