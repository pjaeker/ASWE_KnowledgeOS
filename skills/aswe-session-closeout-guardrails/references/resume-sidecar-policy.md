---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Regeln fuer die konditionale Verwendung von NextChat-Handoff als Resume-Sidecar bei Session-Initialisierung."
---

# Reference: Resume Sidecar Policy

## Grundsatz

`NextChat-Handoff` ist ein optionales Resume-Sidecar. Es ist kein Standardbestandteil jeder Initialisierung.

## Zulaessige Handoff-Zustaende

- `not-needed`
- `optional-available`
- `required-and-used`

## Wann ist ein Handoff typischerweise noetig?

- fragile taktische Folgeabfolge
- Rollback- oder PR-Draft-Kontext
- bewusst ausgelagerte Wiedereinstiegsdetails, die nicht sauber in Entry, Status oder Workstream passen

## Wann ist ein Handoff typischerweise nicht noetig?

- Entry, Status und Workstream tragen den Wiedereinstieg bereits robust
- kein besonderer Resume-Kontext liegt vor

## Guardrails

- kein Handoff aus Gewohnheit lesen
- kein Handoff automatisch hoeher priorisieren als Entry, Status oder Workstream
- Handoff nur dann als `required-and-used` markieren, wenn die Session ohne Sidecar real an Robustheit verlieren wuerde
