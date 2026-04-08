---
name: aswe-session-closeout-guardrails
description: close out and prepare the next session for aswe-style repositories with a symmetric session contract. use when chatgpt or codex needs to finish a repository work session, refresh the current closeout state, decide whether status, workstream, structural reference, protocol, codex-app operating guidance, entry, or handoff anchors must change, assemble the decided file set as one package, optionally materialize that package to a GitHub branch, and emit the next-session start packet without opening a pull request unless the user explicitly requests one.
---

# ASWE Session Closeout Guardrails

Close out repository sessions symmetrically so that the next session starts from an explicit contract instead of a reconstructed guess.

## Core rules

- Use GitHub-first evidence by default.
- Run a fresh-evidence preflight before any closeout decision.
- Determine and report `latest status update found` separately from `status referenced by entry`.
- Update operational truth before refreshing `ENTRY_LATEST`.
- Treat `NextChat-Handoff` as conditional, not default.
- Keep the main agent as the only closeout writer.
- Decide closeout by artifact family, not by isolated file.
- When multiple files must change, assemble the full decided file set first and materialize it as one package.
- Do not open a PR unless the user explicitly requests PR creation.
- If GitHub write capability is uncertain, inspect the available GitHub actions first and choose a backend that supports package-first materialization. Do not fall back to per-file commits as a default.

## Required workflow

1. Determine whether the session changed operational truth, workstream intent, structural routing, Codex-App operating guidance, or only local execution detail.
2. Run the fresh-evidence preflight from [references/verification-checklist.md](references/verification-checklist.md).
3. Resolve the dual-status view through [references/session-contract.md](references/session-contract.md).
4. Decide all relevant artifact families using [references/artifact-families.md](references/artifact-families.md).
5. Apply the bounded closeout flow from [references/closeout-workflow.md](references/closeout-workflow.md).
6. If the result is planning-only, emit the checkpoint, writingslice, and next-start packet.
7. If the result is branch materialization, use the mode rules in [references/materialization-modes.md](references/materialization-modes.md) and materialize the full file package in one commit.
8. Emit the final next-start packet against the resulting artifact state or branch state.

## Hard rules

- Do not collapse dual-status reporting into one field.
- Do not refresh `ENTRY_LATEST` before upstream artifact decisions are complete.
- Do not default to patch-spec generation when direct branch materialization is available.
- Do not default to PR creation.
- Do not mix bounded-role recommendation logic into the materialization decision unless the next slice truly needs it.

## References

- [references/session-contract.md](references/session-contract.md)
- [references/verification-checklist.md](references/verification-checklist.md)
- [references/artifact-families.md](references/artifact-families.md)
- [references/closeout-workflow.md](references/closeout-workflow.md)
- [references/materialization-modes.md](references/materialization-modes.md)
- [references/output-template.md](references/output-template.md)
- [references/skill-progression.md](references/skill-progression.md)
