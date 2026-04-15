---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Geschlossener Startvertrag fuer den bounded Evidence-Intake-Selbstevolutionsstart in der Codex App auf normiertem V2-Stand."
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
sondern die kontrollierte Entwicklung, Pruefung und Rueckkopplung
eines besseren operationalisierten Evidence-Intake-Verfahrens.

## 1. Fuehrende Kette

Fuehrend sind in genau dieser Reihenfolge:
1. `ENTRY_LATEST`
2. `RepoStatusUpdate`
3. `ASWE_WS_ArchitectureEvolution`
4. `ASWE_WS_EvidenceIntake`
5. `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`
6. `ASWE_CodexApp_StartContract_20260415_V2.md`
7. `ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`
8. `ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`
9. `ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
10. `ASWE_CodexApp_E2E_Startability_Audit_20260415_V2.md`

## 2. Pflichtabhaengigkeiten

Vor dem ersten produktiven Threadstart muessen verfuegbar sein:
- `.codex/config.toml`
- `.codex/requirements.toml`
- `.codex/environments/environment.toml`
- `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`
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
- `ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`
- `ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`

## 3. Konfigurationsvoraussetzungen

Pflicht vor Start:
- Projekt ist trusted, damit project-scoped `.codex/` wirksam geladen wird.
- `approval_policy = "never"`
- `sandbox_mode = "workspace-write"`
- `sandbox_workspace_write.network_access = true`
- `web_search = "live"` oder ein gleichwertig erlaubter Live-Modus gemaess Requirements
- `project_doc_fallback_filenames` zeigt auf `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`

## 4. Wissensarbeits- und Personalisierungsregel

Geeignete Personalisierungen aus dem ChatGPT-App-Kontext sind nur zulaessig,
wenn sie in **explizite Codex-Flaechen** uebersetzt wurden:
- Projektinstruktion
- Projekt-Kickoff
- Thread-Startprompt
- explizite Referenzdokumente

Nicht zulaessig ist,
ChatGPT-Personalisierung als implizite Laufzeitannahme oder zweite Governancequelle zu behandeln.

## 5. Deterministische Tooling-Regel

Hochgradig deterministische,
wiederholbare und objektiv pruefbare Schritte
sollen bevorzugt ueber Skripte, Checks oder Validatoren laufen,
wenn dadurch:
- Tokenlast sinkt,
- Reproduzierbarkeit steigt,
- und keine finale Gate- oder Writer-Wirkung erzeugt wird.

Gate-Entscheidung, Konfliktdeutung und Architekturwirkung bleiben Modellarbeit.

## 6. Threads

Pflichtthreads:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

Optional spaeter:
- `Architecture Canonicalization`
- `Harness Operationalization`

## 7. Startmodus

Vor Start genau einen Modus explizieren:
- `M1-isolated`
- `M2-shared-local`

`M2-shared-local` ist nur wirksam,
wenn das Runtime-Bootstrap die gemeinsamen K5-Flaechen angelegt hat
und Umbrella diese Flaechen explizit bestaetigt.

## 8. Bootstrap-Pflicht

Vor produktiver Arbeit muessen verfuegbar und benutzt werden:
- Projekt-Kickoff-Prompt
- Umbrella-Initialisierungsprompt
- Evidence-Intake-Startprompt
- Semantic-Evolution-Startprompt nur bei `G1 pass`
- optional bounded Automation-/Folgeinstanz-Prompt nur auf legitimer Queue-/Gate-/Ledger-Basis

## 9. Evidence-Intake-Pflichtziel

Der erste Lauf ist nur dann gueltig,
wenn er gleichzeitig liefert:
- Evidence-Artefakte nach Pfadlogik
- packetisierte Rueckgabe an Umbrella
- erste Operationalisierungs-Evaluation OI-G0 bis OI-G1

## 10. Rueckgabegrenze

Rueckgabe an Umbrella/Main Agent ist zwingend,
wenn:
- ein Trigger Packet vorliegt
- Operationalisierungs-Gates `hold`, `return`, `reject` oder `defer` ergeben
- Semantic Evolution naechster Kandidat wird
- kanonisches Repo-Schreiben notwendig wird
- ein bounded Helper oder eine bounded Automation authoritative Entscheidung vortaeuschen wuerde

## 11. Automationen und Folgearbeit

Es bleiben zwei legitime Formen offen:
- **zeitgesteuerte bounded Automation**
- **K5-bedingt legitimierte spaetere Folgeinstanz**

Beide duerfen:
- beobachten,
- vorbereiten,
- verdichten,
- Run Records schreiben,
- Queue-Lage aktualisieren.

Beide duerfen nicht:
- finale Gates setzen,
- Writer-Grenzen oeffnen,
- eine neue semantische oder architektonische Wahrheit erzeugen.
