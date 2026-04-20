---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Artefaktmodell fuer die Strategie zur Gewinnung, Kontrastierung, Validierung und spaeteren Standardisierung universeller, operationalisierbarer Selbstverbesserungsqualitaetskriterien inklusive Promptschicht und E2E-Anschlusslogik."
tags:
  - layer/handbook
  - artifact/reference
  - topic/criteria
  - topic/self-improvement
  - topic/documentation
  - topic/codex
---

# ASWE Self Improvement Criteria - Artifact Model

## 0. Zweck

Dieses Dokument klassifiziert die fuer die Kriterienstrategie benoetigten Artefakte
nach Gegenstand, Dokumentklasse, Persistenzniveau und Zielort.

## 1. Harte Trennungen

- Beobachtung != Aussage
- Aussage != Regel
- Vergleichsmassstab != Kriterium
- Kriterium != Empfehlung
- Architekturelement != Workstream
- Referenzartefakt != operative Hilfsflaeche
- persistente Repo-Wahrheit != Runtime- oder Mirror-Flaeche
- Bootstrap-Prompt != normative Repo-Wahrheit

## 2. Persistente Planungsartefakte

### 2.1 Paketplan
- Zweck: Paketlogik, Zielorte, Nicht-Ziele, Endproduktdefinition
- Klasse: `explanation`
- Zielort: `handbook/explanation/`

### 2.2 Artefaktmodell
- Zweck: definierende Klassifikation und Trennlogik
- Klasse: `reference`
- Zielort: `handbook/reference/`

### 2.3 Bootstrap Prompt Pack
- Zweck: explizite Promptbruecke vom Codex-Start zur bounded Artefakterzeugung
- Klasse: `reference`
- Zielort: `handbook/reference/`

### 2.4 Plan-Execution-Protocol
- Zweck: Schrittfolge fuer Codex-App-Ausfuehrung
- Klasse: `protocol`
- Zielort: `handbook/protocol/`

### 2.5 E2E-Startability-Audit
- Zweck: Startfaehigkeit der Kriterienstrategie gegen den bestehenden V2-Startsatz pruefen
- Klasse: `explanation`
- Zielort: `handbook/explanation/`

### 2.6 Startset-Alignment-Patch-Plan
- Zweck: minimale Angleichungsschritte benennen, damit die Kriterienstrategie sauber an den bestehenden Startsatz andockt
- Klasse: `explanation`
- Zielort: `handbook/explanation/`

## 3. Arbeitsnahe Strategieartefakte

### 3.1 Architekturelement-Inventar
- Gegenstand: zu pruefende Architekturelemente und Instanzen
- Persistenz: ja
- Normstatus: nein
- Zielort: `blackboard/workstreams/architecture-evolution/self-improvement-criteria/`

### 3.2 Architektur-Beobachtungsprotokoll
- Gegenstand: interne Architekturbeobachtungen
- Persistenz: ja
- Normstatus: nein
- Zielort: `blackboard/workstreams/architecture-evolution/self-improvement-criteria/`

### 3.3 DeepResearch-Baseline-Cards
- Gegenstand: externe Vergleichsfamilien
- Persistenz: ja
- Normstatus: nein
- Zielort: `blackboard/workstreams/architecture-evolution/self-improvement-criteria/`

### 3.4 Kontrastmatrix intern vs. extern
- Gegenstand: systematische Gegenueberstellung
- Persistenz: ja
- Normstatus: nein
- Zielort: `blackboard/workstreams/architecture-evolution/self-improvement-criteria/`

### 3.5 Kriterienkandidatenregister
- Gegenstand: Kandidaten, Gegenbeispiele, Transfer- und Falsifikationsstatus
- Persistenz: ja
- Normstatus: nein
- Zielort: `blackboard/workstreams/architecture-evolution/self-improvement-criteria/`

### 3.6 Validierungsledger
- Gegenstand: laufbezogene Validierungsentscheidungen
- Persistenz: ja
- Normstatus: nein
- Zielort: `blackboard/workstreams/architecture-evolution/self-improvement-criteria/`

## 4. Promotionsregel

Ein arbeitsnahes Strategieartefakt darf erst dann in normative Repo-Flaechen uebergehen,
wenn:
- der Kandidatenstatus nicht mehr rein explorativ ist
- Transfer- und Gegenbeispielpruefung explizit vorliegen
- eine begruendete Standardisierungsentscheidung getroffen wurde
- kein zweiter impliziter Writer- oder Governancepfad entsteht

## 5. Anschlussstellen

Dieses Artefaktmodell ist mit folgenden Flaechen kompatibel zu halten:
- `ENTRY_LATEST`
- `RepoStatusUpdate`
- `ASWE_WS_ArchitectureEvolution`
- `ASWE_WS_EvidenceIntake`
- `ASWE_ExecutionSystem_Target_Contract_20260413_V1.md`
- `ASWE_EvalGate_Authority_Contract_20260413_V1.md`
- `ASWE_CodexApp_StartContract_20260415_V2.md`
- `ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`
- `ASWE_CodexApp_SelfImprovementCriteria_BootstrapPromptPack_20260420_V1.md`
