---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Kleines Addendum fuer den praktischen Einsatz repo-lokaler Codex-Subagents im Workstream WS-CHATGPT-MCP-BRIDGE."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/codex
  - topic/workstreams
  - topic/mcp
  - topic/railway
  - topic/evidence
  - risk/stop-ask
---

# Runbook Addendum: Codex-Subagent-Rollen fuer WS-CHATGPT-MCP-BRIDGE

## Ziel

Dieses Addendum beschreibt, wie die repo-lokalen Subagent-Dateien im aktuellen
Bridge-Workstream genutzt werden koennen, ohne den bestehenden Runbook-Vertrag
zu brechen.

## Rolle des Hauptagenten

Der Hauptagent bleibt verantwortlich fuer:

- Pflichtkontext lesen
- Slice-Grenzen bewahren
- Allowed Files / Forbidden Files festlegen
- geplanten Diff integrieren
- finalen Schreibschritt ausfuehren

Die Nebenrollen liefern nur Analyse und Vorschlaege.

## Verfuegbare Rollen

### 1) `ws_mapper`

Nutzen:

- vor dem Slice-Start
- bei unklarer Scope-Grenze
- bei verdeckter Dateikopplung

Typische Aufgabe:

"Map the current slice scope, likely touched files, required anchors, and hidden coupling. Stay read-only."

### 2) `bridge_test_agent`

Nutzen:

- fuer Verify / Gates
- fuer Smoke-Ideen
- fuer negative Tests
- fuer curl-/Discovery-/OAuth-/Policy-Pruefpfade

Typische Aufgabe:

"Propose changed-files-oriented verify steps, smoke commands, and expected good/bad outcomes for this bridge slice. Stay read-only."

### 3) `bridge_doc_agent`

Nutzen:

- fuer README-Nachtraege
- fuer Runbook-Ergaenzungen
- fuer PR-Report-Drafts

Typische Aufgabe:

"Draft concise wording blocks for README, runbook, or PR-report updates implied by the planned diff. Stay read-only."

### 4) `railway_observer` (optional)

Nutzen:

- nur wenn Railway-Kontext oder Host-Signale relevant sind
- besonders bei PR-4, Live-Smokes oder Diagnose von Deploy-/Runtime-Fragen
- bevorzugt, wenn der aktuelle RepoStatusUpdate Live-Health oder Host-Probleme meldet

Typische Aufgabe:

"Inspect Railway status and logs in read-only mode, summarize the strongest evidence, and suggest the smallest next diagnostic step."

## Empfohlene Spawn-Muster

### Muster A - normaler Bridge-Slice

- Hauptagent
- optional `ws_mapper`
- optional `bridge_test_agent`
- optional `bridge_doc_agent`

Gute Startkombination:

- `ws_mapper` + `bridge_test_agent`

Danach:

- `bridge_doc_agent` erst einsetzen, wenn der Planned Diff stabil ist.

### Muster B - Doku- oder Evidence-Slice

- Hauptagent
- `ws_mapper`
- `bridge_doc_agent`

### Muster C - Railway-/Host-Diagnose

- Hauptagent
- `railway_observer`
- optional `bridge_test_agent`

Dieses Muster ist bevorzugt, wenn der aktuelle RepoStatusUpdate rote oder gelbe
Live-Health-, Deploy- oder Observability-Signale enthaelt.

## Was bewusst nicht vorgesehen ist

- kein paralleler schreibender Doku-Agent
- kein autonomer Railway-Operator
- kein mehrstufiger Spawn-Baum
- kein Ersatz des Hauptagenten durch Subagents

## Startsequenz pro Slice

1. `AGENTS.md` lesen
2. aktuelles `ENTRY_LATEST` lesen
3. aktuelles `RepoStatusUpdate` lesen
4. `WS-CHATGPT-MCP-BRIDGE` oeffnen
5. betroffene HowTos / Runbooks / Referenzen lesen
6. erst dann passende Subagents spawnen

## Minimaler Prompt fuer den Hauptagenten

```text
WS-ID: WS-CHATGPT-MCP-BRIDGE
Slice-ID: <PR-1 | PR-2 | PR-3 | PR-4 | E2E-DIAG>

Lies zuerst:
- AGENTS.md
- aktuelles ENTRY_LATEST
- aktuelles RepoStatusUpdate
- blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md oder den aktuelleren WS-Stand
- relevante handbook-HowTos / Runbooks / References

Spawn nur kleine read-only Nebenrollen.
Bevorzuge:
- ws_mapper fuer Scope / Pfade / Hidden Coupling
- bridge_test_agent fuer Verify / Gates / Smokes
- bridge_doc_agent fuer README / Runbook / PR-Report
- railway_observer bei Railway-/Log-/Status-Bedarf oder roter Live-Health

Arbeite in PLAN -> CHANGE -> VERIFY -> DELIVER.
Keep diffs small.
Changed-files first.
Keine .github/workflows/**, keine Secrets, kein zweiter PR-Pfad.
```

## Stop-&-Ask bleibt unveraendert

Sofort stoppen bei:

- `.github/workflows/**`
- Secrets / Tokens / Keys
- neuen GitHub-App-Permissions
- riskanter Allowlist-Erweiterung
- produktiven Railway-Mutationen
- neuem Nebenpfad um den Writer herum
