---
project: ASWE_KnowledgeOS
doc_type: prompt
version: V1
date: 2026-03-09
status: draft
audience:
  - human
  - llm
intent: "Slice-Prompt für Codex: PR-4 automatisiert Railway-Variablen, Deploy und Smoke-Tests für den OAuth-first MCP-Writer."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/railway
  - topic/deploy
  - topic/oauth
  - topic/thin-slice
---

# Slice Prompt — PR-4: Railway-Automation + Smoke

```text
Slice-ID: PR-4
Titel: Railway-CLI-Automation + Smoke

Ziel:
- OAuth-first MCP-Writer reproduzierbar per Railway CLI deployen
- Variablen und Smoke-Tests möglichst ohne Dashboard-Klicks abbilden

In scope:
- tools/mcp-writer/scripts/railway/**
- tools/mcp-writer/scripts/dev/**
- tools/mcp-writer/README.md
- tools/mcp-writer/.env.example
- handbook/howto/AgenticSWE_MCPWriter_OAuth_Codex_Handover_HowTo_20260309_V1.md (nur wenn kleiner Nachtrag nötig)

Out of scope:
- .github/workflows/**
- infra/**
- secrets/**
- echte Secret-Werte
- zusätzlicher Railway-Service ohne klare Notwendigkeit

Technische Leitplanken:
- bevorzuge railway CLI
- skripte sollen Variablen nur per stdin / Environment verarbeiten, nicht als Klartext-Datei
- deploy via Subdirectory / path-as-root vorbereiten
- Smoke-Skripte für:
  - protected resource metadata
  - OIDC metadata
  - optional DCR
  - token flow / read smoke
- README soll den CLI-first Ablauf knapp dokumentieren

DoD:
1. set_env.sh oder äquivalent dokumentiert variable set via CLI
2. deploy.sh oder äquivalent dokumentiert railway up via Subdirectory
3. smoke_oauth.sh oder äquivalent prüft die wichtigsten OAuth-/Discovery-Endpunkte
4. README erklärt den CLI-first Ablauf nachvollziehbar
5. keine Secrets im Repo, keine Copy/Paste von echten Werten

Erwarteter Output von Codex:
- PATCH-SPEC
- FILES TOUCHED
- PLANNED DIFF
- VERIFY / GATES
- PR-REPORT-DRAFT
- NEXT THIN SLICE = Status-/Handover-Update oder E2E ChatGPT App Test

Verify-Ideen:
- Shell-Syntax-Plausibilitätsprüfung
- git diff --name-only
- changed-files lint auf README / Markdown
- No-Secrets quickscan auf Diff

Wichtig:
- Railway bietet Infrastruktur, aber keinen gemanagten OAuth-Server für eure App
- Skripte dürfen nur Platzhalter / sichere Patterns dokumentieren
- Ziel ist weniger Klick-Arbeit, nicht null Nachdenken
```
