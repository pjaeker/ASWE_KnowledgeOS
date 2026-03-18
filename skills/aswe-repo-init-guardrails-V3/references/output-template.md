---
project: ASWE_KnowledgeOS
doc_type: reference
version: V5
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Standard-Ausgabeformat fuer den Init-Skill mit symmetrischem Session-Contract und optionalem bounded-role-Hinweis."
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
  - Requested Focus Anchor: ... (nur wenn vom Nutzer explizit gesetzt und von kanonischem Routing getrennt)

## Harte bestaetigte Fakten

Fuehre nur stark gestuetzte Fakten auf.

## Contract-Bewertung

- Contract Status: `consistent` / `consistent-with-advance` / `inconsistent` / `provisional`
- Regressionsrisiko: ja/nein
- Blocker: ja/nein
- Confidence: niedrig / mittel / hoch
- Ein-Satz-Begruendung

## Optionaler bounded-role-Hinweis

Nur ausgeben, wenn ein klarer technischer Bedarf besteht:

- role: ...
- why now: ...
- scope to inspect: ...
- expected output: ...
- must not do: ...

## Naechster empfohlener Arbeitsfokus

Benenne den naechsten sinnvollen Fokus.

Wenn Entry-, Status- oder Contract-Verifikation offen bleibt, soll der naechste Fokus genau diese Luecke adressieren.
