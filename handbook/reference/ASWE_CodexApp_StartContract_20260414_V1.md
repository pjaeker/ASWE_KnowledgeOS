---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-14
status: draft
audience: [human, llm]
intent: "Geschlossener Startvertrag fuer den Evidence-Intake-Selbstevolutionsstart in der Codex App."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/start-contract
  - topic/evidence
  - topic/self-evolution
---

# ASWE Codex App Start Contract

## 0. Startziel

Ziel des ersten bounded-autonomen Laufs ist nicht direkte Kanonisierung,
sondern die kontrollierte Entwicklung und Bewertung eines besseren operationalisierten Evidence-Intake-Verfahrens.

## 1. Pflichtabhaengigkeiten

Vor dem ersten produktiven Threadstart muessen verfuegbar sein:
- `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V1.txt`
- `.codex/config.toml`
- `.codex/requirements.toml`
- `.codex/environments/environment.toml`
- `ASWE_ExecutionSystem_Target_Contract_20260413_V1.md`
- `ASWE_EvalGate_Authority_Contract_20260413_V1.md`
- `ASWE_AutonomyInfrastructure_20260413_V1.md`
- `ASWE_CodexApp_AdapterEnvironment_Contract_20260413_V1.md`
- `ASWE_CapabilityRoleMap_SpawnReadiness_20260413_V2.md`
- `ASWE_ExecutionPackets_MinimumSet_20260413_V2.md`
- `ASWE_CodexApp_InformationChannel_Model_20260413_V2.md`
- `ASWE_CodexApp_SharedWorktree_Automation_Contract_20260413_V1.md`
- `ASWE_CodexApp_M2_CoordinationSurface_Contract_20260413_V1.md`
- `ASWE_CodexApp_ThreadOrchestration_Routing_Contract_20260413_V1.md`
- `ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
- `ASWE_CodexApp_BootstrapPromptPack_20260414_V1.md`
- `ASWE_CodexApp_AutonomousStart_E2E_20260414_V1.md`

## 2. Konfigurationsvoraussetzungen

Pflicht vor Start:
- Projekt ist trusted, damit project-scoped `.codex/` geladen wird.
- `sandbox_mode = workspace-write`
- `sandbox_workspace_write.network_access = true`
- `web_search = live`
- Approval fuer interaktive Starts ist nicht-hart gesperrt.

## 3. Threads

Pflichtthreads:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

Optional spaeter:
- `Architecture Canonicalization`
- `Harness Operationalization`

## 4. Startmodus

Vor Start genau einen Modus explizieren:
- `M1-isolated`
- `M2-shared-local`

`M2-shared-local` ist nur wirksam,
wenn das Runtime-Bootstrap die gemeinsamen K5-Flaechen angelegt hat.

## 5. Bootstrap-Pflicht

Vor produktiver Arbeit muessen verfuegbar und benutzt werden:
- Projekt-Kickoff-Prompt
- Umbrella-Initialisierungsprompt
- Evidence-Intake-Startprompt
- spaeter nur bei `G1 pass` Semantic-Evolution-Startprompt

## 6. Evidence-Intake-Pflichtziel

Der erste Lauf ist nur dann gueltig,
wenn er gleichzeitig liefert:
- Evidence-Artefakte nach Pfadlogik
- packetisierte Rueckgabe an Umbrella
- erste Operationalisierungs-Evaluation OI-G0 bis OI-G1

## 7. Rueckgabegrenze

Rueckgabe an Umbrella/Main Agent ist zwingend,
wenn:
- ein Trigger Packet vorliegt
- Operationalisierungs-Gates `hold`, `return` oder `reject` ergeben
- Semantic Evolution naechster Kandidat wird
- Internet-/Netzwerkbedarf den bounded Scope ueberschreitet
- kanonisches Repo-Schreiben notwendig wird
