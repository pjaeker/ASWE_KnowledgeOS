---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Patch- und Versionsplan fuer die operative Startschicht des Evidence-Intake-Selbstevolutionspfads in der Codex App."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/codex
  - topic/e2e
  - topic/patch-planning
  - topic/start-contract
---

# ASWE Codex App Startset Alignment Patch Plan

## 0. Zweck

Dieses Dokument plant die **kleinste zusammenhaengende Versionsanhebung**
fuer die operative Startschicht des bounded Evidence-Intake-Selbstevolutionspfads in der Codex App.

Es beschreibt keine Repo-Mutation selbst.
Es schneidet den Patch-Scope so,
dass die real wirksame Startkette wieder auf einen **einheitlichen Normzustand** gebracht werden kann.

## 1. Befund

Der tiefere Referenzkern ist weitgehend konsistent.
Nicht konsistent ist die **operativ fuehrende Frontschicht**:
- reale `.codex`-Konfiguration und Projektinstruktion arbeiten mit **V2** und `approval_policy = "never"`
- mehrere fuehrende Startdokumente und das Readiness-Script referenzieren noch **V1** bzw. eine interaktiv nicht blockierende Approval-Lage
- die 2026-04-08-Systemprompt-Dateien tragen noch nicht die spaetere K5-/M1-/M2-/G0-/G1-Startlogik

## 2. Fuehrender Zielzustand

Zielzustand fuer den Patch-Satz ist:

1. **Instruktions- und Versionskonsistenz**
   - Projektinstruktion V2 ist der durchgehende Referenzpunkt
   - Readiness-Report V2 ist der durchgehende Referenzpunkt

2. **Approval-Konsistenz**
   - `approval_policy = "never"` ist in Startschicht, Runbook und Protokoll explizit kongruent beschrieben

3. **Startketten-Konsistenz**
   - Projektinstruktion -> Bootstrap Prompt Pack -> Umbrella G0 -> Evidence Intake -> G1 -> optional Semantic Evolution
   - M2 nur nach Bootstrap und bestaetigten K5-Flaechen

4. **Trigger- und Automationsoffenheit**
   - zeitgesteuerte bounded Automationen bleiben offen
   - K5-bedingt legitimierte Folgearbeit bleibt ebenfalls offen
   - finale Gate- und Writer-Wirkung bleibt ausgeschlossen

5. **Wissensarbeitsfit**
   - geeignete Personalisierungen aus dem ChatGPT-App-Kontext werden nicht blind kopiert,
     sondern ueber Projektinstruktion, Kickoff, Thread-Start und Referenzvertrag portiert
   - hochgradig deterministische Setup-/Check-Arbeit darf toolseitig laufen

## 3. Zu versionierende Dokumente

### P0 - Operativ fuehrende Startschicht
1. `ASWE_CodexApp_StartContract_20260415_V2.md`
2. `ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`
3. `ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260415_V2.md`
4. `ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`

### P1 - Threadnahe Prompt-/Instruktionsschicht
5. `ASWE_CodexApp_EvidenceIntake_Systemprompt_20260415_V2.md`
6. `ASWE_CodexApp_SemanticEvolution_Systemprompt_20260415_V2.md`

### P2 - Audit-/Planungsnachzug
7. `ASWE_CodexApp_E2E_Startability_Audit_20260415_V2.md`
8. `ASWE_DocumentPlan_SelfEvolutionContracts_20260415_V2.md`

## 4. Nicht direkt als Dokument versioniert, aber im Patch-Scope mitzudenken

Nicht als neues Dokument in diesem Paket,
aber spaeter als Repo-Patch mitzuschneiden:
- `.codex/config.toml`
- `.codex/requirements.toml`
- `.codex/environments/environment.toml`
- `scripts/aswe_e2e_start_readiness_check.sh`

Grund:
Diese Artefakte sind wirksam,
aber in diesem Paket steht die **dokumentnahe Versionsanhebung** im Vordergrund.

## 5. Patch-Reihenfolge

1. Start Contract V2
2. E2E Protocol V2
3. UI Runbook V2
4. Bootstrap Prompt Pack V2
5. Evidence Intake Systemprompt V2
6. Semantic Evolution Systemprompt V2
7. Audit V2
8. Dokumentenplan V2

## 6. Sprach- und Strukturvorgaben

Die neuen Versionen muessen:
- Begriffe, Rollen, Regeln, Pruefung und Ausfuehrung sauber trennen
- Beobachtung, Claim und Beleg nicht vermischen
- K5-Wirkung vor lokaler Dateisicht stellen
- Diataxis-scharf bleiben:
  - `reference` fuer normative, definierende und vertragsartige Dokumente
  - `protocol` fuer Schrittfolge
  - `explanation` fuer Audit und Plan
- keine implizite neue Governancequelle eroeffnen

## 7. Zielbild nach Paketintegration

Nach Integration dieses Pakets ist der Dokumentensatz:
- widerspruchsaermer in der operativen Startschicht,
- besser auf `approval_policy = "never"` normiert,
- staerker auf bounded Wissensarbeit statt coding-first Verhalten zugeschnitten,
- anschlussfaehig fuer spaetere Repo-Patches an wirksamen Konfigurations- und Scriptdateien.
