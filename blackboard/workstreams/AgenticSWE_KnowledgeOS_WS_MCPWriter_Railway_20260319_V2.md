---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V2
date: 2026-03-19
status: draft
audience: [human, llm]
intent: "Technischer Zusatzanker nach der echten ChatGPT-UI-Abnahme. Dokumentiert restart-stabilen Bootstrap, tragfaehigen statischen Client-Pfad und die neue Scope-/Operator-Erkenntnis fuer `mcp.write`."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/railway
  - topic/mcp
  - topic/oauth
  - topic/evidence
  - topic/chatgpt
---

# Workstream Capsule - WS-MCP-WRITER-RAILWAY

## 1) Ziel (1 Satz)

Den produktiven MCP-writer nicht nur server-seitig gruen halten, sondern den Bootstrap so eindeutig und dokumentiert machen, dass der echte ChatGPT-UI-Pfad ueber statischen/public Client, Read und ersten Write-Scope praktisch belastbar bleibt.

## 2) DoD (3 Bulletpoints)

- Bootstrap ist fuer den produktiven ChatGPT-Callback read-only nachvollziehbar gruen.
- Der statische/public Client-Pfad ist restart-stabil und praktisch im echten ChatGPT-Kontext bestaetigt.
- Verbleibende technische Restthemen sind auf Scope-/Operator-Hygiene und spaetere Hardening-Reste eingegrenzt.

## 3) Scope / Allowlist

**Im Scope**
- `tools/mcp-writer/**`
- `blackboard/**`
- `meta/state/**`
- `handbook/**`
- Railway-/OAuth-/Bootstrap-Evidence

**Ausserhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- `infra/**`
- `secrets/**`
- breite Repo-Refactors
- neue produktive GitHub-App-Permissions
- No-Auth- oder Nebenpfade um den Writer herum

## 4) Baseline fuer diesen Lauf

- Voriger technischer Stand:
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260318_V1.md`
- Produktiver Endpoint:
  - `https://asweknowledgeos-production.up.railway.app`
- Produktive Redirects:
  - `https://chat.openai.com/aip/callback`
  - `https://chatgpt.com/connector/oauth/ijq0caHmR1iW`

## 5) Materialisierte technische Erkenntnisse

### A) Restart-stabiler Bootstrap ist produktiv wirksam

- `authorizeBootstrapReady = true`
- `stableSigningReady = true`
- `restartSafeBootstrapReady = true`
- `OAUTH_JWT_PRIVATE_KEY` ist leer, aber der produktive Signaturpfad blieb ueber den `GITHUB_PRIVATE_KEY`-Fallback stabil.

### B) DCR bleibt server-gruen, ist aber nicht der UI-seitig robuste Hauptweg

- Server-seitige DCR- und Full-Auth-Probes bleiben gruen.
- ChatGPT-UI meldet RFC-7591-DCR dennoch weiter nicht als tragfaehigen Weg.
- Der technisch robuste Produktionsweg ist daher:
  - exakten Redirect allowlisten
  - public/static `client_id` nutzen
  - Approval-Fenster durchlaufen

### C) Scope-Verhalten im ChatGPT-UI ist jetzt besser verstanden

- `mcp.write` nur im OIDC-/Identity-Bereich zu pflegen war nicht ausreichend.
- Sobald `mcp.write` im relevanten ChatGPT-Scope-Pfad aktiv war, funktionierte `create_branch`.
- Der verbleibende technische Rest ist damit kein Writer- oder OAuth-Basisproblem, sondern ein Ergonomie-/Operator-Thema.

## 6) Offene Probleme und womit sie zusammenhaengen

### Offenes Problem 1 - spaetere Write-Schritte sind noch offen

- `create_branch` ist live bestaetigt.
- `commit_files` und `open_pr` sind im echten ChatGPT-UI noch nicht geprueft.

### Offenes Problem 2 - Scope-/Operator-Hygiene ist noch nicht knapp genug verdichtet

- Die wirksame Stelle fuer `mcp.write` im ChatGPT-UI wurde erst live bestaetigt.
- Diese Erkenntnis sollte fuer den naechsten Slice knapp operationalisiert werden.

### Offenes Problem 3 - spaetere Hygiene-/Hardening-Reste

- `NODE_ENV` bleibt produktionsnah offen.
- Ein spaeter dedizierter `OAUTH_JWT_PRIVATE_KEY` bleibt als Decoupling-Hardening sinnvoll.

## 7) Next 3 Thin Slices

### Slice 1
Write-/PR-Smoke ueber echten ChatGPT-Kontext:
- `commit_files`
- Draft-PR
- weiter strikt writer-konform

### Slice 2
Scope-/Operator-Hygiene:
- ChatGPT-Scoping knapp dokumentieren
- falls noetig Default-/Action-Scope-Verhalten nachziehen

### Slice 3
Optionale Konfig-Hygiene:
- `NODE_ENV`
- spaeter dedizierter `OAUTH_JWT_PRIVATE_KEY`

## 8) Evidence / Links

- Neue Live-Validierungsreferenz:
  - `handbook/reference/AgenticSWE_KnowledgeOS_ChatGPT_CustomApp_E2E_LiveValidation_20260319_V1.md`
- Voriger technischer Workstream:
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260318_V1.md`
- Aktueller Status:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260319_V3.md`
