---
project: ASWE_KnowledgeOS
doc_type: prompt
version: V1
date: 2026-03-09
status: draft
audience:
  - human
  - llm
intent: "Slice-Prompt für Codex: PR-3 verheiratet OAuth-Scopes mit dem bestehenden Writer-Policy-Enforcer."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/oauth
  - topic/policy
  - topic/mcp
  - topic/thin-slice
---

# Slice Prompt — PR-3: Scopes + Policy

```text
Slice-ID: PR-3
Titel: Scopes + Policy-Enforcer verheiraten

Ziel:
- OAuth schützt den Zugang zum MCP-Server
- der bestehende Policy-Enforcer schützt weiterhin Repo, Pfade und Diff-Fläche

In scope:
- tools/mcp-writer/src/auth/**
- tools/mcp-writer/src/mcp/tools.js
- tools/mcp-writer/src/policy/**
- tools/mcp-writer/src/report/pr-report.js
- tools/mcp-writer/policy.json
- tools/mcp-writer/README.md

Out of scope:
- .github/workflows/**
- infra/**
- secrets/**
- .env*
- Railway-Automation (kommt in PR-4)

Technische Leitplanken:
- führe mindestens diese Scopes ein:
  - mcp.read
  - mcp.write
- Tool-Mapping:
  - read_file, list_tree -> mcp.read
  - create_branch, commit_files, open_pr -> mcp.write
- bestehende Repo-/Pfad-Policy nicht aufweichen
- Blocklist bleibt aktiv:
  - .github/workflows/**
  - **/.env*
  - secrets/**
  - infra/**
- Limits bleiben aktiv oder werden explizit dokumentiert
- PR-Report-Struktur serverseitig weiter erzwingen, wenn bereits vorhanden

DoD:
1. Read-Tools verlangen mcp.read
2. Write-Tools verlangen mcp.write
3. Policy blockiert riskante Pfade weiterhin
4. Secret-Pattern Quickscan bleibt erhalten
5. README beschreibt knapp die Trennung AuthN/AuthZ vs Policy

Erwarteter Output von Codex:
- PATCH-SPEC
- FILES TOUCHED
- PLANNED DIFF
- VERIFY / GATES
- PR-REPORT-DRAFT
- NEXT THIN SLICE = PR-4

Verify-Ideen:
- kleiner Scope-Smoke auf Read vs Write
- Negativtest gegen blockierten Pfad
- git diff --name-only
- changed-files lint für Doku / policy-nahe Markdown-Dateien

Wichtig:
- OAuth ersetzt nicht die Writer-Policy
- Writer bleibt einziger PR-Erzeuger
- kein zweiter Schreibpfad über Codex oder andere Tools
```
