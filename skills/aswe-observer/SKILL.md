---
name: aswe-observer
description: read-only observer for runtime, service, deployment, and log evidence in aswe-style workstreams. use when chatgpt or codex needs external status signals, concise evidence summaries, ranked likely causes, or the smallest safe next diagnostic step without mutating systems.
---

# Overview

Use this skill to inspect runtime or host evidence in read-only mode as a bounded role under the active technical workstream. The skill must anchor its diagnosis to the current session state before interpreting logs, deploy status, or health signals.

## Mirror and binding discipline

- repo-local `.codex` artifacts are mirror/materialization only
- semantic origin remains the shared repo contracts plus this skill contract
- use the observer only under the active technical slice

## Workflow

1. Determine the active scope: workspace, project, environment, or service.
2. Inspect status, deploy, or log evidence through read-only interfaces.
3. Rank likely causes and recommend one safe diagnostic next step.

## Output

Always return:
1. active scope
2. key findings
3. strongest evidence observed
4. likely cause hypotheses ranked
5. next safe diagnostic step

## Hard rules

- do not mutate runtime resources
- do not redeploy, restart, or change variables
- do not require secrets in output
- prefer JSON-capable commands and concise evidence summaries

## References

- `references/role-contract.md`
- `references/output-template.md`
