---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Kanonischer Zielvertrag fuer das selbst-evolvierbare Ausfuehrungssystem zwischen EvidenceIntake, SemanticEvolution, ArchitectureCanonicalization, HarnessOperationalization und den Querpfaden."
tags:
  - layer/handbook
  - artifact/reference
  - topic/architecture-evolution
  - topic/system-model
  - topic/contracts
  - topic/packets
  - topic/codex
---

# ASWE Execution System - Target Contract

## 0. Zweck

Dieses Dokument beschreibt den **kanonischen Zielgegenstand** des angestrebten Ausfuehrungssystems.
Es beantwortet die Luecken **L1** und **L2** nicht prozessual, sondern strukturell:
- **welche Systemelemente explizit evolvieren**,
- **welche Pfad-Interfaces gelten**,
- **welche Objektklassen kanonisch voneinander zu trennen sind**.

Dieses Dokument ist **Reference**, nicht Workstream, nicht Protocol, nicht Runtime Mirror.

## 1. Fuehrende Basen

Fuehrend sind:
1. `ENTRY_LATEST`
2. `RepoStatusUpdate`
3. `ASWE_WS_ArchitectureEvolution`
4. `ASWE_WS_EvidenceIntake`
5. `ASWE_WS_SemanticEvolution`
6. `ASWE_CodexApp_StartContract`
7. `ASWE_CodexApp_AutonomousStart_E2E`
8. `ASWE_EvidenceIntake_Methodenmodell`
9. `ASWE_EvidenceIntake_RoleContract`
10. `ASWE_SemanticEvolution_Methodenmodell`
11. `ASWE_SemanticEvolution_RoleContract`
12. Shared Role / Output / Handoff / Runtime / Failure Contracts

Kontext, aber nicht Routing-Wahrheit:
- `ASWE_ArchitectureEvolution_Framework_20260402_V1.md`
- historisches Handoff 2026-04-02
- `.codex`-Artefakte

## 2. Grundsatzformel

Die kanonische Reihenfolge bleibt:

**Evidenz aufnehmen -> Bedeutungen stabilisieren -> Architektur kanonisieren -> Harness operationalisieren**

Ergaenzende Querlogik:
- Autonomie- und Orchestrierungsinfrastruktur
- Eval-/Observability-Logik
- Adapter-/Oberflaechenlogik
- Security, Trust & Permission Control Plane

## 3. Kanonische Objektklassen

### 3.1 Primaerobjekte der vier Primaerpfade

#### A. Evidence Intake
- Quelle
- Beobachtung
- Claim
- Beleg
- Konflikt
- Pattern-Kandidat
- Trigger-Kandidat

#### B. Semantic Evolution
- Benennung
- Begriff
- Definition
- Kategorie
- Relation
- Ebenenordnung
- semantisches Delta

#### C. Architecture Canonicalization
- Regel
- Policy
- Contract
- Gate
- Rollenklasse
- Workflow-Grenze
- Schichtdefinition
- Promotionsregel

#### D. Harness Operationalization
- Template
- Harness
- Skill
- `.codex`-Ableitung
- Runbook
- Verify-/Eval-Baustein
- Profil

### 3.2 Querobjekte des Ausfuehrungssystems

Diese Querobjekte sind zulaessig, weil sie keine neue Fachdomäne einfuehren, sondern Pfadkopplung explizieren:
- **Pfad-Payload**
- **Handoff-Huelle**
- **Promotion Candidate**
- **Authority Decision**
- **Verify Result**
- **Progress Ledger Entry**
- **Resume Sidecar**
- **Dead-End Entry**
- **Mirror Eligibility Statement**

## 4. Harte Trennungen

### 4.1 Nicht gleichsetzen
- Beobachtung != Claim
- Claim != Regel
- semantisches Delta != Architekturentscheidung
- Live-Handoff != Resume Sidecar
- Eval-/Gate-Modell != Verify Gate
- Workstream != Role Contract
- Role Contract != Runtime Mirror
- `.codex`-Artefakt != semantischer Ursprung

### 4.2 Nicht ueberspringen
- keine direkte Ableitung von Evidence in Policy
- keine direkte Ableitung von Semantic Delta in finale SSOT-Umschreibung
- keine direkte Operationalisierung unreifer Architekturentscheidungen

## 5. Kanonische Pfad-Payloads

### 5.1 Evidence -> Semantic
Zulaessige Uebergabe nur ab **EI-P4**:
- Observation Pack
- Claim Pack
- Conflict Cluster oder `no-conflict`
- Trigger Packet
- Evidenzgueteprofil

### 5.2 Semantic -> Architecture
Zulaessige Uebergabe nur ab **SE-P4**:
- Semantic Delta Packet
- SSOT-Impact Packet
- Promotionsvorpruefnotiz
- begrenzte Rueckfrage an ArchitectureCanonicalization oder SSOT-Update-Entscheidung

### 5.3 Architecture -> Harness
Zulaessige Uebergabe nur nach expliziter Architekturfreigabe:
- kanonisierter Contract-/Policy-/Gate-Stand
- eindeutige Schicht- und Rollenwirkung
- Mirror-Eligibility Statement

## 6. Evolvierbare Systemelemente

Folgende Systemelemente duerfen explizit evolvieren:

### 6.1 Semantische Elemente
- Glossarbegriffe
- Taxonomieklassen
- ontologische Relationen
- Router-relevante Ebenenordnung
- semantische Delta-Typisierung

### 6.2 Architekturelemente
- Pfadgrenzen
- Handoff-Interfaces
- Autoritaetsgrenzen
- Eval-/Gate-Schwellen
- Rollenklassen
- Environment-Grenzen

### 6.3 Operationale Elemente
- Verify-/Eval-Bausteine
- Resume-/Ledger-Strukturen
- Runtime-Spiegelungen
- Harness-Bausteine

Nicht direkt evolvierbar ohne vorgelagerten Pfad:
- Main-Agent-Regel
- one-writer-many-readers
- Mirror-Disziplin
- finale SSOT-Umschreibung durch bounded Rollen

## 7. Minimales Interface-Modell

### 7.1 Jeder Pfadwechsel braucht
- inherited anchor summary
- bound active slice
- Payload
- offene Frage oder klares Rueckgabeziel
- Stop-Bedingungen

### 7.2 Jeder Payload-Satz braucht
- Gegenstandsbereich
- Wissensebene
- betroffene Pfadebene
- betroffene SSOT-Flaeche oder explizit `noch unklar`
- Unsicherheitsstatus

## 8. Nicht-Ziele

Dieses Dokument legt **nicht** fest:
- konkrete Repo-Mutation
- konkrete `.codex`-Materialisierung
- konkrete Skill-Implementierung
- konkrete Gate-Metrikschwellen im Detail
- konkrete GUI-Interaktion

## 9. Anschlussdokumente

Dieses Dokument wird ergaenzt durch:
1. `ASWE_EvalGate_Authority_Contract_20260413_V1.md`
2. `ASWE_AutonomyInfrastructure_20260413_V1.md`
3. `ASWE_CodexApp_AdapterEnvironment_Contract_20260413_V1.md`
4. `ASWE_CapabilityRoleMap_SpawnReadiness_20260413_V1.md`
