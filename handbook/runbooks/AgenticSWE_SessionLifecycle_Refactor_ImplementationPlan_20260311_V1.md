---
project: AgenticSWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Detaillierter Umsetzungsplan fuer den SessionLifecycle-Refactor in kleinen, moeglichst automatisierten PR-Wellen mit Codex als Workstream Runner und klaren Gates."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/session
  - topic/router
  - topic/codex
  - topic/automation
  - topic/gate
  - topic/evidence
---

# Runbook - SessionLifecycle Refactor Implementation Plan

## 1) Zweck

Dieses Runbook operationalisiert den Workstream `WS-SESSIONLIFECYCLE-REFACTOR`.

Es beantwortet fuer jede PR-Welle:
- Ziel
- Eingaben
- Datei-Scope
- Codex-Auftrag
- Verify/Gates
- Closeout

## 2) Gesamtstrategie

Die Umsetzung erfolgt in vier Wellen:
- PR-0 = Repo-Orchestrierung herstellen
- PR-A = Session-Contract in Dokumenten harmonisieren
- PR-B = Validator / Tasks / Skriptpfad absichern
- PR-C = Legacy Prompt-Schicht und Handoff semantisch bereinigen

Regel:
- keine Big-Bang-Umstellung
- pro Welle nur kleiner diffbarer Slice
- jeder Slice muss mit `ENTRY_LATEST` / `AGENTS.md` wieder bootstrappbar bleiben

## 3) Globaler Automationsrahmen

### 3.1) Start fuer Codex

Codex nutzt:
1. `AGENTS.md`
2. `ENTRY_LATEST`
3. `RepoStatusUpdate`
4. aktiven Workstream
5. Tiefenanker nur bei Bedarf

### 3.2) Start fuer ChatGPT GUI

Die GUI wird spaeter im Soll nur noch semantisch auf `ENTRY_LATEST` verwiesen.
Fuer diesen Refactor ist ChatGPT vor allem Analyse-/Steueroberflaeche, nicht der Ausfuehrungspfad.

### 3.3) Pflichtprinzipien

- Writer bleibt alleiniger PR-Erzeuger
- keine Governance-Abkuerzung
- keine Erweiterung in geblockte Pfade
- keine Repo-weiten Cleanups
- nur kleine reviewbare Diffs

## 4) PR-0 - Orchestrierung repo-seitig verankern

### Ziel

Den Refactor als repo-internen Auftrag materialisieren, damit die naechsten Wellen nicht nur aus dem Chat, sondern aus dem Repo abgeleitet werden koennen.

### Eingaben

- bisheriger Routing-Stand
- bisheriger Business-Sync Ritual-Stand
- aktueller `AGENTS.md` / `ENTRY_LATEST` / `RepoStatusUpdate` / `RepoMeaningMap`
- Chat-Entscheidung: GUI semantisch ueber `ENTRY_LATEST`, Codex ueber `AGENTS.md`

### Ziel-Dateien

Neu anlegen:
- `decisions-adr/AgenticSWE_KnowledgeOS_ADR_SessionLifecycle_EntryFirst_20260311_V1.md`
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_SessionLifecycle_Refactor_20260311_V1.md`
- `handbook/runbooks/AgenticSWE_SessionLifecycle_Refactor_ImplementationPlan_20260311_V1.md`
- `blackboard/AgenticSWE_NextChat_Handoff_SessionLifecycleRefactor_20260311_V1.md`
- `.github/prompts/AgenticSWE_SessionLifecycle_PR0_CodexRunner_20260311_V1.prompt.md`

### Codex-Auftrag

- docs-only
- keine Aenderung bestehender normativer Dateien
- nur neue Artefakte erzeugen
- PR-A / PR-B / PR-C klar benennen

### Verify

- Frontmatter vorhanden
- Dateinamen folgen Repo-Konvention
- Scope nur in erlaubten Pfaden
- Arbeitsauftrag verweist klar auf Folgearbeit

### Closeout

- optional Status-Hinweis, wenn PR-0 gemerged wurde
- `ENTRY_LATEST` muss fuer PR-0 **noch nicht** neu geschrieben werden, kann aber danach aktualisiert werden

## 5) PR-A - Session-Contract harmonisieren

### Ziel

Alle normativen Dokumente auf denselben Vertrag bringen.

### Ziel-Dateien

Anpassen / high-versionieren:
- `AGENTS.md`
- `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`
- `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260311_V2.md`
- `handbook/explanation/AgenticSWE_KnowledgeOS_RoutingNavigationUX_Strategy_20260311_V2.md`
- `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260311_V2.md`
- `handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260311_V2.md`

### Inhaltliche Sollpunkte

- GUI startet semantisch ueber `ENTRY_LATEST`
- Codex startet ueber `AGENTS.md`
- beide nutzen denselben Kernfluss
- `ENTRY_LATEST` bleibt Pointer-Bund
- `NextChat-Handoff` ist optional
- Closeout-Reihenfolge wird explizit beschrieben

### Verify

Prueffragen:
- benennt noch irgendein normatives Dokument `SESSION_BOOTSTRAP` / `SESSION_CLOSEOUT` als Primaerweg?
- sagen `AGENTS.md`, `RepoMeaningMap`, `RepoStatusUpdate`-Runbook und `RoutingNavigationUX` dasselbe?
- wird `ENTRY_LATEST` noch irgendwo als inhaltlicher Sammelpunkt missverstanden?

### Closeout

- `RepoStatusUpdate` nachziehen, wenn der operative Router-Vertrag geaendert wurde
- `ENTRY_LATEST` nach dem Dokument-Update refreshen

## 6) PR-B - Validator / Tasks / Skripte absichern

### Ziel

Routing-Drift sichtbar machen und den Closeout-/Anchor-Refresh-Pfad absichern.

### Ziel-Dateien

Neu:
- `scripts/validate_session_contract.py`

Anpassen:
- `scripts/aswe_bootstrap.py`
- `scripts/aswe_update_anchors.py`
- `.vscode/tasks.json`
- optional `AGENTS.md`

### Validator-Regeln

Mindestens pruefen:
1. `AGENTS.md` zeigt auf `ENTRY_LATEST -> RepoStatusUpdate -> Workstreams`
2. Business-Sync-Ritual beansprucht nicht mehr den konkurrierenden Primaerpfad
3. `RepoMeaningMap` und Routing-Strategie sprechen denselben Session-Contract
4. `ENTRY_LATEST` bleibt Pointer-Bund
5. `NextChat-Handoff` ist nirgends Pflichtvoraussetzung fuer den naechsten Start

### Neue Task

- `ASWE: Validate Session Contract`

### Verify

- Validator laeuft erfolgreich oder gibt strukturierte Warnungen aus
- Anchor-Refresh erfolgt nur auf plausiblen, aktuellen Ankern
- kein Script fuehrt implizit Full-Refresh von MeaningMap / Snapshot / Manifest aus

### Closeout

- Runbook-/Status-Hinweis aufnehmen, dass Validator nun Pflichtteil des Preflight ist
- `ENTRY_LATEST` refreshen, wenn neue Referenzen entstanden sind

## 7) PR-C - Legacy / Handoff bereinigen

### Ziel

Legacy Prompt-Schicht entkanonisieren und Handoff auf echte Resume-Faelle begrenzen.

### Ziel-Dateien

Anpassen / high-versionieren:
- `.github/prompts/AgenticSWE_SessionBootstrap_20260302_V1.prompt.md`
- `.github/prompts/AgenticSWE_SessionCloseout_20260302_V1.prompt.md`
- `blackboard/AgenticSWE_NextChat_Handoff_ChatGPTMCPBridge_20260310_V1.md` oder Nachfolger
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md` nur falls Handoff-/Prompt-Bezuege bereinigt werden muessen

### Inhaltliche Sollpunkte

- Session-Prompts = legacy/manual fallback
- Handoff = optionales Resume-Sidecar
- Standardstart funktioniert ohne Handoff
- Workstream / Status / Handoff Rollen sind explizit getrennt

### Verify

- neuer GUI-Start ist moeglich nur mit dem Hinweis auf `ENTRY_LATEST`
- kein Handoff wird mehr als Standardvoraussetzung beschrieben
- Legacy-Prompts konkurrieren nicht mehr mit dem kanonischen Pfad

### Closeout

- `RepoStatusUpdate` bei operativer Semantikaenderung nachziehen
- `ENTRY_LATEST` refreshen

## 8) Gemeinsame Gates pro Welle

Pflicht:
- Scope-Check gegen Stop-&-Ask
- Changed-files Preflight
- strukturierter Evidence-Block

Ab PR-B zusaetzlich:
- Session-Contract-Validator

Optional:
- ToolingSnapshot
- PR-Report-Draft

## 9) Evidence-Schema

Jede Welle liefert mindestens:
- Summary (What)
- Motivation (Why)
- Scope & Constraints
- Risk Assessment
- Gates & Checks
- Rollback Plan
- Next Thin Slice

## 10) Stop-&-Ask

Sofort anhalten bei:
- `.github/workflows/**`
- Secrets / Tokens / private keys
- riskanter Allowlist-Erweiterung
- neuen GitHub-App-Permissions
- Versuchen, den Writer als Governance-Layer zu umgehen

## 11) Rueckkehr in den Hauptpfad

Nach PR-C wird `WS-SESSIONLIFECYCLE-REFACTOR` als stabilisierter Neben-Workstream betrachtet.
Danach kehrt der Hauptfokus zur technischen MCP-Bridge-Arbeit zurueck.
