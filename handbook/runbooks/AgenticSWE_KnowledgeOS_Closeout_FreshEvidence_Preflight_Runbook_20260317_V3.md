---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V3
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Ergaenzt den harmonisierten Session-Contract um einen verpflichtenden Fresh-Evidence-Preflight vor jedem Closeout und erzwingt die Trennung zwischen latest status update found und status referenced by entry."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/closeout
  - topic/evidence
  - topic/status
  - topic/router
  - topic/codex
  - topic/chatgpt
---

# Runbook: Closeout mit Fresh-Evidence-Preflight

## Zweck

Der harmonisierte Session-Contract bleibt bestehen.
Dieses Runbook fuegt **vor** dem bestehenden Closeout einen verpflichtenden Fresh-Evidence-Preflight hinzu.

Zusatzregel:
Ein sauberer Closeout muss **getrennt** bestimmen und berichten:
- latest status update found
- status referenced by canonical entry

## Warum diese Nachschaerfung noetig ist

Der Status vom 2026-03-16 ist neuer als der vom 2026-03-13, sagt aber selbst:
- der kanonische Arbeitsstand bleibt auf dem 2026-03-13-Anker
- die neue 2026-03-16-Evidence schaerft den Slice nach
- die uebergeordnete Repo-Routing-Wahrheit aendert sich dadurch noch nicht automatisch

Damit ist klar:
Neuester Status und Entry-Referenz duerfen im Closeout nicht verwechselt werden.

## Pflicht-Preflight vor jedem Closeout

Vor jedem Closeout explizit pruefen:

1. latest `RepoStatusUpdate` found
2. status referenced by current `ENTRY_LATEST`
3. betroffener Workstream und benachbarte frische Workstream-Artefakte
4. relevante runbook- oder routing-nahe Artefakte fuer den laufenden Slice
5. commits oder Artefakte, die operative Wahrheit sichtbar verschoben haben

## Minimaler Evidence-Refresh-Test

Vor dem Fortschreiben dieser Fragen nachgehen:

- Existiert ein neueres `RepoStatusUpdate`, das juenger ist als der aktuell per Entry referenzierte Status?
- Falls ja: aendert dieses neuere Statusupdate die operative Wahrheit nur lokal oder auch die uebergeordnete Routing-Wahrheit?
- Existiert ein neueres `ENTRY_LATEST`, das auf andere Anker zeigt?
- Existiert ein neuerer Workstream-Stand, der Ziel, Scope, DoD oder Next Focus veraendert?
- Existiert Commit- oder Artefakt-Evidence, die den bisherigen operativen Fokus verschiebt?
- Falls ja: habe ich mein Session-Modell zuerst aktualisiert?

## Decision Rule

Wenn fresher Evidence die operative Wahrheit aendert:
- nicht vom aelteren Stand fortschreiben
- Session-Modell aktualisieren
- latest status und entry-referenced status getrennt reporten
- erst danach den normalen Closeout anwenden

## Kanonischer Closeout nach dem Preflight

Nach erfolgreichem Fresh-Evidence-Preflight:

1. `RepoStatusUpdate` aktualisieren, wenn sich operative Wahrheit geaendert hat
2. betroffenen Workstream aktualisieren, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind
3. MeaningMap, Snapshot und Manifest nur bei echter Struktur- oder Routing-Aenderung anfassen
4. danach `ENTRY_LATEST` refreshen
5. `NextChat-Handoff` nur bei echtem Resume-Bedarf anlegen oder aktualisieren

## Mindestinhalt eines sauberen Closeout-Reports

Immer kurz festhalten:
- latest status update found
- status referenced by entry
- welche frische Evidence geprueft wurde
- ob konfligierende neuere Evidence gefunden wurde
- welche Anker aktualisiert wurden
- welche bewusst **nicht** aktualisiert wurden
- welcher naechste Startfokus jetzt fuehrend ist

## Anti-Regressionsregel

Ein Closeout ist unvollstaendig, wenn:
- plausible neuere Status-/Entry-/Workstream-Evidence nicht geprueft wurde
- latest status update und status referenced by entry vermischt werden
- ein aelterer Fokus stillschweigend fortgeschrieben wird
- nur aus Chat-Kontext statt aus Repo-Evidence geschlossen wird
