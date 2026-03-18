---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Aktualisierte Workstream-Kapsel fuer WS-CHATGPT-MCP-BRIDGE nach live gruener Server-/OAuth-Freischaltung. Der naechste Lauf ist bewusst die manuelle ChatGPT-Custom-App-E2E, nicht mehr Writer-Recovery oder Bootstrap-Diagnose."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/bridge
  - topic/chatgpt
  - topic/oauth
  - topic/mcp
  - topic/railway
  - topic/evidence
---

# Workstream Capsule - WS-CHATGPT-MCP-BRIDGE

## 1) Ziel (1 Satz)

Die ChatGPT-Custom-App-/MCP-Bridge jetzt im echten ChatGPT-/Browser-Kontext end-to-end abnehmen, nachdem Discovery, OAuth, DCR, Token-Tausch und MCP-Read-Pfad server-seitig live gruen verifiziert wurden.

## 2) DoD (3 Bulletpoints)

- ChatGPT erkennt den Railway-Endpoint als OAuth-geschuetzten MCP-Server und durchlaeuft Discovery plus Authorization-Code-Flow erfolgreich.
- Mindestens ein MCP-Read-Call (`list_tree` oder `read_file`) funktioniert aus dem echten ChatGPT-/Browser-Kontext.
- Der PR-only-Governance-Pfad bleibt ungebrochen; ein spaeterer Write-Test bleibt optional und weiter strikt writer-basiert.

## 3) Scope / Allowlist

**Im Scope**
- `tools/mcp-writer/**`
- `blackboard/**`
- `meta/state/**`
- `handbook/**`
- ChatGPT-Custom-App-/Browser-Abnahmekontext

**Ausserhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- neue produktive GitHub-App-Permissions
- No-Auth- oder Nebenpfade um den Writer herum
- breite Infra- oder Repo-Refactors

## 4) Baseline fuer diesen Lauf

- Server-/OAuth-Baseline ist live gruen:
  - Discovery, DCR, Authorize, Token, MCP initialize und `list_tree` wurden host-neutral erfolgreich geprueft
- Aktive produktive Railway-Variablen:
  - `OAUTH_ALLOWED_REDIRECT_URIS=https://chat.openai.com/aip/callback`
  - `OAUTH_DEV_SUBJECT=chatgpt-connector-dev`
- Aktuelle produktive DeploymentId:
  - `55f4e312-ebb7-4797-94f7-fbfcdb2f4bcd`

## 5) Wesentliche Evidence

- DCR nach Allowlist gruen:
  - `tools/mcp-writer/scripts/railway/.artifacts/bridge-readiness/20260318-191909/summary.json`
- Full-Auth + Read-Smoke gruen:
  - `tools/mcp-writer/scripts/railway/.artifacts/bridge-readiness/20260318-192006/summary.json`
- Detaildokumentation des Gesamtwegs:
  - `handbook/reference/AgenticSWE_KnowledgeOS_MCPWriter_Railway_Bridge_LiveEnablement_Reference_20260318_V1.md`
- Railway-Best-Practice-Synthese:
  - `handbook/reference/AgenticSWE_Railway_Deployment_Acceleration_BestPractices_Reference_20260318_V1.md`

## 6) Offene Probleme und Annahmen

- Der verbleibende Gap ist kein Server- oder Bootstrap-Fehler mehr, sondern die fehlende echte ChatGPT-/Browser-Abnahme.
- `NODE_ENV` bleibt ein Hygiene-Thema, nicht der aktuelle Bridge-Blocker.
- `OAUTH_JWT_PRIVATE_KEY` ist weiterhin optional offen, solange keine stabile Signaturidentitaet ueber Restarts hinweg verlangt wird.

## 7) Next 3 Thin Slices

### Slice 1
Manuelle ChatGPT-Custom-App-E2E:
- Connector/Custom App gegen den produktiven Endpoint pruefen
- Discovery und Auth-Flow bestaetigen
- ersten MCP-Read-Call ausfuehren

### Slice 2
Kurzer E2E-Closeout:
- Ergebnis in Status und Workstream knapp nachziehen
- bei Erfolg nur kleine Evidence-Ergaenzung, kein breiter Rewrite

### Slice 3
Nur bei echtem Bedarf:
- optionaler Hardening- oder Hygiene-Slice
- kein blindes Nachschieben weiterer Infrastrukturarbeit ohne neues Evidence-Signal

## 8) Zusatzaanker

- Technischer Enablement-Anker:
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260318_V1.md`
- Aktueller Status:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260318_V2.md`
- Voriger Bridge-Workstream:
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260312_V1.md`
