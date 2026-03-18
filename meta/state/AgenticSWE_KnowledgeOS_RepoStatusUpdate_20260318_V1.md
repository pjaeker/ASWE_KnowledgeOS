---
project: ASWE_KnowledgeOS
doc_type: RepoStatusUpdate
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Status-Fortschreibung nach dem Recovery-Slice fuer WS-MCP-WRITER-RAILWAY. Dokumentiert Baseline, fuehrende Hypothesen, umgesetzte Fixes, Live-Evidence und verbleibende Restthemen."
tags:
  - layer/state
  - artifact/status
  - topic/status
  - topic/railway
  - topic/mcp-writer
  - topic/diagnostics
  - topic/oauth
  - topic/bridge
---

# AgenticSWE KnowledgeOS Repo Status Update - 2026-03-18

## 1) Executive Summary

- Die Session startete auf dem 2026-03-17-Session-Anker und dem weiterhin roten Writer-Workstream `WS-MCP-WRITER-RAILWAY_20260313`, mit der 2026-03-16-Hypothese `PORT_OR_HEALTHCHECK / target-port mismatch` als fuehrender technischer Spur.
- Der Railway-Operate-Pfad ist jetzt worktree-stabil: Secret-Fallback wird zentral geladen, Preflight/Doctor/Mutation/Smoke koennen denselben Auth- und Env-Pfad verwenden, und der fruehere Deploy-Pfad wurde auf repo-root Upload-Kontext korrigiert.
- Die Root-Cause fuer die rote Writer-Runtime ist jetzt belastbar geschlossen: Railway erwartete `targetPort = 8080`, waehrend der laufende Container auf `3000` band; zusaetzlich blieb ein produktionsnaher Runtime-Env-Drift `PORT=3000` aktiv.
- Die Writer-Runtime ist live wieder gruen: Railway `service status` ist `SUCCESS`, Runtime-Logs zeigen `ASWE MCP writer listening on port 8080`, `/healthz` liefert `200`, Discovery-/OAuth-/JWKS-Endpunkte liefern `200`, und `POST /mcp` ohne Token liefert wieder `401` plus `WWW-Authenticate`.
- Nicht mehr fuehrend blockierend ist damit die Writer-Live-Health. Offen bleibt ein lokales PowerShell-Transportproblem fuer `smoke_oauth.ps1`; der naechste fachliche Schritt ist dadurch nicht mehr Runtime-Recovery, sondern manualisierte Bridge-E2E in einem ChatGPT-/Browser-faehigen Kontext.

## 2) Baseline / Session-Anker

- Entry vor diesem Closeout: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260317_V1.md`
- Status vor diesem Closeout: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260317_V1.md`
- Fuehrender technischer Vorstatus: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260316_V1.md`
- Fuehrender technischer Workstream vor diesem Slice: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260313_V1.md`
- Arbeitsmodus blieb unveraendert: `health-first`, `diagnose-first`, `mutation-last`, keine OAuth-/Discovery-Arbeit vor gruener `/healthz`.

## 3) Fuehrende Repo- und Live-Evidence

- Repo-Delta im Writer-Slice:
  - `tools/mcp-writer/Dockerfile`
  - `tools/mcp-writer/scripts/railway/railway_env_common.ps1`
  - `tools/mcp-writer/scripts/railway/invoke_with_railway_env.ps1`
  - `tools/mcp-writer/scripts/railway/env_and_auth_preflight.ps1`
  - `tools/mcp-writer/scripts/railway/doctor_readonly.ps1`
  - `tools/mcp-writer/scripts/railway/mutate_guarded.ps1`
  - `tools/mcp-writer/scripts/railway/deploy.ps1`
  - `tools/mcp-writer/scripts/railway/smoke_oauth.ps1`
- Frische Railway-Readbacks ueber den zentralen Wrapper:
  - `service status --json --service ASWE_KnowledgeOS --environment production` -> `SUCCESS`, `stopped = false`, `deploymentId = 2ac9232b-5636-4b2a-9df7-82248d774484`
  - `logs --lines 80 --json --service ASWE_KnowledgeOS --environment production` -> `ASWE MCP writer listening on port 8080`
- Host-neutraler Node-Readback gegen den Railway-Domain-Endpoint:
  - `GET /healthz` -> `200`
  - `GET /.well-known/oauth-protected-resource` -> `200`
  - `GET /oauth/.well-known/openid-configuration` -> `200`
  - `GET /oauth/.well-known/oauth-authorization-server` -> `200`
  - `GET /oauth/jwks` -> `200`
  - `POST /mcp` ohne Token -> `401` plus `WWW-Authenticate`
- PowerShell-Smoke-Artefakt bleibt als Restproblem-Evidence relevant:
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260318-134439/summary.json`

## 4) Problem- und Hypothesenledger

### H1 - SECRET_FALLBACK / WORKTREE_DRIFT

- Ausgangslage: Railway-bezogene Skripte im Worktree konnten Auth-/Secret-Fallback nicht konsistent und zentral nachziehen.
- Bewertung: bestaetigt als Tooling-Schwachstelle, nicht als Live-Service-Root-Cause.
- Loesung:
  - neuer gemeinsamer Loader `tools/mcp-writer/scripts/railway/railway_env_common.ps1`
  - neuer Wrapper `tools/mcp-writer/scripts/railway/invoke_with_railway_env.ps1`
  - konsumierende Skripte auf denselben Pfad gezogen
- Konsequenz: Railway-Kommandos und Repo-Skripte koennen Secret-Fallback nun vor jeder Diagnose oder Mutation konsistent laden.

### H2 - STARTPATH_OR_DEPLOY_CONTEXT

- Ausgangslage: der fruehere Deploy-Pfad benutzte `path-as-root`-Verhalten, das nicht mehr sauber zum Railway-Service mit `rootDirectory` und `dockerfilePath` passte.
- Bewertung: bestaetigt.
- Harte Evidence: ein Deploy scheiterte mit `Could not find root directory: /tools/mcp-writer`.
- Loesung: `tools/mcp-writer/scripts/railway/deploy.ps1` deployt jetzt vom Repo-Root, damit Railway die bestehende Service-Konfiguration weiter korrekt aufloesen kann.
- Konsequenz: der erfolgreiche nachfolgende Deploy lief wieder ueber den erwarteten `DOCKERFILE`-Pfad.

### H3 - PORT_OR_HEALTHCHECK / TARGET-PORT MISMATCH

- Ausgangslage: die fuehrende technische Hypothese aus dem 2026-03-16-Status lautete `targetPort = 8080` bei beobachtetem Listen-Port `3000`.
- Bewertung: bestaetigt.
- Harte Evidence:
  - Railway-Status zeigte `targetPort = 8080`
  - Runtime-Logs zeigten `ASWE MCP writer listening on port 3000`
  - Repo-Code/Dockerfile waren mit `PORT=3000` konsistent
- Loesung:
  - `tools/mcp-writer/Dockerfile` auf `ENV PORT=8080` und `EXPOSE 8080` korrigiert
  - erst danach mutierender Deploy ueber den korrigierten Deploy-Pfad
- Konsequenz: der Container startet jetzt mit dem Railway-Zielport konsistent.

### H4 - ENV_DRIFT

- Ausgangslage: nach dem Repo-Fix lief die Runtime zunaechst weiter auf `3000`, also war die Port-Abweichung nicht allein im Repo geschlossen.
- Bewertung: bestaetigt.
- Harte Evidence: eine produktionsnahe Railway-Service-Variable hielt `PORT=3000` weiterhin aktiv.
- Loesung: Railway-Runtime-Variable `PORT` wurde auf `8080` angeglichen; daraus entstand der erfolgreiche Deploy `2ac9232b-5636-4b2a-9df7-82248d774484`.
- Konsequenz: erst Repo-Fix plus Runtime-Env-Angleichung haben den Port-Pfad vollstaendig gruengeschaltet.

### H5 - LOCAL_POWERSHELL_HTTP_TRANSPORT

- Ausgangslage: `smoke_oauth.ps1` lieferte in diesem Host weiterhin `Fehler beim Senden der Anforderung`, obwohl die Live-Endpunkte inzwischen wieder korrekt antworten.
- Bewertung: bestaetigt als lokales Client-/Transportproblem; nicht bestaetigt als Service-Regression.
- Harte Evidence:
  - PowerShell-Smoke-Artefakt `20260318-134439` endet mit `passed = 0`, `failed = 6`, jeweils `Request failed`
  - host-neutrale Node-Readbacks gegen denselben Endpoint liefern gleichzeitig die erwarteten `200`-/`401`-Antworten
- Loesung im Slice:
  - `tools/mcp-writer/scripts/railway/smoke_oauth.ps1` schreibt jetzt strukturierte Transport-Evidence statt hart am ersten Fehler abzubrechen
- Restzustand: offen; wahrscheinliche Ursache ist der lokale Windows-PowerShell-/.NET-/Schannel-Transportstack.

## 5) Umgesetzte Loesungen und Mutationsentscheidung

- Diagnose vor Mutation:
  - Preflight und Doctor wurden ueber den neuen Loader-Pfad gefahren.
  - Projektnahe Railway-Readbacks und Host-neutraler HTTP-Readback wurden zuerst gelesen.
  - Restart-only wurde verworfen, weil derselbe Artefakt-/Env-Stand den Port-Mismatch nur reproduziert haette.
- Umgesetzte Repo-Fixes:
  - zentraler Railway-Env-Loader und Wrapper
  - Preflight-/Doctor-/Mutation-/Smoke-Haertung fuer denselben Pfad
  - Deploy-Skript auf repo-root Kontext korrigiert
  - Dockerfile-Port auf `8080` angeglichen
- Umgesetzte Runtime-Mutationen:
  - Deploy nach Repo-Fix
  - danach gezielte Railway-Variable-Angleichung `PORT=8080`
- Entscheidung:
  - `Restart`: nein
  - `Redeploy`: ja, weil der Repo-Fix ausgerollt werden musste
  - `zusatzliche Runtime-Angleichung`: ja, weil ENV_DRIFT die Repo-Korrektur zuerst uebersteuerte

## 6) Aktueller Betriebsstand

- Writer-Live-Health: gruen
- Railway-Servicezustand: gruen
- Discovery-/OAuth-/JWKS-Pfade: gruen
- unauthenticated MCP challenge: gruen
- Governance-/Writer-Invarianten: unveraendert gruen
- Zusatzbeobachtung:
  - `/healthz` liefert aktuell `environment = development`; das ist ein niedrig priorisiertes Konfig-Hygiene-Thema und kein aktueller Availability-Blocker.

## 7) Active Workstreams (max 3)

| WS | Rolle | Status | Next Focus |
|---|---|---|---|
| `WS-MCP-WRITER-RAILWAY` | technischer Hauptanker fuer den Recovery-Slice | aktiv, aber Live-Runtime wieder gruen | gruener Writer-Stand halten, Restthema PowerShell-Smoke klar abgrenzen |
| `WS-CHATGPT-MCP-BRIDGE` | nachgelagerter fachlicher Hauptnutzen | jetzt unblocked | manuelle ChatGPT-Custom-App-E2E in Browser-/ChatGPT-faehigem Kontext |
| `WS-CODEX-SUBAGENT-ORCHESTRATION` | repo-weite Enabling-Schicht | verfuegbar | nur bei spaeterem Bedarf bounded Nebenrollen andocken |

## 8) Offene Probleme / Wahrscheinliche Ursachen / Loesungswege

- Offenes Problem: `smoke_oauth.ps1` produziert in diesem Windows-PowerShell-5.1-Host weiterhin lokale Transport-Fehlschlaege.
  - Wahrscheinliche Ursache: PowerShell-/.NET-`HttpClient`-/Schannel-spezifisches TLS- oder Transportproblem des Hosts.
  - Sinnvolle Loesung: optionalen Node-basierten Transportpfad fuer `smoke_oauth.ps1` einfuehren oder denselben Smoke aus `pwsh`/Linux/Node-basiertem Runner ausfuehren.
- Offenes Problem: Bridge-E2E ist noch nicht ausgefuehrt.
  - Ursache: der aktuelle Codex-Host bietet keinen echten ChatGPT-Custom-App-/Browser-Abnahmekontext.
  - Sinnvolle Loesung: manueller E2E-Lauf im dafuer vorgesehenen ChatGPT-/Browser-Kontext.
- Niedrig priorisiertes Hygiene-Thema: `/healthz` meldet `environment = development`.
  - Wahrscheinliche Ursache: `NODE_ENV` ist produktionsnah nicht gesetzt.
  - Sinnvolle Loesung: spaeterer kleiner Config-Slice, falls diese Metadaten produktionsgetreu sein sollen.

## 9) Closeout-Entscheidungen dieses Slices

- `RepoStatusUpdate`: create
- `Workstream`: create
- `Structural docs / runbooks / references`: no-change
- `ENTRY_LATEST`: refresh
- `NextChat-Handoff`: not-needed

Begruendung:

- Die operative Wahrheit hat sich materiell geaendert, deshalb sind neuer Status und neuer Writer-Workstream erforderlich.
- Routing, Architektur und Runbook-Schicht haben sich in diesem Slice nicht grundsaetzlich geaendert; deshalb kein Struktur-Refresh ausser `ENTRY_LATEST`.
- Ein neues Handoff ist nicht noetig, weil Baseline, Hypothesen, Fixes, Live-Evidence und Restthemen jetzt in Status und Workstream materialisiert sind.

## 10) Next Thin Slices

1. `WS-CHATGPT-MCP-BRIDGE`: manuellen ChatGPT-Custom-App-E2E-Lauf gegen den jetzt grueneren Writer durchfuehren.
2. Optionaler Tooling-Slice: `smoke_oauth.ps1` um einen Node-basierten Transport-Fallback ergaenzen.
3. Optionaler Hygiene-Slice: `NODE_ENV` produktionsnah angleichen, falls `/healthz`-Metadaten das abbilden sollen.

## 11) Evidence-Pointer

- Voriger Entry: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260317_V1.md`
- Voriger Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260317_V1.md`
- Voriger technischer Writer-Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260316_V1.md`
- Neuer Writer-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260318_V1.md`
- Bridge-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260312_V1.md`
- Orchestrierungs-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_Codex_Subagent_Orchestration_20260317_V4.md`
- PowerShell-Smoke-Evidence: `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260318-134439/summary.json`
