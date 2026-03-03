---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-03
status: draft
audience: [human, llm]
intent: "Versionierter Repo-Status-Snapshot mit Manifest-Referenz, Key-Files-Inventar und Gate-Evidence (Update V5 Prompt)."
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

# Repo-State-Snapshot — 2026-03-03 (V1)

## 0) Snapshot-Metadaten

- snapshot_id: `repo-state-20260303-V1`
- run_id: `20260303-1106`
- erstellt_am: `2026-03-03`
- erstellt_durch: `codex`
- basis_ref: `chat/20260303-1055/repo-state @ f8b25afbfe4eb9cc0466ff4989623ec1496a300c`
- scope: `repo-status` (keine Volltexte)
- redactions: `["secrets", ".env", ".git", "node_modules"]`
- tree_max_depth: `2`
- manifest_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260303_V1.json`
- manifest_digest: `294cd55fbdfd220ce886b6db2b4fb08b72e95d55d3e3f6b01ed62b0076c6da8a`

## 1) Executive Delta (seit letztem Snapshot)

- previous_snapshot: `AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V2.md`
- delta_summary:
  - `NEU`: RepoStateSnapshot/RepoMeaningMap/RepoManifest auf Stand 2026-03-03 versioniert.
  - `NEU`: Session Entry Point für 2026-03-03 als V2 mit stabilen Bootstrap/Closeout-Snippets ergänzt.
  - `GEAENDERT`: Key-Files-Inventar korrigiert (`markdownlint.jsonc` ist vorhanden; `.editorconfig` bleibt offen).
  - `GEAENDERT`: SSOT-Referenzen auf neueste HowTo/Runbook-Versionen (MCP Write-via-PR V2, Preflight V2, Session Ritual V1) aktualisiert.

## 2) Repo-Topologie (max 2 Ebenen)

- top_level_paths:
  - `.codex/`
  - `.frontmatter/`
  - `.githooks/`
  - `.github/`
  - `.vscode/`
  - `apps/`
  - `blackboard/`
  - `decisions-adr/`
  - `glossary/`
  - `handbook/`
  - `library/`
  - `meta/`
  - `scripts/`
  - `templates-harness/`

- notable_new_or_removed_paths:
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260303_V1.json`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260303_V1.md`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260303_V1.md`
  - `+ meta/state/entry/AgenticSWE_KnowledgeOS_SessionEntry_20260303_V2.md`

- hotspots (häufig geändert / kritisch):
  - `meta/` — enthält SSOT-Normen, Taxonomie und State-Artefakte.
  - `handbook/runbooks/` — Gate- und Betriebsabläufe als operative Referenz.
  - `handbook/howto/` — schreibt den Write-via-PR- und Session-Ritual-Ablauf fest.
  - `scripts/` — enthält Frontmatter-/Taxonomie-Validatoren.

## 2.1) Key Files Inventory (Editor-Gates & Docs)

| Key File | Expected Path | Exists? | Found At | Notes |
| --- | --- | ---: | --- | --- |
| EditorConfig | `.editorconfig` | no | NONE | Noch nicht angelegt. |
| markdownlint config | `.markdownlint.jsonc` | yes | markdownlint.jsonc | Konfig vorhanden (Dateiname ohne führenden Punkt). |
| cSpell config | `cspell.json` | yes | cspell.json | Root-cSpell-Konfiguration vorhanden. |
| VS Code settings | `.vscode/settings.json` | yes | .vscode/settings.json | Workspace-Settings inkl. Front Matter Framework vorhanden. |
| VS Code extensions | `.vscode/extensions.json` | yes | .vscode/extensions.json | Empfohlene Erweiterungen dokumentiert. |
| dictionaries dir | `meta/dictionaries/` | yes | meta/dictionaries/ | Projektwörterbuch-Datei vorhanden (`project-words.txt`). |

## 2.2) Repo Manifest (vollständig, maschinenlesbar)

- manifest_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260303_V1.json`
- manifest_policy:
  - source: `git ls-files` (tracked files)
  - tracked_file_count: `150`
  - excludes (redacted): `.env*`, `secrets/**`, `.git/**`, `node_modules/**`
  - redaction_hits: `1` (`apps/portal/.env.example` -> `<REDACTED_PATH>`)

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
  - write_via_pr_howto: `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md`
  - preflight_gates: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`

## 4) Policies / Decisions / Normen (Index)

- policies:
  - `handbook/reference/AgenticSWE_NoSecretsInRepo_Policy_20260220_V1.md` — No-Secrets-Regeln und Redaction-Pflichten.
  - `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md` — Write-via-PR für MCP/ChatGPT Business.
  - `meta/AgenticSWE_KnowledgeOS_PromotionPolicy_20260213_V1.md` — Freigabe-/Promotionspfade für Artefakte.
- decisions (ADR/ADR-lite):
  - `decisions-adr/AgenticSWE_Connectors_MCP_BridgeStrategy_ADR_20260302_V2.md` — status: `draft`.
  - `decisions-adr/AgenticSWE_KnowledgeOS_ADR_Portal_OptionB_20260217_V1.md` — status: `draft`.

**Known inconsistencies (falls vorhanden):**

- `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md` enthält `topic/pr`, das nicht in der Taxonomy-Allowlist enthalten ist.

## 5) Gates & Checks (IST-Stand)

- local_preflight (preflight, lokale Gates):
  - local_script_discovery: `no lint:md / spell scripts found in package.json`
  - markdownlint: `not_executed (npm 403 registry restricted while resolving markdownlint-cli2 via npx)`
  - spellcheck: `not_executed (npm 403 registry restricted while resolving cspell via npx)`
  - tag_validation: `fail (python scripts/validate_frontmatter_tags.py --repo-root . reported legacy repo-wide frontmatter/tag violations outside this thin slice)`
  - editor_gates: `required (.vscode settings/extensions and cspell.json available)`
- ci (continuous integration, GitHub Actions):
  - workflows_present:
    - `.github/workflows/ci_gates.yml`
    - `.github/workflows/strict_gates.yml`
  - merge_policy: `merge only when required checks are green`

## 6) Tooling & Editor (IST-Stand)

- vscode:
  - recommended_extensions:
    - `streetsidesoftware.code-spell-checker`
    - `DavidAnson.vscode-markdownlint`
    - `yzhang.markdown-all-in-one`
  - workspace_settings: `.vscode/settings.json exists`
  - tasks: `.vscode/tasks.json exists`
- scripts:
  - `scripts/validate_frontmatter_tags.py` — validiert Frontmatter-Tags gegen Allowlist.
  - `scripts/validate_taxonomy_glossary_mapping.py` — prüft Begriffsabdeckung zwischen Glossar und Taxonomie.
  - `scripts/check_links.py` — Linkprüfung für Dokumentation.

## 7) Risks & Stop-&-Ask (Stop-&-Ask, Stoppregel)

- secrets_handling:
  - Keine Keys/Tokens/Secrets in Dateien, Logs oder PR-Text aufnehmen.
  - `.env*`/`secrets/**` werden in Manifest-Artefakten redacted (`<REDACTED_PATH>`).
  - Bei Verdacht auf Secret-Leak: stop + dokumentierter TODO statt Blindfix.
- write_surface (write surface, Schreibfläche):
  - allowlist_paths: `meta/state/**`, `meta/templates/**`
  - blocklist_paths: `.github/workflows/**`, `secrets/**`, `apps/**` (für diesen Run)
- risk_notes:
  - markdownlint/cspell CLI konnte nicht als Evidence ausgeführt werden; Editor-Gates bleiben Pflicht.

## 8) Offene Punkte (TODO)

- TODO-1: Root `.editorconfig` ergänzen.
- TODO-2: markdownlint-Konfig-Namenskonvention vereinheitlichen (`.markdownlint.jsonc` vs `markdownlint.jsonc`).
- TODO-3: `topic/pr`-Konflikt zwischen Runbook und Taxonomy-Allowlist auflösen.
- TODO-4: Optional lokale devDependencies für markdownlint/cspell bereitstellen, um `npx`-Abhängigkeit zu reduzieren.

## 9) Chat-Handoff (copy/paste)

```yaml
snapshot_handoff:
  snapshot_id: repo-state-20260303-V1
  basis_ref: chat/20260303-1055/repo-state @ f8b25afbfe4eb9cc0466ff4989623ec1496a300c
  manifest_ref: meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260303_V1.json
  ssot:
    glossary: meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md
    taxonomy: meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
    option_b_blueprint: meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md
  key_files:
    editorconfig: no
    markdownlint_config: yes
    cspell_config: yes
    vscode_settings: yes
  delta_summary:
    - New 2026-03-03 state artifacts generated from V5 prompt.
  open_todos:
    - Add root .editorconfig and align markdownlint config naming.
    - Resolve taxonomy conflict around topic/pr.
```
