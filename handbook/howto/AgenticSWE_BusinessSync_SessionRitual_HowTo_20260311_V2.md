---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V2
date: 2026-03-11
status: draft
audience:
  - human
  - llm
intent: "Nutzungs-Runbook fuer ChatGPT Business + GitHub Sync unter dem Entry-first Session-Contract: schneller Start, kleiner Slice, deterministischer Closeout."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/findability
  - topic/session
  - topic/governance
  - topic/gate
  - topic/thin-slice
---

# How-to: Business-Sync als Repo-Navigator nutzen (Entry-First)

## Ziel

Jede GUI-Session startet semantisch ueber das Repo selbst und endet mit einem deterministischen Closeout:

- `ENTRY_LATEST`
- `RepoStatusUpdate`
- passender Workstream
- Tiefenanker nur bei Bedarf

## Scope

- In scope:
  - Entry-first Session-Start in der GUI
  - GitHub Sync als Findability-Hilfe
  - kleine PR-Slices mit sauberem Closeout
- Out of scope:
  - Repo-weite Auto-Cleanups ohne Phasenplan
  - Aenderungen an `.github/workflows/**` ohne Stop-&-Ask
  - ein zweiter autonomer PR-Pfad neben dem Writer

## Warum Sync hilft (aber SSOT nicht ersetzt)

- Sync/Indexing verbessert Findability: ChatGPT findet relevante Stellen schneller.
- Der kanonische Session-Contract bleibt trotzdem repo-intern:
  - `ENTRY_LATEST` fuer den Start
  - `RepoStatusUpdate` fuer den operativen Ist-Stand
  - `Workstream` fuer Slice-Ziel und naechste Schritte
- MeaningMap, Snapshot und Manifest bleiben Tiefenanker fuer tieferen Kontext, nicht pauschale Pflicht beim Einstieg.

## Setup (einmalig)

### 1) ChatGPT Project Instructions (empfohlen)

Lege fuer das ASWE-Projekt ein ChatGPT Project an und hinterlege dort sinngemaess:

- "Nutze den GitHub Sync Connector fuer Repo-Zitate."
- "Starte neue Sessions ueber das neueste ENTRY_LATEST."
- "Lies danach das aktuelle RepoStatusUpdate und den relevanten Workstream."
- "Ziehe MeaningMap, Snapshot und Manifest nur bei Bedarf nach."

### 2) Legacy Prompt Files (optional)

Bestehende Dateien unter `.github/prompts/` duerfen als manueller Fallback bestehen bleiben.
Sie sind fuer den Standardstart aber **nicht** mehr der kanonische GUI-Weg.

## Session Start (Entry-first)

1. Oeffne die neueste Datei unter `meta/state/entry/*ENTRY_LATEST*_V*.md`.
2. Oeffne daraus das aktuelle `RepoStatusUpdate`.
3. Oeffne den passenden Workstream.
4. Ziehe MeaningMap, Snapshot und Manifest nur nach, wenn Routing-, Struktur- oder Auditfragen offen bleiben.
5. Formuliere den Slice klein: Patch-Spec, konkrete Dateiliste, Diff, Checks.

## Session Closeout (Entry refresh last)

1. Aktualisiere `RepoStatusUpdate`, wenn sich operative Wahrheit geaendert hat.
2. Aktualisiere den betroffenen Workstream, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind.
3. Aktualisiere MeaningMap, Snapshot und Manifest nur bei echter Struktur- oder Routing-Aenderung.
4. Refreshe danach `ENTRY_LATEST`.
5. Lege nur bei Bedarf ein `NextChat-Handoff` als Resume-Sidecar an.

## Wann ein NextChat-Handoff sinnvoll ist

Nutze ein Handoff nur, wenn mindestens einer dieser Faelle vorliegt:

- ein Slice endet mitten in einer fragilen taktischen Sequenz
- ein spezieller Resume-, Rollback- oder PR-Draft-Kontext soll erhalten bleiben
- die Zusatzdetails gehoeren bewusst nicht in Status oder Workstream

Standardfall:

- kein Handoff noetig
- der naechste Start funktioniert ueber `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`

## Legacy-Hinweis

Historische `SESSION_BOOTSTRAP`- und `SESSION_CLOSEOUT`-Prompts koennen implizit weiter existieren.
Diese HowTo-Datei beschreibt sie bewusst nicht mehr als primaeren GUI-Weg.

## DoD (Quick)

- GUI-Start funktioniert ohne verpflichtenden Bootstrap-Prompt.
- Closeout folgt der Reihenfolge Status -> Workstream -> Tiefenanker bei Bedarf -> Entry refresh.
- `NextChat-Handoff` bleibt optional.
