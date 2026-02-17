#!/usr/bin/env bash
set -euo pipefail

echo "== OptionB Local Bootstrap =="

# 1) Preflight
bash scripts/optionb/preflight.sh

# 2) Gates first (fast feedback)
bash scripts/optionb/run_gates.sh

# 3) Portal install + dev
if [ ! -d "apps/portal" ]; then
  echo "ERROR: apps/portal fehlt. Bitte Package P2 einspielen."
  exit 3
fi

cd apps/portal

if [ -f package-lock.json ]; then
  npm ci
else
  npm i
fi

if [ ! -f .env.local ] && [ -f .env.example ]; then
  cp .env.example .env.local
  echo "INFO: .env.local erstellt (bitte OPENAI_API_KEY setzen)."
fi

echo "Starting dev server..."
npm run dev
