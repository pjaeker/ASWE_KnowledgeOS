---
project: ASWE_KnowledgeOS
doc_type: protocol
version: V1
date: 2026-04-14
status: draft
audience: [human, llm]
intent: "Lueckenloses E2E-Protokoll fuer den bounded Evidence-Intake-Selbstevolutionsstart in der Codex App."
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
6. `ASWE_CodexApp_StartContract_20260414_V1.md`
7. `ASWE_CodexApp_BootstrapPromptPack_20260414_V1.md`
8. `ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md`
9. `ASWE_CodexApp_E2E_StartReadiness_Report_20260414_V1.md`

## 2. Projektinitialisierung

Pflicht:
- Projektinstruktion setzen
- project-scoped `.codex/config.toml` und `.codex/requirements.toml` aktivierbar machen
- lokalen Environment-Setup-Scriptpfad vorhanden halten

## 3. Modus- und Konfigurationspruefung

Vor produktiver Arbeit pruefen:
- trusted project aktiv
- `web_search = live`
- `sandbox_mode = workspace-write`
- `sandbox_workspace_write.network_access = true`
- `approval_policy` interaktiv nicht blockierend

## 4. Threads anlegen

Pflichtthreads:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

## 5. Umbrella-Start

Im Umbrella-Thread zuerst:
- Anchor Overlay
- Operating Mode
- erster Ledger Entry
- Bound Active Slice
- Startblockerpruefung
- G0

## 6. M2-Bootstrap

Nur falls `M2-shared-local` aktiv:
- `scripts/aswe_codex_runtime_bootstrap.sh` ausfuehren
- Sichtbarkeit der K5-Flaechen bestaetigen
- erst dann Evidence Intake starten

## 7. Evidence Intake

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

## 8. Verbesserungsentscheidung nach Intake

### `G1 pass`
- Semantic Evolution darf starten.

### `G1 hold|return`
- neuer bounded Intake-Slice zur Verfahrensverbesserung.

### `G1 reject`
- Dead-End Registry ergaenzen,
- Scope oder Schema aendern,
- kein semantischer Folgepfad.

## 9. Semantic Evolution

Start nur mit:
- `G1 pass`
- Trigger Packet
- bounded semantischem Scope
- letztem Ledger-Stand
- Live-Handoff Packet

## 10. Verbesserungszyklus abgeschlossen, wenn

mindestens folgende Kette vorliegt:
- Evidence-Artefakte
- Operationalisierungs-Eval
- G1-Entscheid
- optional semantischer Folgepfad
- Resume Sidecar
- expliziter naechster Verbesserungsslice

## 11. Stop-Bedingungen

Abbruch oder Rueckgabe zwingend, wenn:
- Konfiguration nicht aktiv ist
- K5-Flaechen fehlen
- live Internet benoetigt wird, aber nicht verfuegbar ist
- Semantic Evolution ohne `G1 pass` anlaufen wuerde
- kanonische Mutation ohne Writer Gate noetig wird
