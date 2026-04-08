---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-08
status: draft
audience: [human, llm]
intent: "Methodenmodell des Evidence-Intake-Pfads inklusive Mehr-Ebenen-Repräsentation und Evidenzgüte."
tags:
  - layer/handbook
  - artifact/reference
  - topic/evidence
  - topic/intake
  - topic/provenance
  - topic/quality
---

# ASWE Evidence Intake - Methodenmodell

## 0. Zweck

Dieses Dokument formalisiert den Evidence-Intake-Pfad als epistemischen Aufnahmepfad.
Es legt **nicht** semantische Geltung und **nicht** architektonische Normsetzung fest.

## 1. Primärgegenstand

- Quelle
- Beobachtung
- Claim
- Beleg
- Konflikt
- Pattern-Kandidat
- Trigger-Kandidat

## 2. Nicht-Ziel

- keine direkte Kanonisierung
- keine direkte Policy- oder Architekturentscheidung
- keine semantische Endgueltigkeitsfestlegung

## 3. Repräsentationsebenen

### Ebene 1 - Quellenebene
Trägt:
- Quellentyp
- Herkunft
- Provenienz
- Zeit
- Zugriffskontext

### Ebene 2 - Beobachtungsebene
Trägt:
- explizit Festgestelltes
- noch keine Interpretation
- noch keine Generalisierung

### Ebene 3 - Claim-Ebene
Trägt:
- explizite Aussage
- Reichweite der Aussage
- implizite Voraussetzungen

### Ebene 4 - Stützungsebene
Trägt:
- Zuordnung Beleg -> Claim
- Staerkungsgrad
- Schwächungsgrad
- Unklarheitsgrad

### Ebene 5 - Konfliktebene
Trägt:
- Konflikteinheiten
- Konflikttyp
- Konfliktursache
- offene Aufloesungsfrage

### Ebene 6 - Pattern-Ebene
Trägt:
- wiederkehrende Befundstrukturen
- Rekurrenzgrad
- Stabilitaetsgrad
- Gegenbeispielstatus

### Ebene 7 - Trigger-Ebene
Trägt:
- semantischer Trigger
- architektonischer Trigger
- sicherheitsrelevanter Trigger
- observability-/adapterrelevanter Trigger

## 4. Evidenzgüte als Querbewertungsdimension

Evidenzgüte ist keine eigene Ebene.
Sie ist ein Pflichtprofil, das mindestens Ebenen 1 bis 7 begleitet.

## 5. Güteachsen

### G1 Provenienz-Integrität
Wie belastbar ist die Herkunft?

### G2 Methodische Angemessenheit
Ist die Erzeugungs- oder Beobachtungsmethode zum Gegenstand passend?

### G3 Frische
Ist die Evidenz zeitlich tragfähig?

### G4 Unabhängigkeit / Korroboration
Wird die Evidenz durch unabhängige Linien gestützt?

### G5 Konfliktstatus
Ist die Evidenz widerspruchsfrei, strittig oder widerlegt?

### G6 Domänen- und Kontextfit
Passt die Evidenz wirklich zum behandelten Gegenstand?

## 6. Folgen der Evidenzgüte für die Ebenen 4 bis 7

### Für Ebene 4 - Stützung
Stützung ist nur mit Güteprofil zulässig.
Kein Claim darf ohne Belegtyp und Güteprofil als robust markiert werden.

### Für Ebene 5 - Konflikt
Konflikte sind zu unterscheiden in:
- Quellenkonflikt
- Beobachtungskonflikt
- Claim-Konflikt
- Interpretationskonflikt

### Für Ebene 6 - Pattern
Pattern-Kandidaten sind nur zulässig, wenn:
- mindestens hinreichende Rekurrenz vorliegt,
- die Korroboration nicht trivial ist,
- der Konfliktstatus nicht dominant negativ ist.

### Für Ebene 7 - Trigger
Trigger werden in drei Klassen getrennt:
- `semantic-review-needed`
- `architecture-review-candidate`
- `security-or-observability-review-candidate`

Ein Trigger in Richtung Semantik oder Architektur darf nur gesetzt werden, wenn die Evidenzgüte oberhalb der Minimalgrenze liegt.

## 7. Output-Artefakte

Zulaessige Output-Artefakte:
- Source Card
- Observation Pack
- Claim Pack
- Conflict Cluster
- Pattern Candidate Register
- Trigger Packet

## 8. Promotionslogik

### EI-P0
Rohquelle registriert, aber noch nicht normalisiert.

### EI-P1
Beobachtung diszipliniert extrahiert.

### EI-P2
Claim explizit formuliert und Beleg zugeordnet.

### EI-P3
Konflikt- und Pattern-Pruefung abgeschlossen.

### EI-P4
Trigger fuer `SemanticEvolution` oder spaeteren Review gesetzt.

Nur EI-P4 darf in einen semantischen Folgepfad uebergeben werden.

## 9. Minimalregeln für bounded Autonomie

Ein bounded-autonomer Intake-Lauf darf:
- Quellen erfassen
- Beobachtungen extrahieren
- Claims strukturieren
- Belege zuordnen
- Konflikte clustern
- Pattern-Kandidaten bilden
- Trigger-Packets erzeugen

Ein bounded-autonomer Intake-Lauf darf nicht:
- semantische Endgueltigkeit setzen
- Architektur- oder Policy-Folgen festlegen
- SSOTs final aendern

## 10. Zentrale offene Forschungs-/Modellierungsfragen

- Wie fein soll die Frischebewertung je Quellentyp sein?
- Welche Rekurrenzschwellen legitimieren Pattern-Kandidaten?
- Welche Trigger-Schwellen sind fuer semantische Promotionspruefung angemessen?
- Welche Darstellungsform eignet sich am besten fuer Claim Packs und Conflict Clusters?

## 11. Codex-App-Folge

Der Pfad ist geeignet fuer bounded-autonome Vorarbeit, wenn:
- der Role Contract existiert,
- ein klarer Intake-Scope vorliegt,
- die Output-Artefakte festgelegt sind,
- die Trigger-Schwellen nicht implizit bleiben.
