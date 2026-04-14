---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Vertrag fuer nahtlose Thread-, Helper- und Automationsorchestrierung im bounded selbst-evolvierbaren ArchitectureEvolution-Sonderpfad."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/orchestration
  - topic/routing
  - topic/threads
  - topic/helpers
---

# ASWE Codex App Thread Orchestration and Routing Contract

## 0. Zweck

Dieses Dokument schliesst die Orchestrierungsluecke zwischen:
- Thread-Topologie,
- moeglichen bounded Hilfsrollen,
- zeitversetzten Automationen,
- und den konkreten Selbstverbesserungsrouten.

## 1. Orchestrierungsgrundsatz

Die Orchestrierung bleibt **umbrella-zentriert**.
Es gibt keine freie Mesh-Koordination als Default.
Jede Spezialisierung bleibt an:
- aktiven Workstream,
- bounded Slice,
- lesbaren K5-Zustand,
- expliziten Return-Punkt
gebunden.

## 2. Fuehrende Akteure

### 2.1 Main Agent / Umbrella
Fuehrend fuer:
- Initialisierung
- Gate-Festlegung
- Pfadpromotion
- Resume
- Writer-Entscheidung

### 2.2 Primaere Fachthreads
- `Evidence Intake`
- `Semantic Evolution`
- spaeter optional `Architecture Canonicalization`

### 2.3 Situativ wiederverwendbare bounded Helper
- `issue_triager`
- `ws_mapper`
- `bridge_doc_agent`
- `railway_observer`

## 3. Zulassungsregeln fuer bounded Helper

Ein Helper darf nur aktiviert werden, wenn:
- der aktive Pfad bereits feststeht,
- die Spezialfrage enger ist als der Pfad selbst,
- der Rueckgabepunkt an Umbrella/Main Agent explizit ist,
- der Helper keine finale Gate- oder Writer-Wirkung uebernimmt.

## 4. Route-Typen

### R-A Linearer Erstzyklus
`Umbrella -> Evidence Intake -> Umbrella/G1 -> Semantic Evolution -> Umbrella/G2,G3 -> optional Architecture Review Candidate -> Resume`

### R-B Wiederholungsschleife im Intake
`Umbrella -> Evidence Intake -> Umbrella/G1 hold|return -> neuer bounded Intake-Slice`

### R-C Semantikschleife
`Umbrella -> Semantic Evolution -> Umbrella/G2 hold|return -> neuer bounded Semantic-Slice`

### R-D Verzweigte Rueckkopplung
`Evidence Intake -> Umbrella -> ws_mapper oder issue_triager -> Umbrella -> Evidence oder Semantic`

### R-E Zeitversetzte Folgearbeit
`Umbrella -> Queue Entry -> Automation oder spaeterer Thread -> Umbrella`

### R-F Architekturvorbereitung
`Semantic Evolution -> Umbrella/G3 pass -> Architecture Canonicalization -> Umbrella -> G4 Writer Gate oder no-writer-needed`

## 5. Selbstverbesserungsrouten

Selbstverbesserung ist zulaessig in drei Formen:

### 5.1 lineare Verbesserung
Ein Pfad erzeugt einen besseren Folgekandidaten fuer den naechsten Pfad.

### 5.2 Schleifenverbesserung
Ein `hold`, `return` oder `defer` fuehrt zu einem engeren neuen Slice mit besserem Input.

### 5.3 verzweigte Verbesserung
Ein Teilproblem wird an einen bounded Helper oder eine Automation ausgelagert,
kommt aber mit explizitem Handoff und Rueckgabe an Umbrella zurueck.

## 6. Verbotene Routen

- `Evidence Intake -> Semantic Evolution` ohne Umbrella/G1
- `Semantic Evolution -> Architecture Canonicalization` ohne Umbrella/G2,G3
- `Automation -> finale Gate-Entscheidung`
- `bounded Helper -> kanonisches Repo-Schreiben`
- `Thread A -> Thread B` nur auf Basis stillschweigender lokaler Zwischenbedeutung

## 7. Initialprompt- und Threadbindung

Kein Thread gilt als sauber initialisiert ohne:
- passenden Bootstrap-Prompt,
- benannten Scope,
- lesbaren K5-Zustand,
- explizites Rueckgabeziel.

## 8. Abschlussregel

Ein autonomer E2E-Start ist nur dann nahtlos,
wenn jeder naechste Akteur eindeutig beantworten kann:
- warum er jetzt starten darf,
- welchen K5-Zustand er liest,
- was er schreiben darf,
- wohin er zurueckgibt.
