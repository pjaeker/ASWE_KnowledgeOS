---
project: ASWE_KnowledgeOS
doc_type: entry
version: V3
date: 2026-04-14
status: draft
audience: [human, llm]
intent: "Duenner Pointer-Bund fuer den aktuellen 2026-04-14-Zustand nach Merge des Evidence-Intake-self-evolution-Slices und nachgelagerter Codex-Konfigurationsumstrukturierung."
tags:
  - layer/entry
  - artifact/entry
  - topic/router
  - topic/session
  - topic/status
  - topic/workstreams
  - topic/codex
  - topic/architecture-evolution
  - topic/evidence
---

# ASWE KnowledgeOS Entry Latest - 2026-04-14 (V3)

## Startreihenfolge

1. `AGENTS.md` lesen.
2. `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260414_V3.md` lesen.
3. `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260414_V3.md` als aktiven Umbrella-Hauptanker lesen.
4. `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260414_V3.md` als ersten produktiven Primaerpfad lesen.
5. `handbook/reference/ASWE_CodexApp_StartContract_20260414_V1.md` lesen.
6. `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260414_V1.md` lesen.
7. Danach nur bei Bedarf nachziehen:
   - `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md`
   - `handbook/reference/ASWE_CodexApp_BootstrapPromptPack_20260414_V1.md`
   - `handbook/reference/ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
   - `meta/packages/ASWE_ProModel_AutonomousStart_20260414_V3/ASWE_DocumentSlice_RepoReference_20260414_V1.md`

## Kanonische Anker

- RepoStatusUpdate:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260414_V3.md`
- Aktiver Umbrella-Workstream:
  - `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260414_V3.md`
- Erster produktiver Primaerpfad:
  - `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260414_V3.md`
- Parallel eingerichteter Primaerpfad:
  - `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md`

## Zusatzanker

- Start Contract:
  - `handbook/reference/ASWE_CodexApp_StartContract_20260414_V1.md`
- E2E-Protokoll:
  - `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260414_V1.md`
- Operationalization Eval:
  - `handbook/reference/ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
- ProModel-Referenz:
  - `meta/packages/ASWE_ProModel_AutonomousStart_20260414_V3/ASWE_DocumentSlice_RepoReference_20260414_V1.md`

## Wichtige Leseordnung fuer `.codex`

- `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` gehoeren jetzt zur beobachteten Repo-Laufzeitrealitaet.
- `config_legacy.toml` und `environment_legacy.toml` sind historische Ruecklagen, keine aktuellen Router-Anker.
- Die aktuelle Repo-Wahrheit lautet deshalb nicht mehr "`.codex` ist nur separat-lokal", sondern: Die self-evolution-Konfiguration ist repo-sichtbar vorhanden; ueber ihre dauerhafte Aktivierungspolitik wird nachgelagert entschieden.

## Nicht Teil dieses Entry-Refreshs

- Kein `NextChat-Handoff`: Entry, Status und aktualisierte Workstreams reichen fuer den symmetrischen Session-Start.
- Keine Vorentscheidung ueber `ArchitectureCanonicalization` oder `HarnessOperationalization`.
- Keine finale Governance-Setzung, wie die repo-committete `.codex`-Lage teamweit zu verwenden ist.
