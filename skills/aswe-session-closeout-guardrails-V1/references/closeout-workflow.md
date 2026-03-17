---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Detaillierter Ablauf fuer symmetrisches Session-Closeout in ASWE-artigen Repos."
---

# Reference: Closeout Workflow

## Schritt 1: Change Scope bestimmen

Frage explizit:

- hat sich operative Wahrheit geaendert?
- hat sich der aktive Workstream geaendert?
- hat sich Routing oder Struktur geaendert?
- braucht die naechste Session ein Resume-Sidecar?

## Schritt 2: Status aktualisieren

Wenn operative Wahrheit geaendert ist:

- Status zuerst fortschreiben
- offene Punkte, Blocker und naechste Schritte sauber eintragen

## Schritt 3: Workstream aktualisieren

Wenn Ziel, Scope, DoD oder Slice-Plan betroffen sind:

- Workstream aktualisieren

## Schritt 4: Strukturdokumente nur bei Bedarf aktualisieren

Beispiele:

- MeaningMap
- Snapshot
- Manifest
- Routing-Dokumente
- ADR

## Schritt 5: Handoff entscheiden

Nutze nur:

- `not-needed`
- `optional-available`
- `required-and-used`

## Schritt 6: Entry zuletzt refreshen

`ENTRY_LATEST` erst dann aktualisieren, wenn Status, Workstream, Struktur und Handoff-Entscheidung stabil sind.

## Schritt 7: Contract validieren

Pruefe:

- Canonical Entry vorhanden
- Latest Status Update Found vorhanden
- Active Workstream vorhanden
- Handoff-Status gesetzt
- keine unaufgeloesten Widersprueche zwischen Entry, Status und Workstream
