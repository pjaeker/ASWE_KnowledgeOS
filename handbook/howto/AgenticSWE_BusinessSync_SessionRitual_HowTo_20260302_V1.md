---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V1
date: 2026-03-02
status: draft
audience:
  - human
  - llm
intent: "Nutzungs-Runbook: Mit ChatGPT Business + GitHub Sync/Indexing das ASWE KnowledgeOS effizient fortfuehren (Session-Ritual, Repo-Routing, PR-Slices, Quality-Debt Inventur) ohne Repo-weite Legacy-Cleanup."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/findability
  - topic/governance
  - topic/gate
  - topic/thin-slice
  - topic/human-approval
---

# How-to: Business-Sync als Repo-Navigator nutzen (Session-Ritual + PR-Slices)

## Ziel

> **🟦 Ziel:** Jede Session startet mit einem deterministischen Standup aus dem Repo (via GitHub Sync) und endet mit einem sauberen Closeout (PR-Slices, Gates, TODOs).

## Scope

- In scope:
  - Session-Ritual (Start + Closeout) als Standard.
  - Repo-Routing ueber MeaningMap/Snapshot/Manifest (SSOT), beschleunigt durch Sync.
  - Vorbereitung kleiner PR-Slices (keep diffs small).
- Out of scope:
  - Repo-weite Auto-Cleanup-Aktionen ohne Phasenplan.
  - Aenderungen an `.github/workflows/**` ohne Stop-&-Ask.

## Warum Sync das Ritual verbessert (aber SSOT nicht ersetzt)

- Sync/Indexing verbessert Findability: ChatGPT findet relevante Stellen schneller und haeufig automatisch.
- SSOT-Artefakte bleiben notwendig fuer Determinismus und Audit: MeaningMap, Snapshot, Manifest.

## Setup (einmalig)

### 1) ChatGPT Project Instructions (empfohlen)

Lege fuer das ASWE-Projekt ein ChatGPT Project an und hinterlege dort als Custom Instructions:

- „Nutze den GitHub Sync Connector fuer Repo-Zitate.“
- „Beginne jede Session mit dem Session Bootstrap Prompt.“
- „Beende jede Session mit dem Session Closeout Prompt.“

### 2) Copilot Prompt Files (optional, fuer VS Code)

Lege im Repo `.github/prompts/` an und speichere:

- `AgenticSWE_SessionBootstrap_20260302_V1.prompt.md`
- `AgenticSWE_SessionCloseout_20260302_V1.prompt.md`

## Session Bootstrap (Start-Ritual)

```text
SESSION_BOOTSTRAP (ASWE)

Nutze den GitHub Sync Connector. Ziele: Standup + Routing + naechste PR-Slices.

1) Finde und lies die neueste Version dieser Dateien (nach Dateinamen-Schema und Vx):
   - AgenticSWE_KnowledgeOS_RepoMeaningMap_*
   - AgenticSWE_KnowledgeOS_RepoStateSnapshot_*
   - AgenticSWE_KnowledgeOS_RepoManifest_*
   - AgenticSWE_PreflightGates_Local_Runbook_*

2) Gib ein Standup in exakt dieser Struktur:
   - SSOT Anker (Dateiname + Kernaussage je Anker)
   - Aktive Workstreams (max 3) + Status
   - Offene TODOs (top 5, nach Impact)
   - Naechste PR-Slices (2–3, keep diffs small, Pfade + DoD)
   - Stop-&-Ask (falls du `.github/**`, Secrets, CI/Deploy siehst)

3) Regeln:
   - Kein Raten: wenn unklar, als TODO/Claim markieren.
   - Keine repo-weite Cleanup-Aktion vorschlagen, ausser als separaten phasenweisen Plan.
```

## Session Closeout (End-Ritual)

```text
SESSION_CLOSEOUT (ASWE)

Nutze den GitHub Sync Connector.

1) Schreibe ein Closeout:
   - Was wurde entschieden (Decision/ADR Bedarf?)
   - Welche Dateien sollen veraendert/neu erstellt werden (Zielpfade + Dateinamen)
   - Welche PR-Slices als naechstes (max 2–3, small diffs)
   - Welche Gates/Checks lokal laufen muessen (changed files only)
   - Neue TODOs (Blackboard) + Prioritaet

2) Wenn neue Dokumente entstanden:
   - Diataxis Typ korrekt?
   - Frontmatter vorhanden?
   - Tags: 1x layer/*, 1x artifact/*, topic tags sparsam.
```

## Quality-Debt Inventur (read-only)

```text
QUALITY_DEBT_INVENTORY (ASWE)

Nutze GitHub Sync. Erstelle eine read-only Inventur:

- Top 10 Noise Sources (markdownlint/cSpell/frontmatter/tags/links)
- Betroffene Ordner
- Vorschlag fuer 3–5 PR-Slices (ordnerweise, small diffs)
- Welche Gates sind legacy/noisy und muessen als Scope-Issue dokumentiert werden
```

## DoD (Quick)

- Session Bootstrap erzeugt Standup + PR-Slices.
- Closeout erzeugt klare Dateiliste + Gates.
- Keine repo-weite Cleanup ohne Phasenplan.
