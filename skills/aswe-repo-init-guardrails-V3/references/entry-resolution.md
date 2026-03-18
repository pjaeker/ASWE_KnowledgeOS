---
project: ASWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Robuste Bestimmung des kanonischen Entry-Points fuer ASWE-artige Repos mit Schutz gegen Fehlgriffe durch alte oder nicht-indexierte Dateien."
---

# Reference: Entry Resolution

## Grundprinzip

Arbeite parallel-kandidatenbasiert, nicht seriell-naiv.

## Kandidatenkanaele

Baue parallel mindestens diese Mengen auf:

- Entry-Kandidaten
- Status-Kandidaten
- Workstream-Kandidaten
- Handoff-Kandidaten
- Commit-Signale
- Referenzsignale

## Freshness-Challenge vor Finalisierung

1. sibling sweep fuer same-pattern Entry-Kandidaten
2. Datums- und Versionssignale vergleichen
3. Commit-Probe auf Entry-Pfaden
4. Referenz-Probe, ob Status, Workstream oder andere State-Artefakte auf juengeren Entry zeigen
5. Fallback-Probe bei moeglicher Sichtbarkeitsluecke
6. Abschlussentscheidung: kanonischen Kandidaten ausgeben oder Kandidatenmenge offen lassen

## Wichtige Abgrenzung

Die erfolgreiche Entry-Aufloesung beantwortet noch nicht automatisch, welches das juengste Status-Update ist. Diese Frage muss anschliessend separat ueber den Session-Contract aufgeloest werden.
