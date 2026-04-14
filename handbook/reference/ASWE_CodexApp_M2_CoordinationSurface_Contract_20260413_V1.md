---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Konkreter Sollschnitt fuer gemeinsame lokale Koordinationsflaechen in M2-shared-local."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/worktree
  - topic/local-state
  - topic/coordination
---

# ASWE Codex App M2 Coordination Surface Contract

## 0. Zweck

Dieses Dokument schliesst die M2-Luecke zwischen rein logischen K5-Artefakten und real nutzbarer shared-local Koordination.
Es definiert einen **konkreten, aber nicht repo-kanonischen Sollschnitt** fuer den gemeinsamen lokalen Worktree.

## 1. Status

Dies ist ein **lokaler Runtime-Sollschnitt**.
Er ist kein kanonischer Repo-Ursprung und keine bereits erfolgte Repo-Mutation.

## 2. Empfohlene lokale Grundstruktur

Empfohlene logische Wurzel innerhalb des gemeinsamen lokalen Worktrees:
- `.codex-local/aswe-runtime/architecture-evolution/`

Darunter mindestens:
- `ledger/`
- `handoff/`
- `gates/`
- `queue/`
- `dead-ends/`
- `runs/`
- `payloads/`
- `resume/`

## 3. Mindestdateien pro erster E2E-Runde

### 3.1 Ledger
- `ledger/current.md`
- `ledger/history/`

### 3.2 Handoff
- `handoff/evidence-to-umbrella/`
- `handoff/semantic-to-umbrella/`

### 3.3 Gates
- `gates/G0/`
- `gates/G1/`
- `gates/G2/`
- `gates/G3/`

### 3.4 Queue
- `queue/trigger/`
- `queue/review/`
- `queue/automation/`

### 3.5 Dead Ends
- `dead-ends/register.md`

### 3.6 Runs
- `runs/automation/`
- `runs/thread/`

### 3.7 Payloads
- `payloads/evidence/`
- `payloads/semantic/`
- `payloads/architecture-review/`

### 3.8 Resume
- `resume/current.md`

## 4. Schreibautoritaet pro Flaeche

### 4.1 Umbrella / Main Agent
Darf schreiben:
- `ledger/current.md`
- `gates/**`
- `resume/current.md`
- `queue/review/**`

### 4.2 Evidence Intake Thread
Darf schreiben:
- `payloads/evidence/**`
- `handoff/evidence-to-umbrella/**`
- optional `queue/trigger/**`
- `runs/thread/**`

Darf nicht schreiben:
- `gates/**`
- `resume/current.md`

### 4.3 Semantic Evolution Thread
Darf schreiben:
- `payloads/semantic/**`
- `handoff/semantic-to-umbrella/**`
- optional `queue/review/**`
- `runs/thread/**`

Darf nicht schreiben:
- `gates/**`
- `resume/current.md`

### 4.4 Automationen
Duerfen schreiben:
- `runs/automation/**`
- `queue/automation/**`
- vorbereitende Verdichtung in `payloads/**`, wenn explizit erlaubt

Duerfen nicht schreiben:
- `gates/**`
- `resume/current.md`
- kanonische Repo-Pfade

## 5. Konfliktregel

Wenn mehrere Akteure dieselbe Datei brauchen,
gilt nicht Gleichzeitigkeit auf derselben Datei,
sondern **append-only oder neue Datei pro Lauf**.

Mindestregel:
- `ledger/current.md` nur durch Umbrella/Main Agent aktualisieren
- alle anderen Akteure schreiben neue artefaktbezogene Dateien statt bestehende zentrale Steuerdateien zu ueberschreiben

## 6. Sichtbarkeitsregel

Lesbarkeit aus shared-local reicht nur dann fuer Folgearbeit,
wenn die Datei einer benannten K5-Klasse zugeordnet ist.
Eine bloss vorhandene Notiz oder Diff-Datei ist noch kein wirksamer Steuerzustand.

## 7. Schnellregel

M2 ist erst dann wirklich lauffaehig,
wenn nicht nur `derselbe Worktree`,
sondern auch **dieser konkrete Koordinationsschnitt** explizit festgelegt ist.
