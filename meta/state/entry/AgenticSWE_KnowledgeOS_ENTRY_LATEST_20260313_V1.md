---
project: ASWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Single Entry Point: duenn gebuendelter Startpunkt nach dem 2026-03-13-Live-Smoke-Closeout. Zeigt auf den neuen fuehrenden Status und die aktive Rueckfokussierung auf WS-MCP-WRITER-RAILWAY."
tags:
  - layer/state
  - artifact/entry
  - topic/router
  - topic/ssot
  - topic/workstreams
---

# ENTRY (LATEST) - Start Here

## 0) Read first
- Status Update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260313_V1.md`
- Vorherige Entry-Version: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260312_V1.md`

## 1) SSOT-Anker (aktuell verlinkte Versionen)
1. MeaningMap: `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`
2. State Snapshot: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260310_V1.md`
3. Manifest: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`

## 2) Workstreams (Top 3 aktuellste Kapseln)
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260313_V1.md`
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260312_V1.md`
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_SessionLifecycle_Refactor_20260311_V1.md`

## 3) Schreibpfad und Governance
- Writer bleibt der einzige autoritative PR-Erzeuger.
- Codex/Copilot bleiben Change-Generatoren und Feedback-Helfer.
- Hooks sind Feedback, nicht Enforcement.
- Stop-&-Ask bei `.github/workflows/**`, Secrets, Tokens, riskanten Allowlist-Erweiterungen und neuen GitHub-App-Permissions.

## 4) Standard-Tasks
- `ASWE: Bootstrap (Read Entry + Status + WS)`
- `ASWE: Validate Session Contract`
- `ASWE: Update Anchors`
- `ASWE: Preflight Changed Files`
- `ASWE: Export Tooling Snapshot`

## 5) Hinweise
- Diese Entry-Version wurde am 2026-03-13 nach frischer Live-Smoke-Evidence auf Railway geschrieben.
- Fuehrende operative Wahrheit ist jetzt der neue Status vom 2026-03-13, nicht mehr der 2026-03-12-Bridge-E2E-Plan.
- `ENTRY_LATEST` bleibt ein duenner Pointer-Bund und kein operativer Sammelpunkt.
- MeaningMap, Snapshot und Manifest wurden in diesem Schritt bewusst **nicht** refreshed.
- Dateikonvention: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260313_Vx.md`
