---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V2
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Definiert Quellen, Startpfad und Closeout-Reihenfolge fuer Repo-Status-Updates unter dem harmonisierten Session-Contract."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/status
  - topic/ssot
  - topic/workstreams
  - topic/gate
  - topic/evidence
  - topic/codex
  - topic/chatgpt
---

# Runbook: Repo Status Update (Shared Session Contract)

## Zweck

Ein **Repo Status Update** ist das operative Statusdokument fuer den naechsten Start.
Es soll zeigen:

- Stand der operativen Wahrheit
- aktive oder betroffene Workstreams inkl. naechster Thin Slices
- Gate- und Evidence-Lage
- Risiken, Stop-&-Ask und relevante Decisions

Ergebnis:
- GUI-Start gelingt ueber `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`
- Codex-Start gelingt ueber `AGENTS.md -> ENTRY_LATEST -> RepoStatusUpdate -> Workstream`

## Vier-Schichten-Modell (fuer konsistente Struktur)

1. **Vision & Governance**
2. **Operativer Stand & Workstreams**
3. **Gates & Policies**
4. **Tooling & Evidence**

## Source Map: Welche Dokumente werden gelesen?

### A) Session-Contract und primaere Router

- `AGENTS.md` fuer den repo-lokalen Codex-/Copilot-Adapter
- `meta/state/entry/*ENTRY_LATEST*_V*.md` als primaerer semantischer GUI-Start
- aktuelles `meta/state/*RepoStatusUpdate*_V*.md`
- relevanter Workstream unter `blackboard/workstreams/*.md`
- `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260311_V2.md` nur fuer die normative GUI-Adapter-Beschreibung

### B) Tiefenanker nur bei Bedarf

- `meta/state/*RepoMeaningMap*_V*.md`
- `meta/state/*RepoStateSnapshot*_V*.md`
- `meta/state/*RepoManifest*_V*.json`

### C) Governance / Autonomy / Writing

- `handbook/**/WriteRights_AutomationLadder*`
- `handbook/runbooks/*AutomationAutonomy_AnalysisPlan*`
- `handbook/reference/*GateLayerCapabilityMatrix*`
- `handbook/reference/*PRReport_Template*`
- `decisions-adr/*.md`

### D) Optional Sidecars / Legacy-Helfer

- `blackboard/*NextChat_Handoff*` nur bei echtem Resume-Bedarf
- `.github/prompts/**` nur als manueller Legacy-Fallback, nicht als primaerer GUI-Weg

### E) Preflight / Gates / Hooks / CI

- Preflight Runbooks: `handbook/runbooks/**Preflight*`
- Scripts: `scripts/**`
- CI Drafts / Evidence: `meta/**ci*`
- `.github/workflows/**` nur lesen; Stop-&-Ask

### F) Evidence / Tooling

- ToolingSnapshot: `meta/state/tooling/*ToolingSnapshot*_V*.yml`
- CI Evidence: GitHub Checks + Logs verlinken, nicht kopieren

## Status Update: Template (SSOT Artefakt)

**Empfohlenes Zielartefakt:**

- `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_YYYYMMDD_Vx.md`

### Template

```md
---
project: ASWE_KnowledgeOS
doc_type: state
date: YYYY-MM-DD
version: Vx
status: draft
tags:
  - layer/state
  - artifact/status-update
---

# 1) Executive Summary (max 7 bullets)

# 2) E2E Reifegrad
| Segment | Status | Evidence |
|---|---|---|

# 3) Active Workstreams (max 3)
| WS | Ziel | DoD | Next Slice | Blocker | Evidence |
|---|---|---|---|---|---|

# 4) Gates / Evidence
| Gate | Status | Notes |
|---|---|---|

# 5) Tooling & Environment

# 6) Entscheidungen (ADRs / operative Entscheidungen)

# 7) Risiken & Stop-&-Ask

# 8) Next Thin Slices (3-5)

# 9) Evidence-Pointer
```

## Minimal Input Ablauf (neuer Start)

1. GUI: oeffne `meta/state/entry/*ENTRY_LATEST*_V*.md`. Codex/Copilot: oeffne `AGENTS.md` und dann `ENTRY_LATEST`.
2. Oeffne das aktuelle `RepoStatusUpdate`.
3. Oeffne den relevanten Workstream.
4. Ziehe MeaningMap, Snapshot und Manifest nur bei Bedarf nach.
5. Arbeite in Thin Slices: Patch-Spec -> Diff -> Evidence -> naechster Slice.

## Closeout-Reihenfolge

1. `RepoStatusUpdate` aktualisieren, wenn sich operative Wahrheit geaendert hat.
2. Betroffenen Workstream aktualisieren, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind.
3. MeaningMap, Snapshot und Manifest nur bei echter Struktur- oder Routing-Aenderung aktualisieren.
4. Danach `ENTRY_LATEST` refreshen.
5. `NextChat-Handoff` nur optional fuer Resume-Faelle verwenden.

## Codex Vorbereitung (spaetere Zyklen)

Definiere Skills oder Tasks, die den Status-Pfad unterstuetzen:

- `ASWE_StatusPack_Generate`
- `ASWE_Preflight_ChangedFiles`
- spaeter `ASWE_Validate_Session_Contract`

Dabei gilt:
- kein impliziter Full-Refresh von MeaningMap / Snapshot / Manifest
- keine Konkurrenz zum Writer als PR-Erzeuger

## Taxonomie (kurz)

**Tags (prefix-basiert)**

- `layer/*`: `layer/handbook`, `layer/state`, `layer/enforcement`, `layer/feedback`
- `artifact/*`: `artifact/runbook`, `artifact/reference`, `artifact/explanation`, `artifact/adr`, `artifact/status-update`, `artifact/entry`
- `topic/*`: `topic/router`, `topic/navigation`, `topic/workstreams`, `topic/gate`, `topic/evidence`, `topic/codex`, `topic/chatgpt`
- `risk/*`: `risk/stop-ask`
