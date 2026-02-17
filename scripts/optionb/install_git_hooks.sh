#!/usr/bin/env bash
set -euo pipefail

# Install repo-local git hooks (no global changes)
# Sets core.hooksPath to .githooks for THIS repo.
repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"
git config core.hooksPath .githooks
echo "Installed: core.hooksPath=.githooks"
echo "Active hook: .githooks/pre-commit"
