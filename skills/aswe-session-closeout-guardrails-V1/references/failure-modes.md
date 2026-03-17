---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Explizite Anti-Patterns fuer symmetrisches Session-Closeout."
---

# Reference: Failure Modes

## Fehlmodus 1

`ENTRY_LATEST` wird aktualisiert, bevor Status oder Workstream sauber fortgeschrieben wurden.

## Fehlmodus 2

Es wird automatisch ein `NextChat-Handoff` erzeugt, obwohl kein echter Resume-Bedarf vorliegt.

## Fehlmodus 3

Es werden Struktur-Dokumente aus kosmetischer Konsistenz geaendert, obwohl keine Routing- oder Architekturveraenderung vorliegt.

## Fehlmodus 4

Das Closeout erzeugt keinen expliziten naechsten Einstieg und laesst damit Init spaeter wieder rekonstruieren.
