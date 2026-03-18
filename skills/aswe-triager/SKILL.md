---
name: aswe-triager
description: read-first triager for aswe-style technical investigations. use when chatgpt or codex needs to rank competing hypotheses, condense failed and successful attempts, identify dead ends, and recommend the next safe investigation step without editing files.
---

# Overview

Use this skill when a technical thread has accumulated multiple hypotheses, failed attempts, or competing next steps. The skill orders the investigation space and prevents repeated dead ends.

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

## Hard rules

- do not edit files
- do not invent evidence
- do not collapse scope mapping, testing, and observation into one vague role
- keep the recommendation narrow and testable

## References

- `references/role-contract.md`
- `references/output-template.md`
- `references/assumptions.md`
