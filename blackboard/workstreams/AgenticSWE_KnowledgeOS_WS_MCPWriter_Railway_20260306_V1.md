---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-06
status: draft
audience: [human, llm]
intent: "Workstream-Kapsel für den stabilen Railway-/MCP-Writer-Setup bis zum ersten erfolgreichen Draft-PR."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/write-via-pr
  - topic/github
  - topic/codex
  - topic/gates
  - topic/evidence
---

# Workstream Capsule — WS-MCP-WRITER-RAILWAY

## 1) Ziel (1 Satz)

Den Railway-basierten MCP-Writer so weit stabilisieren, dass aus dem erlaubten Doku-Scope ein kleiner Branch/Commit/Draft-PR über die GitHub App erzeugt werden kann.

## 2) DoD (3 Bulletpoints)

- `POST /mcp` funktioniert mindestens für einen GitHub-Read-Call (`list_tree` oder `read_file`) erfolgreich.
- Danach funktioniert mindestens ein kleiner Write-Flow auf einem erlaubten Pfad (`meta/**`, `handbook/**`, `decisions-adr/**`, `templates-harness/**`).
- Ein Draft-PR kann erzeugt werden, ohne `main`, `.github/workflows/**` oder Secrets zu berühren.

## 3) Scope / Allowlist

**Im Scope**
- `tools/mcp-writer/**`
- `meta/**`
- `handbook/**`
- `decisions-adr/**`
- `templates-harness/**`

**Außerhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- `infra/**`
- `secrets/**`
- `.env*`
- repo-weite Refactors / Cleanups

## 4) Next 3 Thin Slices (PR-Plan)

### Slice 1
GitHub-App-/JWT-Fehler exakt lokalisieren:
- PEM-Einlesung
- Zeilenumbrüche
- JWT-Signierung
- Trennung zwischen `MCP_SHARED_SECRET`-Auth und GitHub-App-JWT

### Slice 2
Read-Smoke-Test grün bekommen:
- `list_tree` auf erlaubtem Pfad
- alternativ `read_file` auf bekannter Doku-Datei

### Slice 3
Write-Smoke-Test grün bekommen:
- Branch erzeugen
- kleine Markdown-Datei auf `meta/`
- Draft-PR öffnen

## 5) Gates / Evidence

- Service Reachability (`/healthz`) grün
- Tool Discovery (`/tools`) grün
- GitHub App JWT / Installation Token grün
- Writer-Policy greift für Allowlist/Blocklist/Limits
- Kein Secret in Commit-Inhalten
- PR-Report Draft vorhanden
- Evidence:
  - Railway Logs
  - Testrequests / Responses
  - ggf. PR-URL

## 6) Risiken / Stop-&-Ask Trigger

- RS256-/asymmetrischer-Key-Fehler deutet auf Auth-/Key-Verarbeitung statt reines Request-Problem.
- Bereits gezeigte Secrets/Bearer-Tokens müssen als potentiell kompromittiert gelten → Rotation einplanen.
- Keine neuen GitHub-App-Permissions hinzufügen, ohne explizite Entscheidung.
- Kein Ausweiten in riskante Pfade nur für schnellere Tests.

## 7) Links

- Entry: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260305_V1.md`
- Status Update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260306_V1.md`
- Repo Status Update Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260305_V1.md`
- Automation / Analysis Plan: `handbook/runbooks/AgenticSWE_KnowledgeOS_AutomationAutonomy_AnalysisPlan_Runbook_20260303_V1.md`
- PR Report Template: `handbook/reference/AgenticSWE_PRReport_Template_Reference_20260303_V1.md`
- WSL / Codex in VS Code How-to: `handbook/runbooks/AgenticSWE_WSLSetup_Windows10_CodexInVSCode_HowTo_20260224_V1.md`
