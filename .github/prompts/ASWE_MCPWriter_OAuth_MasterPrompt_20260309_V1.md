---
project: ASWE_KnowledgeOS
doc_type: prompt
version: V1
date: 2026-03-09
status: draft
audience:
  - human
  - llm
intent: "Master-Prompt für Codex: OAuth-first Umbau des Railway MCP-Writers in kleinen, reviewbaren Slices mit PLAN/CHANGE/VERIFY/DELIVER."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/oauth
  - topic/mcp
  - topic/railway
  - topic/evidence
  - risk/stop-ask
---

# Master Prompt — MCP-Writer OAuth-first

> Diesen Prompt in Codex einfügen und nur die Platzhalter ersetzen.

```text
Du arbeitest im Repo ASWE_KnowledgeOS.

Aktiver Workstream:
- WS-ID: WS-MCP-WRITER-RAILWAY
- Slice-ID: <PR-1 | PR-2 | PR-3 | PR-4>

Lies zuerst:
1. handbook/howto/AgenticSWE_MCPWriter_OAuth_Codex_Handover_HowTo_20260309_V1.md
2. handbook/reference/AgenticSWE_Codex_HandoverChecklist_20260309_V1.md
3. <passender Slice-Prompt aus prompts/>

Ziel:
- MCP-Writer auf OAuth-first umbauen
- offizieller MCP-Transport statt dünnem Legacy-JSON-Broker als Zielbild
- Railway-Deployment möglichst CLI-basiert
- Writer bleibt einziger PR-Erzeuger

Arbeitsmodus:
- arbeite in PLAN -> CHANGE -> VERIFY -> DELIVER
- keep diffs small
- changed-files first
- read-first bei Unsicherheit
- keine Halluzination von Pfaden oder APIs

Allowed files:
<konkrete Dateiliste oder Pfadpräfixe>

Forbidden files:
- .github/workflows/**
- infra/**
- secrets/**
- .env*
- repo-weite Refactors

Harte Regeln:
- keine Secrets im Repo
- keine Lockerung der Writer-Policy
- keine Erweiterung in riskante Pfade
- kein zweiter PR-Pfad
- kein Direkt-Write auf main
- Stop-&-Ask bei Deploy-Rechten, CI-Änderungen, Secrets, riskanter Allowlist-Erweiterung

Outputformat:
1. PATCH-SPEC
2. FILES TOUCHED
3. PLANNED DIFF
4. VERIFY / GATES
5. PR-REPORT-DRAFT
6. NEXT THIN SLICE

PATCH-SPEC:
- Ziel dieses Slices
- betroffene Dateien
- warum genau diese Dateien
- was bewusst nicht geändert wird

FILES TOUCHED:
- liste exakt die Dateien auf

PLANNED DIFF:
- pro Datei 2–6 Stichpunkte
- keine globalen Refactors

VERIFY / GATES:
- git diff --name-only
- markdownlint / cSpell für changed docs
- No-Secrets quickscan auf Diff
- ggf. technischer Smoke-Test passend zum Slice

PR-REPORT-DRAFT:
- Summary
- Scope / Files touched
- Motivation / Why
- Risk class
- Gates executed (evidence)
- Rollback
- Next thin slice

NEXT THIN SLICE:
- genau ein nächster sinnvoller Slice

Wenn Informationen fehlen:
- mache nur konservative Annahmen
- markiere Annahmen explizit
- bevorzuge kleine, sichere Änderungen statt großer Umbauten
```

## Mini-Hinweis

Wenn du an Codex delegierst, gib zusätzlich den passenden Slice-Prompt mit. Der Master-Prompt allein reicht als Rahmen, aber der Slice-Prompt enthält die konkrete technische Schneidung.
