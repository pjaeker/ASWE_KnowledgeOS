---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V4
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Repo-weite Workstream-Kapsel fuer Codex-Subagent-Orchestrierung. Nimmt jetzt den artefaktentscheidenden Closeout-Writingslice explizit in Scope und koppelt ihn an den V3-Closeout-Skill."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/codex
  - topic/subagents
  - topic/orchestration
  - topic/closeout
  - topic/evidence
  - topic/workstreams
---

# Workstream Capsule - WS-CODEX-SUBAGENT-ORCHESTRATION

## 1) Ziel

Ein repo-weites, wiederverwendbares Betriebsmodell fuer Codex-Subagent-Orchestrierung etablieren, das auf dem bestehenden Session-Contract aufsetzt, die Writer-Governance unveraendert laesst und aktive technische Workstreams gezielt unterstuetzt statt zu verdraengen.

## 2) Neue Bedeutung dieses V4-Slices

Der Workstream umfasst jetzt nicht mehr nur Operating-Model und Fresh-Evidence-Preflight, sondern auch den **konkreten Closeout-Writingslice**:
- Status / Workstream / Strukturdocs / Entry / Handoff muessen aktiv als `update`, `create` oder `no-change` entschieden werden.
- Der Closeout-Skill muss diese Entscheidungen kuenftig explizit vorschlagen oder materialisieren.

## 3) Aktueller Kontext

- Neuester technischer Status vor diesem Slice: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260316_V1.md`
- Neuer Closeout-Status dieses Slices: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260317_V1.md`
- Primaerer technischer Fokus bleibt: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260313_V1.md`
- Closeout-Hardening-Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_Closeout_FreshEvidence_Preflight_Runbook_20260317_V4.md`
- Skill-Folder: `skills/aswe-session-closeout-guardrails-V3/`

## 4) In Scope

- repo-weites Operating Model fuer bounded Codex-Subagents
- Fresh-Evidence-Preflight vor jedem Closeout
- explizite Trennung zwischen narrativem Closeout-Checkpoint und artefaktentscheidendem Closeout-Writingslice
- spaetere Bindung bounded Rollen an aktive technische Workstreams

## 5) Out of Scope

- zweiter PR-Pfad neben dem Writer
- autonome Writer-Subagents als Default
- globale User-Settings als primaerer Steuerungspfad
- unnoetige Routing- oder Strukturrefactors

## 6) Neues Arbeitsprinzip

Ein sauberer Closeout ist jetzt erst dann vollstaendig, wenn:
1. Fresh-Evidence-Preflight gelaufen ist
2. latest status und entry-referenced status sauber aufgeloest sind
3. fuer alle moeglichen Closeout-Artefaktklassen eine aktive Entscheidung vorliegt:
   - RepoStatusUpdate
   - Workstream
   - Struktur-/Runbook-/Reference-Artefakte
   - ENTRY_LATEST
   - NextChat-Handoff

## 7) Slice-Stand

### Slice A - Workstream + Operating Model
abgeschlossen

### Slice B - Closeout hardening
abgeschlossen

### Slice C - Closeout write-slice policy
abgeschlossen in diesem V4-Slice

### Slice D - Role binding to active workstreams
naechster Schritt

### Slice E - Executable repo-local artifacts
spaeter, nur bei direktem technischem Bedarf

## 8) Definition of Done fuer V4

- Workstream dokumentiert den Closeout-Writingslice explizit
- Closeout-Runbook fordert Artefaktentscheid statt nur Checkpoint
- Closeout-Skill V3 spiegelt diese Regel
- neuer RepoStatusUpdate- und ENTRY-LATEST-Anker materialisieren den naechsten Start

## 9) Naechster empfohlener Fokus

1. bounded Rollen zuerst an `WS-MCP-WRITER-RAILWAY` anbinden
2. Observer-/Test-Rollen fuer Railway-Fokus testen
3. Doku-/Runbook-Nachzuege nur dort, wo technische Evidence sie braucht
