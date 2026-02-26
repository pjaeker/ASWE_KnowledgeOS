---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V2
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Versionierter Repo-Status-Snapshot mit Manifest-Referenz, Key-Files-Inventar und Gate-Evidence."
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

# Repo-State-Snapshot — 2026-02-24 (V2)

## 0) Snapshot-Metadaten

- snapshot_id: `repo-state-20260224-V2`
- run_id: `20260224-180725`
- erstellt_am: `2026-02-24`
- erstellt_durch: `codex`
- basis_ref: `chat/20260224-180725/repo-state @ 35504cb8ea8ab03ac8221e2f935ab3fe7f6b76af`
- scope: `repo-status` (keine Volltexte)
- redactions: `["secrets", ".env", ".git", "node_modules"]`
- tree_max_depth: `2`
- manifest_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260224_V1.json`
- manifest_digest: `772cb3a603b63b76bdf6c1e2dfec91c94b67e70809ee3a6e996ccb98a31815e0`

## 1) Executive Delta (seit letztem Snapshot)

- previous_snapshot: `AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V1.md`
- delta_summary:
  - `NEU`: Vollständiges Repo-Manifest als Maschinenartefakt ergänzt (`RepoManifest_20260224_V1.json`).
  - `GEAENDERT`: Snapshot auf Template V2 gehoben (inkl. Key-Files-Inventar + Manifest-Referenzen).
  - `GEAENDERT`: MeaningMap wird als V2 auf den neuen Snapshot referenziert.
  - `IST`: Gates wurden erneut ausgeführt; Ergebnisse zeigen dokumentierte Baseline-Qualitätsschulden.

## 2) Repo-Topologie (max 2 Ebenen)

- top_level_paths:
  - `.frontmatter/`
  - `.githooks/`
  - `.vscode/`
  - `apps/portal/`
  - `blackboard/`
  - `decisions-adr/`
  - `glossary/`
  - `handbook/explanation/`
  - `handbook/howto/`
  - `handbook/reference/`
  - `handbook/runbooks/`
  - `handbook/tutorial/`
  - `library/`
  - `meta/packages/`
  - `meta/state/`
  - `meta/templates/`
  - `scripts/optionb/`
  - `templates-harness/`

- notable_new_or_removed_paths:
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260224_V1.json`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V2.md`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260224_V2.md`

- hotspots (haeufig geaendert / kritisch):
  - `meta/` — normative SSOT-Dateien und Taxonomie-Regeln liegen hier.
  - `handbook/runbooks/` — operationalisiert Gates und Write-via-PR-Ablauf.
  - `scripts/` — enthält Validatoren fuer Frontmatter/Taxonomie und Link-Checks.
  - `apps/portal/` — produktiver Write-Pfad fuer Option-B-Portal.

## 2.1) Key Files Inventory (Editor-Gates & Docs)

| Key File | Expected Path | Exists? | Found At | Notes |
| --- | --- | ---: | --- | --- |
| EditorConfig | `.editorconfig` | no | NONE | Empfohlen, aber aktuell nicht vorhanden. |
| markdownlint config | `.markdownlint.jsonc` | no | NONE | Alternativen geprueft: `.markdownlint.json`, `.markdownlint-cli2.jsonc`, `.markdownlint.yaml` fehlen ebenfalls. |
| cSpell config | `cspell.json` | no | NONE | Alternative `.vscode/cspell.json` ebenfalls nicht vorhanden. |
| VS Code settings | `.vscode/settings.json` | yes | .vscode/settings.json | Workspace-Settings vorhanden (Front Matter Framework konfiguriert). |
| VS Code extensions | `.vscode/extensions.json` | yes | .vscode/extensions.json | Security-/Qualitaets-Extensions empfohlen. |
| dictionaries dir | `meta/dictionaries/` | no | NONE | Verzeichnis fuer projektweites Woerterbuch fehlt. |

## 2.2) Repo Manifest (vollstaendig, maschinenlesbar)

- manifest_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260224_V1.json`
- manifest_policy:
  - source: `git ls-files` (tracked files)
  - tracked_file_count: `98`
  - excludes (redacted): `.env*`, `secrets/**`, `.git/**`, `node_modules/**`
  - redaction_hits: `["apps/portal/.env.example"]` -> `<REDACTED_PATH>`

## 3) SSOT-Registry (Single Source of Truth)

- glossary:
  - path: `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - version_rule: `highest Vx; tiebreak newest date`
- taxonomy:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - version_rule: `highest Vx; tiebreak newest date`
- taxonomy_allowlist:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`
  - version_rule: `highest Vx; tiebreak newest date`
- option_b_core:
  - blueprint: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
  - runbooks:
    - `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md`
    - `handbook/runbooks/AgenticSWE_PortalWorkflow_OptionB_End2End_Runbook_20260220_V1.md`
  - write_via_pr_howto: `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
  - preflight_gates: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260220_V1.md`

## 4) Policies / Decisions / Normen (Index)

- policies:
  - `handbook/AgenticSWE_NoSecretsInRepo_Policy_20260220_V1.md` — No-Secrets-Regeln und Incident-Reaktion.
  - `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md` — verbindlicher Ablauf fuer kleine, reviewbare PRs.
  - `meta/AgenticSWE_KnowledgeOS_PromotionPolicy_20260213_V1.md` — Promotions-/Freigabepfade fuer Artefakte.
- decisions (ADR/ADR-lite):
  - `decisions-adr/AgenticSWE_KnowledgeOS_ADR_Portal_OptionB_20260217_V1.md` — status: `draft`.

Known inconsistencies (falls vorhanden):

- `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md` nutzt `topic/pr`, das nicht in der aktuellen Taxonomie-Allowlist steht.
- Mehrere Legacy-Dateien verletzen Frontmatter-Hardgate (fehlendes `layer/*` oder `artifact/*`, teils fehlendes Frontmatter).

## 5) Gates & Checks (IST-Stand)

- local_preflight (preflight, lokale Gates):
  - local_script_discovery: `no matching lint:md/spell scripts in repo package.json files`
  - markdownlint: `fail (repo-wide run: 2551 findings across 57 markdown files before V2-doc creation; targeted run on V2 files: 28 findings across 2 files)`
  - spellcheck: `fail (repo-wide run: 13511 issues in 85 of 91 files before V2-doc creation; targeted run on V2 files: 372 issues in 2 files)`
  - yaml: `not_executed (no dedicated YAML CLI gate configured at repo root)`
  - tag_validation: `fail (python scripts/validate_frontmatter_tags.py --repo-root . -> baseline frontmatter/tag violations)`
  - security_read_only: `not_executed (outside requested docs-only scope)`
- ci (continuous integration, GitHub Actions):
  - workflows_present:
    - `none (.github/workflows absent)`
  - workflow_draft_available:
    - `meta/AgenticSWE_KnowledgeOS_CI_Gates_Workflow_Draft_20260217_V1.yml`
  - merge_policy: `TBD`
- editor_gates: `available (.vscode/settings.json + .vscode/extensions.json present; root markdownlint/cspell config missing)`

## 6) Tooling & Editor (IST-Stand)

- vscode:
  - recommended_extensions:
    - `SonarSource.sonarlint-vscode`
    - `snyk-security.snyk-vulnerability-scanner`
    - `AquaSecurityOfficial.trivy-vulnerability-scanner`
    - `timonwong.shellcheck`
    - `pycqa.bandit-pycqa`
    - `Foxholenl.Gitleaks`
  - workspace_settings: `.vscode/settings.json exists`
  - tasks: `.vscode/tasks.json exists`
- scripts:
  - `scripts/validate_frontmatter_tags.py` — prueft Frontmatter-Tags gegen Taxonomie-Allowlist.
  - `scripts/validate_taxonomy_glossary_mapping.py` — prueft Glossar-zu-Taxonomie-Konsistenz.
  - `scripts/check_links.py` — prueft Link-Integritaet in Markdown.

## 7) Risks & Stop-&-Ask (Stop-&-Ask, Stoppregel)

- secrets_handling:
  - Keine Tokens/Keys/Secrets ausgeben; verdaechtige Inhalte nur als `<REDACTED>`.
  - Manifest redigiert `.env*`/`secrets/**` strikt als `<REDACTED_PATH>`.
  - Keine Scans in `.git/`, `node_modules/`, `dist/`, `secrets/` durchfuehren.
- write_surface (write surface, Schreibflaeche):
  - allowlist_paths: `meta/state/**`
  - blocklist_paths: `.github/workflows/**`, `secrets/**`, `infra/**`
- risk_notes:
  - Gate-Baseline ist derzeit rot (markdownlint/cSpell/frontmatter validation).
  - Editor-Gates sind teilweise vorhanden, aber Basis-Konfig (`.editorconfig`, markdownlint, cSpell, dictionaries) fehlt.
  - Taxonomie-Inkonsistenz (`topic/pr`) sollte vor weiteren Gate-Schaerfungen geklaert werden.

## 8) Offene Punkte (TODO)

- TODO-1: `.editorconfig`, `.markdownlint.jsonc`, `cspell.json` und `meta/dictionaries/` als Projekt-Basiskonfig anlegen.
- TODO-2: Baseline-Gate-Schulden (markdownlint/cSpell/frontmatter) schrittweise aufloesen.
- TODO-3: Taxonomie-Konflikt um `topic/pr` entscheiden (Allowlist erweitern oder Tag ersetzen).
- TODO-4: Manifest-Redaction-Regel fuer `.env.example` explizit bestaetigen oder als Ausnahme dokumentieren.

## 9) Chat-Handoff (copy/paste)

```yaml
snapshot_handoff:
  snapshot_id: repo-state-20260224-V2
  basis_ref: chat/20260224-180725/repo-state @ 35504cb8ea8ab03ac8221e2f935ab3fe7f6b76af
  manifest_ref: meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260224_V1.json
  ssot:
    glossary: meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md
    taxonomy: meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
    option_b_blueprint: meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md
  key_files:
    editorconfig: no
    markdownlint_config: no
    cspell_config: no
    vscode_settings: yes
  delta_summary:
    - Added RepoManifest_20260224_V1 with redactions.
    - Updated snapshot to V2 with key-file inventory and manifest digest.
    - Updated meaning map to V2 and aligned SSOT routes.
  open_todos:
    - Add missing editor/lint baseline configs.
    - Resolve topic/pr taxonomy conflict.
```
