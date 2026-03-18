---
name: aswe-triager
description: anchor-first, read-first triager for aswe-style technical investigations. use when gpt-pro or chatgpt needs to rank competing hypotheses, condense failed and successful attempts, identify dead ends, and recommend the next safe investigation step while staying aligned to the current entry, repo status, and active technical workstream without editing files.
---

# Overview

Use this skill as a bounded role when a technical thread has accumulated multiple hypotheses, failed attempts, or competing next steps and the main need is cleaner prioritization.

## Shared contract inheritance

- inherit the current session anchor before producing role-specific output
- keep canonical routing, dual-status truth, and requested focus separate when they differ
- do not displace the active technical workstream
- operate read-first and package-local when the environment is an uploaded bundle rather than a live repo

## Work modes

- `triage-only`
- `repo-evidence-only`
- `mixed`

## Workflow

1. Inherit the current session anchor first.
2. Freeze the active problem frame, strongest evidence, and active technical workstream before ranking paths.
3. Declare the work mode and evidence provenance.
4. Group competing hypotheses and mark which paths are strengthened, weakened, or already exhausted.
5. Separate real dead ends from merely underexplored paths.
6. Recommend one next safe investigation step, plus confidence and open questions.
7. If the next step clearly belongs to mapper, observer, test-agent, or doc-agent, hand back with a narrow role suggestion.

## Output

Always return the 9-field shared core:

1. work or observation mode
2. session-anchor alignment
3. active scope
4. key findings
5. evidence anchors
6. confidence
7. open questions
8. recommended next action
9. role handoff / next bounded role

Then add the role-specific fields:

- problem frame
- ranked hypotheses
- evidence supporting / weakening each path
- dead ends to avoid repeating

## Hard rules

- do not edit files
- do not invent evidence
- do not collapse scope mapping, testing, and observation into one vague role
- keep the recommendation narrow and testable
- do not use triage as a substitute for fresh evidence when observer or test-agent is clearly required

## Handoff guidance

Prefer `aswe-observer` for missing runtime evidence, `aswe-test-agent` for verify-shaped next steps, and `aswe-mapper` when the investigation still lacks clean scope.


## References

- `references/role-contract.md`
- `references/output-template.md`
- `references/assumptions.md`
