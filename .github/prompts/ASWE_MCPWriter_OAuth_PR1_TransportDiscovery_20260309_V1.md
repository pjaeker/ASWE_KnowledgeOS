---
project: ASWE_KnowledgeOS
doc_type: prompt
version: V1
date: 2026-03-09
status: draft
audience:
  - human
  - llm
intent: "Slice-Prompt für Codex: PR-1 implementiert MCP-Transport + OAuth-Discovery für den Railway MCP-Writer."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/oauth
  - topic/mcp
  - topic/railway
  - topic/thin-slice
---

# Slice Prompt — PR-1: Transport + OAuth-Discovery

```text
Slice-ID: PR-1
Titel: MCP-Transport + OAuth-Discovery

Ziel:
- den Railway MCP-Writer so erweitern, dass ChatGPT ihn als OAuth-geschützten MCP-Server erkennen kann
- Discovery-Deadlock "Unauthorized" im frühen Connector-Setup auflösen

In scope:
- tools/mcp-writer/src/server.js
- tools/mcp-writer/src/config.js
- tools/mcp-writer/src/mcp/**
- tools/mcp-writer/src/oauth/protected-resource.js
- tools/mcp-writer/README.md

Out of scope:
- .github/workflows/**
- infra/**
- secrets/**
- .env*
- vollständiger OAuth-Flow (kommt in PR-2)

Technische Leitplanken:
- Zielbild ist offizieller MCP-Transport über SSE oder streaming HTTP
- /healthz soll erhalten bleiben
- optional /tools als Legacy-Debug behalten, aber nicht als primärer Discovery-Mechanismus behandeln
- implementiere /.well-known/oauth-protected-resource
- unauthenticated Zugriff auf die geschützte MCP-Ressource soll 401 + WWW-Authenticate liefern
- Protected-Resource-Metadata soll auf denselben Service unter /oauth verweisen
- AUTH_MODE darf auf oauth vorbereiten, aber Legacy-Rollback kann zunächst bestehen bleiben

DoD:
1. /.well-known/oauth-protected-resource existiert
2. 401-Antwort enthält WWW-Authenticate mit Verweis auf Resource Metadata
3. Serverstruktur ist auf offiziellen MCP-Transport vorbereitet oder nutzt ihn bereits
4. /healthz bleibt grün
5. README beschreibt kurz die neuen Discovery-/Auth-Endpunkte

Erwarteter Output von Codex:
- PATCH-SPEC
- FILES TOUCHED
- PLANNED DIFF
- VERIFY / GATES
- PR-REPORT-DRAFT
- NEXT THIN SLICE = PR-2

Verify-Ideen:
- curl auf /.well-known/oauth-protected-resource
- curl auf geschützte MCP-Route ohne Token -> 401 + Header
- git diff --name-only
- changed-files lint auf README / Markdown

Wichtig:
- keine OAuth-UI bauen
- keine Client-Secrets im Repo
- noch keine Scopes durchziehen, nur Transport + Discovery-Basis
```
