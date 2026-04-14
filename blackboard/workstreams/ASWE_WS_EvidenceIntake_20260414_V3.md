---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V3
date: 2026-04-14
status: draft
audience: [human, llm]
intent: "Aktiver Primaerpfad fuer bounded self-evolution des Evidence-Intake-Verfahrens nach Merge des 2026-04-14-Satzes."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/evidence
  - topic/intake
  - topic/self-evolution
  - topic/codex
---

# ASWE WS Evidence Intake

## Ziel
Neue Evidenz kontrolliert aufnehmen, strukturieren und zugleich die Operationalisierung des Intake-Verfahrens selbst bounded verbessern.

## In Scope
- Quellenaufnahme
- Beobachtungsextraktion
- Claim-Bildung
- Belegzuordnung
- Evidenzgueteprofil
- Konfliktcluster
- Trigger-Packets
- Operationalization Eval
- packetisierte Rueckgabe an Umbrella

## Out of Scope
- semantische Endgueltigkeit
- architektonische Normsetzung
- finale SSOT-Aenderungen

## Hauptartefakte
- Methodenmodell EvidenceIntake
- Role Contract EvidenceIntake
- Operationalization Eval
- Observation Pack
- Claim Pack
- Conflict Cluster oder `no-conflict`
- Trigger Packet
- Gate-/Ledger-/Handoff-Rueckgabe an Umbrella

## Laufzeitkontext
Die aktuelle repo-sichtbare `.codex`-Flaeche ist bereits auf self-evolution umgestellt. Dieser Workstream behandelt das als beobachtete Laufzeitbedingung. Ob diese Lage zugleich die dauerhafte teamweite Aktivierungswahrheit sein soll, ist eine getrennte Governancefrage.

## Naechster Thin Slice
Der erste echte bounded self-evolution-Lauf soll mindestens erzeugen:
- 1 Observation Pack
- 1 Claim Pack
- 1 Conflict Cluster oder explizit `no-conflict`
- 1 Trigger Packet
- 1 OI-G0/OI-G1-Einschaetzung

## Erfolgskriterium
Der Pfad ist erfolgreich, wenn belastbare Trigger und zugleich eine bessere Intake-Operationalisierung erzeugt werden, ohne semantische oder architektonische Vorgriffe.
