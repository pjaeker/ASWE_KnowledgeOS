---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Strukturierte technische Dokumentation der MCP-writer-/Railway-/Bridge-Arbeit bis zum live grueneren OAuth-first Pfad, inklusive verwendeter Skills, Subagenten, Evidence, Mutationen und Restthemen."
tags:
  - layer/handbook
  - artifact/reference
  - topic/railway
  - topic/mcp-writer
  - topic/bridge
  - topic/oauth
  - topic/codex
  - topic/subagents
  - topic/evidence
---

# MCP Writer / Railway / Bridge Live Enablement - Technical Reference

## 1) Zweck

Dieses Dokument beschreibt nachvollziehbar, wie der Railway-basierte MCP-Writer von einer gruenen Runtime-Recovery ueber OAuth-Guardrail-Haertung bis zu einem live validierten OAuth-first Bridge-Pfad gebracht wurde.

Der Fokus liegt auf:

- technischer Ausgangslage
- verwendeter Arbeitsmethode
- konkret umgesetzten Slices
- Live-Evidence
- verbleibenden Restthemen

## 2) Ausgangslage

- Die Writer-Runtime war bereits wieder gruen, aber der Bridge-Pfad war noch nicht end-to-end freigeschaltet.
- Host-neutrale Probes zeigten zuerst:
  - Core-Endpoints gruen
  - DCR gruen
  - `/oauth/authorize` blockiert durch leeres `OAUTH_DEV_SUBJECT`
- Danach wurde der OAuth-Bootstrap bewusst gehaertet:
  - Redirect-Allowlist eingefuehrt
  - DCR und Authorize fail-closed gegen `OAUTH_ALLOWED_REDIRECT_URIS`
- Nach dem Deploy dieses Hardening-Slices blockierte DCR in Production erwartbar an fehlender `OAUTH_ALLOWED_REDIRECT_URIS`.

## 3) Verwendete Arbeitsmethode

### Skills

- `aswe-triager`
  - zur Priorisierung zwischen Runtime-, Deploy-, Env- und Bridge-Hypothesen
- `aswe-test-agent`
  - zur Ableitung changed-files-orientierter Verify-Gates
- `use-railway`
  - fuer CLI-first Railway-Operate, Deploy und Variable-Management
- `aswe-doc-agent`
  - fuer additive, technisch praezise Dokuform
- `aswe-session-closeout-guardrails`
  - fuer den anschliessenden symmetrischen Closeout

### Subagenten

- `railway_observer`
  - read-only Live-Signale fuer Servicezustand, Variablenbild und Log-Triage
- `bridge_test_agent`
  - Verify-/Gate-Vorschlaege fuer den OAuth-Bootstrap-Hardening-Slice
- `bridge_doc_agent`
  - additive Dokuziel-Pfade und Gliederungsimpulse

### Arbeitsprinzip

- diagnose-first
- mutation-last
- host-neutral evidence bevorzugen, wenn lokales PowerShell-HTTP unzuverlaessig ist
- kleine, reviewbare Slices statt breiter Umbauten

## 4) Umgesetzte Slices

### Slice A - Diagnose auf ENV_DRIFT statt Runtime drehen

Ziel:
- den Restblocker von Runtime-/Port-Hypothesen auf den echten Bridge-Bootstrap verschieben

Ergebnis:
- `doctor_readonly.ps1` wurde so erweitert, dass host-neutrale Probe-Evidence und spaeter auch die read-only Bootstrap-Inspection verwertbar sind
- der fuehrende Blocker wurde belastbar als `ENV_DRIFT` klassifiziert

### Slice B - Redirect-Allowlist als Guardrail einfuehren

Ziel:
- DCR und `/oauth/authorize` nicht mehr gegen beliebige Redirect-URIs akzeptieren

Umgesetzt:
- `tools/mcp-writer/src/config.js`
- `tools/mcp-writer/src/oauth/server.js`
- `tools/mcp-writer/test/oauth-redirect-allowlist.test.mjs`
- `tools/mcp-writer/scripts/railway/inspect_bootstrap_readonly.ps1`
- `tools/mcp-writer/scripts/railway/bridge_readiness_probe.mjs`

Ergebnis:
- `OAUTH_ALLOWED_REDIRECT_URIS` wurde zentrale Guardrail-Variable
- DCR und Authorize failen jetzt geschlossen gegen nicht allowlistete Redirect-URIs
- lokaler OAuth-Guardrail-Smoke lief gruen

### Slice C - Railway-Toolchain auf denselben Contract ziehen

Ziel:
- Deploy-, Doctor-, Inspector- und Upload-Pfad auf dieselbe Bootstrap-Wahrheit bringen

Umgesetzt:
- `tools/mcp-writer/scripts/railway/set_env.ps1`
- `tools/mcp-writer/scripts/railway/deploy.ps1`
- `tools/mcp-writer/scripts/railway/doctor_readonly.ps1`
- `tools/mcp-writer/.dockerignore`

Ergebnis:
- `set_env.ps1` kennt jetzt `OAUTH_ALLOWED_REDIRECT_URIS`
- `deploy.ps1` nutzt denselben Railway-Secret-Fallback wie Doctor und Inspector
- lokale Probe-Artefakte werden nicht in den Docker-Kontext ausgerollt

### Slice D - Live-Enablement in Production

Schrittfolge:

1. Guardrail-Code deployen
2. `OAUTH_ALLOWED_REDIRECT_URIS=https://chat.openai.com/aip/callback` setzen
3. DCR erneut pruefen
4. `OAUTH_DEV_SUBJECT=chatgpt-connector-dev` setzen
5. Full-Auth-Read-Smoke erneut pruefen

Ergebnis:
- DCR ist live wieder gruen
- Full-Auth-Read-Smoke ist live komplett gruen

## 5) Evidence-Ledger

### Vor dem Live-Enablement

- Vollauth-Probe mit leerem Dev-Subject:
  - `tools/mcp-writer/scripts/railway/.artifacts/bridge-readiness/20260318-170626/summary.json`
- DCR blockiert nach Deploy des Hardening-Slices erwartbar an fehlender Allowlist:
  - `tools/mcp-writer/scripts/railway/.artifacts/bridge-readiness/20260318-191002/summary.json`

### Nach Setzen der Redirect-Allowlist

- DCR wieder gruen:
  - `tools/mcp-writer/scripts/railway/.artifacts/bridge-readiness/20260318-191909/summary.json`

### Nach Setzen des Dev-Subject

- Full-Auth inklusive Token, MCP initialize und `list_tree` vollstaendig gruen:
  - `tools/mcp-writer/scripts/railway/.artifacts/bridge-readiness/20260318-192006/summary.json`

### Read-only Bootstrap-Zustand

- `inspect_bootstrap_readonly.ps1` meldet am Ende:
  - `authorizeBootstrapReady = true`
  - keine aktiven Bootstrap-Blocker

## 6) Live-Mutationen

### Deploys

- Code-Deploy fuer das Guardrail-Hardening:
  - `700fdf48-2005-4d13-8adb-e1a59e446bd1`
- Deployment nach Setzen von `OAUTH_ALLOWED_REDIRECT_URIS`:
  - `23094839-5203-4a05-881f-b6608842f7c8`
- Deployment nach Setzen von `OAUTH_DEV_SUBJECT`:
  - `55f4e312-ebb7-4797-94f7-fbfcdb2f4bcd`

### Railway-Variablen

- gesetzt:
  - `OAUTH_ALLOWED_REDIRECT_URIS=https://chat.openai.com/aip/callback`
  - `OAUTH_DEV_SUBJECT=chatgpt-connector-dev`

Nicht in diesem Lauf geaendert:

- `NODE_ENV`
- `OAUTH_JWT_PRIVATE_KEY`

## 7) Aktueller technischer Stand

- Railway-Service: `SUCCESS`
- Health: gruen
- Protected resource / OIDC / OAuth authorization server / JWKS: gruen
- DCR: gruen
- Authorization Code + PKCE: gruen
- Token-Tausch: gruen
- MCP initialize mit Bearer-Token: gruen
- `list_tree`-Read-Smoke: gruen

Kurz gesagt:
- die Bridge ist jetzt technisch live freigeschaltet
- der akute Blocker liegt nicht mehr in Railway oder OAuth-Bootstrap

## 8) Restthemen

- Echte ChatGPT-Custom-App-E2E im Browser-/ChatGPT-Kontext ist noch offen
- `NODE_ENV` fehlt in Production weiterhin
- `OAUTH_JWT_PRIVATE_KEY` ist leer; fuer stabile JWKS-/Signaturidentitaet ueber Restarts hinweg waere ein expliziter Key sinnvoll
- der Dev-Subject-Pfad ist funktional ausreichend, aber weiterhin bewusst ein PR-2-Dev-Bootstrap und kein spaeter geharteter Consent-/Identity-Pfad

## 9) Was aus dieser Session wiederverwendbar ist

- host-neutrale Probe als primaeres Truth-Signal
- read-only Bootstrap-Inspection vor jeder Auth-Mutation
- Railway-Secret-Fallback in jedem mutierenden und nicht mutierenden CLI-Pfad
- schrittweise Mutation:
  - erst Code deployen
  - dann Allowlist
  - dann DCR verifizieren
  - dann Dev-Subject
  - dann Full-Auth-Probe
