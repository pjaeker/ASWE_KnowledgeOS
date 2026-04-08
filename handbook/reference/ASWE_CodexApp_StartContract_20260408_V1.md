---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-08
status: draft
audience: [human, llm]
intent: "Start Contract fuer bounded-autonome Weiterarbeit an EvidenceIntake und SemanticEvolution in der Codex App."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/start-contract
  - topic/autonomy
---

# ASWE Codex App Start Contract

## 0. Startziel

Ziel des ersten bounded-autonomen Laufs ist nicht Kanonisierung, sondern:
- `EvidenceIntake` methodisch stabilisieren
- `SemanticEvolution` methodisch stabilisieren
- Rueckkopplungspunkte fuer spaetere Architekturarbeit sauber erzeugen

## 1. Pflichtlektüre

1. `handbook/reference/ASWE_Erkenntnisprozess_Rollenmodell_20260408_V1.md`
2. `handbook/protocol/ASWE_BoundedAutonomy_Orchestrierungsprotokoll_20260408_V1.md`
3. `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260408_V1.md`
4. `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260408_V1.md`
5. `handbook/reference/ASWE_EvidenceIntake_Methodenmodell_20260408_V1.md`
6. `handbook/reference/ASWE_EvidenceIntake_RoleContract_20260408_V1.md`
7. `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md`
8. `handbook/reference/ASWE_SemanticEvolution_Methodenmodell_20260408_V1.md`
9. `handbook/reference/ASWE_SemanticEvolution_RoleContract_20260408_V1.md`

## 2. Threads in der Codex App

- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

Optional spaeter:
- `Architecture Canonicalization`
- `Harness Operationalization`

## 3. Aktivierungslogik

- Alle drei Threads werden zu Startbeginn eingerichtet.
- `Architecture Evolution - Umbrella` ist sofort koordinativ aktiv.
- `Evidence Intake` ist der erste produktive Primaerpfad.
- `Semantic Evolution` ist parallel eingerichtet und aufnahmebereit.
- Dominante semantische Delta-Arbeit startet erst bei hinreichend belastbaren Trigger Packets oder klar benanntem semantischem Scope.

## 4. Zulaessige bounded Rollen jetzt

- Main Agent
- `issue_triager` fuer Konflikt-/Priorisierungscluster
- `bridge_doc_agent` fuer bestaetigte Strukturcodifizierung
- `ws_mapper` bei SSOT-/Kopplungsunklarheit
- `railway_observer` nur fuer echte externe Runtime-Evidenz

## 5. Noch nicht passgenau genug

- dedizierter `evidence_intake_agent` als Runtime Mirror
- dedizierter `semantic_evolution_agent` als Runtime Mirror
- generischer technischer Rollenfokus fuer semantische Grundarbeit

## 6. In-Scope-Dateien

- die in diesem Slice angelegten Referenzen, Protokolle und Workstreams
- spaeter resultierende Claim Packs, Trigger Packets und Semantic Delta Packets
- thread-lokale Systemprompts als Codex-App Operating Guidance

## 7. Out-of-Scope

- finale SSOT-Umschreibung
- neue Governance-Pfade
- neue Writer-Pfade
- Policy-/Gate-Neudefinition
- `.codex`-Materialisierung ohne nachgewiesenen Mehrwert

## 8. First Run Objectives

### Evidence Intake
Erzeuge mindestens:
- ein belastbares Trigger-Schema
- ein Format fuer Claim Packs
- ein Format fuer Conflict Clusters

### Semantic Evolution
Erzeuge mindestens:
- ein belastbares Delta-Schema
- ein Format fuer SSOT-Impact-Packets
- eine minimale Promotionsvorpruefung

## 9. Rueckgabe an den Main Agent zwingend, wenn

- ein Trigger Packet vorliegt
- ein Semantic Delta Packet vorliegt
- Unsicherheit hoch bleibt
- Scope nicht mehr bounded ist
- Architektur- oder Governancewirkung sichtbar wird
