---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-03-05
status: draft
audience: [human, llm]
intent: "Definiert Quellen + Struktur für ein Repo-Status-Update (E2E Autonomie, Workstreams, Gates, Evidence), so dass neue Chats minimalen Input brauchen."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/status
  - topic/ssot
  - topic/workstreams
  - topic/gate
  - topic/evidence
  - topic/codex
---

# Runbook: Repo Status Update (ASWE KnowledgeOS)

## Zweck

Ein **Repo Status Update** ist ein konsolidiertes, prüfbares Dokument, das zeigt:

- Stand der E2E-Autonomie (UI → Change → Writer → PR → CI → Merge)
- aktive Workstreams inkl. DoD + nächste Thin Slices
- Gate/Policy Status (feedback vs enforcement, authoritative enforcement pro Gate)
- Evidence/Artefakte (Snapshots, Reports, ToolingSnapshot)

**Ergebnis:** Ein neuer Chat startet, indem er *nur* Entry-LATEST → Status Update liest.

---

## Vier-Schichten-Modell (für konsistente Struktur)

1) **Vision & Governance**  
   Zielbild, Invarianten, Stop-&-Ask Trigger

2) **Interfaces & Control Planes (UX/Flows)**  
   UI/Chat, CMS/Portal, Codex/Copilot, Writer, GitHub PR, CI, Merge

3) **Gates & Policies (SSOT)**  
   Gate-Inventar, Authoritative Enforcement, Allowlist/Blocklist/Limits, Required Checks

4) **Tooling & Evidence (Implementation)**  
   Preflight Scripts, git hooks (feedback), ToolingSnapshot, CI Logs/Reports

---

## Source Map: Welche Dokumente werden gelesen?

### A) Router & SSOT-Anker (immer zuerst)

- Router (Navigation): `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260303_V1.md`
- Entry-LATEST (Start Here): `meta/state/entry/*ENTRY_LATEST*_V*.md`
- MeaningMap: `meta/state/*RepoMeaningMap*_V*.md`
- State Snapshot: `meta/state/*RepoStateSnapshot*_V*.md`
- Manifest (Index): `meta/state/*RepoManifest*_V*.json`

### B) Workstreams & operative Arbeit

- `blackboard/workstreams/*.md`
- optional: `blackboard/*` (Inbox/Backlog)

### C) Governance / Autonomy / Writing

- `handbook/**/WriteRights_AutomationLadder*`
- `handbook/runbooks/*AutomationAutonomy_AnalysisPlan*`
- `handbook/reference/*GateLayerCapabilityMatrix*`
- `handbook/reference/*PRReport_Template*`
- `decisions-adr/*.md`

### D) Prompts & Session-Ritual (UX-Verkabelung)

- `.github/prompts/SESSION_BOOTSTRAP*.md`
- `.github/prompts/SESSION_CLOSEOUT*.md`

### E) Preflight / Gates / Hooks / CI

- Preflight Runbooks: `handbook/runbooks/**Preflight*`
- OptionB Scripts: `scripts/optionb/**`
- hook installer/wrapper: `scripts/**hook*` oder `meta/**hook*`
- CI Drafts: `meta/**ci*` (Workflows unter `.github/workflows/**` nur lesen; Stop-&-Ask)

### F) Evidence / Tooling

- ToolingSnapshot: `meta/state/tooling/*ToolingSnapshot*_V*.yml`
- CI Evidence: GitHub Checks + Logs (verlinken, nicht kopieren)

---

## Status Update: Template (SSOT Artefakt)

**Empfohlenes Zielartefakt:**

- `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260305_V1.md`

### Template

```md
---
project: ASWE_KnowledgeOS
doc_type: state
date: 2026-03-05
version: Vx
status: draft
tags:
  - layer/state
  - artifact/status-update
---

# 1) Executive Summary (max 7 bullets)

# 2) E2E Reifegrad (UI → Change → Writer → PR → CI → Merge)
| Segment | Status | Evidence |
|---|---|---|

# 3) Active Workstreams (max 3)
| WS | Ziel | DoD | Next Slice | Blocker | Evidence |
|---|---|---|---|---|---|

# 4) Gates (SSOT) — authoritative enforcement pro Gate
| Gate | Authoritative | Status | Coverage-Lücke | Evidence |
|---|---|---|---|---|

# 5) Tooling & Environment
- ToolingSnapshot: <path + sha256 digest>
- Codex/Copilot: (kurz, capability)

# 6) Entscheidungen (ADRs)
- proposed / accepted / deprecated

# 7) Risiken & Stop-&-Ask
- Liste + betroffene Pfade

# 8) Next PR Slices (3–5)
- ...
```

---

## “Minimal Input” Ablauf (neuer Chat)

1) Öffne `meta/state/entry/*ENTRY_LATEST*_V*.md` (neueste Version).
2) Öffne daraus MeaningMap/Snapshot/Manifest + Workstreams.
3) Frage nur: “Welcher Workstream ist aktiv? (WS-ID)”.
4) Arbeite in Thin Slices: Patch-Spec → Diff → PR-Report → Checks.

---

## Codex Vorbereitung (für spätere Zyklen)

Definiere Skills, die **Status Pack** erzeugen:

- `ASWE_StatusPack_Generate`:
  - liest Entry + SSOT + Workstreams
  - führt `Preflight_ChangedFiles` aus (falls verfügbar)
  - exportiert ToolingSnapshot (optional)
  - erzeugt Status Update + PR-Report Draft

---

## Taxonomie (kurz)

**Tags (prefix-basiert)**

- `layer/*`: `layer/handbook`, `layer/state`, `layer/enforcement`, `layer/feedback`
- `artifact/*`: `artifact/runbook`, `artifact/reference`, `artifact/explanation`, `artifact/adr`, `artifact/status-update`, `artifact/entry`
- `topic/*`: `topic/router`, `topic/navigation`, `topic/workstreams`, `topic/gate`, `topic/evidence`, `topic/codex`
- `risk/*`: `risk/stop-ask`

