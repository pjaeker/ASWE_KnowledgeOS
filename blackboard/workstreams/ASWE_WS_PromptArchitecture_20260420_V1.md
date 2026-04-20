---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Bounded Child-Workstream fuer die Ausgestaltung des querschnittlichen Prompt-Architektur-Unterbaus in der Codex-App."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/prompt-architecture
  - topic/codex
  - topic/eval
---

# ASWE WS Prompt Architecture

## Ziel
Bounded Ausgestaltung der Dreiteilung:
1. Prompt-Preflight
2. Prompt-Eval-Contract
3. Prompt-Pack-Rendering

## Einordnung
Dieser Workstream ist ein Child-Workstream unter `ArchitectureEvolution`.
Er ist kein neuer Primaerpfad.

## Scope
- drei neue Kernartefakte schneiden
- StartContract, UI-Runbook und BootstrapPromptPack nachziehen
- bounded E2E-Startfaehigkeit in der Codex-App herstellen

## Non-Goals
- keine Framework-Promotion
- keine Target-Contract-Promotion
- kein neuer Writer-Pfad
- kein globaler RepoStatusUpdate/ENTRY-LATEST-Refresh im selben Slice

## Abhaengigkeiten
- aktueller `ArchitectureEvolution`-Umbrella
- aktueller `StartContract`
- aktuelles `UI_Runbook`
- aktuelles `BootstrapPromptPack`
- `PersonalizationPorting_Contract`
- `EvidenceIntake_OperationalizationEval`

## Naechste Thin Slices
1. Readiness-/Audit-Drift pruefen
2. PromptEval_Contract materialisieren
3. Prompt_Preflight_Operationalization materialisieren
4. PromptPack_Rendering_Contract materialisieren
5. Startschicht auf V3 nachziehen
6. Statusrefresh vorbereiten

## DoD
- drei Kernartefakte materialisiert
- drei Startartefakte auf V3 nachgezogen
- bounded Change-Report verfuegbar
- Status-/Entry-Refresh als Folgeslice vorbereitet
