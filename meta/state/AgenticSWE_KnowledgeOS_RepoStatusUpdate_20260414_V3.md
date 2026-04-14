---
project: ASWE_KnowledgeOS
doc_type: RepoStatusUpdate
version: V3
date: 2026-04-14
status: draft
audience: [human, llm]
intent: "Status-Fortschreibung nach Merge des Evidence-Intake-self-evolution-Slices und nachgelagerter Codex-Konfigurationsumstrukturierung auf main."
tags:
  - layer/state
  - artifact/status
  - topic/status
  - topic/architecture-evolution
  - topic/codex
  - topic/evidence
  - topic/self-evolution
  - topic/closeout
---

# ASWE KnowledgeOS Repo Status Update - 2026-04-14 (V3)

## 1) Executive Summary

- Der bounded self-evolution-Satz fuer `EvidenceIntake` ist jetzt repo-lokal in `main` vorhanden.
- Dazu gehoeren neue Contracts fuer Ausfuehrungssystem, Eval/Gate, Autonomieinfrastruktur, Rollen-/Spawn-Readiness, Informationsfluss, M2-Koordination, Routing sowie der aktualisierte Codex-App-Startsatz und das ProModel-Support-Paket.
- Nach dem Merge wurde die Codex-Konfigurationsflaeche so umbenannt, dass `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` jetzt auf den self-evolution-Satz zeigen.
- `config_legacy.toml` und `environment_legacy.toml` konservieren die fruehere Lage; eine gleichartige `requirements_legacy.toml` wurde in diesem Closeout nicht verifiziert.
- Damit ist die operative Wahrheit gegenueber dem 2026-04-08-Stand materially weitergerueckt; die Session-Anker von 2026-04-08 sind stale.

## 2) Baseline vor diesem Closeout

- Entry vor diesem Closeout:
  - `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260408_V1.md`
- Status vor diesem Closeout:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260408_V1.md`
- Aktiver Umbrella-Hauptanker davor:
  - `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260408_V1.md`
- Erster produktiver Primaerpfad davor:
  - `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260408_V1.md`

## 3) Materiell erreichte Repo-Aenderungen

### A) Self-evolution-Dokumentationssatz in `main`

Neu in `main` vorhanden sind insbesondere:
- `handbook/reference/ASWE_ExecutionSystem_Target_Contract_20260413_V1.md`
- `handbook/reference/ASWE_EvalGate_Authority_Contract_20260413_V1.md`
- `handbook/reference/ASWE_AutonomyInfrastructure_20260413_V1.md`
- `handbook/reference/ASWE_CodexApp_AdapterEnvironment_Contract_20260413_V1.md`
- `handbook/reference/ASWE_CapabilityRoleMap_SpawnReadiness_20260413_V2.md`
- `handbook/reference/ASWE_ExecutionPackets_MinimumSet_20260413_V2.md`
- `handbook/reference/ASWE_CodexApp_InformationChannel_Model_20260413_V2.md`
- `handbook/reference/ASWE_CodexApp_SharedWorktree_Automation_Contract_20260413_V1.md`
- `handbook/reference/ASWE_CodexApp_M2_CoordinationSurface_Contract_20260413_V1.md`
- `handbook/reference/ASWE_CodexApp_ThreadOrchestration_Routing_Contract_20260413_V1.md`
- `handbook/reference/ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
- `handbook/reference/ASWE_CodexApp_BootstrapPromptPack_20260414_V1.md`
- `handbook/reference/ASWE_CodexApp_StartContract_20260414_V1.md`
- `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260414_V1.md`
- `handbook/reference/ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260414_V1.md`
- `handbook/reference/ASWE_CodexApp_E2E_StartReadiness_Report_20260414_V2.md`
- `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`
- `scripts/aswe_codex_runtime_bootstrap.sh`
- `scripts/aswe_e2e_start_readiness_check.sh`

### B) ProModel-Support-Paket in `main`

Neu in `main` vorhanden:
- `meta/packages/ASWE_ProModel_AutonomousStart_20260414_V3/**`

### C) Codex-Konfigurationsflaeche umstrukturiert

Aktueller Hauptbefund:
- `.codex/config.toml` ist jetzt die self-evolution-Konfigurationsdatei.
- `.codex/requirements.toml` ist jetzt der self-evolution-Requirements-Satz.
- `.codex/environments/environment.toml` ist jetzt das self-evolution-Environment.
- `config_legacy.toml` und `environment_legacy.toml` bewahren die frueheren Dateien.

## 4) Fuehrende Bewertung

- Die repo-lokale Sollarchitektur fuer bounded Evidence-Intake-Selbstevolution ist jetzt weiter operationalisiert als im 2026-04-08-Stand.
- Die Rolle der `.codex`-Dateinamen hat sich zugleich geaendert: Der Dateiname ist jetzt runtime-zentriert auf den self-evolution-Satz belegt, waehrend die Datei selbst ihn weiterhin als additiven Kandidaten markiert.
- Daraus folgt keine automatische Aussage darueber, ob dieser Satz teamweit ohne weitere Aktivierungsentscheidung als operative Standardwahrheit verwendet werden soll.
- Fuer den naechsten Start ist aber klar: Der aktuelle Repo-Zustand muss als beobachtete Laufzeitrealitaet gelesen werden; eine separat-lokale Aktivierungspolitik kann nur darauf aufbauen, nicht daran vorbeigehen.

## 5) Active Workstreams (max 3)

| WS | Rolle | Status | Next Focus |
|---|---|---|---|
| `ASWE-WS-ARCHITECTURE-EVOLUTION` | aktiver Umbrella-Hauptanker | aktiv | 2026-04-14-Zustand als kanonische Session-Anker fortschreiben und bounded naechsten Lauf steuern |
| `ASWE-WS-EVIDENCE-INTAKE` | erster produktiver Primaerpfad | aktiv | ersten echten bounded self-evolution-Lauf mit Observation Pack, Claim Pack, Conflict Cluster/no-conflict, Trigger Packet und OI-G0/OI-G1 fahren |
| `ASWE-WS-SEMANTIC-EVOLUTION` | parallel eingerichteter Primaerpfad | parallel-ready | nur nach belastbarem `G1 pass` dominant aktivieren |

## 6) Offene Punkte

- Ein echter bounded Evidence-Intake-Selbstevolutionslauf mit Laufartefakten ist weiterhin nicht als ausgefuehrter Arbeitsstand dokumentiert.
- Die Umbenennung der `.codex`-Dateien ist materiell vollzogen, ihr kanonischer Governance-Status aber noch nicht explizit in Entry/Status/Workstream nachgezogen.
- Nicht verifiziert ist eine `requirements_legacy.toml`; der Legacy-Schnitt ist daher nur fuer `config` und `environment` gesichert beobachtet.
- Die 2026-04-14-Startdokumente enthalten weiterhin interne Referenzdrift im Detail; fuer die Session-Router-Wahrheit ist das nachgeordnet, fuer die spaetere operative Schaerfung aber relevant.

## 7) Closeout-Entscheidungen dieses Slices

- `RepoStatusUpdate`: create
- `Workstream`: update
- `Structural Reference / Protocol / Policy`: no-change
- `Codex-App Operating Guidance`: no-change
- `ENTRY_LATEST`: refresh
- `NextChat-Handoff`: not-needed

Begruendung:
- Die operative Wahrheit hat sich materiell geaendert.
- `ArchitectureEvolution` und `EvidenceIntake` bleiben die kanonischen Startpfade, muessen aber auf den 2026-04-14-Stand fortgeschrieben werden.
- Fuer den Init-Skill reichen Entry, Status und die beiden aktualisierten Workstreams als nahtloser Session-Vertrag; ein zusaetzliches Handoff-Sidecar ist nicht noetig.

## 8) Next Thin Slices

1. Session-Anker auf den 2026-04-14-Zustand refreshen.
2. Den ersten bounded Evidence-Intake-Selbstevolutionslauf gegen den gemergten Eval-/Gate-/Packet-Satz ausfuehren oder verify-first vorbereiten.
3. Danach explizit entscheiden, ob die aktuelle `.codex`-Belegung als dauerhafte repo-kanonische Laufzeitflaeche gelten oder nur als vorlaeufiger Aktivierungszustand behandelt werden soll.
