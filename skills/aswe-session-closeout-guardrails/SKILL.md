---
name: aswe-session-closeout-guardrails
description: close out and prepare the next session for aswe-style repositories with a symmetric session contract. use when chatgpt needs to finish a work session, update status and workstream anchors, decide whether structural state documents must change, refresh entry_latest as the final step, decide whether a nextchat handoff sidecar is needed, validate the resulting session contract, or emit the next-session start packet. prefer github-native evidence by default and keep handoff documents conditional, not mandatory.
---

# ASWE Session Closeout Guardrails

Close out repository sessions symmetrically so that the next session can start from a robust, explicit contract instead of a reconstructed guess.

## Core rules

- Use GitHub-first evidence by default.
- Do not use Google Drive or other connectors unless the user explicitly asks for them.
- Update operational truth before refreshing `ENTRY_LATEST`.
- Update structural state documents only when routing, architecture, or navigation really changed.
- Treat `NextChat-Handoff` as a conditional resume sidecar, not a default artifact.
- If nothing materially changed, avoid document churn.
- Always emit a closeout checkpoint and a next-start packet.

## Closeout workflow

1. Determine whether the session changed operational truth, workstream intent, structural routing, or only local execution detail.
2. Update the status document first when operational truth changed.
3. Update the active workstream when goal, scope, DoD, slices, or next steps changed.
4. Update structural state documents only when they are genuinely affected.
5. Decide whether `NextChat-Handoff` is not needed, optional, or required.
6. Refresh `ENTRY_LATEST` only after the previous steps are stable.
7. Validate the resulting session contract.
8. Produce the closeout report through [references/output-template.md](references/output-template.md).

## Required outputs

Always report:

- canonical entry after closeout
- latest status update found
- status referenced by entry
- active workstream
- handoff status
- additional anchors
- contract status
- next recommended starting focus

## References

- [references/session-contract.md](references/session-contract.md)
- [references/closeout-workflow.md](references/closeout-workflow.md)
- [references/resume-sidecar-policy.md](references/resume-sidecar-policy.md)
- [references/source-priority.md](references/source-priority.md)
- [references/verification-checklist.md](references/verification-checklist.md)
- [references/output-template.md](references/output-template.md)
- [references/failure-modes.md](references/failure-modes.md)
- [references/skill-progression.md](references/skill-progression.md)
