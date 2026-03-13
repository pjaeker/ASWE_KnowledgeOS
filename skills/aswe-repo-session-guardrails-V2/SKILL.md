---
name: aswe-repo-session-guardrails
description: initialize and protect sessions for aswe-style repositories with entry, status, and workstream patterns. use when chatgpt needs to bootstrap, verify, or refresh the current repository state; resolve or validate a canonical entry point; produce a session checkpoint; prevent state regression; or recommend the next work focus. prefer github-native evidence, including github app access even without a visible @ mention. use public github web only as a repo-near fallback when the repository is public and github-primary verification is incomplete or ambiguous. do not use google drive or other connectors unless the user explicitly asks for them.
---

# ASWE Repo Session Guardrails

## Overview

Initialize repository sessions robustly and prevent drift onto older or weaker states. Use GitHub-first evidence, resolve entry points through parallel candidates rather than naive filename matching, pin the active session anchors, and report the current state with explicit confidence, blockers, and next focus.

This skill must be conservative about freshness. A plausible older entry point is not enough if a newer same-pattern entry candidate may exist. Before finalizing a canonical entry point, run an explicit freshness challenge across sibling entry candidates, recent entry-path commits, and direct or indirect references that could point to a fresher entry.

## Core rules

- Use GitHub-first evidence by default.
- Treat GitHub App or connector access as valid even without a visible `@GitHub` mention.
- Use public GitHub web only as a repo-near fallback when the repository is public and GitHub-primary verification is incomplete or ambiguous.
- Do not use Google Drive or any other connector unless the user explicitly requests it.
- Do not treat a single filename match such as `ENTRY_LATEST` as sufficient proof of the current canonical entry point.
- Do not let older planning or how-to files override a newer, better confirmed session state.
- Do not output `Confidence: hoch` unless the entry freshness challenge is complete and no plausible fresher same-pattern candidate remains unresolved.
- If a fresher entry candidate cannot be ruled out, downgrade confidence, name the blocker, and avoid forcing a single canonical entry point.
- Regression protection must not be used as a reason to ignore fresher GitHub-primary evidence for the same artifact class.

## Workflow decision tree

1. Determine whether the user is asking to initialize, verify, or refresh the current repository session state.
2. If the user explicitly names an entry file or anchor, use it as the initial anchor candidate, then verify whether fresher GitHub-primary evidence contradicts it.
3. If the user does not name an entry file, resolve the canonical starting point through the entry-resolution workflow.
4. Before declaring a canonical entry point, run the freshness challenge described in [references/entry-resolution.md](references/entry-resolution.md) and the operational checklist in [references/verification-checklist.md](references/verification-checklist.md).
5. If robust GitHub-primary verification is not possible, keep the last higher-confidence state only provisionally, name the blocker, and mark new inferences as provisional.
6. Always produce the response using the standard session-checkpoint structure unless the user asks for a different format.

## Session initialization workflow

### 1. Restrict sources

Use only GitHub-related evidence by default:

- repository files or code
- commits
- pull requests
- issues
- GitHub App or connector access
- public GitHub web, only when the repository is public and this helps verify repo state

Do not use Google Drive, other app connectors, or general web search unless the user explicitly asks for them.

### 2. Resolve the canonical entry point

If the user does not provide one, use the process in [references/entry-resolution.md](references/entry-resolution.md).

In short:

- build entry, status, workstream, commit, and reference candidates in parallel
- compare candidates rather than stopping at the first match
- run a freshness challenge against sibling entry candidates and recent entry-path activity before finalizing
- prefer the candidate with the strongest combined path, content, reference, and commit evidence
- keep a ranked candidate set instead of forcing false certainty when the result is still ambiguous
- treat a newer same-pattern candidate as a veto against finalizing an older candidate until the newer candidate is disproven by stronger evidence

### 3. Pin the session anchors

After enough evidence exists, pin these anchors explicitly:

- canonical entry point or ranked entry candidates
- current status document
- active workstream
- additional state anchors referenced by the current entry
- already confirmed hard facts from the current session

Carry these anchors forward unless fresher primary evidence supersedes them.

### 4. Apply source priority and regression protection

Use the rules in [references/source-priority.md](references/source-priority.md).

Core priority:

1. user-explicit current anchor
2. live GitHub-verified repository state
3. already confirmed session anchors grounded in 1 or 2
4. directly referenced current repository artifacts
5. older planning or how-to files only as context

When a newly found document would push the conversation onto an older or weaker state, explicitly flag regression risk and keep the higher-value confirmed state. When fresher GitHub-primary evidence of the same artifact class appears, re-open verification instead of silently holding the older anchor.

### 5. Produce the checkpoint

Use [references/output-template.md](references/output-template.md) as the default response structure.

Always separate:

- hard confirmed facts
- plausible candidates
- provisional inferences
- blockers or uncertainty

Include a short freshness statement that says whether sibling entry candidates, commit signals, and repo-near fallback checks were completed or remain open.

### 6. Recommend the next work focus

Based on the active anchors and hard confirmed facts, name the next sensible work focus. Prefer a concrete next operational focus such as:

- the active workstream
- the next file or anchor to verify
- a blocker-resolution step
- the next E2E or implementation step implied by the current state

If the main blocker is entry freshness, the next focus should usually be the missing freshness-verification step instead of a downstream workstream.

## GitHub-specific heuristics

Use [references/github-patterns.md](references/github-patterns.md) for:

- typical entry, status, and workstream path patterns
- entry freshness probes and same-pattern candidate handling
- commit-based fallbacks
- public GitHub web fallback rules
- handling sessions where GitHub access exists even without a visible `@GitHub`
- keeping PRs and issues in a context role rather than treating them as the primary status source

## Failure mode reminders

Review [references/failure-modes.md](references/failure-modes.md) when the retrieval surface looks plausible but freshness is still uncertain. The most important anti-pattern is: selecting an older entry with high confidence before newer same-pattern candidates were actively ruled out.

## Language and output behavior

- Prefer the user's language.
- State uncertainty directly instead of smoothing it over.
- Do not claim a current state from weak evidence.
- Do not silently overwrite already confirmed newer session facts.
- Do not label a checkpoint as robust if entry freshness remains unresolved.
- If the user asks for a different output format, preserve the same guardrail logic while adapting presentation.

## References

- [references/source-priority.md](references/source-priority.md)
- [references/entry-resolution.md](references/entry-resolution.md)
- [references/github-patterns.md](references/github-patterns.md)
- [references/output-template.md](references/output-template.md)
- [references/verification-checklist.md](references/verification-checklist.md)
- [references/failure-modes.md](references/failure-modes.md)
