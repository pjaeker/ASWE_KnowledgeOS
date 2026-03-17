---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Quellenhierarchie fuer Closeout-Entscheidungen im symmetrischen Session-Lifecycle."
---

# Reference: Source Priority

## Grundregel

Nutze fuer Closeout-Entscheidungen primaer GitHub-nahe Evidenz und die in der laufenden Session bereits robust bestaetigten Anker.

## Reihenfolge

1. vom Nutzer explizit gesetzter aktueller Anker
2. live verifizierter GitHub-Stand der geaenderten Artefakte
3. bereits robust bestaetigte Session-Anker
4. direkt referenzierte Repo-Artefakte
5. aeltere Kontext- oder How-to-Dokumente

## Closeout-Sonderregel

Bevor `ENTRY_LATEST` refresh't wird, muessen Status- und Workstream-Aenderungen bereits auf hoeherwertiger Evidenz beruhen. `ENTRY_LATEST` darf kein Ersatz fuer fehlende Statuspflege werden.
