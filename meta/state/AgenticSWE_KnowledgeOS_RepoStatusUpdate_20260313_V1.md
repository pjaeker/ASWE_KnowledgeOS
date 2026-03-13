---
project: ASWE_KnowledgeOS
doc_type: state
date: 2026-03-13
version: V1
status: draft
audience: [human, llm]
intent: "Closeout-Status nach frischer Live-Smoke-Evidence gegen den deployed Railway Writer. Der 2026-03-13-Lauf macht den zuvor geplanten Bridge-E2E-Schritt operativ nachrangig, bis der Live-Service wieder gesund antwortet."
tags:
  - layer/state
  - artifact/status-update
  - topic/status
  - topic/router
  - topic/evidence
  - topic/codex
  - topic/chatgpt
  - topic/workstreams
  - topic/oauth
  - topic/mcp
  - topic/railway
---

# Repo Status Update - Live Railway Smoke Red / Bridge E2E Blocked

## 1) Executive Summary

- Die fuehrende operative Evidence ist jetzt der Live-Smoke-Lauf `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/summary.json` gegen `https://asweknowledgeos-production.up.railway.app`.
- Ergebnis: `passed = 0`, `failed = 6`. Alle Pflicht-Probes endeten mit HTTP `502`.
- Die Response-Headers zeigen durchgaengig `railway-edge` plus `X-Railway-Fallback: true`, und alle Bodies enthalten `Application failed to respond`.
- Der fruehere `OAUTH_JWT_PRIVATE_KEY`-Boot-Crash bleibt historische Evidence, ist aber fuer diesen Closeout **nicht** der fuehrende aktuelle Blocker.
- `WS-CHATGPT-MCP-BRIDGE` ist damit operativ ueberholt: ChatGPT-Custom-App-E2E ist aktuell blockiert, bis der Live-Service wieder gesund antwortet.

## 2) Harte bestaetigte Fakten

Fresh live smoke gegen den deployed Endpoint:

| Probe | Erwartet | Ist | Notes |
|---|---|---|---|
| `GET /healthz` | `200` | `502` | `Assertion failed: The property 'ok' cannot be found on this object. Verify that the property exists.` |
| `GET /.well-known/oauth-protected-resource` | `200` | `502` | `Assertion failed: The property 'resource' cannot be found on this object. Verify that the property exists.` |
| `GET /oauth/.well-known/openid-configuration` | `200` | `502` | `Assertion failed: The property 'issuer' cannot be found on this object. Verify that the property exists.` |
| `GET /oauth/.well-known/oauth-authorization-server` | `200` | `502` | `Assertion failed: The property 'issuer' cannot be found on this object. Verify that the property exists.` |
| `GET /oauth/jwks` | `200` | `502` | `Assertion failed: The property 'keys' cannot be found on this object. Verify that the property exists.` |
| `POST /mcp` ohne Token | `401 + WWW-Authenticate` | `502` | `Missing WWW-Authenticate header` |

Weitere bestaetigte Fakten:

- Alle sechs Pflicht-Probes wurden vollstaendig ausgefuehrt; der Lauf brach nicht mehr nach der ersten Abweichung ab.
- `smoke_oauth.ps1` wurde gehaertet, sodass Assertion-Fehler nun als strukturierte Notes im Ergebnis landen.
- Die Einzelartefakte `*.status.txt`, `*.headers.txt` und `*.body.txt` bestaetigen fuer alle sechs Pflicht-Probes denselben Railway-Fallback-Typ.
- Die Bodies lauten jeweils auf `{"status":"error","code":502,"message":"Application failed to respond",...}`.

## 3) Plausible Einordnung

- Der aktuell deployte Railway-Endpunkt war waehrend des Smoke-Laufs **nicht gesund genug** fuer Health, Discovery, OAuth oder unauthenticated MCP-Challenge.
- Das ist ein Live-Service-/Runtime-/Routing-Problem auf dem laufenden Endpoint, nicht nur ein Problem des Smoke-Skripts.
- Die Script-Haertung verbessert die Diagnosequalitaet, aendert aber nicht den Live-Befund selbst.
- Der naechste Arbeitsfokus muss deshalb zurueck auf `WS-MCP-WRITER-RAILWAY` gehen, bis `/healthz` wieder gruen ist.

## 4) Offene Unsicherheiten

- Der Smoke-Lauf beweist den **Symptomzustand** (`502` + Railway-Fallback), aber nicht allein die konkrete Root-Cause im Service.
- Aus dem aktuellen Artefaktsatz ist nicht belastbar ableitbar, ob der Primarausloeser eher Runtime-Crash, Startpfad, Port-Binding, Health-Check-Problem oder andere Deploy-Runtime-Abweichung ist.
- Als zusaetzlicher Kontext gilt eine heutige Railway-Plattform-/Observability-Stoerung rund um Logs (`logs not loading`, degraded or partial outage, spaeter Fix/Monitoring). Diese Beobachtung kann die Diagnosequalitaet der Logs eingeschraenkt haben, gilt hier aber **nicht** als Root-Cause-Nachweis fuer die `502`-Antworten.

## 5) E2E Reifegrad (UI -> Change -> Writer -> PR -> CI -> Merge)

| Segment | Status | Evidence |
|---|---|---|
| Session Contract / Routing | gruen | `AGENTS.md`, `ENTRY_LATEST -> RepoStatusUpdate -> Workstream` bleiben kanonisch |
| Writer Governance / PR-only | gruen | Keine Governance-Aufweichung, kein zweiter PR-Pfad |
| Live Service Health auf Railway | rot | `GET /healthz` -> `502`, Railway fallback |
| Protected-Resource Discovery / OAuth Discovery | rot | alle Discovery-/Metadata-Pfade -> `502` |
| MCP Unauthorized Challenge | rot | `POST /mcp` ohne Token -> `502`, kein `WWW-Authenticate` |
| ChatGPT Custom App E2E | blockiert | Live-Service antwortet nicht gesund genug fuer Discovery/OAuth/E2E |

## 6) Active Workstreams (max 3)

| WS | Ziel | DoD | Next Slice | Blocker | Evidence |
|---|---|---|---|---|---|
| WS-MCP-WRITER-RAILWAY | deployed Writer auf Railway wieder gesund und smoke-gruen bekommen | `/healthz` 200, Discovery 200, `/mcp` ohne Token 401 + `WWW-Authenticate` | Logs/Runtime/Health/Port/Startpfad live pruefen | aktueller Live-Endpoint liefert fuer alle Pflicht-Probes `502` | `summary.json`, alle sechs `*.status.txt` / `*.headers.txt` / `*.body.txt` |
| WS-CHATGPT-MCP-BRIDGE | ChatGPT-Custom-App-/MCP-E2E live abnehmen | Discovery/OAuth in ChatGPT gruen, erster MCP-Read-Call gruen | **nicht sofort** E2E, sondern warten bis Writer live gesund ist | Bridge-E2E ist vom Writer-Live-Fail blockiert | 2026-03-13 Live-Smoke ueberholt den 2026-03-12-E2E-Plan |
| WS-SESSIONLIFECYCLE-REFACTOR | Session-Contract stabil halten | Startpfad bleibt `AGENTS.md -> ENTRY_LATEST -> RepoStatusUpdate -> Workstream` | nur bei Drift-Nachschaerfung | kein akuter Kernblocker | Routing-/Anchor-Muster unveraendert |

## 7) Gate-Evidence dieses Closeouts

| Gate | Status | Notes |
|---|---|---|
| Live Railway Smoke (`smoke_oauth.ps1`) | fail | `passed = 0`, `failed = 6`, alle Pflicht-Probes `502` |
| Smoke Artifact Materialization | pass | `summary.json` plus 18 Einzeldateien wurden geschrieben |
| Smoke Script Hardening | pass | Assertion-Fehler erscheinen als strukturierte Notes statt als harter Abbruch |
| ChatGPT Custom App E2E | blocked | nicht sinnvoll vor gruener Live-Health |
| MeaningMap / Snapshot / Manifest Refresh | not_needed | keine repo-weite Routing-Aenderung, nur operative Statuskorrektur |

## 8) Tooling & Environment

- Fuehrende Evidence dieses Closeouts liegt unter `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/`.
- Die Live-Smoke-Summary referenziert die produktive Railway-URL `https://asweknowledgeos-production.up.railway.app`.
- `smoke_oauth.ps1` materialisiert jetzt strukturierte Notes fuer Assertion-Fehler; dadurch ist der Lauf diagnostisch aussagekraeftiger als der fruehere Abbruchlauf.
- Externer Betriebs-Kontext von heute: Railway-Logs/Observability waren zeitweise gestoert (`logs not loading`, degraded or partial outage, spaeter Fix/Monitoring). Das wird als diagnostischer Confounder dokumentiert, nicht als bewiesene Ursache.

## 9) Entscheidungen (operative Entscheidungen)

- Der 2026-03-13-Live-Smoke-Befund ist ab jetzt fuehrende operative Wahrheit fuer den Writer-/Bridge-Stand.
- `WS-MCP-WRITER-RAILWAY` rutscht wieder vor `WS-CHATGPT-MCP-BRIDGE` in den unmittelbaren Arbeitsfokus.
- Der 2026-03-12-Plan `naechster Schritt = ChatGPT E2E` wird **nicht** blind fortgeschrieben; E2E wird erst nach wieder gruener Live-Health wieder aufgenommen.
- MeaningMap, Snapshot und Manifest werden nicht refreshed, weil keine repo-weite Struktur- oder Routing-Wahrheit geaendert wurde.

## 10) Risiken & Stop-&-Ask

- Risiko: Ohne frische Live-Runtime-Checks kann der naechste Thread sonst erneut Discovery/OAuth debuggen, obwohl bereits `/healthz` rot ist.
- Risiko: Die Railway-Log-Stoerung koennte die Diagnose erschwert haben; daraus darf aber keine falsche Kausalbehauptung entstehen.
- Stop-&-Ask unveraendert:
  - `.github/workflows/**`
  - Erweiterung der Allowlist in riskante Pfade
  - neue GitHub-App-Permissions
  - No-Auth- oder Nebenpfade um den Writer herum
  - echte Secrets / Credential-Handling im Repo

## 11) Next PR Slices (3-5)

1. Railway-Logs / Runtime / Health / Port / Startpfad live pruefen.
2. Zuerst `/healthz` wieder gruen bekommen.
3. Danach Discovery-/OAuth-Smoke erneut ausfuehren.
4. Erst dann ChatGPT-Custom-App-E2E wieder aufnehmen.

## 12) Evidence-Pointer

- Vorheriger Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260312_V1.md`
- Neuer Writer-Workstream-Stand: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260313_V1.md`
- Neuer Entry-Stand: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260313_V1.md`
- Optionales Resume-Sidecar: `blackboard/AgenticSWE_NextChat_Handoff_MCPWriterRailway_20260313_V2.md`
- Historisches Writer-Handoff: `blackboard/AgenticSWE_NextChat_Handoff_MCPWriterRailway_20260313_V1.md`
- Fuehrende Live-Evidence: `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-171811/summary.json`
- Commit mit Script-Haertung + Artefakten: `ceb0896 fix(mcp-writer): harden Railway and transport smoke probes and add run artifacts`
