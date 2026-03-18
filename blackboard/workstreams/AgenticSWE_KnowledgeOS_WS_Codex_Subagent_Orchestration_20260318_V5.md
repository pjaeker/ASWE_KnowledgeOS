---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V5
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Repo-weite Workstream-Kapsel fuer Codex-Subagent-Orchestrierung. Ergaenzt V4 um ein explizites Role/Skill-Binding fuer bounded Rollen, ohne die Writer-Governance aufzuweichen."
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

## 2) Fortgeschriebene Bedeutung dieses V5-Slices

Der Workstream umfasst weiterhin:
- Fresh-Evidence-Preflight vor jedem Closeout
- explizite Trennung zwischen narrativem Closeout-Checkpoint und artefaktentscheidendem Closeout-Writingslice
- spaetere Bindung bounded Rollen an aktive technische Workstreams

Neu in V5:
- explizites `Role / Skill Binding` fuer bounded Rollen
- klare Zuordnung von Rollenklasse, Skill-Vertrag und `.codex`-Materialisierungsstatus
- keine implizite Gleichsetzung von Rollenklasse, Skill und repo-lokalem Subagent

## 3) Aktueller Kontext

- Closeout-Hardening-Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_Closeout_FreshEvidence_Preflight_Runbook_20260317_V4.md`
- Skill Progression Log V3: `handbook/reference/AgenticSWE_Skill_Progression_Log_20260317_V3.md`
- Closeout Skill V3: `skills/aswe-session-closeout-guardrails-V3/`
- praktisches Subagent-Runbook fuer den Bridge-Slice: `handbook/runbooks/AgenticSWE_KnowledgeOS_ChatGPT_MCP_Bridge_SubagentRoles_Runbook_20260317_V1.md`

## 4) In Scope

- repo-weites Operating Model fuer bounded Codex-Subagents
- klare Abgrenzung von Rollenklasse, Skill-Vertrag und `.codex`-Materialisierung
- Role binding zuerst an aktive technische Workstreams
- optionale spaetere `Recommended bounded roles for next slice`-Ausgabe im Closeout

## 5) Out of Scope

- zweiter PR-Pfad neben dem Writer
- autonome Writer-Subagents als Default
- globale User-Settings als primaerer Steuerungspfad
- unnoetige Routing- oder Strukturrefactors
- Pflicht-Materialisierung aller Rollen unter `.codex/`

## 6) Betriebsmodell

- Main Agent = Orchestrator, Synthese, finaler Writer
- bounded Rollen = kleine, read-first Nebenrollen
- Skills = universelle Rollen- bzw. Verhaltensvertraege
- `.codex`-Artefakte = spaetere repo-lokale Materialisierung, nur wenn der technische Slice sie wirklich braucht
- Default = one-writer-many-readers
- kein paralleler Schreibzugriff auf dieselben Dateien
- keine semantische Verdraengung des aktiven technischen Hauptfokus durch Enabler-Rollen

## 7) Slice-Stand

### Slice A - Workstream + Operating Model
abgeschlossen

### Slice B - Closeout hardening
abgeschlossen

### Slice C - Closeout write-slice policy
abgeschlossen

### Slice D - Role binding to active workstreams
in diesem V5-Slice konkretisiert

### Slice E - Executable repo-local artifacts
spaeter, nur bei direktem technischem Bedarf

## 8) Role / Skill Binding

### Rolle 1 - Mapper
- Rollenname: Mapper
- Primaerfrage / Primaerzweck: Was ist im aktuellen Slice betroffen und wo liegen versteckte Kopplungen?
- Evidence-/Tool-Scope: Repo-Dateien, Anker, Workstream-Nachbarschaft, relevante Commit- und Pfadsignale
- Outputvertrag: Scope, likely touched files, anchor set, hidden coupling, naechster duennster Schnitt
- Nicht-Ziele: keine Verify-Gates, kein finales Wording, kein eigener Writer-Pfad
- Ziel-Workstream(s): `WS-MCP-WRITER-RAILWAY`, `WS-CHATGPT-MCP-BRIDGE`, `WS-CODEX-SUBAGENT-ORCHESTRATION`
- Zugehoeriger Skill-Vertrag: `skills/aswe-mapper/`
- Status der `.codex`-Materialisierung: `materialized` als `ws_mapper`

### Rolle 2 - Test-Agent
- Rollenname: Test-Agent
- Primaerfrage / Primaerzweck: Was ist verifizierbar, widerlegbar oder als Smoke/Negative-Test noetig?
- Evidence-/Tool-Scope: changed-files-first Verify, Gates, Smoke-Ideen, Good/Bad Outcomes
- Outputvertrag: Verify-Plan, Smoke-Kommandos, erwartete gute/schlechte Ergebnisse, fehlende Evidence
- Nicht-Ziele: keine Scope-Topologie, kein finales Wording, kein Runtime-Betrieb
- Ziel-Workstream(s): `WS-MCP-WRITER-RAILWAY`, `WS-CHATGPT-MCP-BRIDGE`
- Zugehoeriger Skill-Vertrag: `skills/aswe-test-agent/`
- Status der `.codex`-Materialisierung: `materialized` als `bridge_test_agent`

### Rolle 3 - Doku-Agent
- Rollenname: Doku-Agent
- Primaerfrage / Primaerzweck: Wie wird bestaetigte Evidence knapp und repo-konsistent formuliert?
- Evidence-/Tool-Scope: bestaetigte Findings, README-/Runbook-/PR-Report-Wording, kurze Strukturvorschlaege
- Outputvertrag: wording blocks, file candidates, risk notes, kurze Strukturvorschlaege
- Nicht-Ziele: keine Root-Cause-Festlegung, keine Verify-Entscheidung, kein eigener Writer-Pfad
- Ziel-Workstream(s): `WS-CHATGPT-MCP-BRIDGE`, `WS-CODEX-SUBAGENT-ORCHESTRATION`
- Zugehoeriger Skill-Vertrag: `skills/aswe-doc-agent/`
- Status der `.codex`-Materialisierung: `materialized` als `bridge_doc_agent`

### Rolle 4 - Observer
- Rollenname: Observer
- Primaerfrage / Primaerzweck: Welche externen Status-, Log- und Runtime-Signale liegen gerade wirklich vor?
- Evidence-/Tool-Scope: Railway-/Host-/Runtime-Signale, Logs, Health, Status
- Outputvertrag: beobachtete Evidence, staerkste Anomalien, kleinster naechster Diagnose-Schritt
- Nicht-Ziele: keine Mutation produktiver Systeme, kein Scope-Mapping, kein finales Wording
- Ziel-Workstream(s): `WS-MCP-WRITER-RAILWAY`, spaeter andere Runtime-/Host-nahe Slices
- Zugehoeriger Skill-Vertrag: `skills/aswe-observer/`
- Status der `.codex`-Materialisierung: `materialized` als `railway_observer`

### Rolle 5 - Triager
- Rollenname: Triager
- Primaerfrage / Primaerzweck: Welche konkurrierende Spur ist als naechstes die sinnvollste?
- Evidence-/Tool-Scope: Problemcluster, Hypothesen, erfolglose/erfolgreiche Ansätze, offene Fragen, Evidence-Priorisierung
- Outputvertrag: priorisierte Hypothesen, Dead Ends, staerkste naechste Untersuchung, fehlende Evidence
- Nicht-Ziele: kein Scope-Mapping-Ersatz, kein Runtime-Observer-Ersatz, kein eigener Writer-Pfad
- Ziel-Workstream(s): `WS-MCP-WRITER-RAILWAY`, `WS-CHATGPT-MCP-BRIDGE`, spaeter weitere technische Investigation-Slices
- Zugehoeriger Skill-Vertrag: `skills/aswe-triager/`
- Status der `.codex`-Materialisierung: `optional-later`

## 9) Bindungsregel an aktive technische Workstreams

- bounded Rollen werden zuerst an aktive technische Workstreams gebunden
- der aktive Hauptfokus bleibt kanonisch; der Orchestrierungs-Workstream ist Enabler
- `.codex`-Materialisierung ist optional und folgt spaeter aus direktem technischem Bedarf, nicht aus theoretischer Vollstaendigkeit
- eine Rolle darf nur empfohlen oder materialisiert werden, wenn ihr Primärzweck fuer den aktuellen Slice wirklich relevant ist

## 10) Naechster empfohlener Fokus

1. bounded Rollen zuerst an `WS-MCP-WRITER-RAILWAY` binden
2. Observer-/Test-Rollen fuer Railway-Fokus testen
3. Mapper-/Doku-Rollen fuer geaenderte Slice-Nachzuege verwenden
4. Triager erst dann nachziehen, wenn multi-hypothesis Debugging oder Dead-End-Kondensation wirklich wiederkehrt
