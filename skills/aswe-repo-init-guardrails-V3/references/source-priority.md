---
project: ASWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Quellenhierarchie und Regressionsschutz fuer die Session-Initialisierung mit symmetrischem Session-Contract."
---

# Reference: Source Priority

## Grundregel

Nutze standardmaessig nur GitHub-nahe Primaerquellen. Andere Konnektoren oder externe Quellen sind nur zulaessig, wenn der Nutzer sie explizit anfordert.

## Rangfolge der Quellen

1. vom Nutzer explizit benannter aktueller Anker
2. live verifizierter GitHub-Stand
3. bereits in der Session bestaetigte Anker, sofern sie auf 1 oder 2 beruhen
4. direkt referenzierte aktuelle Repo-Artefakte
5. aeltere Planungs-, How-to- oder Kontextdokumente

## Artefaktklassen getrennt behandeln

Diese Klassen duerfen nicht stillschweigend verschmolzen werden:

- Entry
- Latest Status Update
- Entry-referenzierter Status
- Workstream
- Handoff

Regression protection darf keinen juengeren Kandidaten derselben Artefaktklasse ignorieren.

## Handoff-Spezialregel

`NextChat-Handoff` hat nur dann operative Prioritaet, wenn ein echter Resume-Bedarf vorliegt. Ohne diesen Bedarf bleibt Handoff nachrangig gegenueber Entry, Status und Workstream.
