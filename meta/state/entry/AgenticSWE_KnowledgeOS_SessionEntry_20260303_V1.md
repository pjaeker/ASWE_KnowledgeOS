---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-03
status: draft
audience: [human, llm]
intent: "Single Entry Point fuer Sessions im Chat ohne Projekt-Kontext: SSOT-Anker + Ritual-Prompts + Update-Flow bis CMS/Portal live ist."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/router
  - topic/gate
  - topic/governance
  - topic/findability
  - topic/run-id
---

# Session Entry — 2026-03-03 (V1)

## 0) Zweck (SSOT)

Ein Startpunkt, um:

- Session deterministisch zu bootstrappen (Standup + PR-Slices)
- Repo-State (Snapshot/MeaningMap/Manifest) kontrolliert zu aktualisieren
- danach an Preflight-Gates weiterzuarbeiten

## 1) Aktuelle SSOT-Anker (first stop)
>
> Regel: "neueste Version" = hoechste Vx; Tie-Break neuestes YYYYMMDD.

- RepoMeaningMap: `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260224_V2.md`
- RepoStateSnapshot: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V2.md`
- RepoManifest: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260224_V1.json`
- Preflight-Gates: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`
- Session-Ritual HowTo: `handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260302_V1.md`
- Repo-State Update Prompt (Codex): `meta/state/AgenticSWE_KnowledgeOS_CodexPrompt_RepoStateMeaning_20260224_V4.md`

## 2) SESSION_BOOTSTRAP (ASWE) — Copy/Paste

```text
SESSION_BOOTSTRAP (ASWE) — no project context

Nutze den GitHub Connector (read). Ziele: Standup + Routing + naechste PR-Slices.

1) Lies zuerst diese Entry-Datei (du bist hier).
2) Finde und lies dann die neueste Version dieser Dateien:
   - AgenticSWE_KnowledgeOS_RepoMeaningMap_*
   - AgenticSWE_KnowledgeOS_RepoStateSnapshot_*
   - AgenticSWE_KnowledgeOS_RepoManifest_*
   - AgenticSWE_PreflightGates_Local_Runbook_*
3) Gib ein Standup in exakt dieser Struktur:
   - SSOT Anker (Dateiname + 1 Satz Kernaussage je Anker)
   - Aktive Workstreams (max 3) + Status
   - Offene TODOs (top 5)
   - Naechste PR-Slices (2–3, keep diffs small, Pfade + DoD)
   - Stop-&-Ask (wenn `.github/**`, Secrets, CI/Deploy)
Regeln:
- Kein Raten: Unklares als TODO markieren.
- Keine repo-weiten Cleanups ohne separaten Phasenplan.
