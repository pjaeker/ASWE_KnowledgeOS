---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-09
status: draft
audience: [human, llm]
intent: "Workstream-Kapsel für die ChatGPT-Custom-App-/MCP-Bridge auf OAuth-first-Basis, aufbauend auf einem bereits funktionierenden Railway-MCP-Writer."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/mcp
  - topic/oauth
  - topic/chatgpt
  - topic/github
  - topic/gates
  - topic/evidence
---

# Workstream Capsule — WS-CHATGPT-MCP-BRIDGE

## 1) Ziel (1 Satz)

Die ChatGPT-Custom-App-/MCP-Bridge so vorbereiten und umsetzen, dass ChatGPT den Railway-basierten Writer über einen offiziellen MCP-Transport und OAuth-first sicher nutzen kann, ohne die bestehende PR-only-Governance aufzuweichen.

## 2) DoD (3 Bulletpoints)

- ChatGPT kann den Remote-MCP-Server als Custom App erkennen und die OAuth-Discovery erfolgreich durchlaufen.
- Mindestens ein MCP-Read-Call (`list_tree` oder `read_file`) funktioniert aus ChatGPT heraus mit gültiger Authentifizierung.
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
- neue produktive GitHub-App-Permissions über `Contents`, `Pull requests`, `Metadata` hinaus

## 4) Next 3 Thin Slices (PR-Plan)

### Slice 1
Official MCP transport + OAuth discovery vorbereiten:
- MCP-Transport auf ChatGPT-kompatiblem Pfad bereitstellen
- `/.well-known/oauth-protected-resource`
- `WWW-Authenticate` korrekt liefern
- `401 Unauthorized` als Discovery-Signal statt proprietärem Shared-Secret-Dead-End

### Slice 2
OAuth-first Authorization Server ergänzen:
- `/oauth/.well-known/openid-configuration`
- `/oauth/.well-known/oauth-authorization-server`
- `/oauth/authorize`
- `/oauth/token`
- `/oauth/jwks`
- optional `/oauth/register` für DCR

### Slice 3
Tool-Scopes + Railway-Automation grün ziehen:
- `mcp.read` und `mcp.write`
- Writer-Policy weiter hart serverseitig erzwingen
- Railway-CLI-Deployment und Smoke-Skripte ohne Dashboard-Klickpfad etablieren

## 5) Gates / Evidence

- GitHub Read in ChatGPT: grün
- Railway Writer via Bash bis Branch/Commit/Draft-PR: grün
- ChatGPT Custom App Discovery: aktuell rot/gelb, weil OAuth auf dem Server noch nicht implementiert ist
- MCP-Server liefert nach Umbau Protected-Resource-Metadata und OAuth-Discovery grün
- Writer-Policy greift weiterhin für Allowlist/Blocklist/Limits
- Kein Secret in Commit-Inhalten oder PR-Artefakten
- Evidence:
  - ChatGPT-App-Fehlermeldung `Unauthorized` / `does not implement OAuth`
  - Railway-Logs / lokale Smoke-Skripte
  - OAuth-Discovery-Responses
  - Test-PR-URL nach erfolgreichem Bridge-Smoke-Test

## 6) Risiken / Stop-&-Ask Trigger

- Das aktuelle Shared-Secret-Modell ist für ChatGPT-Custom-App-Setup nicht hinreichend kompatibel; ein vorschnelles Öffnen ohne OAuth wäre ein Sicherheitsrückschritt.
- Mixed Auth nur als Übergang; Zielbild bleibt OAuth-first.
- Kein No-Auth-Betrieb auf öffentlichem Railway-Endpoint nur zum schnelleren Testen.
- Kein zweiter autonomer PR-Pfad neben dem Writer.
- Secrets oder zuvor exponierte Test-Token bleiben rotationspflichtig.

## 7) Links

- Entry: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260305_V1.md`
- Status Update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260309_V1.md`
- Writer-Workstream (abgeschlossen / nachlaufend): `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
- Bridge-ADR: `decisions-adr/AgenticSWE_Connectors_MCP_BridgeStrategy_ADR_20260302_V2.md`
- MCP Write-via-PR HowTo: `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md`
- Repo Status Update Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260305_V1.md`
- PR Report Template: `handbook/reference/AgenticSWE_PRReport_Template_Reference_20260303_V1.md`
