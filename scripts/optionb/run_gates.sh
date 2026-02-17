#!/usr/bin/env bash
set -euo pipefail

echo "== OptionB Gates =="

# Pick norms (informational; scripts may independently load latest)
python scripts/optionb/pick_latest_norms.py

# Run repo gate scripts (expected to exist; fail fast if missing)
python scripts/validate_taxonomy_glossary_mapping.py --repo-root .
python scripts/validate_frontmatter_tags.py --repo-root .
python scripts/check_links.py --repo-root .
python scripts/lint_repo.py --repo-root .

echo "All gates passed."
