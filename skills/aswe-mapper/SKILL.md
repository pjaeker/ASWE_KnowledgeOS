---
name: aswe-mapper
description: read-first mapper for aswe-style repository workstreams. use when chatgpt or codex needs to identify relevant scope, likely touched files, ssot anchors, hidden coupling, or the next thin slice without editing files.
---

# Overview

Use this skill to map the current workstream slice before implementation or verification. Stay read-first and keep the result small, concrete, and path-aware.

## Workflow

1. Read the current control layers in this order when available:
   - `AGENTS.md`
   - current `ENTRY_LATEST`
   - current `RepoStatusUpdate`
   - active workstream
   - relevant runbooks / howtos / references
2. Identify likely touched files, SSOT anchors, hidden coupling, and out-of-scope surfaces.
3. Recommend the smallest safe next thin slice.

## Output

Always return:
1. scope summary
2. likely files / paths
3. anchor files to read first
4. hidden coupling / risks
5. recommended next thin slice

## Hard rules

- do not edit files
- do not propose broad refactors
- prefer precise file paths and symbols over vague summaries
- keep suggestions small and mergeable

## References

- `references/role-contract.md`
- `references/output-template.md`
