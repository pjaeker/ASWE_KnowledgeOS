---
project: AgenticSWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-11
status: draft
audience: [human, llm]
intent: "Workstream-Kapsel fuer die Harmonisierung des Session-Lifecycle, der Routing-Artefakte und des repo-lokalen Automationspfads fuer ChatGPT GUI und Codex."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/session
  - topic/router
  - topic/entry
  - topic/codex
  - topic/chatgpt
  - topic/governance
  - topic/evidence
---

# Workstream Capsule - WS-SESSIONLIFECYCLE-REFACTOR

## 1) Ziel (1 Satz)

Den Session-Lifecycle des Repos so harmonisieren, dass ChatGPT GUI und Codex zwar unterschiedliche Einstiege haben, aber denselben kanonischen Kernfluss nutzen und der vorherige Closeout deterministisch den naechsten Einstieg erzeugt.

## 2) DoD (3 Bulletpoints)

- Der neue Session-Contract ist normativ dokumentiert und repo-seitig verankert.
- Die kanonische Startkette ist fuer GUI und Codex widerspruchsfrei: `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`.
- Ein Start ohne `NextChat-Handoff` funktioniert im Standardfall; Handoffs sind nur noch optionale Resume-Sidecars.

## 3) Scope / Allowlist

**Im Scope**
- `decisions-adr/**`
- `blackboard/**`
- `meta/state/**`
- `handbook/**`
- `.github/prompts/**`
- `scripts/**`
- `.vscode/tasks.json`
- `AGENTS.md`

**Ausserhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- `infra/**`
- `secrets/**`
- `.env*`
- Repo-weite Cleanups ohne separaten Slice
- neue GitHub-App-Permissions
- No-Auth- oder Nebenpfade um den Writer herum

## 4) Orchestrierungsmodell

Die Umsetzung laeuft in vier kleinen PR-Wellen.

### PR-0 - Orchestrierung repo-seitig verankern

**Zweck**
- den neuen Session-Lifecycle als expliziten Repo-Arbeitsauftrag materialisieren
- Codex einen repo-internen Bezugspunkt fuer die Folgearbeit geben

**Artefakte**
- ADR: SessionLifecycle Entry-First
- Workstream: SessionLifecycle Refactor
- Implementation-Runbook
- optionales NextChat-Handoff fuer den ersten Lauf
- optionaler Codex-Prompt fuer PR-0

**DoD**
- der Refactor ist als eigener Arbeitsauftrag im Repo sichtbar
- PR-A / PR-B / PR-C sind im Repo benannt und begrenzt

### PR-A - Session-Contract harmonisieren

**Zweck**
- normative Dokumente auf den neuen Vertrag ziehen

**Kernarbeit**
- `AGENTS.md` im Vertrag nachziehen
- `RepoMeaningMap` aktualisieren
- Routing-/Navigation-Strategie aktualisieren
- `RepoStatusUpdate`-Runbook aktualisieren
- `BusinessSync SessionRitual` auf Entry-first umstellen
- `ChatGUI_RoutingEntry` auf den neuen Vertrag heben

**DoD**
- kein normatives Dokument benennt mehr `SESSION_BOOTSTRAP` / `SESSION_CLOSEOUT` als primaeren GUI-Weg
- `AGENTS.md`, `ENTRY_LATEST`, `RepoStatusUpdate` und MeaningMap sagen dasselbe

### PR-B - Automationspfad absichern

**Zweck**
- Routing-Drift maschinell sichtbar machen

**Kernarbeit**
- `scripts/validate_session_contract.py`
- neue Task `ASWE: Validate Session Contract`
- `aswe_bootstrap.py` / `aswe_update_anchors.py` leicht nachziehen
- optional `AGENTS.md` / Runbook-Referenzen ergaenzen

**DoD**
- Session-Contract ist vor Closeout / Anchor-Refresh pruefbar
- Drift wird als Warnung oder Gate sichtbar

### PR-C - Legacy entschärfen und Handoff optionalisieren

**Zweck**
- alte Ritual-Artefakte entkanonisieren, ohne sie hart zu loeschen

**Kernarbeit**
- Session-Prompt-Dateien als legacy/manual fallback markieren
- Handoff-Semantik scharf begrenzen
- Rollentrennung zwischen Status, Workstream und Handoff dokumentieren
- falls noetig Workstream-Kapseln an neue Prompt-/Allowlist-Realitaet angleichen

**DoD**
- neuer Chat funktioniert ohne Handoff und ohne expliziten Bootstrap-Prompt
- Legacy Prompt-Dateien konkurrieren nicht mehr mit dem kanonischen Pfad

## 5) Reihenfolge / Priorisierung

1. PR-0
2. PR-A
3. PR-B
4. PR-C
5. danach Rueckkehr zu `WS-CHATGPT-MCP-BRIDGE`

## 6) Evidence / Gates

Pflicht-Gates pro Slice:
- Changed-files Preflight
- Contract-Validator (ab PR-B)
- saubere Scope-Pruefung gegen Stop-&-Ask
- Evidence-Block mit `pass` / `fail` / `not_executed` + Grund

Optional:
- ToolingSnapshot, wenn der Slice Tooling-/Runner-/Task-Relevanz hat

## 7) Risiken

- Routing-Drift zwischen `AGENTS.md`, `ENTRY_LATEST` und `RepoStatusUpdate`
- versehentliche Fortfuehrung des alten Prompt-Rituals als Primaerpfad
- Handoffs wachsen erneut in Status-/Workstream-Territorium hinein
- zu grosser Diff statt kleiner Thin Slices

## 8) Stop-&-Ask

Sofort anhalten bei:
- `.github/workflows/**`
- Secrets, Tokens, private keys
- Erweiterung riskanter Allowlists
- neuen GitHub-App-Permissions
- Sidecar-Automation, die den Writer als PR-only-Governance-Layer umgeht

## 9) Standard-Outputs pro Slice

- Patch-Spec
- konkrete Dateiliste
- Diff / Patch
- Checks / Evidence
- Next Thin Slice

## 10) Nachgelagerter Hauptfokus

Nach gruener Stabilisierung dieses Workstreams kehrt der operative Hauptfokus zu
`WS-CHATGPT-MCP-BRIDGE` zurueck.

## 11) Closeout Status

- PR-A, PR-B und PR-C wurden fuer diesen Workstream umgesetzt.
- Der Session-Contract ist jetzt normativ harmonisiert, validator-gestuetzt und ohne Pflicht-Handoff bzw. Pflicht-Bootstrap dokumentiert.
- Fuer den naechsten Einstieg ist kein weiterer Slice in diesem Workstream noetig.
- Der operative Hauptfokus kehrt nach dieser Stabilisierung zu WS-CHATGPT-MCP-BRIDGE zurueck.

