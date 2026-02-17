#!/usr/bin/env bash
set -euo pipefail

echo "== OptionB Preflight =="

need() {
  local cmd="$1"
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "MISSING: $cmd"
    return 1
  fi
  echo "OK: $cmd -> $(command -v "$cmd")"
}

need git
need python
need node
need npm

if command -v gh >/dev/null 2>&1; then
  echo "OK: gh -> $(command -v gh)"
else
  echo "INFO: gh (GitHub CLI) nicht gefunden (optional)."
fi

echo "Repo root: $(git rev-parse --show-toplevel)"
echo "Branch: $(git rev-parse --abbrev-ref HEAD)"
echo "Preflight OK."
