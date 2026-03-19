---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Gemeinsame Handoff-Muster zwischen Main Agent, Skills und spaeteren Codex-Subagenten."
tags:
  - layer/handbook
  - artifact/reference
  - topic/handoff
  - topic/roles
---

# Reference: Shared Handoff Patterns

## Ziel

Handoffs sollen bounded Rollen verbinden, nicht den Session-Anker zerreissen.

## Handoff-Grundsatz

Ein Handoff ist nur gut, wenn er:
- den aktiven technischen Hauptworkstream beibehalt
- die Spezialfrage an die naechste Rolle sauber fokussiert
- die vorhandene Evidence mitgibt
- die naechste Rolle nicht ueberlaedt

## Standard-Handoff-Packet

Jeder Handoff enthaelt:

1. inherited anchor summary
2. active scope summary
3. bound active technical slice
4. strongest evidence anchors
5. open questions for the next role
6. exact next action request
7. stop conditions or risks to preserve

## Empfohlene Richtungen

### Main Agent -> Mapper
Nutzen, wenn Scope, Pfade, SSOT oder Hidden Coupling unklar sind.

### Main Agent -> Test-Agent
Nutzen, wenn Verify-, Gate- oder Smoke-Design fehlt.

### Main Agent -> Observer
Nutzen, wenn Runtime-, Deploy-, Health- oder Log-Signale read-only verdichtet werden muessen.

### Main Agent -> Triager
Nutzen, wenn mehrere konkurrierende Spuren bestehen oder Dead Ends drohen.

### Main Agent -> Doku-Agent
Nutzen, wenn technische Lage bestaetigt ist und wording-nahe Folgearbeit ansteht.

### Mapper -> Test-Agent
Standard, wenn aus einem Mapping direkt ein Verify-Slice folgt.

### Observer -> Triager
Nutzen, wenn Runtime-Signale mehrere plausible Ursachen offenlassen.

### Triager -> Mapper
Nutzen, wenn eine priorisierte Spur erst in einen kleineren Scope zerlegt werden muss.

### Test-Agent -> Doku-Agent
Nutzen, wenn Verify-Ergebnis stabil ist und dokumentiert werden soll.

## Rueckgabe an den Main Agent

Immer zum Main Agent zurueckgeben, wenn:
- Fokuswechsel noetig wird
- Mutation / Merge / Release ansteht
- zwei bounded Rollen widerspruechliche Konsequenzen ziehen
- Kosten-, Zeit- oder Kontextbudget neu entschieden werden muss

## Anti-Pattern

- ein Handoff ohne Anchor-Zusammenfassung
- ein Handoff ohne explizite Slice-Bindung
- ein Handoff nur mit allgemeiner Bitte wie `schau mal drueber`
- eine bounded Rolle, die direkt in eine andere mutierende Rolle springt
- eine bounded Rolle, die sich selbst erneut spawned statt sauber zurueckzugeben
