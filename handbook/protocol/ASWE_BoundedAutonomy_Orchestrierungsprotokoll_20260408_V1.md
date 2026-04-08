---
project: ASWE_KnowledgeOS
doc_type: protocol
version: V1
date: 2026-04-08
status: draft
audience: [human, llm]
intent: "Generisches Protokoll fuer bounded-autonome Aktivierung, Handoff, Autorität und Verify."
tags:
  - layer/handbook
  - artifact/protocol
  - topic/orchestration
  - topic/autonomy
  - topic/contracts
  - topic/codex
---

# ASWE Bounded Autonomy - Orchestrierungsprotokoll

## Zweck
Generische Aktivierungs- und Rückführungslogik für bounded Autonomie.

## Primitive
- Main Agent
- bounded role
- workstream
- contract
- handoff packet
- runtime mirror

## Hauptregel
Der Main Agent bleibt:
- finale Syntheseinstanz
- finale Geltungsinstanz
- finale Schreibinstanz

## Zustände
- recommend-only
- spawn-ready
- materialized

## Spawn-Readiness
Nur wenn:
- aktiver Workstream feststeht
- Scope bounded ist
- Inputfläche bekannt ist
- Contract oder Methodenmodell anwendbar ist
- Return-Punkt explizit ist

## Handoff-Minimum
- Scope
- Input
- Transformation
- Output
- Restunsicherheit
- nächstes Ziel
- Stop-/Return-Grund

## Unzulässige Muster
- Spawn für freie Synthese
- Spawn ohne Return-Punkt
- impliziter zweiter Writer-Pfad
- Materialisierung ohne nachgewiesenen Mehrwert
