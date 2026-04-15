---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-15
status: draft
intent: "Governance-, Interaktions- und Autoritaetsvertrag fuer bounded Selbstevolution im ArchitectureEvolution-Sonderpfad."
---

# ASWE Governance Interaction Authority Contract

## 0. Zweck

Dieses Dokument konsolidiert die offene Schnittstelle zwischen:
- Erkenntnisprozess-Rollenmodell,
- Capability-/Spawn-Readiness,
- Thread-Topologie,
- K5-Kopplung,
- bounded Helpern,
- Main-Agent-Autoritaet.

Es soll vermeiden, dass Autoritaet, Thread-Kommunikation und Write-Wirkung stillschweigend aus gemeinsam sichtbaren Dateien abgeleitet werden.

## 1. Fuehrende Ableitung

1. Rollen werden epistemisch bestimmt.
2. Pfadrollen konkretisieren diese epistemischen Klassen.
3. bounded Helper duerfen nur innerhalb der Autoritaet ihrer Mutterinstanz arbeiten.
4. Routing-, Gate- und Resume-Wirkung entsteht nur ueber K5.
5. Finale Synthese-, Geltungs- und Schreibautoritaet bleibt beim Main Agent.

## 2. Hauptinstanzen

### Main Agent / Umbrella
- traegt R6 vollumfaenglich
- setzt finale Gate-Entscheidungen
- setzt Fokus und Priorisierung
- entscheidet ueber bounded Spawns
- bleibt letzte Schreibinstanz fuer W3

### Evidence Intake
- primaer R1 + R2
- erzeugt Beobachtungs-, Claim-, Konflikt- und Trigger-Artefakte
- darf Rueckgabe- und Triggerkandidaten bilden
- darf keine semantische Endgeltung oder Architektur-Geltung setzen

### Semantic Evolution
- primaer R3
- arbeitet erst nach explizitem `G1 pass`
- darf semantische Deltas und SSOT-Impact beschreiben
- darf keine finale Kanonisierung setzen

### bounded Helper
- arbeiten nur auf explizitem Slice
- duerfen keine Hauptfokusverschiebung ausloesen
- duerfen keine finale Gate-Wirkung setzen
- duerfen keine W3-Schreibwirkung entfalten

## 3. Autoritaetsklassen

### A1 Beobachtungs-/Analyseautoritaet
- Observation, Claim, Konflikt, Triggerkandidat, Evidenzguete
- zulaessig fuer Evidence Intake und passende bounded Zulieferer

### A2 Interpretationsautoritaet
- Begriff, Relation, Delta, Modellkandidat
- zulaessig fuer Semantic Evolution nach Trigger-/Scope-Freigabe

### A3 Verify-Autoritaet
- Hypothesenpruefung, Gate-Kandidat, Begrenzung, Falsifikation
- zulaessig fuer R5-zentrierte bounded Helfer
- nie identisch mit finaler Gate-Entscheidung

### A4 Governance-/Geltungsautoritaet
- Priorisierung, Freigabe, Fokus, Kanonisierung, Writer-Freigabe
- exklusiv Main Agent / Umbrella

## 4. Write-Klassen

### W1 Koordinationsschreiben
- Ledger
- Queue
- Handoff
- Run Record
- Gate Record Vorschlagsniveau

### W2 Fachpayload-Schreiben
- Observation Pack
- Claim Pack
- Conflict Cluster
- Trigger Packet
- Semantic Delta Packet
- Verify Note

### W3 Kanonisches Repo-Schreiben
- handbook/reference/**
- blackboard/workstreams/**
- meta/state/**

Regel:
W3 nur nach Writer Gate und nur durch Main Agent.

## 5. K5-Regel

K5 ist der einzige Zustand mit Routing-, Gate-, Resume- und Promotionswirkung.
Daraus folgt:
- gleiche lokale Dateisicht erzeugt keine Autoritaet
- shared-local erzeugt keinen semantischen Konsens
- Thread-Interaktion ist nur dann bindend, wenn Scope, Output, Restunsicherheit und Return-Ziel explizit paketisiert sind

## 6. Spawn-Regeln fuer bounded Helper

Ein Helper darf nur aktiviert werden, wenn:
1. Mutterinstanz explizit benannt ist,
2. aktiver Workstream explizit steht,
3. der Slice bounded ist,
4. Inputflaeche bekannt ist,
5. Return-Punkt explizit ist,
6. kein zweiter Writer-Pfad entsteht,
7. keine freie Synthese delegiert wird.

## 7. Interaktionsprotokoll

### Evidence Intake -> Umbrella
Pflicht bei:
- Trigger Packet
- `hold` / `return` / `reject`
- Scope-Ueberdehnung
- Bedarf nach Semantic-Folgepfad
- Bedarf an kanonischer Mutation

### Umbrella -> Semantic Evolution
Nur bei:
- `G1 pass`
- explizitem bounded semantischem Scope
- benanntem Rueckgabeziel

### Umbrella -> bounded Helper
Nur bei:
- klarer Spezialfrage
- engerem Scope als Mutterpfad
- explizitem Output-Typ
- klarem Stop-/Return-Grund

## 8. Verbotene Uebergaenge

- Evidence Intake -> Semantic Evolution ohne `G1 pass`
- bounded Helper -> finale Gate-Entscheidung
- Automation -> Fokusentscheidung
- shared-local Datei -> implizite Autorisierungsableitung
- bounded Rolle -> W3-Schreiben

## 9. Nicht-Ziele

Dieses Dokument legt nicht fest:
- konkrete Modellnamen
- konkrete UI-Aktionen in Codex
- konkrete Scheduling-Zyklen
- konkrete `.codex`-Materialisierung
