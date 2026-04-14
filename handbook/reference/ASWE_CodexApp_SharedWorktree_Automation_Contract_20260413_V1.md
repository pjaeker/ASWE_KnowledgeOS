---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Contract fuer den Einsatz eines gemeinsam genutzten lokalen Worktrees und zeitgesteuerter Automationen als operative Koordinationsflaeche in der Codex App."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/worktrees
  - topic/automations
  - topic/coordination
---

# ASWE Codex App Shared-Worktree and Automation Contract

## 0. Zweck

Dieses Dokument macht explizit,
dass ein gemeinsam genutzter lokaler Worktree und zeitgesteuerte Automationen
als reale operative Koordinationsflaeche verwendet werden koennen,
ohne die kanonische Repo-Governance zu verletzen.

## 1. Betriebsmodus

Dieser Contract gilt nur,
wenn zu Session-Beginn explizit `M2-shared-local` aktiviert wurde.
Ohne diese Festlegung gelten weiterhin die Regeln fuer `M1-isolated`.

## 2. Zulaessige Nutzungen von shared-local

Ein gemeinsam genutzter lokaler Worktree darf verwendet werden fuer:
- gemeinsame Lesbarkeit aktueller Arbeitsartefakte,
- lokale Steuerdateien fuer Ledger, Queue und Handoff,
- zeitversetzte Aktivierung durch Automationen,
- nicht-kanonische Zwischenkoordination,
- lokale Review- und Verdichtungsarbeit.

## 3. Unzulaessige Schlussfolgerungen aus shared-local

Aus shared-local folgt nicht automatisch:
- finale Autorisierung,
- semantische Endgueltigkeit,
- Gate-Wirkung,
- Repo-Kanonizitaet,
- Freigabe fuer SSOT-Schreiben.

## 4. Write-Klassen

### Klasse W1 - Koordinationsschreiben
Zulaessig fuer bounded Rollen und Automationen innerhalb definierter K3/K5-Flaechen.
Beispiele:
- Ledger-Fortschreibung
- Queue-Eintrag
- Handoff-Datei
- Run Record

### Klasse W2 - Fachpayload-Schreiben
Zulaessig fuer bounded Rollen,
wenn der Scope dies traegt und die Payload rueckgabefaehig bleibt.
Beispiele:
- Observation Pack
- Claim Pack
- Semantic Delta Packet

### Klasse W3 - Kanonisches Repo-Schreiben
Nur nach `G4 Writer Gate` und nur durch den Main Agent.
Beispiele:
- handbook/reference/**
- blackboard/workstreams/**
- meta/state/**

## 5. Automationen

Automationen duerfen:
- periodisch prufen,
- Triggerbedingungen beobachten,
- offene Queue-Eintraege aufgreifen,
- lokale Artefakte verdichten,
- Run Records schreiben,
- Rueckgabe an Umbrella/Main Agent vorbereiten.

Automationen duerfen nicht:
- eigene Hauptfoki setzen,
- finale Gates setzen,
- kanonische SSOT-Aenderungen vollziehen,
- zweite Writer-Pfade erzeugen.

## 6. Mindestflaechen fuer M2

Wenn M2 genutzt wird,
muessen mindestens logisch getrennt vorhanden sein:
- Ledger-Flaeche
- Handoff-Flaeche
- Gate-Flaeche
- Queue-/Automation-Flaeche
- verbotene Wiederholungen / Dead-End-Flaeche

Diese Flaechen duerfen lokal liegen,
muessen aber als K5-fuehrend benannt werden.

## 7. Minimalregel fuer Parallelitaet

Parallele Arbeit ist sauber,
wenn mehrere Threads oder Automationen denselben lokalen Worktree nutzen,
aber nur ueber benannte K5-Flaechen koordinieren
und keine Seite aus stillschweigenden Dateien Autorisierung ableitet.

## 8. Minimalregel fuer Zeitversatz

Zeitversetzte Folgearbeit ist sauber,
wenn der spaetere Lauf nicht bloss Dateien vorfindet,
sondern daraus einen expliziten Ledger-, Gate- und Queue-Zustand lesen kann.

## 9. Abschlussregel

Shared-local und Automationen erweitern die operative Kopplung.
Sie ersetzen nicht den Main Agent als letzte Synthese- und Schreibinstanz.
