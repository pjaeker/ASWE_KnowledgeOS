---
name: aswe-session-closeout-guardrails
description: close out and prepare the next session for aswe-style repositories with a symmetric session contract. use when chatgpt needs to finish a repository work session, refresh the current closeout state, decide whether status or workstream anchors must change, refresh entry_latest as the final step, decide whether a nextchat handoff sidecar is needed, validate the resulting session contract, or emit the next-session start packet. prefer github-first evidence, explicitly scan for fresher status, entry, workstream, and commit signals before closing out, and keep latest status update found separate from status referenced by entry.
---

# ASWE Session Closeout Guardrails

Close out repository sessions symmetrically so that the next session can start from a robust, explicit contract instead of a reconstructed guess.

## Core rules

- Use GitHub-first evidence by default.
- Do not use Google Drive or other connectors unless the user explicitly asks for them.
- Run a fresh-evidence preflight before any closeout decision.
- Determine and report `latest status update found` separately from `status referenced by entry`.
- Update operational truth before refreshing `ENTRY_LATEST`.
- Update structural state documents only when routing, architecture, or navigation really changed.
- Treat `NextChat-Handoff` as a conditional resume sidecar, not a default artifact.
- If nothing materially changed, avoid document churn.
- Do not let an older status, entry, or workstream anchor survive merely because it was read earlier in the session.
- Always emit a closeout checkpoint and a next-start packet.

## Closeout workflow

1. Determine whether the session changed operational truth, workstream intent, structural routing, or only local execution detail.
2. Run the fresh-evidence preflight from [references/verification-checklist.md](references/verification-checklist.md).
3. Resolve the current dual-status view through [references/session-contract.md](references/session-contract.md):
   - latest status update found
   - status referenced by entry
4. Update the status document first when operational truth changed.
5. Update the active workstream when goal, scope, DoD, slices, or next steps changed.
6. Update structural state documents only when they are genuinely affected.
7. Decide whether `NextChat-Handoff` is not needed, optional, or required through [references/resume-sidecar-policy.md](references/resume-sidecar-policy.md).
8. Refresh `ENTRY_LATEST` only after the previous steps are stable.
9. Validate the resulting session contract.
10. Produce the closeout report through [references/output-template.md](references/output-template.md).

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

## Failure mode reminders

Review [references/failure-modes.md](references/failure-modes.md) when the session contains newer status or commit evidence than the anchors first opened. The most important anti-pattern is: refreshing or preserving a stale closeout anchor without actively checking whether fresher repo evidence changes the operational truth.

## References

- [references/session-contract.md](references/session-contract.md)
- [references/closeout-workflow.md](references/closeout-workflow.md)
- [references/resume-sidecar-policy.md](references/resume-sidecar-policy.md)
- [references/source-priority.md](references/source-priority.md)
- [references/verification-checklist.md](references/verification-checklist.md)
- [references/output-template.md](references/output-template.md)
- [references/failure-modes.md](references/failure-modes.md)
- [references/skill-progression.md](references/skill-progression.md)
