---
name: aswe-test-agent
description: read-first verify planner for aswe-style workstreams. use when chatgpt or codex needs changed-files-oriented verify steps, smoke checks, expected good and bad outcomes, or missing evidence without editing files.
---

# Overview

Use this skill as a bounded role under the current technical workstream when the next decision depends on safer verification, smoke design, or missing evidence capture.

## Mirror and binding discipline

- repo-local `.codex` artifacts are mirror/materialization only
- semantic origin remains the shared repo contracts plus this skill contract
- use the test-agent only under the active technical slice

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
