---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V2
date: 2026-04-08
status: draft
audience: [human, llm]
intent: "Aktiver Primärpfad fuer bounded Aufnahme, Strukturierung und Vorbewertung von Evidenz."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/evidence
  - topic/intake
  - topic/provenance
  - topic/codex
---

# ASWE WS Evidence Intake

## Ziel
Neue Evidenz kontrolliert aufnehmen, normalisieren und bis zur Trigger-Reife strukturieren.

## In Scope
- Quellenaufnahme
- Beobachtungsextraktion
- Claim-Bildung
- Belegzuordnung
- Evidenzgüteprofil
- Konfliktcluster
- Pattern-Kandidaten
- Trigger-Packets

## Out of Scope
- semantische Endgueltigkeit
- architektonische Normsetzung
- finale SSOT-Aenderungen

## Hauptartefakte
- Methodenmodell EvidenceIntake
- Role Contract EvidenceIntake
- Claim Pack
- Conflict Cluster
- Trigger Packet

## Naechster Thin Slice
Der erste bounded Lauf in der Codex App soll mindestens erzeugen:
- 1 Observation Pack
- 1 Claim Pack
- 1 Conflict Cluster oder explizit `no-conflict`
- 1 Trigger-Entscheidung

## Erfolgskriterium
Der Pfad ist erfolgreich, wenn belastbare Trigger fuer SemanticEvolution erzeugt werden,
ohne semantische oder architektonische Vorgriffe.
