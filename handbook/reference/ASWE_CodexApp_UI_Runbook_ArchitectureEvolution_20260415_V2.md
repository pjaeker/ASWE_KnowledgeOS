---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Operatives UI-Runbook fuer den bounded Evidence-Intake-Selbstevolutionsstart in der Codex App auf normiertem V2-Stand."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/runbook
  - topic/evidence
  - topic/ui
---

# ASWE Codex App UI Runbook - Architecture Evolution

## 0. Vorbedingungen

1. Projekt als trusted oeffnen.
2. Projektinstruktion `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt` setzen oder ueber wirksame Fallback-Konfiguration laden.
3. Sicherstellen, dass `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` im Projekt liegen und wirksam sind.
4. Optional lokal `scripts/aswe_e2e_start_readiness_check.sh .` ausfuehren.
5. Beachten: der Startsatz ist auf `approval_policy = "never"` normiert.

## 1. Threads

Lege genau drei Threads an:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- `Semantic Evolution`

## 2. Erste Projektanweisung

Poste den Projekt-Kickoff aus `ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md`.

## 3. Umbrella zuerst

Poste danach den Umbrella-Initialisierungsprompt im Umbrella-Thread.
Ohne `G0 pass` gilt der Start nicht als initialisiert.

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

## 7. Personalisierung und Wissensarbeitsfit

Nutze nur solche Personalisierungen,
die explizit in Projektinstruktion, Kickoff, Thread-Start oder Referenzdokumenten materialisiert sind.
Behandle Codex als K5-first Wissensarbeits-Runtime,
nicht als coding-first Oberflaeche mit impliziter Logikuebernahme.

## 8. Deterministische Checks

Nutze Skripte oder einfache Validatoren fuer:
- Readiness-Vorcheck
- Bootstrap
- feste Struktur- oder Presence-Checks

Nutze Modellarbeit fuer:
- Konfliktdeutung
- Gate-Begruendung
- Architekturwirkung
- semantische Delta-Bildung

## 9. Automationen

Zulaessig bleiben zwei Varianten:
- zeitgesteuerte bounded Automationen
- K5-bedingt legitimierte spaetere bounded Folgeinstanzen

Keine dieser Varianten setzt finale Gates oder Writer-Entscheidungen.

## 10. Sessionende

Vor Ende Pflicht:
- Ledger aktualisieren
- letzter Gate Record
- Queue-Lage
- Resume Sidecar
- naechster Verbesserungsslice
