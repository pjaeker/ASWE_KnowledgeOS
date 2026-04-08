---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-08
status: draft
audience: [human, llm]
intent: "Generisches epistemisches Rollenmodell fuer bounded-autonome Wissensarbeit."
tags:
  - layer/handbook
  - artifact/reference
  - topic/epistemics
  - topic/roles
  - topic/science
  - topic/codex
---

# ASWE Erkenntnisprozess-Rollenmodell

## 0. Zweck

Dieses Dokument definiert generische Rollenklassen entlang eines verallgemeinerbaren Erkenntnisprozesses.
Es ist pfadunabhängig.
Es definiert keine pfadspezifische Fachmethodik.

## 1. Leitthese

Der generische Oberbau soll nicht primär arbeitsorganisatorisch, sondern epistemisch bestimmt werden.

Daraus folgt:
- Rollen werden zuerst nach Erkenntnisfunktion unterschieden.
- Arbeitsorganisation wird nachgelagert protokolliert.
- Tool-Zuschneidung folgt erst danach.

## 2. Rollenklassen

### R1 Beobachtung / Messung
Gegenstand:
- Rohsignal
- Zustand
- Messung
- Beobachtung

Zulässige Grundoperationen:
- erfassen
- isolieren
- beschreiben
- provenance-beziehen

### R2 Analyse / Auswertung
Gegenstand:
- Struktur
- Muster
- Abweichung
- Relevanz
- Güte
- Konflikt

Zulässige Grundoperationen:
- ordnen
- clustern
- vergleichen
- bewerten

### R3 Interpretation / Modellbildung
Gegenstand:
- Begriff
- Kategorie
- Relation
- Erklärung
- Delta
- Modellkandidat

Zulässige Grundoperationen:
- abgrenzen
- typisieren
- relationieren
- modellieren

### R4 Umsetzung / Intervention
Gegenstand:
- Artefaktänderung
- Konfigurationsänderung
- Modellmaterialisierung
- Implementationsänderung

Zulässige Grundoperationen:
- ändern
- erzeugen
- materialisieren
- operationalisieren

### R5 Test / Bestätigung
Gegenstand:
- Hypothese
- Änderung
- Modell
- Gate-Kandidat

Zulässige Grundoperationen:
- prüfen
- bestätigen
- falsifizieren
- begrenzen

### R6 Synthese / Governance
Gegenstand:
- Priorisierung
- Geltung
- Freigabe
- Kanonisierung
- Hauptfokus
- Schreibautorität

Zulässige Grundoperationen:
- entscheiden
- priorisieren
- freigeben
- zurückweisen

## 3. Typische Übergänge

Zulässig:
- R1 -> R2
- R2 -> R3
- R3 -> R4
- R4 -> R5
- R5 -> R6
- R3 -> R6
- R2 -> R6

Nicht als Default:
- R1 -> R4
- R1 -> R6
- R2 -> R4 ohne interpretative Brücke
- R3 -> R6 ohne explizite Begründung
- jede Rückleitung, die Autorität implizit verschiebt

## 4. Deduktiv ableitbar

Aus dem Rollenmodell ableitbar:
- zulässige Übergänge
- typische Input-/Output-Formen
- typische Handoff-Richtung
- typische Verify-Anschlussstellen
- grundlegende Autoritätsgrenzen

## 5. Nicht rein deduktiv ableitbar

Nicht allein aus dem Rollenmodell ableitbar:
- pfadspezifische Invarianten
- Güteschwellen
- Promotionslogik
- Tool-Passung
- Fehlermodi in realer Nutzung

## 6. Epistemische Ergänzungslogik

### Deduktiv
für:
- Klassen
- Übergänge
- Grenzziehungen

### Induktiv
für:
- empirische Kalibrierung
- Kollaps von Rollen
- Handoff-Fehlformen
- übersehene Zwischenrollen

### Abduktiv
für:
- beste erklärende Rollenwahl bei Ambiguität
- plausible Zwischenrollen
- robuste Fallzerlegung

## 7. Anschluss an ASWE-Primärpfade

### EvidenceIntake
primär:
- R1 Beobachtung / Messung
- R2 Analyse / Auswertung

sekundär:
- Trigger in Richtung R3

### SemanticEvolution
primär:
- R3 Interpretation / Modellbildung

sekundär:
- Vorbereitung von R5-Rückkopplung

### ArchitectureCanonicalization
primär:
- R6 Synthese / Governance

### HarnessOperationalization
primär:
- R4 Umsetzung / Intervention
- mit R5 Test / Bestätigung

## 8. Konsequenz für spätere Tools

Tools und Runtime Mirrors sollen nicht direkt aus einzelnen Pfadfällen entstehen.
Sie sollen aus stabilen Rollenklassen plus empirischer Kalibrierung zugeschnitten werden.
