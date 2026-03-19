---
name: aswe-triager
description: read-first triager for aswe-style technical investigations. use when chatgpt or codex needs to rank competing hypotheses, condense failed and successful attempts, identify dead ends, and recommend the next safe investigation step without editing files.
---

# Overview

Use this skill when a technical thread has accumulated multiple hypotheses, failed attempts, or competing next steps. The skill orders the investigation space and prevents repeated dead ends.

## Mirror and binding discipline

- repo-local `.codex` artifacts are mirror/materialization only
- semantic origin remains the shared repo contracts plus this skill contract
- use the triager only under the active technical slice

## Workflow

1. Read the current problem frame and the strongest evidence from mapper, test, and observer outputs.
2. Group competing hypotheses and note which paths were already weakened or disproven.
3. Recommend one safe next investigation step.

## Output

Always return:
1. problem frame
2. ranked hypotheses
3. evidence supporting / weakening each path
4. dead ends to avoid repeating
5. recommended next investigation step

## Shared contract inheritance

- inherit the current session anchor before producing role-specific output
- keep canonical routing, dual-status truth, and requested focus separate when they differ
- do not displace the active technical workstream
- treat repo-local `.codex` artifacts as mirror/materialization, not as semantic origin
- operate read-first and package-local when the environment is an uploaded bundle rather than a live repo

## Hard rules

- do not edit files
- do not invent evidence
- do not collapse scope mapping, testing, and observation into one vague role
- keep the recommendation narrow and testable
- do not use triage as a substitute for fresh evidence when observer or test-agent is clearly required
- do not spawn outside the active technical slice

## Materialization status

- repo-local `.codex` mirror for triage may exist
- triager is therefore `materialized`
- spawn-readiness remains `conditional`, not default

## References

- `references/role-contract.md`
- `references/output-template.md`
- `references/assumptions.md`
