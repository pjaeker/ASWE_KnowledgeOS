---
project: ASWE_KnowledgeOS
doc_type: state
version: V2
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Kuratierte Bedeutungslandkarte fuer den harmonisierten Session-Contract mit zwei Adaptern, einem gemeinsamen Kernfluss und optionalem Resume-Sidecar."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/router
  - topic/session
  - topic/codex
  - topic/chatgpt
  - topic/governance
---

# Repo-MeaningMap - 2026-03-11 (V2)

## 0) MeaningMap-Metadaten

- meaningmap_id: `repo-meaning-20260311-V2`
- run_id: `20260311-session-contract-pr-a`
- erstellt_am: `2026-03-11`
- basis_ref: `worktree @ 3b43`
- scope: `session-contract-normative-thin-slice`
- predecessor: `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260310_V1.md`
- last_snapshot_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260310_V1.md`

## 1) Systembild (1 Bildschirm)

- system_one_liner: `KnowledgeOS nutzt einen gemeinsamen Session-Kernfluss: ChatGPT GUI startet semantisch ueber ENTRY_LATEST, Codex/Copilot starten repo-lokal ueber AGENTS.md, danach folgen beide ENTRY_LATEST -> RepoStatusUpdate -> Workstream; MeaningMap, Snapshot und Manifest bleiben Tiefenanker bei Bedarf.`
- primary_loop (loop, Hauptschleife):
  1. `Adapter waehlen: GUI -> ENTRY_LATEST; Codex/Copilot -> AGENTS.md -> ENTRY_LATEST.`
  2. `Aktuelles RepoStatusUpdate lesen.`
  3. `Passenden Workstream lesen.`
  4. `Nur bei Bedarf MeaningMap, Snapshot und Manifest fuer Struktur-, Audit- oder Routing-Fragen oeffnen.`
  5. `Kleinen Diff in erlaubter Schreibflaeche umsetzen und Evidence erzeugen.`
  6. `Writer bleibt der einzige autoritative PR-Erzeuger.`

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
  - role: `repo-lokaler Einstieg fuer Codex/Copilot; leitet in den gemeinsamen Kernfluss`
  - downstream: `ENTRY_LATEST, RepoStatusUpdate, Workstreams`
- entry_latest:
  - path: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md`
  - role: `duenner Pointer-Bund fuer neue Sessions; kein operativer Sammelpunkt`
  - maintained_by: `scripts/aswe_update_anchors.py`
- repo_status_update:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`
  - role: `operativer Ist-Stand und primaerer Closeout-Anker fuer den naechsten Start`
- chatgui_routing_entry:
  - path: `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260311_V2.md`
  - role: `normative GUI-Adapter-Beschreibung fuer Entry-first Routing`
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
  - notes: `erlaubt blackboard/ und .github/prompts/; .github/workflows/** bleibt blockiert`
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
  - role: `optionales Resume-Sidecar fuer fragilen Wiedereinstieg; keine Standardvoraussetzung`

## 3) Routing-Hinweise (Router-Signale)

- question_to_file_map:
  - "Wie starte ich eine neue Codex-Session im Repo?": `AGENTS.md`
  - "Wie startet ein neuer GUI-Chat kanonisch?": `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md`
  - "Welches Dokument erklaert den GUI-Adapter?": `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260311_V2.md`
  - "Was ist der aktuelle operative Stand?": `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`
  - "Welcher Workstream ist fuer diesen Slice relevant?": `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_SessionLifecycle_Refactor_20260311_V1.md`
  - "Wie nutze ich Codex lokal als Runner?": `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`
  - "Wie ziehe ich neue Anchor-Pointer?": `scripts/aswe_update_anchors.py`
  - "Welche Pfade darf der Writer schreiben?": `tools/mcp-writer/policy.json`
  - "Welche Dateien existieren wirklich?": `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`

## 4) Fluesse (Flows)

### 4.1) Session Start

- trigger: `neuer GUI-Chat oder neue repo-lokale Runner-Session`
- steps:
  1. `GUI: ENTRY_LATEST lesen. Codex/Copilot: AGENTS.md lesen und dann ENTRY_LATEST oeffnen.`
  2. `Aktuelles RepoStatusUpdate lesen.`
  3. `Passenden Workstream oeffnen.`
  4. `MeaningMap, Snapshot und Manifest nur bei Bedarf fuer Tiefenkontext nachziehen.`
- stop_conditions:
  - `Aenderung an .github/workflows/**`
  - `Secrets/Tokens/private keys`
  - `riskante Allowlist-Erweiterung oder neuer Nebenpfad um den Writer herum`

### 4.2) Session Closeout

- trigger: `Slice ist abgeschlossen oder bewusst pausiert`
- steps:
  1. `RepoStatusUpdate aktualisieren, wenn sich operative Wahrheit geaendert hat.`
  2. `Betroffenen Workstream aktualisieren, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind.`
  3. `MeaningMap, Snapshot und Manifest nur bei echter Struktur- oder Routing-Aenderung aktualisieren.`
  4. `Danach ENTRY_LATEST refreshen.`
  5. `NextChat-Handoff nur dann anlegen oder aktualisieren, wenn taktischer Resume-Kontext bewusst nicht in Status oder Workstream gehoert.`

### 4.3) Write via PR (pull request, Aenderungsvorschlag)

- trigger: `Chat/Codex soll Aenderung umsetzen`
- steps:
  1. `Adapter, RepoStatusUpdate und Workstream pruefen.`
  2. `Small diff in erlaubter Schreibflaeche anwenden.`
  3. `Preflight/Gates laufen lassen oder sauber als not_executed begruenden.`
  4. `Evidence und PR-Report liefern; Writer bleibt autoritativer PR-Erzeuger.`
- stop_conditions:
  - `outside allowlist`
  - `Secrets suspected`
  - `zweiter autonomer PR-Pfad droht`

### 4.4) Read-only Q&A (read-only, nur lesen)

- indexed_paths: `AGENTS.md`, `meta/**`, `handbook/**`, `blackboard/**`, `scripts/**`, `tools/mcp-writer/policy.json`, `decisions-adr/**`
- constraints: `keine Spekulation; Aussagen ueber Routing/Governance immer mit Repo-Datei begruenden`

## 5) Contracts (Contracts, Arbeitskontrakte)

- session_adapter_contract:
  - "ChatGPT GUI startet semantisch ueber ENTRY_LATEST; Codex/Copilot starten repo-lokal ueber AGENTS.md und benutzen danach denselben Kernfluss."
- router_contract:
  - "Der gemeinsame Kernfluss lautet ENTRY_LATEST -> RepoStatusUpdate -> Workstream; Tiefenanker folgen nur bei Bedarf."
- ssot_contract:
  - "Wahrheit liegt in Repo-Dateien; Chat ist Arbeitsraum."
- writer_authority_contract:
  - "Nur der Writer erzeugt PRs; Codex/Copilot liefern Analyse, Diffs, Handoffs und Evidence."
- no_secrets_contract:
  - "Keine Tokens/Keys in Artefakten, Logs, Commits oder PR-Text."
- entry_refresh_contract:
  - "ENTRY_LATEST bleibt Pointer-Bund; Session-spezifische Details gehoeren in RepoStatusUpdate, Workstream oder bei Bedarf in tiefere Anker."
- handoff_contract:
  - "NextChat-Handoff ist optionales Resume-Sidecar und keine Startvoraussetzung."

## 6) Offene Entscheidungen (ADR-Lite Kandidaten)

- ADR-CAND-001: `Session-Contract-Validator in PR-B verankern - revisit_when: Validator und VS-Code-Task vorliegen.`
- ADR-CAND-002: `Legacy-Prompt-Dateien semantisch entkanonisieren - revisit_when: PR-C aktiv ist.`

## 7) TODO (max 10)

- TODO-1: `AGENTS.md`, ENTRY_LATEST, RepoStatusUpdate, RepoMeaningMap und RoutingNavigationUX bei Session-Contract-Aenderungen gemeinsam halten.`
- TODO-2: `Session-Contract-Validator in PR-B liefern.`
- TODO-3: `Legacy Prompt-Dateien in PR-C klar als manual fallback markieren.`
- TODO-4: `ENTRY_LATEST im naechsten passenden Closeout auf die neuen V2-Anker refreshen.`

## 8) Optionales Chat-Handoff (copy/paste)

```yaml
meaningmap_handoff:
  meaningmap_id: repo-meaning-20260311-V2
  optional_handoff: true
  ssot:
    agents_card: AGENTS.md
    entry_latest: meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md
    repo_status_update: meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md
  key_routes:
    - question: "Wie startet ein neuer GUI-Chat?"
      first_stop: "meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md"
    - question: "Wie startet eine neue Codex-Session?"
      first_stop: "AGENTS.md"
    - question: "Wann brauche ich ein Handoff?"
      first_stop: "Nur bei fragiler Resume-Sequenz."
```
