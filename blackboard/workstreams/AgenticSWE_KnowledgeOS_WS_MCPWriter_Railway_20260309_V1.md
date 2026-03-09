---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-09
status: draft
audience: [human, llm]
intent: "High-version Workstream-Kapsel für den nun technisch grünen Railway-/MCP-Writer nach erfolgreichem Bash-E2E-Test bis zum Draft-PR."
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

Den Railway-basierten MCP-Writer stabil als PR-only-Schreibpfad betreiben und seinen erreichten grünen Stand für Read/Write/Draft-PR dokumentiert absichern.

## 2) DoD (3 Bulletpoints)

- Der Writer besteht Read-Smokes (`list_tree` oder `read_file`) und den Write-Flow (`create_branch`, `commit_files`, `open_pr`) erfolgreich.
- Ein kleiner Draft-PR auf Allowlist-Pfad ist per Bash/CLI end-to-end validiert.
- Der Writer bleibt auf sichere Pfade und PR-only-Governance begrenzt; `.github/workflows/**`, Secrets und riskante Scope-Erweiterungen bleiben gesperrt.

## 3) Scope / Allowlist

**Im Scope**
- `tools/mcp-writer/**`
- `meta/**`
- `handbook/**`
- `decisions-adr/**`
- `templates-harness/**`
- `blackboard/**`

**Außerhalb des Scopes / Stop-&-Ask**
- `.github/workflows/**`
- `infra/**`
- `secrets/**`
- `.env*`
- Repo-weite Refactors / Cleanups

## 4) Next 3 Thin Slices (PR-Plan)

### Slice 1
Status-/Evidence-Artefakte nachziehen:
- RepoStatusUpdate high-versionieren
- Handoff neu auf Bridge-Fokus schneiden
- Writer-Workstream als technisch grün markieren

### Slice 2
Codex-/Handover-Paket ins Repo legen:
- HowTo
- Checkliste
- Prompt-Dateien für `.github/prompts/`
- kleiner docs-only PR

### Slice 3
Writer nur noch gezielt nachschärfen:
- OAuth-/MCP-Transport-Umbau im neuen Bridge-Workstream unterstützen
- keine neuen Features mehr im Writer ohne direkten Bridge-Bezug
- Legacy Shared-Secret nur als Rollback-/Übergangspfad behandeln

## 5) Gates / Evidence

- Service Reachability (`/healthz`) grün
- Tool Discovery (`/tools`) grün
- GitHub App JWT / Installation Token grün
- Branch/Commit/PR-Flow grün
- Writer-Policy greift für Allowlist/Blocklist/Limits
- Kein Secret in Commit-Inhalten
- Evidence:
  - erfolgreiche Bash-Smokes
  - erfolgreicher Draft-PR-Test
  - funktionierende GitHub-App-Authentifizierung nach Key-/RS256-Fix

## 6) Risiken / Stop-&-Ask Trigger

- Exponierte Test-Secrets oder Bearer-Tokens gelten weiterhin als potentiell kompromittiert und sollten rotiert werden.
- Kein Scope-Creep in `.github/workflows/**` oder riskante Pfade nur aus Bequemlichkeit.
- Kein zweiter Write-Pfad neben dem Writer.
- Keine neuen GitHub-App-Permissions ohne explizite Entscheidung.

## 7) Links

- Vorherige Writer-Kapsel: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260306_V1.md`
- Status Update: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260309_V1.md`
- Bridge-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`
- Repo Status Update Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260305_V1.md`
- PR Report Template: `handbook/reference/AgenticSWE_PRReport_Template_Reference_20260303_V1.md`
