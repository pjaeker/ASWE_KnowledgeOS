---
project: AgenticSWE_KnowledgeOS
doc_type: handoff
version: V1
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Konkreter Wiedereinstieg fuer den ersten docs-only Lauf, der den SessionLifecycle-Refactor als repo-internen Arbeitsauftrag verankert."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/session
  - topic/router
  - topic/codex
  - topic/chatgpt
  - topic/gates
---

# NextChat Handoff - SessionLifecycleRefactor

## 1) Kurzfassung

Der neue SessionLifecycle-Refactor ist inhaltlich entschieden, aber noch nicht als eigener repo-interner Arbeitsauftrag materialisiert.
Der naechste Lauf ist deshalb **nicht** PR-A/B/C selbst, sondern zuerst **PR-0**:
ADR + Workstream + Plan + Handoff + Codex-Prompt als docs-only Bundle.

## 2) Warum zuerst PR-0?

Ohne PR-0 wuerde Codex beim repo-internen Bootstrap weiterhin auf den bereits dokumentierten
Hauptfokus `WS-CHATGPT-MCP-BRIDGE` fallen.

PR-0 schafft den fehlenden repo-seitigen Orchestrierungsauftrag fuer den SessionLifecycle-Refactor.

## 3) Ziel des naechsten Laufs

Repo-intern verankern:
- einen normativen Entscheid fuer Entry-first SessionLifecycle
- einen operativen Workstream fuer die Refactor-Wellen
- ein detailliertes Runbook fuer die automatisierte Abarbeitung
- ein Handoff fuer den ersten Lauf
- einen minimalen Codex-Prompt fuer PR-0

## 4) Empfohlene Lesereihenfolge

1. `AGENTS.md`
2. `meta/state/entry/*ENTRY_LATEST*_V*.md`
3. `meta/state/*RepoStatusUpdate*_V*.md`
4. `meta/state/*RepoMeaningMap*_V*.md`
5. `handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260302_V1.md`
6. `handbook/explanation/AgenticSWE_KnowledgeOS_RoutingNavigationUX_Strategy_20260305_V1.md`
7. `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`

## 5) Konkreter Arbeitsauftrag fuer PR-0

Neu anlegen:
- `decisions-adr/AgenticSWE_KnowledgeOS_ADR_SessionLifecycle_EntryFirst_20260311_V1.md`
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_SessionLifecycle_Refactor_20260311_V1.md`
- `handbook/runbooks/AgenticSWE_SessionLifecycle_Refactor_ImplementationPlan_20260311_V1.md`
- `blackboard/AgenticSWE_NextChat_Handoff_SessionLifecycleRefactor_20260311_V1.md`
- `.github/prompts/AgenticSWE_SessionLifecycle_PR0_CodexRunner_20260311_V1.prompt.md`

## 6) Scope & Constraints

- docs-only
- keine Aenderung bestehender normativer Dateien in PR-0
- keine `.github/workflows/**`
- keine Secrets
- kein zweiter PR-Pfad
- `ENTRY_LATEST` bleibt Pointer-Bund
- `NextChat-Handoff` wird im Zielbild optional, nicht Pflicht

## 7) Evidence fuer PR-0

- Frontmatter vorhanden
- Dateinamen folgen Repo-Konvention
- Workstream benoetigt nur erlaubte Pfade
- PR-A / PR-B / PR-C sind klar beschrieben

## 8) Danach

Nach Merge von PR-0:
- neuer Start ueber `ENTRY_LATEST` / `AGENTS.md`
- dann PR-A fuer die Harmonisierung der normativen Dokumente
