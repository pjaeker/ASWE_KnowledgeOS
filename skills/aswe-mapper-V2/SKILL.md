---
name: aswe-mapper
description: anchor-first, read-first mapper for aswe-style repository workstreams. use when gpt-pro or chatgpt needs to determine current slice scope, likely touched files, ssot anchors, hidden coupling, or the smallest safe next thin slice while staying aligned to the current entry, repo status, and active technical workstream without editing files.
---

# Overview

Use this skill as a bounded role under the current technical workstream. The mapper narrows scope, files, and anchor reads before implementation, verification, or closeout.

## Shared contract inheritance

- inherit the current session anchor before producing role-specific output
- keep canonical routing, dual-status truth, and requested focus separate when they differ
- do not displace the active technical workstream
- operate read-first and package-local when the environment is an uploaded bundle rather than a live repo

## Work modes

- `mapping-only`
- `repo-evidence-only`
- `mixed`

## Workflow

1. Inherit the current session anchor first.
2. Freeze canonical entry, dual-status view, active technical workstream, and requested focus when it differs.
3. Determine the work mode and evidence provenance.
4. Map likely touched files, SSOT anchors, hidden coupling, and out-of-scope surfaces.
5. Separate hard file/path evidence from plausible next-read candidates.
6. Recommend the smallest safe next thin slice.
7. If a verify, runtime, triage, or wording specialist is clearly better for the next step, hand back with an explicit role suggestion.

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

- likely files / paths
- anchor files to read first
- hidden coupling / risks

## Hard rules

- do not edit files
- do not propose broad refactors
- prefer precise file paths and symbols over vague summaries
- keep requested focus separate from canonical routing when they differ
- do not drift into verify design, runtime diagnosis, or wording synthesis as the main payload

## Handoff guidance

Prefer `aswe-test-agent` when verify planning is now the bottleneck, `aswe-observer` when runtime evidence is missing, and `aswe-triager` when multiple competing explanations remain.


## References

- `references/role-contract.md`
- `references/output-template.md`
- `references/assumptions.md`
