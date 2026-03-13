---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Aktualisierte Workstream-Kapsel fuer WS-MCP-WRITER-RAILWAY nach frischem Live-Smoke-Fail auf Railway. Ziel ist jetzt zuerst die Wiederherstellung einer gesunden Writer-Runtime vor jeder Bridge-E2E-Fortsetzung."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/write-via-pr
  - topic/github
  - topic/codex
  - topic/gates
  - topic/evidence
  - topic/railway
  - topic/mcp
  - topic/oauth
---

# Workstream Capsule - WS-MCP-WRITER-RAILWAY

## 1) Ziel (1 Satz)

Den deployed Railway-basierten MCP-Writer zuerst wieder auf einen gesunden Live-Stand bringen, sodass `/healthz`, Discovery, OAuth-Metadata und die unauthenticated MCP-Challenge wieder erwartungsgemaess antworten, bevor die Bridge-E2E in ChatGPT fortgesetzt wird.

## 2) DoD (3 Bulletpoints)

- `GET /healthz` liefert wieder `200` mit Writer-Health-JSON statt Railway-Fallback-`502`.
- `GET /.well-known/oauth-protected-resource`, `GET /oauth/.well-known/openid-configuration`, `GET /oauth/.well-known/oauth-authorization-server` und `GET /oauth/jwks` liefern wieder `200`.
- `POST /mcp` ohne Token liefert wieder `401` plus `WWW-Authenticate`, und erst danach darf `WS-CHATGPT-MCP-BRIDGE` den E2E-Schritt wieder aufnehmen.

## 3) Scope / Allowlist

**Im Scope**
- `tools/mcp-writer/**`
- `blackboard/**`
- `meta/state/**`
- `handbook/**`
- `decisions-adr/**`
- `templates-harness/**`

**Ausserhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- `infra/**`
- `secrets/**`
- `.env*`
- Repo-weite Refactors / Cleanups
- neue produktive GitHub-App-Permissions
- No-Auth- oder Nebenpfade um den Writer herum

## 4) Stand nach dem heutigen Live-Smoke-Lauf

- Fuehrende Evidence ist `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/summary.json`.
- Ergebnis: `passed = 0`, `failed = 6`.
- Alle Pflicht-Probes lieferten `502`.
- Alle Header zeigen `railway-edge` plus `X-Railway-Fallback: true`.
- Alle Bodies enthalten `Application failed to respond`.
- `smoke_oauth.ps1` ist inzwischen so gehaertet, dass Assertion-Fehler als Notes erscheinen statt den Lauf an der ersten Abweichung zu beenden.
- Der fruehere `OAUTH_JWT_PRIVATE_KEY`-Boot-Crash bleibt historisch, ist aber fuer diesen Stand nicht der fuehrende aktuelle Blocker.
- Zusatzkontext: Railway hatte heute eine Logs-/Observability-Stoerung; das kann die Diagnose erschwert haben, gilt hier aber nicht als Root-Cause-Nachweis.

## 5) Next 3 Thin Slices (PR-Plan)

### Slice 1
Live-Runtime wieder gesund bekommen:
- Railway-Logs / Runtime / Health / Port / Startpfad live pruefen
- zuerst `/healthz` wieder gruen bekommen
- keine Discovery-/OAuth-Debugschleife vor gruener Health

### Slice 2
Discovery-/OAuth-Smoke erneut laufen lassen:
- `smoke_oauth.ps1` nach gruener Health erneut ausfuehren
- `summary.json` und Einzelartefakte neu sichern
- bestaetigen, dass Discovery-/Metadata-Pfade und `POST /mcp` wieder die erwarteten Statuscodes liefern

### Slice 3
Bridge-Fokus erst danach wieder aufnehmen:
- `WS-CHATGPT-MCP-BRIDGE` erst nach gruener Live-Smoke-Lage wieder als unmittelbaren naechsten Schritt behandeln
- dann ChatGPT-Custom-App-E2E erneut planen
- kein breiter Architekturpfad dazwischen

## 6) Gates / Evidence

- Live Reachability / Health: rot
- Protected-Resource Discovery: rot
- OAuth-/OIDC-/JWKS-Metadata: rot
- Unauthenticated MCP challenge: rot
- Script-Haertung fuer strukturierte Notes: gruen
- Writer-Policy-/Governance-Invarianten: unveraendert gruen
- Evidence:
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/summary.json`
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/01-healthz.*`
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/02-protected-resource.*`
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/03-openid-configuration.*`
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/04-oauth-authorization-server.*`
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/05-jwks.*`
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/06-mcp-missing-token.*`

## 7) Risiken / Stop-&-Ask Trigger

- Nicht in Discovery/OAuth-Einzeldetails verlieren, solange `/healthz` noch rot ist.
- Railway-Log-/Observability-Probleme nicht als bewiesene Ursache formulieren.
- Kein Auth-Bypass und kein No-Auth-Workaround fuer schnellere Tests.
- Keine neuen GitHub-App-Permissions und keine Scope-/Allowlist-Aufweichung.
- Kein zweiter autonomer PR-Pfad neben dem Writer.

## 8) Links

- Vorheriger Writer-Stand: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
- Neuer Status Update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260313_V1.md`
- Aktueller Bridge-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260312_V1.md`
- Entry: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260313_V1.md`
- Resume-Sidecar: `blackboard/AgenticSWE_NextChat_Handoff_MCPWriterRailway_20260313_V2.md`
