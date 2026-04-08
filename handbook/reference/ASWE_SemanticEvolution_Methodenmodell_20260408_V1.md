---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-08
status: draft
audience: [human, llm]
intent: "Methodenmodell des Semantic-Evolution-Pfads inklusive Mehr-Ebenen-Repräsentation, Delta-Typen und Promotionsvorprüfung."
tags:
  - layer/handbook
  - artifact/reference
  - topic/semantics
  - topic/ontology
  - topic/router
  - topic/delta
---

# ASWE Semantic Evolution - Methodenmodell

## 0. Zweck

Dieses Dokument formalisiert den Semantic-Evolution-Pfad als semantischen Disziplinierungs- und Delta-Pfad.
Es legt **nicht** direkte architektonische Geltung fest.

## 1. Primärgegenstand

- Benennung
- Begriff
- Definition
- Kategorie
- Relation
- Abgrenzung
- Ebenenordnung
- semantisches Delta

## 2. Nicht-Ziel

- keine direkte Implementierung
- keine direkte Policy-Geltung
- keine direkte finale Architekturkanonisierung

## 3. Repräsentationsebenen

### Ebene 1 - Benennungsebene
- Term
- Alias
- sprachliche Varianten
- lokale vs externe Benennung

### Ebene 2 - Begriffsebene
- definitorischer Kern
- notwendige Abgrenzung
- Verwechslungsraum

### Ebene 3 - Klassifikationsebene
- Kategorie
- Unter-/Oberordnung
- Grenzfallstatus

### Ebene 4 - Relationsebene
- zulaessige Relationen
- verbotene Gleichsetzungen
- Anschluss an vorhandene Matrix

### Ebene 5 - Ebenenebene
- Fachdomäne
- Systemgegenstand
- Governance
- Werkzeug/Umgebung
- konkreter Fall

### Ebene 6 - SSOT-Ebene
- betroffenes Glossar
- betroffene Taxonomie
- betroffene Ontologie
- betroffener Router
- betroffene Referenzen

### Ebene 7 - Promotionsvorprüfung
- rein semantisches Delta
- semantisch-architektonischer Kandidat
- normativer Folgekandidat
- noch nicht promotionsreif

## 4. Delta-Typen

Zulaessige semantische Delta-Typen:
- `rename`
- `definition-refine`
- `split`
- `merge-review`
- `reclassify`
- `relation-add`
- `relation-restrict`
- `level-correction`
- `scope-restrict`
- `scope-expand-review`

## 5. Pflichtprüfungen

Jedes semantische Delta muss prüfen:
- Begriff vs Benennung
- Kategorie vs Einzelfall
- Relation vs Gleichsetzung
- Fachdomäne vs lokale Governance
- Beobachtung vs Regel
- Werkzeug-/Umgebungsfrage vs Systemstrukturfrage

## 6. Semantische Invarianten

### S1
Keine Begriffsentscheidung nur aus Wortähnlichkeit.

### S2
Keine Klassifikationsentscheidung ohne definitorische Basis.

### S3
Keine Relationsentscheidung ohne zulässige Ebenenordnung.

### S4
Keine Governance-Folge ohne explizite Promotionsvorprüfung.

### S5
Keine semantische Endgueltigkeit allein aus einem isolierten Intake-Fall.

## 7. Output-Artefakte

Zulaessige Outputs:
- Semantic Delta Packet
- Begriffsabgrenzung
- Relationspruefnotiz
- Reclassify Proposal
- Router-Impact Note
- SSOT-Impact Packet

## 8. Promotionsvorprüfung

### SE-P0
Intake-Trigger erhalten, aber noch nicht semantisch bearbeitet.

### SE-P1
Begriffliche und Ebenenpruefung erfolgt.

### SE-P2
Klassifikations- und Relationspruefung erfolgt.

### SE-P3
SSOT-Impact explizit beschrieben.

### SE-P4
Promotion Candidate fuer `ArchitectureCanonicalization` oder SSOT-Update vorgeschlagen.

Nur SE-P4 darf an einen spaeteren architektonischen Pfad eskalieren.

## 9. Minimalregeln für bounded Autonomie

Ein bounded-autonomer semantischer Lauf darf:
- Begriffe vergleichen
- Definitionen pruefen
- Klassifikationen hinterfragen
- Relationen pruefen
- Deltas vorschlagen
- SSOT-Impact markieren

Ein bounded-autonomer semantischer Lauf darf nicht:
- Begriffe final kanonisieren
- Architektur-Geltung festlegen
- Policies oder Gates definieren
- finale SSOT-Aenderung ohne Main-Agent-Freigabe ausloesen

## 10. Zentrale offene Forschungs-/Modellierungsfragen

- Wie fein soll die Promotionsmatrix sein?
- Welche semantischen Delta-Typen brauchen formale Priorisierung?
- Welche Validatoren sind spaeter fuer Glossar/Taxonomie/Router-Anschluesse noetig?
- Wann ist eine Reclassify-Pruefung hinreichend robust?

## 11. Codex-App-Folge

Der Pfad ist nur dann bounded-autonom tragfähig, wenn:
- der Router aktiv als Disziplinierungsrahmen verwendet wird,
- ein eigener Role Contract existiert,
- Delta-Typen explizit sind,
- Main-Agent-Synthese als letzte semantische Autoritaet erhalten bleibt.
