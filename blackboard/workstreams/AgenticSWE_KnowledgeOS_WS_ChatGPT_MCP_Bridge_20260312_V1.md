---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-12
status: draft
audience: [human, llm]
intent: "Aktualisierte Workstream-Kapsel fuer WS-CHATGPT-MCP-BRIDGE nach Abschluss der server-seitigen PR-1 bis PR-4 Slices. Der naechste Lauf ist bewusst die E2E-Abnahme in ChatGPT."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/mcp
  - topic/oauth
  - topic/chatgpt
  - topic/github
  - topic/gates
  - topic/evidence
  - topic/railway
---

# Workstream Capsule — WS-CHATGPT-MCP-BRIDGE

## 1) Ziel (1 Satz)

Die ChatGPT-Custom-App-/MCP-Bridge so fertigziehen, dass der heute server-seitig vorbereitete Railway-Writer morgen live als OAuth-first MCP-Server in ChatGPT abgenommen werden kann, ohne die bestehende PR-only-Governance aufzuweichen.

## 2) DoD (3 Bulletpoints)

- ChatGPT kann den Remote-MCP-Server als Custom App erkennen und die OAuth-Discovery erfolgreich durchlaufen.
- Mindestens ein MCP-Read-Call (`list_tree` oder `read_file`) funktioniert aus ChatGPT heraus mit gueltiger Authentifizierung.
- Ein kleiner Draft-PR auf einem erlaubten Pfad bleibt das einzige Write-Ziel; `.github/workflows/**`, Secrets und riskante Pfade bleiben gesperrt.

## 3) Scope / Allowlist

**Im Scope**
- `tools/mcp-writer/**`
- `blackboard/**`
- `meta/state/**`
- `handbook/**`
- `decisions-adr/**`
- `templates-harness/**`

**Außerhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- `infra/**`
- `secrets/**`
- `.env*`
- Repo-weite Refactors / Cleanups
- neue produktive GitHub-App-Permissions ueber `Contents`, `Pull requests`, `Metadata` hinaus

## 4) Stand nach dem heutigen PR-1 bis PR-4 Lauf

- PR-1: offizieller MCP-Transport + Protected-Resource-Discovery + `WWW-Authenticate` sind vorbereitet.
- PR-2: OAuth-/OIDC-Metadata, `authorize`, `token`, `jwks` und DCR liegen im Writer.
- PR-3: `mcp.read` / `mcp.write` sind mit der bestehenden Writer-Policy gekoppelt; Repo-/Pfad-/Diff-/Secret-Limits bleiben aktiv.
- PR-4: Railway-CLI-Helfer fuer Variable-Upload, Deploy und Smoke-Checks liegen vor; lokale Dry-Runs wurden ausgefuehrt.
- Nicht erledigt heute: der echte ChatGPT Custom App E2E-Test gegen den deployed Service.

## 5) Next 3 Thin Slices (PR-Plan)

### Slice 1
E2E ChatGPT Custom App Test:
- deployed Writer-Endpoint in ChatGPT als Custom App / Connector pruefen
- OAuth-Discovery + Authorization Code Flow durchlaufen
- ersten MCP-Read-Call (`list_tree` oder `read_file`) aus ChatGPT bestaetigen
- Write-Pfad weiter nur als PR-only Writer-Ziel betrachten

### Slice 2
Kurzer Closeout-Nachtrag nach E2E:
- Ergebnis in `RepoStatusUpdate`, Workstream und optional Handoff nachziehen
- gruene oder rote Evidence kurz festhalten

### Slice 3
Nur falls E2E einen klar isolierten Gap zeigt:
- kleinstmoeglicher Follow-up-Slice im Writer
- kein neuer breiter Architekturpfad

## 6) Gates / Evidence

- PR-1 Transport + Discovery: pass
- PR-2 OAuth / OIDC / DCR: pass
- PR-3 Scopes + Policy: pass
- PR-4 Railway CLI / Smoke Baseline: pass fuer Parser-/Dry-Run-Level
- ChatGPT Custom App E2E: not executed today -> Ziel fuer morgen
- Writer-Policy greift weiterhin fuer Allowlist/Blocklist/Limits
- Kein Secret in Commit-Inhalten, Doku oder Skripten
- Evidence:
  - `tools/mcp-writer/scripts/dev/pr1_transport_discovery_smoke.ps1`
  - `tools/mcp-writer/scripts/railway/set_env.ps1`
  - `tools/mcp-writer/scripts/railway/deploy.ps1`
  - `tools/mcp-writer/scripts/railway/smoke_oauth.ps1`
  - `tools/mcp-writer/scripts/dev/pr4_railway_cli_dry_run.ps1`

## 7) Risiken / Stop-&-Ask Trigger

- Der morgige E2E-Lauf benoetigt einen Kontext mit deployed Service und ChatGPT-/Browser-Zugriff; wenn dieselbe Sandbox das nicht bietet, bleibt die Abnahme blockiert.
- Mixed Auth bleibt nur Uebergang; Zielbild bleibt OAuth-first.
- Kein No-Auth-Betrieb auf oeffentlichem Railway-Endpoint nur fuer schnellere Tests.
- Kein zweiter autonomer PR-Pfad neben dem Writer.
- Secrets oder zuvor exponierte Test-Token bleiben rotationspflichtig.

## 8) Links

- Entry: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260312_V1.md`
- Status Update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260312_V1.md`
- Vorheriger Bridge-Stand: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`
- Bridge-Handoff fuer morgen: `blackboard/AgenticSWE_NextChat_Handoff_ChatGPTMCPBridge_20260312_V1.md`
- Writer-Workstream (supporting baseline): `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
- PR Report Template: `handbook/reference/AgenticSWE_PRReport_Template_Reference_20260303_V1.md`
