---
project: ASWE_KnowledgeOS
doc_type: prompt
version: V1
date: 2026-03-09
status: draft
audience:
  - human
  - llm
intent: "Slice-Prompt für Codex: PR-2 implementiert OAuth-/OIDC-Server mit DCR im Railway MCP-Writer."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/oauth
  - topic/dcr
  - topic/railway
  - topic/thin-slice
---

# Slice Prompt — PR-2: OAuth-Server + DCR

```text
Slice-ID: PR-2
Titel: OAuth-Server + Dynamic Client Registration

Ziel:
- im selben Railway-Service einen kleinen OAuth-/OIDC-Server unter /oauth/* bereitstellen
- ChatGPT-Connector-Setup möglichst click-arm machen

In scope:
- tools/mcp-writer/src/oauth/**
- tools/mcp-writer/src/config.js
- tools/mcp-writer/src/server.js
- tools/mcp-writer/.env.example
- tools/mcp-writer/README.md

Out of scope:
- .github/workflows/**
- infra/**
- secrets/**
- .env*
- Policy-Scope-Entscheidungen für Tools (kommen in PR-3)

Technische Leitplanken:
- Zielendpunkte:
  - /oauth/.well-known/openid-configuration
  - /oauth/.well-known/oauth-authorization-server
  - /oauth/authorize
  - /oauth/token
  - /oauth/jwks
  - /oauth/register
- bevorzuge Authorization Code + PKCE
- DCR soll aktiv sein
- Service bleibt möglichst single-service deployment auf Railway
- statische Secrets nicht ins Repo; nur Environment-basierte Konfiguration dokumentieren
- Legacy Shared Secret nicht mehr als primäres Modell für ChatGPT behandeln

DoD:
1. OAuth-/OIDC-Metadata ist abrufbar
2. Registration Endpoint ist vorhanden
3. Token Endpoint und Authorize Endpoint sind im Code klar verdrahtet
4. .env.example dokumentiert nur Platzhalter, keine Secrets
5. README beschreibt den OAuth-Basisablauf knapp und korrekt

Erwarteter Output von Codex:
- PATCH-SPEC
- FILES TOUCHED
- PLANNED DIFF
- VERIFY / GATES
- PR-REPORT-DRAFT
- NEXT THIN SLICE = PR-3

Verify-Ideen:
- curl auf /oauth/.well-known/openid-configuration
- curl auf /oauth/register (oder dokumentierter DCR-Smoke)
- Plausibilitätsprüfung der in Metadata beworbenen URLs
- git diff --name-only
- changed-files lint für README / .env.example / Doku

Wichtig:
- keine UI-lastigen Klick-Annahmen
- keine OAuth-Provider-Auslagerung auf Railway als Managed Service annehmen
- DCR pragmatisch, CIMD kann später folgen
```
