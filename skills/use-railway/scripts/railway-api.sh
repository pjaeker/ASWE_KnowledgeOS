#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "usage: railway-api.sh '<graphql query>' '{\"key\":\"value\"}'" >&2
  exit 1
fi

QUERY="$1"
VARIABLES="${2:-{}}"
ENDPOINT="${RAILWAY_GRAPHQL_ENDPOINT:-https://backboard.railway.com/graphql/v2}"
TOKEN="${RAILWAY_TOKEN:-${RAILWAY_API_TOKEN:-}}"

if [ -z "$TOKEN" ]; then
  echo "set RAILWAY_TOKEN or RAILWAY_API_TOKEN first" >&2
  exit 1
fi

if command -v python3 >/dev/null 2>&1; then
  PAYLOAD="$(python3 - <<'PY' "$QUERY" "$VARIABLES"
import json, sys
query = sys.argv[1]
variables_text = sys.argv[2]
try:
    variables = json.loads(variables_text)
except json.JSONDecodeError as e:
    raise SystemExit(f"variables must be valid json: {e}")
print(json.dumps({"query": query, "variables": variables}))
PY
)"
else
  echo "python3 is required to encode the request payload safely" >&2
  exit 1
fi

curl -sS "$ENDPOINT" \
  -H "Authorization: Bearer $TOKEN" \
  -H 'Content-Type: application/json' \
  --data "$PAYLOAD"
