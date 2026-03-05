---
project: ASWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-05
status: draft
audience: [human, llm]
intent: "Single Entry Point: minimaler Startpunkt für neue Chats/Tools. Zeigt auf die neuesten SSOT-Anker + aktive Workstreams."
tags:
  - layer/state
  - artifact/entry
  - topic/router
  - topic/ssot
  - topic/workstreams
---

# ENTRY (LATEST) — Start Here

## 0) Router (read-first)
- `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260303_V1.md`

## 1) SSOT-Anker (immer diese Reihenfolge, neueste Version)
1) MeaningMap: `meta/state/*RepoMeaningMap*_V*.md`
2) State Snapshot: `meta/state/*RepoStateSnapshot*_V*.md`
3) Manifest: `meta/state/*RepoManifest*_V*.json`

## 2) Workstreams (Blackboard)
- `blackboard/workstreams/*.md`
- Regel: max 3 aktive Workstreams parallel.

## 3) Autonomy / Governance (wenn Schreiben geplant ist)
- Automation Ladder: `handbook/**/WriteRights_AutomationLadder*`
- Analysis Plan: `handbook/runbooks/*AutomationAutonomy_AnalysisPlan*`
- Gate Matrix: `handbook/reference/*GateLayerCapabilityMatrix*`
- PR Report Template: `handbook/reference/*PRReport_Template*`
- ADRs: `decisions-adr/*.md`

## 4) Prompts (UX)
- `.github/prompts/SESSION_BOOTSTRAP*.md`
- `.github/prompts/SESSION_CLOSEOUT*.md`

## 5) Evidence (Tooling)
- ToolingSnapshot: `meta/state/tooling/*ToolingSnapshot*_V*.yml`

## Stop-&-Ask Trigger
- `.github/workflows/**`
- Secrets/Token/Permissions
- Erweiterung der Allowlist in riskante Pfade

