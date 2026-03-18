---
name: aswe-repo-init-guardrails
description: initialize and protect sessions for aswe-style repositories with a symmetric session contract. use when chatgpt needs to bootstrap, verify, or refresh the current repository state; resolve a canonical entry point; identify the latest status update separately from the status referenced by entry; determine the active workstream; handle a user-named workstream or document family without drifting onto stale sibling versions; decide whether a nextchat handoff sidecar is relevant; produce a guarded session checkpoint; or prevent state regression. prefer github-native evidence by default, keep handoff documents conditional, and keep explicit user focus separate from canonical repo routing when they differ.
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

## Workflow decision tree

1. Determine whether the user asks to initialize, verify, or refresh repository session state.
2. If the user explicitly names an anchor, treat it as an initial candidate, then verify whether fresher GitHub-primary evidence contradicts it. If the user names a workstream or document family, run a same-pattern sibling sweep for that family before finalizing the session focus.
3. Resolve the canonical entry through [references/entry-resolution.md](references/entry-resolution.md).
4. Resolve the latest status update separately using [references/session-contract.md](references/session-contract.md).
5. Reconcile entry, latest status, workstream, and handoff status through the symmetric session contract.
6. Run the operational checks in [references/verification-checklist.md](references/verification-checklist.md).
7. Produce the checkpoint via [references/output-template.md](references/output-template.md).

## Session initialization workflow

### 1. Restrict sources

Use only GitHub-related evidence by default:

- repository files or code
- commits
- pull requests
- issues
- GitHub App or connector access
- public GitHub web only as a repo-near fallback when the repository is public and this helps verify repo state

### 2. Resolve the canonical entry point

Use [references/entry-resolution.md](references/entry-resolution.md).

In short:

- build entry, status, workstream, commit, handoff, and reference candidates in parallel
- compare candidates rather than stopping at the first match
- run a freshness challenge against sibling entry candidates and recent entry-path activity before finalizing
- keep a ranked candidate set instead of forcing false certainty when the result remains ambiguous

### 3. Resolve the latest status update separately

Use [references/session-contract.md](references/session-contract.md).

Always answer these two questions separately:

- Which status document does the canonical entry point reference?
- Which status document is the latest robust status update currently found?

If the latest status update is newer but explicitly continues the current entry anchor, report both without forcing a contradiction.

### 4. Evaluate the resume sidecar

Use [references/resume-sidecar-policy.md](references/resume-sidecar-policy.md).

Determine whether `NextChat-Handoff` is:

- `not-needed`
- `optional-available`
- `required-and-used`

Do not read or privilege a handoff file unless the session really needs resume-sidecar detail.

### 5. Pin the active anchors

After enough evidence exists, pin these anchors explicitly:

- canonical entry point or ranked entry candidates
- latest status update found
- status referenced by entry
- active workstream
- requested-focus anchor under additional anchors when the user explicitly named one and it differs from canonical routing
- handoff status
- additional state anchors referenced by current artifacts
- already confirmed hard facts from the current session

### 6. Apply source priority and regression protection

Use [references/source-priority.md](references/source-priority.md).

Regression protection must not be used to ignore fresher GitHub-primary evidence of the same artifact class.

### 7. Produce the checkpoint

Use [references/output-template.md](references/output-template.md).

Always separate:

- hard confirmed facts
- plausible candidates
- provisional inferences
- blockers or uncertainty

Include a short freshness statement for entry, latest status, and handoff usage.

### 8. Recommend the next work focus

Base the recommendation on the active anchors and hard confirmed facts.

If the main blocker is entry freshness, status freshness, or unresolved contract inconsistency, recommend that verification step before downstream work.

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
