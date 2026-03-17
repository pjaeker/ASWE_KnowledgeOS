---
project: ASWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Standard-Ausgabeformat fuer den Init-Skill mit symmetrischem Session-Contract."
---

# Reference: Output Template

## Session-Checkpoint

Beschreibe den aktuellen Arbeitsstand in 2 bis 4 Saetzen.

Dabei immer klar sagen:

- ob der Stand robust oder vorlaeufig ist
- ob ein einzelner Entry oder eine Kandidatenmenge vorliegt
- ob Latest Status und Entry-referenzierter Status deckungsgleich oder getrennt sind

## Quellenlage / Freshness

Nenne kurz:

- welche GitHub-Signale verwendet wurden
- ob Entry-Freshness geprueft wurde
- ob Latest-Status-Freshness geprueft wurde
- ob Handoff pruefpflichtig war oder nicht
- ob Unsicherheit durch Sichtbarkeit oder Widersprueche bleibt

## Aktive Anker

- Entry: ...
- Latest Status Update Found: ...
- Status Referenced by Entry: ...
- Active Workstream: ...
- Handoff Status: ...
- Additional Anchors: ...

## Harte bestaetigte Fakten

Fuehre nur stark gestuetzte Fakten auf.

## Contract-Bewertung

- Contract Status: `consistent` / `consistent-with-advance` / `inconsistent` / `provisional`
- Regressionsrisiko: ja/nein
- Blocker: ja/nein
- Confidence: niedrig / mittel / hoch
- Ein-Satz-Begruendung

## Naechster empfohlener Arbeitsfokus

Benenne den naechsten sinnvollen Fokus.

Wenn Entry-, Status- oder Contract-Verifikation offen bleibt, soll der naechste Fokus genau diese Luecke adressieren.
