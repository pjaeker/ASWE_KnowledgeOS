---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-10
status: draft
audience: [human, llm]
intent: "Versionierter Repo-Status-Snapshot mit Manifest-Referenz fuer die neue Codex-Routing-Layer und die erweiterte MCP-Writer-Policy auf Stand 2026-03-10."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/router
  - topic/codex
  - topic/governance
  - topic/gate
  - topic/run-id
  - topic/secrets
---

# Repo-State-Snapshot - 2026-03-10 (V1)

## 0) Snapshot-Metadaten

- snapshot_id: `repo-state-20260310-V1`
- run_id: `20260310-1933`
- erstellt_am: `2026-03-10`
- erstellt_durch: `codex`
- basis_ref: `work @ 66ec6dd431321f8ecec867b604f28ce7d440191b`
- scope: `repo-status` (keine Volltexte)
- redactions: `["secrets", ".env", ".git", "node_modules"]`
- tree_max_depth: `2`
- manifest_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`
- manifest_digest: `5fb306f8071a5c7076a7d0a7b07d6c366dddea9fd03cd8f0fa3f3778b8dff8dc`

## 1) Executive Delta (seit letztem Snapshot)

- previous_snapshot: `AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260303_V2.md`
- delta_summary:
  - `NEU`: repo-lokale Codex-/Routing-Schicht mit `AGENTS.md`, `codex.toml`, `scripts/aswe_bootstrap.py`, `scripts/aswe_update_anchors.py`, ASWE-VS-Code-Tasks und eigenem HowTo.
  - `GEAENDERT`: `tools/mcp-writer/policy.json` erlaubt nun zusaetzlich `blackboard/` und `.github/prompts/`; `.github/workflows/**` bleibt blockiert.
  - `GEAENDERT`: bevorzugte Startreihenfolge fuer Sessions ist jetzt `ENTRY_LATEST -> RepoStatusUpdate -> Workstreams`; MeaningMap/Snapshot/Manifest sind nachgelagerte Tiefenanker.
  - `NEU`: High-version-Closeout fuer 2026-03-10 mit Status Update, Handoff, Manifest, Snapshot, MeaningMap und aktualisiertem `ENTRY_LATEST`.

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
  - `tools/`

- notable_new_or_removed_paths:
  - `+ AGENTS.md`
  - `+ codex.toml`
  - `+ handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`
  - `+ scripts/aswe_bootstrap.py`
  - `+ scripts/aswe_update_anchors.py`
  - `+ tools/mcp-writer/`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260310_V1.md`
  - `+ meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260310_V1.md`

- hotspots (haeufig geaendert / kritisch):
  - `meta/state/` - enthaelt den neuen Closeout-State-Pack und die Ankerkette fuer neue Sessions.
  - `blackboard/` - Handoffs und Workstreams sind jetzt explizit Writer-allowlisted und damit wichtiger fuer sichere Koordination.
  - `.github/prompts/` - neuer explizit erlaubter Writer-Pfad fuer Prompt-Artefakte; Workflows bleiben davon getrennt.
  - `scripts/` - Bootstrap-/Anchor-Refresh-Skripte bestimmen den lokalen Start- und Pflegefluss.
  - `tools/mcp-writer/` - serverseitige Policy bleibt der harte Governance-Layer fuer PR-only-Writes.

## 2.1) Key Files Inventory (Editor-Gates & Docs)

| Key File | Expected Path | Exists? | Found At | Notes |
| --- | --- | ---: | --- | --- |
| EditorConfig | `.editorconfig` | no | editorconfig | Root-Datei existiert ohne fuehrenden Punkt und ist daher kein standardisierter `.editorconfig`-Pfad. |
| markdownlint config | `.markdownlint.jsonc` | yes | markdownlint.jsonc | Root-Konfiguration vorhanden, Dateiname ohne fuehrenden Punkt. |
| cSpell config | `cspell.json` | yes | cspell.json | Root-cSpell-Konfiguration vorhanden. |
| VS Code settings | `.vscode/settings.json` | yes | .vscode/settings.json | Workspace-Settings inkl. Front Matter Framework vorhanden. |
| VS Code extensions | `.vscode/extensions.json` | yes | .vscode/extensions.json | Empfohlene Erweiterungen dokumentiert. |
| dictionaries dir | `meta/dictionaries/` | yes | meta/dictionaries/ | Projektwoerterbuch vorhanden (`project-words.txt`). |
| Codex config | `codex.toml` | yes | codex.toml | Repo-lokale Defaults fuer Approval/Sandbox/Web-Search; ToolingSnapshot-Exporter kann safe subset lesen. |

## 2.2) Repo Manifest (vollstaendig, maschinenlesbar)

- manifest_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`
- manifest_policy:
  - source: `git ls-files` (tracked files)
  - tracked_file_count: `247`
  - excludes (redacted): `.env*`, `secrets/**`, `.git/**`, `node_modules/**`
  - redaction_hits: `2` (`apps/portal/.env.example`, `tools/mcp-writer/.env.example` -> `<REDACTED_PATH>`)

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
- session_routing:
  - agents_card: `AGENTS.md`
  - entry_latest: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md`
  - repo_status_update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`
  - codex_runner_howto: `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`

## 4) Policies / Decisions / Normen (Index)

- policies:
  - `AGENTS.md` - operative Startkarte fuer ChatGPT, Codex und Copilot.
  - `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md` - lokaler Codex-Flow fuer Bootstrap, Anchor-Refresh, Preflight und ToolingSnapshot.
  - `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md` - Write-via-PR-Regeln und Scope-Disziplin.
  - `handbook/reference/AgenticSWE_NoSecretsInRepo_Policy_20260220_V1.md` - No-Secrets-Regeln und Redaction-Pflichten.
  - `tools/mcp-writer/policy.json` - serverseitige Allowlist/Blocklist/Limits fuer den PR-only-Writer.
- decisions (ADR/ADR-lite):
  - `decisions-adr/AgenticSWE_Connectors_MCP_BridgeStrategy_ADR_20260302_V2.md` - status: `draft`.
  - `decisions-adr/AgenticSWE_KnowledgeOS_ADR_Portal_OptionB_20260217_V1.md` - status: `draft`.

**Known inconsistencies (falls vorhanden):**

- Workstream-Kapseln vom 2026-03-09 nennen `.github/prompts/` noch nicht explizit im Scope, obwohl `tools/mcp-writer/policy.json` diesen Pfad jetzt erlaubt.

## 5) Gates & Checks (IST-Stand)

- local_preflight (preflight, lokale Gates):
  - bootstrap_script: `pass (python scripts/aswe_bootstrap.py liest die neuesten Anker)`
  - anchor_refresh: `pass (python scripts/aswe_update_anchors.py --write erzeugt neues ENTRY_LATEST)`
  - manifest_json: `pass (SHA256 gebildet; JSON parsebar)`
  - markdownlint: `not_executed in diesem Slice`
  - spellcheck: `not_executed in diesem Slice`
  - tag_validation: `not_executed in diesem Slice`
  - repo_gates_bundle: `not_executed (historisch repo-weit noisy; nicht Gegenstand dieses Closeout-Slices)`
- ci (continuous integration, GitHub Actions):
  - workflows_present:
    - `NONE TRACKED`
  - merge_policy: Writer/PR-only und externe Required Checks bleiben harte Governance-Layer; `.github/workflows/**` ist im Writer blockiert

## 6) Tooling & Editor (IST-Stand)

- vscode:
  - recommended_extensions:
    - `streetsidesoftware.code-spell-checker`
    - `DavidAnson.vscode-markdownlint`
    - `yzhang.markdown-all-in-one`
  - workspace_settings: `.vscode/settings.json exists`
  - tasks: `.vscode/tasks.json exists; enthaelt jetzt vier ASWE-Tasks`
- scripts:
  - `scripts/aswe_bootstrap.py` - gibt die neuesten Start- und Tiefenanker aus.
  - `scripts/aswe_update_anchors.py` - erzeugt ein neues `ENTRY_LATEST` fuer den aktuellen Tag.
  - `scripts/validate_frontmatter_tags.py` - validiert Frontmatter-Tags gegen die Allowlist.
  - `scripts/check_links.py` - Linkpruefung fuer Dokumentation.
- tooling_snapshot:
  - `meta/state/tooling/AgenticSWE_KnowledgeOS_ToolingSnapshot_20260303_V3.yml` - letzter vorhandener Snapshot vor Einfuehrung von `codex.toml`.

## 7) Risks & Stop-&-Ask (Stop-&-Ask, Stoppregel)

- secrets_handling:
  - Keine Keys/Tokens/Secrets in Dateien, Logs oder PR-Text aufnehmen.
  - `.env*` und `secrets/**` werden im Manifest redacted (`<REDACTED_PATH>`).
  - Bereits exponierte Test-Secrets bleiben rotationspflichtig.
- write_surface (write surface, Schreibflaeche):
  - allowlist_paths: `meta/**`, `handbook/**`, `decisions-adr/**`, `templates-harness/**`, `blackboard/**`, `.github/prompts/**`, `tools/mcp-writer/**`
  - blocklist_paths: `.github/workflows/**`, `infra/**`, `secrets/**`, `.env*`
- risk_notes:
  - Routing-Aenderungen muessen `AGENTS.md`, `ENTRY_LATEST` und `RepoStatusUpdate` zusammen halten, sonst driftet der Startpfad.
  - `.github/prompts/**` ist jetzt erlaubt, aber das darf nicht als Einstieg fuer Workflow-Aenderungen missverstanden werden.

## 8) Offene Punkte (TODO)

- TODO-1: Workstream-Kapseln an die neue `.github/prompts/`-Allowlist angleichen, falls Prompt-Artefakte aktiv genutzt werden sollen.
- TODO-2: frischen ToolingSnapshot nach `codex.toml`-Einfuehrung exportieren.
- TODO-3: entscheiden, ob `editorconfig` in einen standardisierten `.editorconfig`-Pfad umbenannt werden soll.
- TODO-4: Bridge-Slice fuer offiziellen MCP-Transport und OAuth-Discovery starten.

## 9) Chat-Handoff (copy/paste)

```yaml
snapshot_handoff:
  snapshot_id: repo-state-20260310-V1
  basis_ref: work @ 66ec6dd431321f8ecec867b604f28ce7d440191b
  manifest_ref: meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json
  ssot:
    glossary: meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md
    taxonomy: meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
    option_b_blueprint: meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md
    agents_card: AGENTS.md
    repo_status_update: meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md
  key_files:
    editorconfig: no
    markdownlint_config: yes
    cspell_config: yes
    vscode_settings: yes
    codex_config: yes
  delta_summary:
    - Added repo-local Codex routing layer and new closeout state pack for 2026-03-10.
    - Expanded MCP writer allowlist to blackboard/ and .github/prompts/ while keeping workflows blocked.
  open_todos:
    - Export a fresh ToolingSnapshot and align workstream capsules with the prompt allowlist if needed.
    - Start the first ChatGPT MCP bridge thin slice for official transport and OAuth discovery.
```
