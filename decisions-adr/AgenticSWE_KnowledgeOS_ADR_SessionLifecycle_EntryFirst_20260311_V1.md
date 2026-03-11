---
project: AgenticSWE_KnowledgeOS
doc_type: adr
version: V1
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Normativer Entscheid fuer einen einheitlichen Session-Lifecycle mit Entry-first-Routing, zwei Adaptern (ChatGPT GUI, Codex) und optionalem NextChat-Handoff."
tags:
  - layer/decision
  - artifact/adr
  - topic/router
  - topic/session
  - topic/entry
  - topic/codex
  - topic/chatgpt
  - topic/governance
---

# ADR - SessionLifecycle Entry-First

## 1) Status

Proposed.

## 2) Kontext

Der Repo-Stand enthaelt aktuell zwei konkurrierende Session-Modelle:

1. ein aelteres Prompt-/Ritual-Modell, in dem ChatGPT-Sessions explizit ueber
   `SESSION_BOOTSTRAP` und `SESSION_CLOSEOUT` gefuehrt werden
2. ein neueres Routing-/Runner-Modell, in dem neue Sessions ueber
   `AGENTS.md -> ENTRY_LATEST -> RepoStatusUpdate -> Workstreams` starten

Dadurch entstehen Drift-Risiken zwischen:
- `AGENTS.md`
- `ENTRY_LATEST`
- `RepoStatusUpdate`
- Business-Sync Session-Ritual
- NextChat-Handoffs
- Legacy Prompt-Dateien unter `.github/prompts/**`

Zusaetzlich ist der Status von `NextChat-Handoff` unklar:
- praktisch nuetzlich als Resume-Sidecar
- aber teilweise redundant zu `RepoStatusUpdate` und Workstreams

## 3) Problem

Ohne einen klaren normativen Entscheid kann Codex zwar repo-lokal korrekt bootstrappen,
aber nicht sicher erkennen,
- welcher Session-Start kanonisch ist,
- wann Handoffs noetig sind,
- wie Closeout den naechsten Start erzeugt,
- und welche Doku-/Skript-Schichten synchron gehalten werden muessen.

## 4) Entscheidung

Es gilt ab jetzt ein **kanonischer Session-Lifecycle** mit **zwei Adaptern**.

### 4.1) Kanonischer Kernfluss

Jede Session folgt im Kern demselben Routing:

1. `ENTRY_LATEST`
2. `RepoStatusUpdate`
3. aktiver Workstream
4. Tiefenanker nur bei Bedarf:
   - `RepoMeaningMap`
   - `RepoStateSnapshot`
   - `RepoManifest`

### 4.2) Adapter A - ChatGPT GUI

Fuer die ChatGPT-GUI gilt:
- die Session wird **semantisch** ueber `ENTRY_LATEST` initialisiert
- es braucht **keinen** verpflichtenden Bootstrap-/Closeout-Prompt mehr als Primaerweg
- Legacy Prompt-Dateien duerfen als manueller Fallback bestehen bleiben, sind aber nicht mehr kanonisch

### 4.3) Adapter B - Codex / lokaler Runner

Fuer Codex gilt:
- `AGENTS.md` bleibt die repo-lokale operative Startkarte
- von dort aus muss Codex denselben Kernfluss benutzen:
  `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`

### 4.4) Closeout erzeugt den naechsten Einstieg

Der kanonische Closeout ist:

1. `RepoStatusUpdate` aktualisieren, wenn sich operative Wahrheit geaendert hat
2. betroffenen Workstream aktualisieren, wenn Ziel/Scope/DoD/naechste Slices betroffen sind
3. `RepoMeaningMap` / `RepoStateSnapshot` / `RepoManifest` nur bei echter Struktur-
   oder Routing-Aenderung aktualisieren
4. danach `ENTRY_LATEST` refreshen

Damit gilt explizit:

> Der vorherige Ausstieg erzeugt den naechsten Einstieg.

### 4.5) Rolle von `ENTRY_LATEST`

`ENTRY_LATEST` bleibt ein **duenner Pointer-Bund**.

Es darf nicht zu einem operativen Sammeldokument fuer:
- TODOs
- taktische Zwischenschritte
- Slice-spezifische Argumentation
- laengere Handoffs
werden.

### 4.6) Rolle von `NextChat-Handoff`

`NextChat-Handoff` wird **optional**.

Es wird nur verwendet, wenn mindestens einer dieser Faelle vorliegt:
- ein Slice endet mitten in einer fragilen taktischen Sequenz
- ein spezifischer PR-Draft / Rollback / Resume-Kontext soll erhalten bleiben
- kurzlebige Wiedereinstiegsdetails passen bewusst nicht in Status oder Workstream

Standardfall:
- naechster Start funktioniert ohne Handoff
- `ENTRY_LATEST + RepoStatusUpdate + Workstream` reichen aus

## 5) Konsequenzen

### Positiv

- ein einziger normativer Session-Zyklus
- ChatGPT-GUI und Codex koennen auf denselben Kernfluss ausgerichtet werden
- `ENTRY_LATEST` bleibt schlank und maschinenfreundlich
- Handoffs werden auf echte Resume-Faelle begrenzt
- Closeout und Start werden endlich symmetrisch

### Negativ / Aufwand

- mehrere bestehende Doku-Artefakte muessen harmonisiert werden
- Legacy Prompt-Dateien duerfen nicht geloescht, aber muessen klar entkanonisiert werden
- Automationspfad braucht einen Validator gegen Routing-Drift

## 6) Nicht-Ziele

Diese ADR fuehrt **nicht sofort** ein:
- direkte Aenderung aller betroffenen Dateien
- automatischen Full-Refresh von MeaningMap / Snapshot / Manifest
- einen zweiten PR-Erzeuger neben dem Writer
- eine neue Governance-Abkuerzung fuer ChatGPT oder Codex

## 7) Umsetzungsmodell

Die Umsetzung erfolgt in vier Wellen:

- PR-0: Orchestrierung repo-seitig verankern
- PR-A: Session-Contract in normativen Dokumenten harmonisieren
- PR-B: Validator / Tasks / Skriptpfad absichern
- PR-C: Legacy-Prompts entschärfen und Handoff optionalisieren

## 8) Governance-Invarianten

- Writer bleibt der einzige autoritative PR-Erzeuger
- kein zweiter autonomer PR-Pfad durch Codex
- `.github/workflows/**`, `infra/**`, `secrets/**`, `.env*` bleiben Stop-&-Ask
- `.github/prompts/**` ist nicht gleichbedeutend mit `.github/workflows/**`

## 9) Review-Fragen

1. Ist die Adapter-Trennung GUI vs Codex klar genug?
2. Ist `NextChat-Handoff` ausreichend begrenzt?
3. Ist die Closeout-Reihenfolge operational eindeutig genug fuer Skripte und Tasks?
4. Fehlt ein weiterer kanonischer Anker zwischen `RepoStatusUpdate` und Workstream?
