---
project: ASWE_KnowledgeOS
doc_type: explanation
package: SelfEvolutionContracts
version: V2
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Aktualisierter Paketplan fuer das 2026-04-15-Dokumentenset inklusive operativer V2-Startschicht fuer die Codex-App-E2E-Faehigkeit."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/architecture-evolution
  - topic/documentation
  - topic/e2e
  - topic/patch-planning
---

# ASWE Document Plan - SelfEvolution Contracts

## 0. Zweck

Dieses Dokument aktualisiert den bisherigen Paketplan um die **operativ fuehrende V2-Startschicht**.
Es beschreibt,
welche Dokumente das 2026-04-15-Paket jetzt enthaelt,
welche neuen V2-Dokumente hinzugekommen sind
und wie sie in einen spaeteren Repo-Patch ueberfuehrt werden sollen.

## 1. Paketfamilien

### A. Bereits vorhandene 2026-04-15-Vertrags- und Leitliniendokumente
- Governance / Interaction / Authority Contract
- Eval / Gate / Operationalization Contract
- Codex Knowledge-Work Adapter / Environment
- Eval / Verify Analyst Role Contract
- Automation Scheduling Contract
- Personalization Porting Contract
- Deterministic Tooling Execution Guideline
- E2E Startability Audit V1

### B. Neu hinzugekommene operative V2-Startschicht
- Start Contract V2
- Autonomous Start E2E Protocol V2
- UI Runbook V2
- Bootstrap Prompt Pack V2
- Evidence Intake Systemprompt V2
- Semantic Evolution Systemprompt V2
- Startset Alignment Patch Plan
- E2E Startability Audit V2

## 2. Deduktive Reihenfolge

1. Referenzkern und Governance
2. Eval-/Gate- und Operationalisierungslogik
3. Adapter-/Environment- und Wissensarbeitsfit
4. Personalisierungs- und Determinismusregeln
5. Automation Scheduling und Triggeroffenheit
6. operative Startschicht
7. spaeterer Repo-Patch an wirksamen `.codex`- und Scriptartefakten

## 3. Widerspruchs- und Redundanzstatus

### 3.1 Beseitigte Hauptwidersprueche im Paket
- Projektinstruktion V2 statt V1 in der Startschicht
- `approval_policy = "never"` statt interaktiv-blockierungsarmer Altformulierung
- Readiness-/Audit-Verweise auf aktuelle V2-Lage
- K5-/M1-/M2-/G0-/G1-Logik expliziter auch in threadnahen Promptdokumenten

### 3.2 Bewusst erhaltene Redundanz
Bewusst parallel gefuehrt bleiben:
- V1-Audit und V2-Audit
- V1-Plan und V2-Plan

Grund:
Das Paket soll den Fortgang der Nachschaerfung nachvollziehbar halten.

## 4. Repozielpfade

Empfohlene Zielpfade:
- `handbook/explanation/` fuer Plan-, Audit- und Patch-Plan-Dokumente
- `handbook/reference/` fuer Contracts, Runbooks, Prompt Packs und threadnahe Systemprompts
- `handbook/protocol/` fuer das E2E-Protokoll

## 5. Nicht-Ziele dieses Pakets

Dieses Paket patched noch nicht direkt:
- `.codex/config.toml`
- `.codex/requirements.toml`
- `.codex/environments/environment.toml`
- `scripts/aswe_e2e_start_readiness_check.sh`

Es bereitet deren Patch jedoch widerspruchsaermer vor.

## 6. Zielbild

Nach Uebernahme dieses Pakets als Review- und Patchvorlage liegt ein konsistenterer,
repozielpfadkompatibler Dokumentensatz vor,
der die bounded E2E-Selbstevolution von Evidence Intake mit Umbrella in der Codex App
ueber den gesamten Fuehrungsworkflow besser traegt.
