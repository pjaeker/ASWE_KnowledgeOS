---
project: ASWE_KnowledgeOS
doc_type: protocol
version: V1
date: 2026-04-08
status: draft
audience: [human, llm]
intent: "Explizites End-to-End-Protokoll fuer den bounded-autonomen Start in der Codex App bis zum ersten realen Arbeitsoutput."
tags:
  - layer/handbook
  - artifact/protocol
  - topic/codex
  - topic/start
  - topic/e2e
  - topic/evidence
  - topic/semantics
---

# ASWE Codex App Autonomous Start - E2E Protocol

## 0. Ziel

Dieses Protokoll endet nicht bei der Thread-Erzeugung.
Es endet beim ersten realen bounded Arbeitsoutput.

## 1. Einstieg ausserhalb der Codex App

Lies:
1. `AGENTS.md`
2. `ENTRY_LATEST`
3. `RepoStatusUpdate`
4. aktuellen aktiven Workstream

## 2. Sonderpfad ArchitectureEvolution

Wenn die Session explizit auf `ArchitectureEvolution` mit Fokus auf `EvidenceIntake` und `SemanticEvolution` läuft, lies zusätzlich:

1. `handbook/reference/ASWE_Erkenntnisprozess_Rollenmodell_20260408_V1.md`
2. `handbook/protocol/ASWE_BoundedAutonomy_Orchestrierungsprotokoll_20260408_V1.md`
3. `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260408_V1.md`
4. `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260408_V1.md`
5. `handbook/reference/ASWE_EvidenceIntake_Methodenmodell_20260408_V1.md`
6. `handbook/reference/ASWE_EvidenceIntake_RoleContract_20260408_V1.md`
7. `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md`
8. `handbook/reference/ASWE_SemanticEvolution_Methodenmodell_20260408_V1.md`
9. `handbook/reference/ASWE_SemanticEvolution_RoleContract_20260408_V1.md`
10. `handbook/reference/ASWE_CodexApp_StartContract_20260408_V1.md`

## 3. Codex-App-Topologie

Erzeuge zu Startbeginn genau diese Threads:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

Optional, aber nicht fuehrend:
- `Codex Subagent Orchestration`

## 4. Startphase

Zu Startbeginn:
- 0 zusaetzliche Worktrees
- 0 zusaetzliche Branches

Begruendung:
Es handelt sich zunaechst um Modellierungs- und Strukturierungsarbeit.

## 5. Thread-Lokale Operating Guidance

Lege in der Codex App als thread-lokale Guidance bereit:

### fuer `Evidence Intake`
- `handbook/reference/ASWE_CodexApp_EvidenceIntake_Systemprompt_20260408_V1.md`

### fuer `Semantic Evolution`
- `handbook/reference/ASWE_CodexApp_SemanticEvolution_Systemprompt_20260408_V1.md`

Diese Prompts sind runtime-nahe Adapter.
Sie ersetzen keine kanonischen Workstreams, Methodenmodelle oder Role Contracts.

## 6. Aktivierungslogik

- `Architecture Evolution - Umbrella` ist sofort koordinativ aktiv.
- `Evidence Intake` ist sofort produktiv aktiv.
- `Semantic Evolution` ist zu Startbeginn parallel eingerichtet und aufnahmebereit.
- Dominante semantische Delta-Arbeit startet erst bei Trigger Packet oder explizit benanntem semantischem Scope.

## 7. Erster realer Arbeitsbeginn

Der erste bounded Lauf im Thread `Evidence Intake` muss mindestens erzeugen:
- 1 Observation Pack
- 1 Claim Pack
- 1 Conflict Cluster oder explizit `no-conflict`
- 1 Trigger-Entscheidung:
  - `semantic-review-needed`
  - `no-semantic-review-needed`

Ohne diese vier Outputs hat die Arbeit noch nicht wirklich begonnen.

## 8. Return-Punkt

Gib an den Main Agent zurueck, sobald:
- die vier Minimaloutputs vorliegen
- Evidenzguete expliziert ist
- Restunsicherheit benannt ist

## 9. Zuschaltung dominanter Semantic-Evolution-Arbeit

`Semantic Evolution` wird dominant, wenn:
- ein Trigger Packet vorliegt
- der semantische Scope bounded ist
- die betroffene SSOT-Flaeche hinreichend benannt ist

## 10. Erster mutierender Slice

Ein Worktree/Branch darf erst geoeffnet werden, wenn:
- die ersten Startartefakte tatsaechlich repo-lokal angelegt oder geaendert werden sollen
- der Main Agent als einziger Writer agiert

Dann gilt:
- genau 1 Main-Agent-Writer-Worktree
- genau 1 zugehoeriger Branch

## 11. Stop-Bedingung

Wenn kein Observation Pack, kein Claim Pack und keine Trigger-Entscheidung vorliegen,
bleibt die Session in Vorbereitungs- statt in Arbeitsphase.
