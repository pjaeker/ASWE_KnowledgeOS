---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V2
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Erklaert die harmonisierte Session-Navigation mit einem gemeinsamen Kernfluss fuer GUI und Codex, schlankem ENTRY_LATEST und optionalem Resume-Sidecar."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/router
  - topic/navigation
  - topic/ssot
  - topic/workstreams
  - topic/codex
  - topic/chatgpt
  - topic/ux
---

# Strategy: Routing, Navigation & UX (Shared Session Contract)

## Ausgangslage (kurz)

**Zielbild:** kontrollierte Repo-Aenderungen direkt aus GUI oder lokalem Runner, aber mit **einem** kanonischen Session-Kernfluss und weiterhin **PR-only**.

**Friktion bisher:** Parallel existierten ein aelteres Prompt-/Ritualmodell und ein neueres Entry-/Status-/Workstream-Modell. Das erzeugte Drift in Navigation, Closeout und Handoff-Semantik.

**Vorhandene Basis, die wir jetzt harmonisieren**

- `AGENTS.md` als repo-lokale Startkarte fuer Codex/Copilot
- `meta/state/entry/*ENTRY_LATEST*_V*.md` als semantischer GUI-Start
- `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md` als operativer Ist-Stand
- `blackboard/workstreams/*.md` als Slice- und Fokus-Kapseln
- MeaningMap / Snapshot / Manifest als Tiefenanker fuer Semantik, Audit und Vollstaendigkeit

## Leitziele

1. Ein gemeinsamer Kernfluss fuer alle Session-Adapter.
2. `ENTRY_LATEST` bleibt schlank und pointerbasiert.
3. Workstreams bleiben der primaere operative Fokus nach dem Status.
4. Closeout erzeugt den naechsten Einstieg in klarer Reihenfolge.
5. `NextChat-Handoff` bleibt nuetzlich, aber optional.
6. Legacy-Prompt-Dateien konkurrieren nicht mehr mit dem kanonischen GUI-Weg.
7. Writer und CI bleiben die harten Governance-Layer.

## 1) Gemeinsamer Kernfluss

Der kanonische Kernfluss lautet:

- `ENTRY_LATEST`
- `RepoStatusUpdate`
- `Workstream`
- MeaningMap / Snapshot / Manifest nur bei Bedarf

Adapter darauf:

- ChatGPT GUI startet semantisch direkt bei `ENTRY_LATEST`.
- Codex/Copilot starten repo-lokal ueber `AGENTS.md` und wechseln dann sofort in denselben Kernfluss.

Dadurch gibt es nur noch einen normativen Session-Vertrag, aber zwei passende Einstiegsadapter.

## 2) Rolle von ENTRY_LATEST

`ENTRY_LATEST` ist ein **duenner Pointer-Bund**.

Es soll:
- auf die aktuellen Anker zeigen
- den Start leicht machen
- keinen operativen Sammeltext aufnehmen

Es soll nicht enthalten:
- taktische Slice-Argumentation
- laengere Wiedereinstiegsdetails
- TODO-Listen oder Zwischenstaende, die in Status, Workstream oder optionale Sidecars gehoeren

## 3) UX-Verkabelung

### 3.1) ChatGPT GUI

Fuer die GUI gilt der Standardpfad:

- `ENTRY_LATEST`
- `RepoStatusUpdate`
- relevanter Workstream
- Tiefenanker nur bei Bedarf

`SESSION_BOOTSTRAP` und `SESSION_CLOSEOUT` sind dafuer kein primaerer Weg mehr.
Sie koennen als manuelle Legacy-Helfer bestehen bleiben, aber nicht mehr als kanonische GUI-Schicht.

### 3.2) Codex / lokaler Runner

Codex nutzt:

- `AGENTS.md`
- danach denselben Kernfluss wie die GUI

Damit bleibt `AGENTS.md` klein und operativ, statt ein zweites Navigations-SSOT zu werden.

### 3.3) Copilot

Copilot bleibt Editor-Assistenz.
Navigation und Governance richten sich weiterhin nach denselben Repo-Ankern.

## 4) Closeout als Spiegel des Starts

Der Closeout wird explizit symmetrisch beschrieben:

1. `RepoStatusUpdate` aktualisieren, wenn sich operative Wahrheit geaendert hat.
2. Betroffenen Workstream aktualisieren, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind.
3. MeaningMap / Snapshot / Manifest nur bei echter Struktur- oder Routing-Aenderung aktualisieren.
4. Danach `ENTRY_LATEST` refreshen.
5. Optional `NextChat-Handoff`, wenn Resume-Details bewusst nicht in Status oder Workstream gehoeren.

So erzeugt der vorherige Ausstieg den naechsten Einstieg, ohne dass `ENTRY_LATEST` oder Handoffs ueberladen werden.

## 5) Kognitive Last und Deep Anchors

MeaningMap, Snapshot und Manifest bleiben wichtig, aber nicht als pauschale Startpflicht.
Sie werden nachgezogen, wenn:

- Routingfragen offen bleiben
- Struktur- oder Auditkontext noetig ist
- Dateivollstaendigkeit oder Topologie verifiziert werden muss

Dadurch bleibt der Einstieg schneller und die tieferen Anker behalten ihren eigentlichen Zweck.

## 6) Governance und Nicht-Ziele

Unveraendert gilt:

- Writer bleibt der einzige autoritative PR-Erzeuger
- kein zweiter autonomer PR-Pfad durch Codex
- Hooks sind Feedback, nicht Enforcement
- `.github/workflows/**`, Secrets, riskante Allowlists und neue GitHub-App-Permissions bleiben Stop-&-Ask

Dieser Slice fuehrt bewusst **nicht** aus:

- Legacy-Prompt-Bereinigung in den Prompt-Dateien selbst
- Validator-/Task-Verkabelung aus PR-B
- impliziten Full-Refresh von MeaningMap / Snapshot / Manifest
