---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-10
status: draft
audience: [human, llm]
intent: "Kuratierte Bedeutungslandkarte fuer die aktualisierte Session-Routing-Schicht mit AGENTS.md, Entry/Status-First-Navigation und der erweiterten MCP-Writer-Policy."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/router
  - topic/codex
  - topic/governance
  - topic/gate
  - topic/topologie
---

# Repo-MeaningMap - 2026-03-10 (V1)

## 0) MeaningMap-Metadaten

- meaningmap_id: `repo-meaning-20260310-V1`
- run_id: `20260310-1933`
- erstellt_am: `2026-03-10`
- basis_ref: `work @ 66ec6dd431321f8ecec867b604f28ce7d440191b`
- scope: `key-artefacts-only` (keine Volltexte)
- last_snapshot_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260310_V1.md`

## 1) Systembild (1 Bildschirm)

- system_one_liner: `KnowledgeOS routet neue Sessions jetzt zuerst ueber AGENTS.md, ENTRY_LATEST, RepoStatusUpdate und aktive Workstreams; MeaningMap, Snapshot und Manifest liefern danach Semantik, Audit und Vollstaendigkeit.`
- primary_loop (loop, Hauptschleife):
  1. `AGENTS.md` und neuestes `ENTRY_LATEST` lesen.
  2. `RepoStatusUpdate` und aktiven Workstream lesen.
  3. Nur bei Bedarf MeaningMap, Snapshot und Manifest fuer tiefere Struktur-/Auditfragen oeffnen.
  4. Kleinen Diff in erlaubter Schreibflaeche umsetzen und Evidence erzeugen.
  5. Writer oeffnet den PR-only-Aenderungspfad; kein zweiter autonomer PR-Erzeuger.

## 2) Schluesselartefakte (Index)

### 2.1) SSOT (Glossar/Taxonomie)

- glossary (Glossar, Begriffe):
  - path: `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - role: `normativ, canonical terms`
  - used_by:
    - `Taxonomie, Runbooks, HowTos, ADRs`
- taxonomy (Taxonomie, Tags):
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - role: `routing + gate allowlist semantics`
  - depends_on: `glossary`
- taxonomy_allowlist:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`
  - role: `maschinenlesbare Liste erlaubter Tags`

### 2.2) Session Routing / Runner Layer

- agents_start_card:
  - path: `AGENTS.md`
  - role: `operativer Einstieg fuer ChatGPT, Codex und Copilot`
  - downstream: `ENTRY_LATEST, RepoStatusUpdate, Workstreams`
- entry_latest:
  - path: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md`
  - role: `versionierter Pointer-Bund auf die neuesten vorhandenen Anker`
  - maintained_by: `scripts/aswe_update_anchors.py`
- repo_status_update:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`
  - role: `operativer Ist-Stand fuer neue Sessions`
- codex_runner_howto:
  - path: `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`
  - role: `lokale Handlungsanweisung fuer Bootstrap, Anchor-Refresh, Preflight und Evidence`
- bootstrap_script:
  - path: `scripts/aswe_bootstrap.py`
  - role: `liest die neuesten vorhandenen Entry-/Status-/Workstream-/SSOT-Anker aus Dateinamen`
- anchor_refresh_script:
  - path: `scripts/aswe_update_anchors.py`
  - role: `schreibt ein neues ENTRY_LATEST fuer den Tag mit den aktuellsten Referenzen`

### 2.3) Gates / Policies

- preflight_gates_local:
  - path: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`
  - role: `lokale Gate-Strategie und Evidence-Erwartung`
- write_surface_policy:
  - path: `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md`
  - role: `Write-via-PR-Ablauf inkl. Scope und PR-Disziplin`
- mcp_writer_policy:
  - path: `tools/mcp-writer/policy.json`
  - role: `serverseitige Allowlist/Blocklist/Limits fuer den PR-only-Writer`
  - notes: `erlaubt jetzt blackboard/ und .github/prompts/; .github/workflows/** bleibt blockiert`
- no_secrets_policy:
  - path: `handbook/reference/AgenticSWE_NoSecretsInRepo_Policy_20260220_V1.md`
  - role: `No-Secrets-Regeln inkl. Redaction-/Incident-Hinweisen`

### 2.4) State- und Uebergabe-Artefakte

- repo_state_snapshot:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260310_V1.md`
  - role: `aktueller Repo-Status inkl. Manifest-Referenz, Risiken und TODOs`
- repo_manifest:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`
  - role: `vollstaendige tracked-file Liste mit Redactions`
- nextchat_handoff:
  - path: `blackboard/AgenticSWE_NextChat_Handoff_ChatGPTMCPBridge_20260310_V1.md`
  - role: `Wiedereinstieg, Startprompt und PR-Draft fuer den naechsten Runner`

## 3) Routing-Hinweise (Router-Signale)

- question_to_file_map:
  - "Wie starte ich eine neue Codex-Session im Repo?": `AGENTS.md`
  - "Welche Anker lese ich zuerst?": `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md`
  - "Was ist der aktuelle operative Stand?": `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`
  - "Welcher Workstream ist als naechstes dran?": `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`
  - "Wie nutze ich Codex lokal als Runner?": `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`
  - "Wie ziehe ich neue Anchor-Pointer?": `scripts/aswe_update_anchors.py`
  - "Welche Pfade darf der Writer schreiben?": `tools/mcp-writer/policy.json`
  - "Welche Dateien existieren wirklich?": `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`

## 4) Fluesse (Flows)

### 4.1) Session Bootstrap / Closeout

- trigger: `neuer Chat oder geplanter Session-Closeout`
- steps:
  1. `AGENTS.md` lesen.
  2. Neues `ENTRY_LATEST` lesen.
  3. `RepoStatusUpdate` und passenden Workstream oeffnen.
  4. Nur bei Bedarf MeaningMap, Snapshot und Manifest fuer Tiefenkontext nachziehen.
  5. Nach dem Slice Handoff/Status/Snapshot/Manifest high-versionieren und `ENTRY_LATEST` aktualisieren.
- stop_conditions:
  - `Aenderung an .github/workflows/**`
  - `Secrets/Tokens/private keys`
  - `riskante Allowlist-Erweiterung oder neuer Nebenpfad um den Writer herum`

### 4.2) Write via PR (pull request, Aenderungsvorschlag)

- trigger: `Chat/Codex soll Aenderung umsetzen`
- steps:
  1. AGENTS, Status Update und Workstream pruefen.
  2. Small diff in erlaubter Schreibflaeche anwenden.
  3. Preflight/Gates laufen lassen oder sauber als `not_executed` begruenden.
  4. Evidence und PR-Report liefern; Writer bleibt autoritativer PR-Erzeuger.
- stop_conditions:
  - `outside allowlist`
  - `Secrets suspected`
  - `zweiter autonomer PR-Pfad droht`

### 4.3) Read-only Q&A (read-only, nur lesen)

- indexed_paths: `AGENTS.md`, `meta/**`, `handbook/**`, `blackboard/**`, `scripts/**`, `tools/mcp-writer/policy.json`, `decisions-adr/**`
- constraints: `keine Spekulation; Aussagen ueber Routing/Governance immer mit Repo-Datei begruenden`

## 5) Contracts (Contracts, Arbeitskontrakte)

- router_contract:
  - "Neue Sessions starten in AGENTS.md und laufen dann ueber ENTRY_LATEST, RepoStatusUpdate und aktive Workstreams."
- ssot_contract:
  - "Wahrheit liegt in Repo-Dateien; Chat ist Arbeitsraum."
- writer_authority_contract:
  - "Nur der Writer erzeugt PRs; Codex/Copilot liefern Analyse, Diffs, Handoffs und Evidence."
- no_secrets_contract:
  - "Keine Tokens/Keys in Artefakten, Logs, Commits oder PR-Text."
- entry_refresh_contract:
  - "ENTRY_LATEST bleibt Pointer-Bund; Session-spezifische Details gehoeren in Status, Snapshot, MeaningMap oder Handoff."

## 6) Offene Entscheidungen (ADR-Lite Kandidaten)

- ADR-CAND-001: `Workstream-Kapseln um .github/prompts/ im Scope erweitern oder Policy-/Workstream-Trennung bewusst lassen - revisit_when: vor aktiver Prompt-Artefakt-Nutzung im Bridge-Workstream.`
- ADR-CAND-002: `Neuen ToolingSnapshot nach codex.toml-Einfuehrung exportieren - revisit_when: naechster docs-/tooling-orientierter Slice.`

## 7) TODO (max 10)

- TODO-1: `AGENTS.md`, `ENTRY_LATEST` und `RepoStatusUpdate` bei Routing-Aenderungen gemeinsam aktualisieren.
- TODO-2: Bridge-Workstream um offiziellen MCP-Transport und OAuth-Discovery ergaenzen.
- TODO-3: bei Bedarf `.github/prompts/`-Nutzung explizit in Workstream-Kapseln verankern.
- TODO-4: pruefen, ob `editorconfig` in `.editorconfig` umbenannt werden soll.

## 8) Chat-Handoff (copy/paste)

```yaml
meaningmap_handoff:
  meaningmap_id: repo-meaning-20260310-V1
  basis_ref: work @ 66ec6dd431321f8ecec867b604f28ce7d440191b
  ssot:
    glossary: meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md
    taxonomy: meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
    agents_card: AGENTS.md
    repo_status_update: meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md
  key_routes:
    - question: "Wie starte ich eine neue Codex-Session im Repo?"
      first_stop: "AGENTS.md"
    - question: "Welche Anker lese ich zuerst?"
      first_stop: "meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md"
    - question: "Welche Pfade darf der Writer schreiben?"
      first_stop: "tools/mcp-writer/policy.json"
  open_todos:
    - Keep AGENTS, ENTRY_LATEST and RepoStatusUpdate aligned when routing changes.
    - Start the first ChatGPT MCP bridge slice for official transport and OAuth discovery.
```
