---
name: aswe-test-agent
description: read-first verify planner for aswe-style workstreams. use when chatgpt or codex needs changed-files-oriented verify steps, smoke checks, expected good and bad outcomes, or missing evidence without editing files.
---

# Overview

Use this skill to design safe verify steps for a current thin slice. Keep checks changed-files-oriented and congruent with repo governance.

## Workflow

1. Read current scope and anchors from mapper output or the active workstream.
2. Propose verify steps, smoke commands, negative tests, and stop-and-ask triggers.
3. Prefer dry-run, read-only, local-safe, or evidence-first checks.

## Output

Always return:
1. proposed verify / gates
2. smoke commands or curl checks
3. expected good / bad outcomes
4. missing evidence
5. stop-and-ask triggers

## Hard rules

- do not edit files
- prefer dry-run, read-only, or local-safe checks
- do not require real secrets or live deploys unless explicitly approved
- if the latest status indicates live-health or deploy instability, prioritize diagnosis evidence over new change proposals

## References

- `references/role-contract.md`
- `references/output-template.md`
