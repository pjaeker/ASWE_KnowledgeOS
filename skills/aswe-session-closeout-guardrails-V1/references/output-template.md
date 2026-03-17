---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Standard-Ausgabeformat fuer Session-Closeout und Next-Start-Paket."
---

# Reference: Output Template

## Closeout-Checkpoint

Beschreibe knapp:

- was sich in der Session geaendert hat
- ob Status, Workstream oder Struktur fortgeschrieben wurden
- ob Handoff noetig ist

## Resultierender Session-Contract

- Entry: ...
- Latest Status Update Found: ...
- Status Referenced by Entry: ...
- Active Workstream: ...
- Handoff Status: ...
- Additional Anchors: ...
- Contract Status: `consistent` / `consistent-with-advance` / `inconsistent` / `provisional`

## Naechstes Start-Paket

Formuliere explizit, von welchen Ankern die naechste Session starten soll.

## Guardrail-Bewertung

- Entry zuletzt aktualisiert: ja/nein
- Blocker vorhanden: ja/nein
- Confidence: niedrig / mittel / hoch
- Ein-Satz-Begruendung
