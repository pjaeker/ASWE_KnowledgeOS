---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Explizite Anti-Patterns und Fehlmodi fuer die Session-Initialisierung mit symmetrischem Session-Contract."
---

# Reference: Failure Modes

## Kritischer Fehlmodus 1

Ein aelterer Entry wird frueh stabilisiert, obwohl ein juengerer same-pattern Kandidat nicht aktiv ausgeschlossen wurde.

## Kritischer Fehlmodus 2

PRs, Issues oder sonstige Kontextsignale erzeugen Scheinsicherheit, obwohl direkte Entry-Verifikation unvollstaendig bleibt.

## Kritischer Fehlmodus 3

Eine moegliche Index- oder Connector-Luecke wird erwaehnt, aber trotzdem wird ein einzelner hochkonfidenter aktueller Entry finalisiert.

## Kritischer Fehlmodus 4

`Latest Status Update Found` und `Status Referenced by Entry` werden stillschweigend gleichgesetzt, obwohl ein juengeres Status-Update existiert.

## Kritischer Fehlmodus 5

`NextChat-Handoff` wird automatisch gelesen oder priorisiert, obwohl kein echter Resume-Bedarf vorliegt.

## Gegenmittel

- duale Freshness-Pruefung fuer Entry und Status
- explizite Contract-Reconciliation
- Handoff nur als Resume-Sidecar behandeln
- Blocker offen benennen, statt Scheingenauigkeit auszugeben
