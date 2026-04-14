#!/usr/bin/env bash
set -euo pipefail
ROOT="${1:-.}"
BASE="$ROOT/.codex-local/aswe-runtime/architecture-evolution"
mkdir -p \
  "$BASE/ledger/history" \
  "$BASE/handoff/evidence-to-umbrella" \
  "$BASE/handoff/semantic-to-umbrella" \
  "$BASE/gates/G0" \
  "$BASE/gates/G1" \
  "$BASE/gates/G2" \
  "$BASE/gates/G3" \
  "$BASE/queue/trigger" \
  "$BASE/queue/review" \
  "$BASE/queue/automation" \
  "$BASE/dead-ends" \
  "$BASE/runs/automation" \
  "$BASE/runs/thread" \
  "$BASE/payloads/evidence" \
  "$BASE/payloads/semantic" \
  "$BASE/payloads/architecture-review" \
  "$BASE/resume"
: > "$BASE/ledger/current.md"
: > "$BASE/dead-ends/register.md"
: > "$BASE/resume/current.md"
echo "[OK] bootstrapped $BASE"
