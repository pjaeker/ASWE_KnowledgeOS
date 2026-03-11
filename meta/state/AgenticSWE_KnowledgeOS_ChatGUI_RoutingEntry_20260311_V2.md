---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V2
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Normativer GUI-Adapter fuer Entry-first Routing: ChatGPT GUI startet semantisch ueber ENTRY_LATEST und nutzt denselben Kernfluss wie Codex."
tags:
  - layer/handbook
  - artifact/reference
  - topic/router
  - topic/findability
  - topic/ssot
  - topic/session
  - topic/chatgpt
  - topic/governance
---

# ChatGUI Routing Entry (Entry-First)

## 0) Zweck

Diese Datei beschreibt den **GUI-Adapter** fuer einen allgemeinen **ChatGPT-GUI-Chat** mit GitHub-Konnektor.

Kanonischer Start:
- `ENTRY_LATEST`
- `RepoStatusUpdate`
- passender `Workstream`
- Tiefenanker nur bei Bedarf

Nicht-Ziele:
- kein konkurrierender Startpunkt neben `ENTRY_LATEST`
- kein Session-Ritual als Pflichtprompt
- keine ToDo-Liste, kein taktisches Sammeldokument, kein verpflichtendes Handoff

## 1) Arbeitsmodus (read-first)

- Standard: `read-first` und aus Repo-Dateien argumentieren.
- Schreiben/PRs sind ein separater Schritt und bleiben an Writer/Governance gebunden.
- Aussagen ueber den Startpfad werden an `ENTRY_LATEST`, `RepoStatusUpdate` und den relevanten Workstream gebunden.

## 2) Versionsregel "Neueste Datei"

Wenn Dateien versioniert sind:

- neueste Version = hoechste `Vx`
- Tie-Break = neuestes `YYYYMMDD` im Dateinamen
- fuer den Session-Start gilt trotzdem zuerst: `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`

## 3) Kanonischer GUI-Start

1. Oeffne die neueste `meta/state/entry/*ENTRY_LATEST*_V*.md`.
2. Oeffne daraus das aktuelle `RepoStatusUpdate`.
3. Oeffne daraus oder aus dem Arbeitsauftrag den passenden Workstream.
4. Oeffne MeaningMap, Snapshot und Manifest nur, wenn fuer Routing-, Struktur- oder Auditfragen mehr Tiefe noetig ist.

Dabei gilt:
- `ENTRY_LATEST` ist ein duenner Pointer-Bund, kein operativer Sammelpunkt.
- `RepoStatusUpdate` traegt den operativen Ist-Stand.
- der Workstream traegt Slice-Ziel, Scope, DoD und naechste Schritte.

## 4) Optionale Sidecars und Legacy-Helfer

- `NextChat-Handoff` ist optionales Resume-Sidecar fuer fragile taktische Wiedereinstiege.
- Ein Standardstart funktioniert ohne Handoff.
- Legacy-Prompt-Dateien wie `SESSION_BOOTSTRAP` oder `SESSION_CLOSEOUT` duerfen als manueller Fallback existieren, sind aber nicht der primaere GUI-Weg.

## 5) Closeout-Reihenfolge

1. `RepoStatusUpdate` aktualisieren, wenn sich operative Wahrheit geaendert hat.
2. Betroffenen Workstream aktualisieren, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind.
3. MeaningMap, Snapshot und Manifest nur bei echter Struktur- oder Routing-Aenderung aktualisieren.
4. Danach `ENTRY_LATEST` refreshen.
5. Optional `NextChat-Handoff` anlegen oder aktualisieren, wenn Resume-Details bewusst nicht in Status oder Workstream gehoeren.

## 6) Routing-Matrix (Kurzreferenz)

| Anfrage/Bedarf | First Stop | Danach |
|---|---|---|
| "Wie starte ich den Chat kanonisch?" | `meta/state/entry/*ENTRY_LATEST*_V*.md` | `RepoStatusUpdate -> Workstream` |
| "Was ist der aktuelle operative Stand?" | aktuelles `RepoStatusUpdate` | Workstream, dann Tiefenanker bei Bedarf |
| "Welcher Slice ist dran?" | relevanter Workstream | Status Update und nur bei Bedarf MeaningMap |
| "Brauche ich mehr Struktur-/Auditkontext?" | `RepoMeaningMap` oder `RepoStateSnapshot` | `RepoManifest` falls Dateivollstaendigkeit noetig ist |
| "Brauche ich ein Handoff?" | nur bei Resume-Fall | sonst nein |

## 7) Minimaler Chat-Kontrakt

Wenn diese Datei als GUI-Adapter verwendet wird, gilt:

- nenne Pfade und Versionsdateien explizit
- beginne keinen neuen GUI-Chat mit `SESSION_BOOTSTRAP` oder `SESSION_CLOSEOUT` als Primaerweg
- behandle `ENTRY_LATEST` als Pointer-Bund und nicht als Ort fuer operative Sammelinhalte

## 8) Pflegehinweis

Diese Datei bleibt normativ knapp.
Wenn sich der Session-Contract aendert:

- zuerst `AGENTS.md`, `RepoMeaningMap`, `RepoStatusUpdate`-Runbook und diese Datei angleichen
- `ENTRY_LATEST` erst nach den inhaltlichen Zielartefakten refreshen
