---
name: aswe-session-closeout-guardrails
description: close out and prepare the next session for aswe-style repositories with a symmetric session contract. use when gpt-pro or chatgpt needs to finish a repository work session, refresh the current closeout state, decide whether status or workstream anchors must change, produce a concrete closeout writing slice, refresh entry_latest as the final step, decide whether a nextchat handoff sidecar is needed, validate the resulting session contract, or emit the next-session start packet while keeping bounded-role recommendations evidence-based and aligned to the active technical focus.
---

# ASWE Session Closeout Guardrails

Close out repository sessions symmetrically so that the next session can start from a robust, explicit contract instead of a reconstructed guess.

## Core rules

- Use GitHub-first evidence by default.
- Do not use Google Drive or other connectors unless the user explicitly asks for them.
- Run a fresh-evidence preflight before any closeout decision.
- Determine and report `latest status update found` separately from `status referenced by entry`.
- Do not stop at a narrative checkpoint when the session changed operational truth, workstream intent, or structural operating guidance.
- After the checkpoint, run an explicit closeout writingslice decision for status, workstream, structural docs, entry, and handoff.
- Update operational truth before refreshing `ENTRY_LATEST`.
- Update structural state documents only when routing, architecture, or navigation really changed.
- Treat `NextChat-Handoff` as a conditional resume sidecar, not a default artifact.
- If nothing materially changed, avoid document churn, but still report each artifact class as `no-change` explicitly.
- Do not let an older status, entry, or workstream anchor survive merely because it was read earlier in the session.
- Recommend bounded roles for the next slice only when a clear technical slice exists, the role adds value, and the recommendation does not create a second writer path.
- Keep GPT-Pro as the main orchestrator; bounded roles are optional helpers, not alternate closeout writers.

## Closeout workflow

1. Determine whether the session changed operational truth, workstream intent, structural routing, or only local execution detail.
2. Run the fresh-evidence preflight from [references/verification-checklist.md](references/verification-checklist.md).
3. Resolve the current dual-status view through [references/session-contract.md](references/session-contract.md).
4. Emit the closeout checkpoint.
5. Run the closeout writingslice decision from [references/closeout-workflow.md](references/closeout-workflow.md).
6. Update the status document first when operational truth changed.
7. Update the active workstream when goal, scope, DoD, slices, or next steps changed.
8. Update structural state documents only when they are genuinely affected.
9. Decide whether `NextChat-Handoff` is `not-needed`, `optional-available`, or `required-and-used`.
10. Refresh `ENTRY_LATEST` only after the previous steps are stable.
11. Decide whether the final closeout should include `Recommended bounded roles for next slice`.
12. Produce the final closeout report through [references/output-template.md](references/output-template.md).

## References

- [references/session-contract.md](references/session-contract.md)
- [references/closeout-workflow.md](references/closeout-workflow.md)
- [references/resume-sidecar-policy.md](references/resume-sidecar-policy.md)
- [references/source-priority.md](references/source-priority.md)
- [references/verification-checklist.md](references/verification-checklist.md)
- [references/output-template.md](references/output-template.md)
- [references/failure-modes.md](references/failure-modes.md)
- [references/skill-progression.md](references/skill-progression.md)
