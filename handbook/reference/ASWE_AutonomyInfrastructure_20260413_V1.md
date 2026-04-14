---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "V1-Referenz fuer Progress Ledger, Supervisor Routing, Verify Gates, Resume Sidecar, Dead-End Registry und Iteration-/Budget-Governance."
tags:
  - layer/handbook
  - artifact/reference
  - topic/autonomy
  - topic/orchestration
  - topic/resume
  - topic/ledger
---

# ASWE Autonomy Infrastructure V1

## 0. Zweck

Dieses Dokument beantwortet **L5** als zusammenhaengenden Infrastrukturvertrag.
Es definiert keine neue Fachspur, sondern die Querschnittsinfrastruktur fuer bounded Langlaeufe.

## 1. Komponenten

### 1.1 Progress Ledger
Kanonischer Laufzustand eines aktiven Slices.
Pflichtfelder:
- inherited anchor summary
- aktiver Workstream
- bound active slice
- letzter gueltiger Payload
- letzter Gate-Status
- offene Fragen
- naechster sicherer Schritt
- Budgetstatus
- Driftstatus

### 1.2 Supervisor Routing Contract
Regelt:
- wann ein Pfad fortgesetzt wird,
- wann Rueckgabe an Main Agent zwingend ist,
- wann Spezialisierung auf bounded Rollen legitim ist,
- wann Stop oder Defer gilt.

Default-Instanz in V1:
- Main Agent plus Umbrella-Funktion,
- keine freie Mesh-Koordination.

### 1.3 Verify Gates
Operative Pruefungen fuer:
- Ankerkonsistenz
- Payload-Vollstaendigkeit
- Boundedness
- Evidenz- bzw. Delta-Reife
- Write-/Mirror-Sicherheit

### 1.4 Resume Sidecar
Explizite Session-Fortsetzungsansicht.
Muss enthalten:
- letzten gueltigen Anchor
- letzten gueltigen Payload
- letzten Gate-Status
- offene Entscheidungsfrage
- verbotene Wiederholungen
- kleinsten sicheren Neustart

### 1.5 Dead-End Registry
Register fuer:
- widerlegte Hypothesen
- ungueltige Trigger
- unbrauchbare Delta-Kandidaten
- unzulaessige Rollenspruenge
- wiederholungsgefaehrdete Sackgassen

### 1.6 Iteration- und Budget-Governance
Regelt:
- maximale Schleifenlaenge pro Slice,
- maximalen Spezialisierungsgrad,
- Pflicht zur Rueckgabe bei stagnierendem Gate-Fortschritt,
- Pflicht zur Dead-End-Markierung.

## 2. Zusammenspiel

### 2.1 Minimalzyklus
1. Slice starten
2. Ledger-Eintrag anlegen
3. Payload erzeugen oder aktualisieren
4. Verify Gates ausfuehren
5. Gate-Status setzen
6. Dead-End oder Fortschritt vermerken
7. Resume Sidecar nur an Session-Grenze schreiben

### 2.2 Harte Trennung
- Live-Handoff dient der Rollen- oder Pfaduebergabe im laufenden Zyklus
- Resume Sidecar dient der spaeteren Wiederaufnahme

## 3. Rueckgabezwingende Situationen

Rueckgabe an Main Agent ist zwingend bei:
- Scope-Entgrenzung
- konkurrierenden Rollenlogiken
- Architektur- oder Governancewirkung
- notwendiger Mutation
- Budget- oder Kontextgrenze
- fehlender Verify-Basis

## 4. Stop-Regeln

Ein Lauf stoppt spaetestens bei:
- wiederholtem `hold` ohne neue Evidenz
- wiederholtem `defer` ohne geklaerte Abhaengigkeit
- Dead-End-Bestaetigung
- fehlender Ankerkonsistenz
- sinkender Qualitaet unter Mindestniveau

## 5. Failure-Mode-Abdeckung

Diese Infrastruktur adressiert direkt:
- Focus Drift
- Second Writer Path
- Verification Starvation
- Long-Run Memory Drift
- Handoff Collapse
- Cost / Iteration Runaway
- Mirror Drift

## 6. Nicht-Ziele

Dieses Dokument beschreibt nicht:
- konkrete Agenten-Implementierung
- konkrete UI-Automation
- konkrete Closeout-Skill-Umschreibung
