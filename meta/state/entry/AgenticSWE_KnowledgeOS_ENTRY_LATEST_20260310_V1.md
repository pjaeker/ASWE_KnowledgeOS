---
project: ASWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-10
status: draft
audience: [human, llm]
intent: "Single Entry Point: minimaler Startpunkt fuer neue Chats/Tools. Zeigt auf die neuesten SSOT-Anker + aktive Workstreams."
tags:
  - layer/state
  - artifact/entry
  - topic/router
  - topic/ssot
  - topic/workstreams
---

# ENTRY (LATEST) — Start Here

## 0) Read first
- Status Update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`
- Vorherige Entry-Version: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260305_V1.md`

## 1) SSOT-Anker (aktuell verlinkte Versionen)
1. MeaningMap: `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260310_V1.md`
2. State Snapshot: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260310_V1.md`
3. Manifest: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`

## 2) Workstreams (Top 3 aktuellste Kapseln)
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260306_V1.md`

## 3) Schreibpfad und Governance
- Writer bleibt der einzige autoritative PR-Erzeuger.
- Codex/Copilot sind Change-Generatoren und Feedback-Helfer.
- Hooks sind Feedback, nicht Enforcement.
- Stop-&-Ask bei `.github/workflows/**`, Secrets, Tokens, riskanten Allowlist-Erweiterungen und neuen GitHub-App-Permissions.

## 4) Standard-Tasks
- `ASWE: Bootstrap (Read Entry + Status + WS)`
- `ASWE: Update Anchors`
- `ASWE: Preflight Changed Files`
- `ASWE: Export Tooling Snapshot`

## 5) Hinweise
- Diese Entry-Version wurde am 2026-03-10 neu geschrieben.
- Die Datei aktualisiert Pointer auf die neuesten vorhandenen Anker.
- Manifest, Snapshot und MeaningMap werden durch diesen Schritt **nicht** neu erzeugt, sondern nur neu referenziert.
- Dateikonvention: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_Vx.md`
