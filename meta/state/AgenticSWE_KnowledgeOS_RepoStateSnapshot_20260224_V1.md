---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Versionierter Repo-Status-Snapshot für Chat-Handoff mit SSOT-Referenzen und Gate-Evidence."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/topologie
  - topic/governance
  - topic/gate
  - topic/run-id
  - topic/secrets
---

# Repo-State-Snapshot — 2026-02-24 (V1)

## 0) Snapshot-Metadaten

- snapshot_id: `repo-state-20260224-V1`
- run_id: `20260224-152512`
- erstellt_am: `2026-02-24`
- erstellt_durch: `codex`
- basis_ref: `chat/20260224-152512/repo-state @ 5612258`
- scope: `repo-status` (keine Volltexte)
- redactions: `["secrets", ".env", ".git", "node_modules"]`
- tree_max_depth: `2`

## 1) Executive Delta (seit letztem Snapshot)

- previous_snapshot: `NONE`
- delta_summary:
  - `NEU`: Initialer versionierter RepoStateSnapshot in `meta/state/` erstellt.
  - `NEU`: SSOT-Registry auf neueste Glossar-/Taxonomie-/Option-B-Artefakte verdrahtet.
  - `NEU`: Gate-Status als best-effort CLI-Evidence dokumentiert.

## 2) Repo-Topologie (max 2 Ebenen)

- top_level_paths:
  - `.vscode/`
  - `apps/portal/`
  - `blackboard/`
  - `decisions-adr/`
  - `glossary/`
  - `handbook/{explanation,howto,reference,runbooks,tutorial}/`
  - `library/`
  - `meta/{packages,state}/`
  - `scripts/{optionb,...}/`
  - `templates-harness/`

- notable_new_or_removed_paths:
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V1.md`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260224_V1.md`

- hotspots (häufig geändert / kritisch):
  - `meta/` — enthält normative SSOT-Artefakte (Glossar, Taxonomie, Blueprint).
  - `handbook/runbooks/` — operationalisiert Gates/Option-B-Prozesse.
  - `scripts/` — implementiert lokale Qualitäts- und Taxonomie-Prüfungen.

## 3) SSOT-Registry (Single Source of Truth)

- glossary:
  - path: `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - version_rule: `highest Vx; tiebreak newest date`
- taxonomy:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - version_rule: `highest Vx; tiebreak newest date`
- option_b_core:
  - blueprint: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
  - runbooks:
    - `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md`
    - `handbook/runbooks/AgenticSWE_PortalWorkflow_OptionB_End2End_Runbook_20260220_V1.md`
  - write_via_pr_howto: `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
  - preflight_gates: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260220_V1.md`

## 5) Gates & Checks (IST-Stand)

- local_preflight (preflight, lokale Gates):
  - markdownlint: `not_executed (npm 403 registry restricted while fetching markdownlint-cli2 via npx)`
  - spellcheck: `not_executed (npm 403 registry restricted while fetching cspell via npx)`
  - yaml: `not_executed (no dedicated yaml gate configured in repo root scripts)`
  - tag_validation: `fail (repo-wide baseline issues from legacy docs; command executed)`
  - security_read_only: `not_executed (outside requested snapshot scope)`
- ci (continuous integration, GitHub Actions):
  - workflows_present:
    - `none in repository root (.github/workflows absent)`
  - merge_policy: `TBD`
- editor_gates: `available (.vscode settings/tasks exist)`

## 7) Risks & Stop-&-Ask (Stop-&-Ask, Stoppregel)

- secrets_handling:
  - Keine `.env`, `secrets/`, `.git/`, `node_modules/`, `dist/` Inhalte in Snapshot/MeaningMap referenzieren.
  - Verdächtige Strings nur als `<REDACTED>` dokumentieren (falls entdeckt).
- write_surface (write surface, Schreibfläche):
  - allowlist_paths: `meta/state/**`
  - blocklist_paths: `.github/workflows/**`, `secrets/**`, `infra/**`
- risk_notes:
  - CI-Gates derzeit nicht als Workflow materialisiert (`.github/workflows` fehlt).
  - cSpell-CLI derzeit ohne stabile Repo-Konfiguration.

## 8) Offene Punkte (TODO)

- TODO-1: enable editor gates OR install local devDependencies (no-npx) OR configure allowed registry/mirror for markdownlint/cspell.
- TODO-2: Optional CI-Workflows für Markdown/Tag-Gates ergänzen.
- TODO-3: Beim nächsten Snapshot `previous_snapshot` auf diese Datei setzen.
