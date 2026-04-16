---
project: ASWE_KnowledgeOS
doc_type: entry
version: V2
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Duenner Pointer-Bund fuer den aktuellen 2026-04-15-Zustand nach Materialisierung des V2-Startsatzes, Nachzug der wirksamen nicht-dokumentalen Laufzeitartefakte und Klaerung des realen Audit-Ankerpfads."
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

# ASWE KnowledgeOS Entry Latest - 2026-04-15 (V2)

## Startreihenfolge

1. `AGENTS.md` lesen.
2. `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260415_V2.md` lesen.
3. `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260415_V2.md` als aktiven Umbrella-Hauptanker lesen.
4. `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260415_V2.md` als ersten produktiven Primaerpfad lesen.
5. `handbook/reference/ASWE_CodexApp_StartContract_20260415_V2.md` lesen.
6. `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md` lesen.
7. `handbook/reference/ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260415_V2.md` lesen.
8. Danach nur bei Bedarf nachziehen:
   - `handbook/reference/ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`
   - `handbook/reference/ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
   - `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md`

## Kanonische Anker

- RepoStatusUpdate:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260415_V2.md`
- Aktiver Umbrella-Workstream:
  - `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260415_V2.md`
- Erster produktiver Primaerpfad:
  - `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260415_V2.md`
- Parallel eingerichteter Primaerpfad:
  - `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md`

## Zusatzanker

- Start Contract:
  - `handbook/reference/ASWE_CodexApp_StartContract_20260415_V2.md`
- E2E-Protokoll:
  - `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`
- UI-Runbook:
  - `handbook/reference/ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260415_V2.md`
- Bootstrap Prompt Pack:
  - `handbook/reference/ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`
- E2E-Startability-Audit:
  - `handbook/explanation/ASWE_CodexApp_E2E_Startability_Audit_20260415_V2.md`
- Operationalization Eval:
  - `handbook/reference/ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`

## Wichtige Leseordnung fuer `.codex`

- `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` gehoeren jetzt zur aktiven project-scoped V2-Startflaeche.
- `scripts/aswe_e2e_start_readiness_check.sh` prueft die V2-Kette strenger als am 2026-04-14-Stand.
- Vor einem streng deterministic-readiness-geprueften Start ist zu beachten:
  - Der relevante Audit-Anker liegt real unter `handbook/explanation/ASWE_CodexApp_E2E_Startability_Audit_20260415_V2.md`.
  - Teile der wirksamen Startkette koennen noch auf `handbook/reference/...` zeigen; diese Pfaddrift ist vor streng deterministic-readiness-geprueften Starts zu klaeren.

## Nicht Teil dieses Entry-Refreshs

- Kein `NextChat-Handoff`: Entry, Status und aktualisierte Workstreams reichen fuer den symmetrischen Session-Start.
- Keine Vorentscheidung ueber `ArchitectureCanonicalization` oder `HarnessOperationalization`.
- Keine Behauptung, dass der V2-Startsatz bereits vollstaendig widerspruchsfrei geschlossen ist; die verbleibende Audit-Pfaddrift bleibt explizit benannt.
