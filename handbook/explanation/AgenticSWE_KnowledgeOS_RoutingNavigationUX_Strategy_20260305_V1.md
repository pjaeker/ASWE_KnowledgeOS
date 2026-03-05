---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-03-05
status: draft
audience: [human, llm]
intent: "Sammelt und priorisiert heuristische Verbesserungen für Routing/Navi/Übersicht, damit UI→PR→Checks→Merge mit minimalem Chat-Input möglich wird."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/router
  - topic/navigation
  - topic/ssot
  - topic/workstreams
  - topic/codex
  - topic/githooks
  - topic/ux
---

# Strategy: Routing, Navigation & UX (End-to-End Autonomy)

## Ausgangslage (kurz)

**Zielbild:** kontrollierte Repo-Änderungen direkt aus UI (ChatGPT GUI oder CMS-Portal) inkl. Checks, Evidence & Governance — **PR-only**.

**Friktion heute:** Du musst zu viel Kontextsteuerung übernehmen (wo ist SSOT? was ist “neueste Version”? welcher Workstream ist aktiv?), weil die Repo-Ordner-/Datei-Komplexität die Navigation erschwert.

**Vorhandene Basis, die wir ausnutzen sollten**

- Router-Dokument (deterministische read-first Navigation): `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260303_V1.md`
- SSOT-Anker-Konventionen: MeaningMap / StateSnapshot / Manifest unter `meta/state/**`
- ToolingSnapshot als lokale Evidence (Option B): `meta/state/tooling/AgenticSWE_KnowledgeOS_ToolingSnapshot_20260303_V3.yml`

---

## Leitziele (deine Prioritäten, präzisiert)

1) **Ein einziger Einstiegspunkt** (Start Here) für Mensch+KI.
2) **Automatische Aktualisierung** der SSOT-Anker (ohne Drift, ohne CI-Zwang).
3) **UX-Verkabelung** (überlappt mit 1): UI/Chat/Codex/Copilot greifen alle über denselben Entry/Workstream an.
4) **Kognitive Last reduzieren**: Workstreams (Blackboard) statt “Ordner-Orientierung”.
5) **Navigation unabhängig von Ordner-Verschachtelung** — aber ohne ein neues “Nav-SSOT” zu schaffen (MkDocs-nav kann redundant werden).
6) **Codex als first-class Change-Generator** integrieren (Windows App), ohne den PR-only Writer zu verwässern.
7) **githooks berücksichtigen**: als Feedback, nicht als Enforcement.

---

# Verbesserungen (nach Impact geordnet)

## 1) Single Entry Point: ENTRY_LATEST (SSOT Pointer, agent-first)

**Neues Artefakt:** `meta/state/entry/*ENTRY_LATEST*_V*.md`

**Funktion:** Ein neues Chat-/Tool-Session-Start braucht nur 1 Referenz:

- Entry → MeaningMap → Snapshot → Manifest → Workstreams → aktive Arbeit

**Design-Regeln**

- 1 Seite, nur Links/Globs + Stop-&-Ask Trigger.
- Verweist auf Router `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260303_V1.md` (Router bleibt stabil; Entry kann häufiger updaten).
- Keine Session-ToDos im Router; dafür Workstreams im Blackboard.

**Ergebnis:** Du gibst im Chat nur noch “START SESSION” + optional “WS:<id>”.

---

## 2) Automatische Aktualisierung der SSOT-Anker (manifest/snapshot/entry)

**Ziel:** Routing und Status bleiben frisch, ohne dass du manuell nachpflegen musst.

**Heuristische Architektur**

- “Update Anchors” ist ein **on-demand Command** (VS Code Task + Codex Skill).
- Hooks laufen nur “fast + changed files” (Format/Frontmatter-Lint light).
- Full-refresh (Manifest rebuild, Linkcrawl, heavy checks) nur:
  - per Task (wenn du es willst) oder
  - in CI (wenn später aktiviert) oder
  - serverseitig im Portal/Writer.

**Warum keine Hook-Enforcement-Illusion:** hooks sind lokal und nicht zuverlässig als Policy-Enforcer — aber hervorragend als Feedback.

---

## 3) UX-Verkabelung (UI/Chat/CMS + Codex + Copilot)

### 3.1 ChatGPT GUI / Portal

**Kontrakt:** Chat liest automatisch:
Entry-LATEST → MeaningMap → Snapshot → Workstreams

**Standard-Output pro Slice**

- Patch-Spec (Scope, Allowlist, Constraints)
- Diff/Patch
- PR-Report (Evidence: ToolingSnapshot + Gate-Results)
- Next Thin Slice

### 3.2 Codex (Windows App) als Workstream Runner (Change-Generator)

**Codex Rolle:** erzeugt Patch/Diff + führt lokale Tasks aus (Preflight) + schreibt Draft-Reports.  
**Codex darf NICHT:** “selbst PR erzeugen”, wenn das einen zweiten Writer-Pfad schafft.

**Codex Skills (empfohlen)**

- `ASWE_Bootstrap`: Entry + Workstreams lesen, aktive WS wählen
- `ASWE_UpdateAnchors`: Manifest/Snapshot/Entry aktualisieren
- `ASWE_Preflight_ChangedFiles`: schnelle Gates (changed files)
- `ASWE_PRReport_Generate`: PR-Report Draft + Evidence block

> Ergebnis: Du startest in Codex/Chat praktisch mit einem Knopfdruck und bekommst strukturierte Artefakte.

### 3.3 Copilot (VS Code)

Copilot ist Feedback/Assistenz im Editor: Patch, Diagnosen, Fix-Loops. Governance bleibt bei Writer/CI.

---

## 4) Kognitive Last runter: Workstreams im Blackboard

**Artefakte:** `blackboard/workstreams/*.md`

**Workstream Capsule (Template, 7 Felder)**

1) Ziel (1 Satz)
2) DoD (3 Bulletpoints)
3) Scope/Allowlist (Pfad-Liste)
4) Next 3 Thin Slices (PR-Plan)
5) Gates/Evidence (welche Checks müssen grün werden)
6) Risiken/Stop-&-Ask Trigger
7) Links (Entry, MeaningMap, Snapshot, Manifest, Runbooks)

**Regel:** max 3 aktive Workstreams parallel.

---

## 5) Navigation unabhängig von Ordner-Verschachtelung (ohne MkDocs-Zwang)

Du willst logische Navigation, aber kein neues “Nav-SSOT”.

**Heuristische Lösung**

- MeaningMap bleibt Router (question_to_file_map).
- Ergänzend: eine *leichte* NavMap als Markdown (kein Build), z. B.  
  `handbook/reference/RepoNavMap_*_V*.md` (nur Links, keine Toolchain).

**MkDocs-Einschätzung**

- MkDocs kann Frontmatter/Metadata, ist also nicht “im Konflikt”.
- Aber `mkdocs.yml nav:` kann redundant werden, wenn Portal/Keystatic ohnehin die Navigation aus Frontmatter/Tags ableiten soll.
- Empfehlung: MkDocs nur dann einsetzen, wenn Navigation aus SSOT (Manifest/MeaningMap/Frontmatter) **generiert** wird.

---

# Thin Slices (minimal, sofort umsetzbar)

**Slice 1 (P0):** Entry-LATEST + 2 Workstreams (WS-NAV, WS-WRITE)  
DoD: “Start Session” klappt ohne manuelles Routing.

**Slice 2 (P1):** VS Code Task + Codex Skill Spec “Update Anchors”  
DoD: Snapshot/Manifest/Entry lassen sich in 1 Command aktualisieren.

**Slice 3 (P1):** StatusUpdate Runbook + Template (SSOT)  
DoD: Neuer Chat kann Repo-Stand + nächste Arbeit in 2 Minuten erfassen.

---

# Glossar (kurz, normativ)

- **SSOT-Anker:** MeaningMap, StateSnapshot, Manifest (Entry-LATEST zeigt auf die neuesten).
- **Entry-LATEST:** Single Entry Point für neue Sessions.
- **Workstream:** Blackboard Capsule, reduziert kognitive Last.
- **Feedback:** optional/schnell (Editor, hooks, Codex/Copilot diagnostics).
- **Enforcement:** nicht umgehbar/auditierbar (Writer + CI Required Checks).
- **Writer:** einzige Instanz, die PRs erzeugt (PR-only).
- **Preflight:** Checks/Gates (changed-files vs full).
