---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-14
status: draft
audience: [human, llm]
intent: "Operatives UI-Runbook fuer den Evidence-Intake-Selbstevolutionsstart in der Codex App."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/runbook
  - topic/evidence
---

# ASWE Codex App UI Runbook - Architecture Evolution

## 0. Vorbedingungen

1. Projekt als trusted oeffnen.
2. Projektinstruktion `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V1.txt` setzen.
3. Sicherstellen, dass `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` im Projekt liegen.
4. Optional lokal `scripts/aswe_e2e_start_readiness_check.sh .` ausfuehren.

## 1. Threads

Lege genau drei Threads an:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

## 2. Erste Projektanweisung

Poste den Projekt-Kickoff aus `ASWE_CodexApp_BootstrapPromptPack_20260414_V1.md`.

## 3. Umbrella zuerst

Poste danach den Umbrella-Initialisierungsprompt im Umbrella-Thread.
Ohne G0 gilt der Start nicht als initialisiert.

## 4. M2 nur nach Bootstrap

Wenn derselbe lokale Worktree geteilt werden soll:
- operating mode = `M2-shared-local`
- Bootstrap-Script laufen lassen
- K5-Flaechen bestaetigen
- erst danach Evidence Intake starten

## 5. Evidence Intake

Poste den Evidence-Intake-Startprompt.
Der Thread arbeitet nur bounded und gibt mit Handoff zurueck.

## 6. Semantic Evolution

Nur nach `G1 pass` den Semantic-Prompt posten.

## 7. Automationen

Zeitgesteuerte Automationen nur auf benannten Queue-/Ledger-/Gate-Zustaenden aufsetzen.
Keine Automation setzt finale Gates oder Writer-Entscheidungen.

## 8. Sessionende

Vor Ende Pflicht:
- Ledger aktualisieren
- letzter Gate Record
- Queue-Lage
- Resume Sidecar
- naechster Verbesserungsslice
