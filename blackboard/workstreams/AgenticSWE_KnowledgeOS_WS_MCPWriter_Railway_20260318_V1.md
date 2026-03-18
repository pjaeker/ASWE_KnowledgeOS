---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Workstream-Kapsel nach dem Recovery-Slice fuer WS-MCP-WRITER-RAILWAY. Dokumentiert Baseline, Problemhypothesen, Loesungsweg, gruene Live-Evidence und verbleibende Restthemen."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/railway
  - topic/mcp
  - topic/oauth
  - topic/diagnostics
  - topic/evidence
  - topic/gates
---

# Workstream Capsule - WS-MCP-WRITER-RAILWAY

## 1) Ziel (1 Satz)

Den Railway-basierten MCP-Writer nach dem roten Runtime-Zustand reproduzierbar auf einen grueneren Live-Stand bringen und den Slice so dokumentieren, dass Bridge-E2E nur noch an echtem App-/Browser-Kontext haengt, nicht mehr an Writer-Health.

## 2) DoD (3 Bulletpoints)

- `GET /healthz` liefert wieder `200` mit Writer-Health-JSON statt Railway-Fallback oder `502`.
- Discovery-/OAuth-/JWKS-Endpunkte liefern wieder die erwarteten `200`-Antworten, und `POST /mcp` ohne Token liefert wieder `401` plus `WWW-Authenticate`.
- Der Port-/Deploy-/Env-Pfad ist belastbar verstanden und dokumentiert; verbleibende Probleme sind klar als Tooling- oder Kontextrestthemen abgegrenzt.

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

## 4) Baseline fuer diesen Slice

- Session-Anker beim Einstieg:
  - `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260317_V1.md`
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260317_V1.md`
  - `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260313_V1.md`
- Letzte technische Vorverdichtung:
  - `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260316_V1.md`
- Fuehrende Hypothese bei Start:
  - `PORT_OR_HEALTHCHECK / target-port mismatch`
- Guardrails waehrend des Slices:
  - `health-first`
  - `diagnose-first`
  - `mutation-last`
  - keine OAuth-/Discovery-Arbeit vor gruener `/healthz`
  - keine Raw-Railway-CLI-Checks als Primaerpfad ohne Secret-Loader/Wrapper

## 5) Problemhypothesen und Ergebnis

| Hypothese | Bewertung | Ergebnis |
|---|---|---|
| `SECRET_FALLBACK / WORKTREE_DRIFT` | bestaetigt als Tooling-Schwachstelle | zentraler Loader + Wrapper eingefuehrt |
| `STARTPATH_OR_DEPLOY_CONTEXT` | bestaetigt | Deploy-Pfad auf repo-root Kontext korrigiert |
| `PORT_OR_HEALTHCHECK / target-port mismatch` | bestaetigt | Dockerfile und Runtime-Port auf `8080` angeglichen |
| `ENV_DRIFT` | bestaetigt | produktionsnaher `PORT=3000`-Drift auf `8080` korrigiert |
| `LOCAL_POWERSHELL_HTTP_TRANSPORT` | offen | Service selbst gruen, PowerShell-Smoke lokal weiter transportgestoert |

## 6) Was konkret geaendert wurde und warum

### A) Railway-Loader und Script-Pfad stabilisiert

- Neu:
  - `tools/mcp-writer/scripts/railway/railway_env_common.ps1`
  - `tools/mcp-writer/scripts/railway/invoke_with_railway_env.ps1`
- Ziel:
  - Secret-Fallback zuerst laden
  - Worktree und Main-Checkout konsistent behandeln
  - Railway-Kommandos und Repo-Skripte denselben Auth-/Env-Pfad nutzen lassen

### B) Preflight-, Doctor-, Mutate- und Smoke-Skripte vereinheitlicht

- Aktualisiert:
  - `tools/mcp-writer/scripts/railway/env_and_auth_preflight.ps1`
  - `tools/mcp-writer/scripts/railway/doctor_readonly.ps1`
  - `tools/mcp-writer/scripts/railway/mutate_guarded.ps1`
  - `tools/mcp-writer/scripts/railway/smoke_oauth.ps1`
- Ziel:
  - diagnose-first beibehalten
  - PowerShell-5.1-Kompatibilitaet stabilisieren
  - Transportfehler in `smoke_oauth.ps1` als strukturierte Evidence materialisieren statt den Lauf frueh abzubrechen

### C) Deploy-Kontext korrigiert

- Aktualisiert:
  - `tools/mcp-writer/scripts/railway/deploy.ps1`
- Problem:
  - der alte `path-as-root`-Pfad kollidierte mit Railway-`rootDirectory`/`dockerfilePath`
- Loesung:
  - Deploy wieder vom Repo-Root ausfuehren, damit Railway den bestehenden Service-Pfad korrekt aufloest

### D) Port-Fix im Writer-Artefakt umgesetzt

- Aktualisiert:
  - `tools/mcp-writer/Dockerfile`
- Problem:
  - Railway erwartete `8080`, das Artefakt setzte `PORT=3000`
- Loesung:
  - `ENV PORT=8080`
  - `EXPOSE 8080`

### E) Mutationsentscheidung bewusst eng gehalten

- Kein frueher Blind-Restart
- Erst Diagnose, dann Repo-Fix, dann Redeploy
- Danach zusaetzliche Railway-Env-Angleichung `PORT=8080`, weil der Runtime-Drift den Repo-Fix zuerst uebersteuerte

## 7) Aktueller Stand nach dem Slice

- Railway `service status`: `SUCCESS`
- finale produktionsnahe `deploymentId`: `2ac9232b-5636-4b2a-9df7-82248d774484`
- Runtime-Logs: `ASWE MCP writer listening on port 8080`
- Host-neutraler Endpoint-Readback:
  - `GET /healthz` -> `200`
  - `GET /.well-known/oauth-protected-resource` -> `200`
  - `GET /oauth/.well-known/openid-configuration` -> `200`
  - `GET /oauth/.well-known/oauth-authorization-server` -> `200`
  - `GET /oauth/jwks` -> `200`
  - `POST /mcp` ohne Token -> `401` plus `WWW-Authenticate`
- Fazit:
  - die alten roten Writer-Gates aus dem 2026-03-13-Workstream sind live geschlossen
  - `WS-CHATGPT-MCP-BRIDGE` ist fachlich wieder freigegeben

## 8) Offene Probleme und womit sie zusammenhaengen

### Offenes Problem 1 - lokaler PowerShell-Smoke

- Beobachtung:
  - `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260318-134439/summary.json` bleibt rot
- Warum das nicht dieselbe Klasse ist wie ein Service-Fail:
  - derselbe Endpoint antwortet host-neutral per Node korrekt
  - die PowerShell-Evidence scheitert unterhalb der HTTP-Anwendungsebene mit `Fehler beim Senden der Anforderung`
- Wahrscheinlicher Zusammenhang:
  - Windows PowerShell 5.1 / .NET `HttpClient` / Schannel / TLS-Transport des Hosts
- Realistische Loesungen:
  - optionalen Node-basierten Transportmodus fuer `smoke_oauth.ps1` ergaenzen
  - oder den Smoke in `pwsh` bzw. einem Linux-/Node-faehigen Runner ausfuehren

### Offenes Problem 2 - manuelle Bridge-E2E

- Beobachtung:
  - der Writer ist live gesund, aber die echte ChatGPT-Custom-App-E2E ist in diesem Host nicht selbst ausfuehrbar
- Zusammenhang:
  - der Workstream `WS-CHATGPT-MCP-BRIDGE` braucht echten ChatGPT-/Browser-Zugriff
- Realistische Loesung:
  - manuellen E2E-Lauf im dafuer vorgesehenen Kontext ausfuehren und Ergebnis danach knapp in Status/Workstream nachziehen

### Offenes Problem 3 - `/healthz` meldet `environment = development`

- Beobachtung:
  - die Health-Antwort ist gruen, traegt aber aktuell `development`
- Zusammenhang:
  - `NODE_ENV` scheint produktionsnah nicht gesetzt zu sein
- Realistische Loesung:
  - kleiner spaeterer Config-Hygiene-Slice, falls diese Metadaten produktionsgetreu sein sollen

## 9) Next 3 Thin Slices

### Slice 1
Bridge-E2E jetzt im richtigen Kontext durchfuehren:
- `WS-CHATGPT-MCP-BRIDGE` als naechsten fachlichen Lauf verwenden
- Custom App / OAuth / erster MCP-Read-Call manuell verifizieren

### Slice 2
Tooling-Restproblem entkoppeln:
- `smoke_oauth.ps1` um Node-basierten Transport-Fallback erweitern
- PowerShell-False-Negatives von echter Service-Evidence sauber trennen

### Slice 3
Niedrig priorisierte Config-Hygiene:
- `NODE_ENV` produktionsnah setzen, falls `/healthz`-Metadaten das spiegeln sollen
- kein breiter Refactor daraus machen

## 10) Evidence / Links

- Voriger Writer-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260313_V1.md`
- Voriger technischer Writer-Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260316_V1.md`
- Neuer Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260318_V1.md`
- Bridge-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260312_V1.md`
- Orchestrierungs-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_Codex_Subagent_Orchestration_20260317_V4.md`
- PowerShell-Smoke-Evidence: `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260318-134439/summary.json`
