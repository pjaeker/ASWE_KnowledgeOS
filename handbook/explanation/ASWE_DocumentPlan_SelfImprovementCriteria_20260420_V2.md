---
project: ASWE_KnowledgeOS
doc_type: explanation
package: SelfImprovementCriteria
version: V2
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Paketplan fuer den minimalen, repozielpfadkompatiblen und prompt-to-end-product E2E-faehigen Dokumentensatz der Kriterienstrategie fuer spaetere bounded Ausfuehrung in der Codex App."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/architecture-evolution
  - topic/codex
  - topic/e2e
  - topic/criteria
  - topic/patch-planning
---

# ASWE Document Plan - Self Improvement Criteria

## 0. Zweck

Dieses Dokument legt den kleinsten zusammenhaengenden Dokumentensatz fest,
mit dem die Kriterienstrategie spaeter bounded in der Codex App
vom initialen Codex-Prompt bis zum gewuenschten Endprodukt ausgefuehrt werden kann,
ohne bestehende Start-, Gate- und Contract-Flaechen vorschnell als finale Zielarchitektur zu behandeln.

## 1. Paketbestandteile

### A. Paket- und Anschlusslogik
- `handbook/explanation/ASWE_DocumentPlan_SelfImprovementCriteria_20260420_V2.md`

### B. Artefaktklassifikation
- `handbook/reference/ASWE_SelfImprovementCriteria_ArtifactModel_20260420_V2.md`

### C. Promptschicht
- `handbook/reference/ASWE_CodexApp_SelfImprovementCriteria_BootstrapPromptPack_20260420_V1.md`

### D. Ausfuehrungsprotokoll
- `handbook/protocol/ASWE_CodexApp_SelfImprovementCriteria_PlanExecution_20260420_V2.md`

### E. Startfaehigkeitspruefung
- `handbook/explanation/ASWE_CodexApp_SelfImprovementCriteria_E2E_Startability_Audit_20260420_V2.md`

### F. minimale Angleichungsschritte
- `handbook/explanation/ASWE_CodexApp_SelfImprovementCriteria_Startset_AlignmentPatchPlan_20260420_V2.md`

## 2. Arbeitsnahe Strategieartefakte, die spaeter materialisiert werden sollen

Empfohlene Arbeitsflaeche:
- `blackboard/workstreams/architecture-evolution/self-improvement-criteria/`

Empfohlene Artefakte:
- Architekturelement-Inventar
- Architektur-Beobachtungsprotokoll
- DeepResearch-Baseline-Cards
- Kontrastmatrix intern vs. extern
- Kriterienkandidatenregister
- Validierungsledger fuer Kandidaten

## 3. Dokumentklassenlogik

- `explanation` fuer Paketplan, Readiness, Audit und Patchlogik
- `reference` fuer definierende Artefaktklassifikation und Bootstrap-Prompts
- `protocol` fuer die spaetere Schrittfolge in der Codex App

Arbeitsnahe Strategieartefakte bleiben zunaechst ausserhalb des normativen Handbook-Kerns.

## 4. Verknuepfungen

Dieses Paket muss mindestens anschliessen an:
- `AGENTS.md`
- `ENTRY_LATEST`
- `RepoStatusUpdate`
- `ASWE_WS_ArchitectureEvolution`
- `ASWE_WS_EvidenceIntake`
- `ASWE_ExecutionSystem_Target_Contract_20260413_V1.md`
- `ASWE_EvalGate_Authority_Contract_20260413_V1.md`
- `ASWE_CodexApp_StartContract_20260415_V2.md`
- `ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`
- `ASWE_DocumentPlan_SelfEvolutionContracts_20260415_V2.md`
- `ASWE_CodexApp_E2E_Startability_Audit_20260415_V2.md`
- `ASWE_CodexApp_Startset_AlignmentPatchPlan_20260415_V1.md`

## 5. Endprodukt des ersten bounded Laufs

Das Endprodukt des ersten bounded Codex-Laufs ist noch nicht ein standardisiertes Kriterien-SSOT,
sondern ein arbeitsnahes, rueckgabefaehiges Startset aus:
- gesetztem Zielpfad fuer die Strategiearbeitsflaeche
- initialem Architekturelement-Inventar
- initialem Architektur-Beobachtungsprotokoll
- initialen DeepResearch-Baseline-Cards
- vorbereiteter Kontrastmatrix
- vorbereitetem Kriterienkandidatenregister
- Rueckgabe an Umbrella mit offenem Restunsicherheitsraum

## 6. Nicht-Ziele

Dieses Paket:
- fuehrt noch keine neue `.codex`-Materialisierung ein
- oeffnet keinen neuen Writer-Pfad
- ersetzt nicht den bestehenden EvidenceIntake-Sonderpfad
- promoted noch keine Kriterien in den kanonischen Referenzkern
- behandelt bestehende Start-, Gate- und Contract-Flaechen nicht automatisch als finale Zielarchitektur

## 7. Zielbild

Nach Uebernahme dieses Pakets liegt ein minimaler,
repozielpfadkompatibler,
prompt-to-end-product E2E-faehiger Planungsrahmen vor,
mit dem die Kriterienstrategie spaeter bounded in der Codex App ausgefuehrt werden kann.
