---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Gemeinsamer Session-Contract fuer Init-Skill und Closeout-Skill in ASWE-artigen Repos."
---

# Reference: Session Contract

## Zweck

Diese Referenz operationalisiert den symmetrischen Session-Contract fuer die Initialisierung.

## Pflichtanker

Jede robuste Initialisierung soll getrennt ausweisen:

- `Canonical Entry`
- `Latest Status Update Found`
- `Status Referenced by Entry`
- `Active Workstream`
- `Handoff Status`
- `Additional Anchors`

## Kernregel

`Latest Status Update Found` und `Status Referenced by Entry` duerfen nicht stillschweigend zusammengezogen werden.

## Reconciliation-Faelle

### Fall 1: Alles deckungsgleich

Der Contract ist `consistent`.

### Fall 2: Juengeres Status-Update existiert, Entry bleibt aber tragfaehig

Der Contract ist `consistent-with-advance`, wenn:

- das juengere Status-Update den bisherigen Entry oder Workstream nicht widerlegt
- das juengere Status-Update den laufenden Stand nur fortschreibt

### Fall 3: Status widerspricht Entry oder Workstream klar

Der Contract ist `inconsistent`.

In diesem Fall:

- Blocker benennen
- keine hohe Confidence vergeben
- naechsten Fokus auf Re-Verifikation oder Reparatur legen

## Handoff-Status

Nutze nur diese Werte:

- `not-needed`
- `optional-available`
- `required-and-used`

## Minimaler Bericht

Eine gute Initialisierung berichtet mindestens:

- welches Artefakt der kanonische Entry ist
- welches Artefakt das juengste Status-Update ist
- welches Status-Dokument vom Entry referenziert wird
- welcher Workstream aktiv ist
- ob ein Handoff beruecksichtigt wurde
- ob der Contract konsistent, fortgeschrieben, inkonsistent oder nur vorlaeufig ist
