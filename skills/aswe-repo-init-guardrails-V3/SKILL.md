---
name: aswe-repo-init-guardrails
description: initialize and protect sessions for aswe-style repositories with a symmetric session contract. use when gpt-pro or chatgpt needs to bootstrap, verify, or refresh current repository state; resolve a canonical entry point; separate latest status update found from the status referenced by entry; determine the active technical workstream and any requested-focus anchor; decide whether a nextchat handoff sidecar is relevant; emit a guarded session checkpoint; or recommend a bounded role for the next slice without drifting off the active technical focus.
---

# ASWE Repo Session Guardrails

Initialize repository sessions robustly and prevent drift onto older or weaker states. Use GitHub-first evidence, resolve entry points through parallel candidates rather than naive filename matching, and report the current session through the symmetric session contract.

## Core rules

- Use GitHub-first evidence by default.
- Treat GitHub App or connector access as valid even without a visible `@GitHub` mention.
- Use public GitHub web only as a repo-near fallback when the repository is public and GitHub-primary verification is incomplete or ambiguous.
- Do not use Google Drive or other connectors unless the user explicitly asks for them.
- Do not treat a single filename match such as `ENTRY_LATEST` as sufficient proof of the current canonical entry point.
- Do not assume `Latest Status Update Found` is identical to `Status Referenced by Entry`.
- If the user explicitly names a workstream, document, or document family, run a same-pattern freshness challenge for that named family and keep the freshest verified requested-focus anchor separate from canonical repo routing when they differ.
- Resolve and output the full session contract:
  - canonical entry
  - latest status update found
  - status referenced by entry
  - active workstream
  - handoff status
  - additional anchors
- Treat `NextChat-Handoff` as a conditional resume sidecar, not as a mandatory initialization artifact.
- Do not output `Confidence: hoch` unless both entry freshness and latest-status freshness are complete and no plausible fresher same-pattern candidate remains unresolved.
- If a fresher entry or status candidate cannot be ruled out, downgrade confidence, name the blocker, and avoid forcing a single definitive state.
- When recommending a bounded role after initialization, keep the main technical focus fixed and justify why the role adds value now.

## Workflow decision tree

1. Determine whether the user asks to initialize, verify, or refresh repository session state.
2. If the user explicitly names an anchor, treat it as an initial candidate, then verify whether fresher GitHub-primary evidence contradicts it. If the user names a workstream or document family, run a same-pattern sibling sweep for that family before finalizing the session focus.
3. Resolve the canonical entry through [references/entry-resolution.md](references/entry-resolution.md).
4. Resolve the latest status update separately using [references/session-contract.md](references/session-contract.md).
5. Reconcile entry, latest status, workstream, and handoff status through the symmetric session contract.
6. Run the operational checks in [references/verification-checklist.md](references/verification-checklist.md).
7. Produce the checkpoint via [references/output-template.md](references/output-template.md).
8. Recommend a bounded role only when a clear technical need exists and the role will not duplicate the main writer.

## References

- [references/session-contract.md](references/session-contract.md)
- [references/entry-resolution.md](references/entry-resolution.md)
- [references/github-patterns.md](references/github-patterns.md)
- [references/resume-sidecar-policy.md](references/resume-sidecar-policy.md)
- [references/output-template.md](references/output-template.md)
- [references/source-priority.md](references/source-priority.md)
- [references/verification-checklist.md](references/verification-checklist.md)
- [references/failure-modes.md](references/failure-modes.md)
- [references/skill-progression.md](references/skill-progression.md)
