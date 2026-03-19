---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V2
date: 2026-03-19
status: draft
audience: [human, llm]
intent: "Aktualisierte Workstream-Kapsel fuer WS-CHATGPT-MCP-BRIDGE nach erfolgreicher echter ChatGPT-Custom-App-Verbindung, gruener Read-Evidence und bestaetigter `mcp.write`-faehiger Branch-Erstellung."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/bridge
  - topic/chatgpt
  - topic/oauth
  - topic/mcp
  - topic/evidence
---

# Workstream Capsule - WS-CHATGPT-MCP-BRIDGE

## 1) Ziel (1 Satz)

Die echte ChatGPT-Custom-App-/MCP-Bridge nach erfolgreicher Verbindung und gruener Read-Evidence jetzt bis zum kleinsten sinnvollen Write-/PR-Smoke fertig abnehmen, ohne den PR-only-Governance-Pfad zu brechen.

## 2) DoD (3 Bulletpoints)

- Die App ist im echten ChatGPT-Kontext verbunden und mindestens ein MCP-Read funktioniert live.
- Mindestens ein enger Write-Schritt aus dem echten ChatGPT-Kontext ist bestaetigt:
  - bereits erreicht: `create_branch`
  - noch offen fuer den naechsten Slice: `commit_files` und/oder `open_pr`
- Der Write-Pfad bleibt writer-konform:
  - kein Direkt-Write auf `main`
  - Branch-Praefix `codex/`
  - Draft-PR als Standard

## 3) Scope / Allowlist

**Im Scope**
- `tools/mcp-writer/**`
- `blackboard/**`
- `meta/state/**`
- `handbook/**`
- echter ChatGPT-Custom-App-/Browser-Abnahmekontext

**Ausserhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- neue produktive GitHub-App-Permissions
- No-Auth- oder Nebenpfade um den Writer herum
- breite Infra- oder Repo-Refactors

## 4) Baseline fuer diesen Lauf

- Produktiver Endpoint:
  - `https://asweknowledgeos-production.up.railway.app`
- Produktiver ChatGPT-Callback:
  - `https://chatgpt.com/connector/oauth/ijq0caHmR1iW`
- Weiterhin allowlisteter Legacy-Callback:
  - `https://chat.openai.com/aip/callback`
- Production-Inspection:
  - `authorizeBootstrapReady = true`
  - `stableSigningReady = true`
  - `restartSafeBootstrapReady = true`

## 5) Wesentliche Evidence

- Neue Live-Validierungsreferenz:
  - `handbook/reference/AgenticSWE_KnowledgeOS_ChatGPT_CustomApp_E2E_LiveValidation_20260319_V1.md`
- Voriger server-seitiger Gruenstand:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260318_V2.md`
- Technischer Enablement-Anker:
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260319_V2.md`

## 6) Offene Probleme und Annahmen

- Die ChatGPT-UI meldet DCR weiter als nicht robusten Weg, obwohl der Server-Pfad gruen bleibt.
- Der statische/public Client-Pfad ist aktuell der produktive Erfolgsweg.
- `mcp.write` funktionierte erst, nachdem es im relevanten ChatGPT-Scope-Pfad aktiviert wurde.
- `commit_files` und `open_pr` sind im echten UI-Kontext noch nicht bestaetigt.

## 7) Next 3 Thin Slices

### Slice 1
Minimaler Write-/PR-Smoke:
- kleinen, unkritischen Change vorbereiten
- `commit_files` pruefen
- Draft-PR ueber den echten ChatGPT-Kontext erzeugen

### Slice 2
Scope-/Operator-Hygiene:
- ChatGPT-Scoping knapp dokumentieren
- Erwartung zwischen `openid`, `mcp.read` und `mcp.write` sauber festziehen

### Slice 3
Nur bei echtem Bedarf:
- spaeterer Hardening-/Hygiene-Slice
- kein neuer OAuth-Grossumbau ohne neues Evidenzsignal

## 8) Zusatzanker

- Aktueller Status:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260319_V3.md`
- Voriger Bridge-Workstream:
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260318_V1.md`
- Technischer Zusatzanker:
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260319_V2.md`
