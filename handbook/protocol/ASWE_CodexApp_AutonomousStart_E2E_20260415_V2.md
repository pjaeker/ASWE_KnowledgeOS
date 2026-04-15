---
project: ASWE_KnowledgeOS
doc_type: protocol
version: V2
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Lueckenloses E2E-Protokoll fuer den bounded Evidence-Intake-Selbstevolutionsstart in der Codex App auf normiertem V2-Stand."
tags:
  - layer/handbook
  - artifact/protocol
  - topic/codex
  - topic/e2e
  - topic/evidence
  - topic/self-evolution
---

# ASWE Codex App Autonomous Start - E2E Protocol

## 0. Ziel

Dieses Protokoll endet beim ersten geschlossenen Verbesserungszyklus des Evidence-Intake-Verfahrens,
nicht schon beim ersten Arbeitsoutput.

## 1. Vor der App

Lies in dieser Reihenfolge:
1. `AGENTS.md`
2. `ENTRY_LATEST`
3. `RepoStatusUpdate`
4. `ASWE_WS_ArchitectureEvolution`
5. `ASWE_WS_EvidenceIntake`
6. `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`
7. `ASWE_CodexApp_StartContract_20260415_V2.md`
8. `ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`
9. `ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
10. `ASWE_CodexApp_E2E_Startability_Audit_20260415_V2.md`

## 2. Projektinitialisierung

Pflicht:
- Projektinstruktion V2 setzen oder ueber wirksame Fallback-Konfiguration laden
- project-scoped `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` wirksam machen
- lokalen Environment-Setup-Scriptpfad vorhanden halten
- optional `scripts/aswe_e2e_start_readiness_check.sh .` als deterministischen Vorcheck laufen lassen

## 3. Modus- und Konfigurationspruefung

Vor produktiver Arbeit pruefen:
- trusted project aktiv
- `approval_policy = "never"`
- `web_search = "live"` oder gleichwertig erlaubt
- `sandbox_mode = "workspace-write"`
- `sandbox_workspace_write.network_access = true`

## 4. Threads anlegen

Pflichtthreads:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

## 5. Projekt-Kickoff

Poste den Projekt-Kickoff aus `ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`.

## 6. Umbrella-Start

Im Umbrella-Thread zuerst:
- Anchor Overlay
- Operating Mode
- erster Ledger Entry
- Bound Active Slice
- Startblockerpruefung
- G0

Ohne `G0 pass` gilt der Start nicht als initialisiert.

## 7. M2-Bootstrap

Nur falls `M2-shared-local` aktiv:
- `scripts/aswe_codex_runtime_bootstrap.sh` ausfuehren
- Sichtbarkeit der K5-Flaechen bestaetigen
- erst dann Evidence Intake starten

## 8. Evidence Intake

Pflichtoutputs des ersten Laufs:
- Observation Pack
- Claim Pack
- Conflict Cluster oder `no-conflict`
- Trigger Packet
- Evidenzgueteprofil
- OI-G0/OI-G1-Einschaetzung
- Live-Handoff Packet

Danach:
- Umbrella liest Handoff
- setzt `G1`
- aktualisiert Ledger
- schreibt optional Queue Entry
- entscheidet ueber erneuten Intake-Slice, spaetere Folgeinstanz oder Semantic Evolution

## 9. Verbesserungsentscheidung nach Intake

### `G1 pass`
- Semantic Evolution darf starten.

### `G1 hold|return|defer`
- neuer bounded Intake-Slice oder spaetere bounded Folgeinstanz auf legitimer Queue-/Gate-/Ledger-Basis.

### `G1 reject`
- Dead-End Registry ergaenzen
- Scope oder Schema aendern
- kein semantischer Folgepfad

## 10. Semantic Evolution

Start nur mit:
- `G1 pass`
- Trigger Packet
- bounded semantischem Scope
- letztem Ledger-Stand
- Live-Handoff Packet

Pflichtoutputs:
- Semantic Delta Packet
- SSOT-Impact Packet
- Promotionsvorpruefnotiz
- Live-Handoff Packet an Umbrella

## 11. Automationen und spaetere Folgeinstanzen

Zulaessig sind:
- zeitgesteuerte bounded Automationen
- K5-bedingt legitimierte spaetere bounded Folgeinstanzen

Beide lesen nur benannte K5-Zustaende
und schreiben nur vorbereitende oder dokumentierende Artefakte.
Sie setzen keine finalen Gates.

## 12. Verbesserungszyklus abgeschlossen, wenn

mindestens folgende Kette vorliegt:
- Evidence-Artefakte
- Operationalisierungs-Eval
- G1-Entscheid
- optional semantischer Folgepfad
- Resume Sidecar
- expliziter naechster Verbesserungsslice

## 13. Stop-Bedingungen

Abbruch oder Rueckgabe zwingend, wenn:
- Konfiguration nicht aktiv ist
- K5-Flaechen fehlen
- Semantic Evolution ohne `G1 pass` anlaufen wuerde
- kanonische Mutation ohne Writer Gate noetig wird
- bounded Folgeinstanz authoritative Gate- oder Writer-Wirkung beansprucht
