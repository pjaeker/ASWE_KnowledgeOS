---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-09
status: draft
audience:
  - human
  - llm
intent: "Kurzcheckliste: Vor Übergabe eines OAuth-first MCP-Writer-Slices an Codex schnell prüfen, ob Scope, Gates und Deliverables sauber gesetzt sind."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/gate
  - topic/evidence
  - topic/oauth
  - risk/stop-ask
---

# Referenz: Codex Handover Checkliste

## 1) Slice gewählt?

- [ ] `PR-1` Transport + OAuth-Discovery
- [ ] `PR-2` OAuth-Server + DCR
- [ ] `PR-3` Scopes + Policy
- [ ] `PR-4` Railway-Automation + Smoke

## 2) Pflichtkontext beigelegt?

- [ ] `handbook/howto/AgenticSWE_MCPWriter_OAuth_Codex_Handover_HowTo_20260309_V1.md`
- [ ] `prompts/ASWE_MCPWriter_OAuth_MasterPrompt_20260309_V1.md`
- [ ] passender Slice-Prompt aus `prompts/`
- [ ] diese Checkliste

## 3) Workstream klar benannt?

- [ ] `WS-ID: WS-MCP-WRITER-RAILWAY`
- [ ] Slice-ID explizit benannt
- [ ] Ziel in 1 Satz formuliert

## 4) Scope sauber?

- [ ] Allowed files sind konkret benannt
- [ ] Forbidden files sind explizit benannt
- [ ] `.github/workflows/**` ausgeschlossen
- [ ] `infra/**` ausgeschlossen
- [ ] `secrets/**` ausgeschlossen
- [ ] `.env*` ausgeschlossen

## 5) Sicherheitsinvarianten klar?

- [ ] No-Secrets-in-Repo bleibt hart
- [ ] Writer bleibt einziger PR-Erzeuger
- [ ] kein Direkt-Write auf `main`
- [ ] Policy-Enforcer wird nicht aufgeweicht
- [ ] Stop-&-Ask Trigger benannt

## 6) Erwarteter Output von Codex klar?

- [ ] Patch-Spec
- [ ] Files touched
- [ ] Planned diff
- [ ] Verify / Gates
- [ ] PR-Report-Draft
- [ ] Next thin slice

## 7) Verify-Pfad klar?

- [ ] `git diff --name-only`
- [ ] changed-files lint für geänderte Markdown-Dateien
- [ ] No-Secrets quickscan auf Diff
- [ ] technischer Smoke-Test passend zum Slice benannt

## 8) Vor dem Abschicken an Codex

- [ ] keine echten Tokens / Secrets im Prompt
- [ ] keine unnötig breite Dateiliste
- [ ] keine Mehrfach-Slices in einem Auftrag
- [ ] konservative Default-Annahmen sind erlaubt

## Copy/Paste Kurzversion

```text
WS-ID: WS-MCP-WRITER-RAILWAY
Slice-ID: <PR-1 | PR-2 | PR-3 | PR-4>

Lies zuerst:
- handbook/howto/AgenticSWE_MCPWriter_OAuth_Codex_Handover_HowTo_20260309_V1.md
- prompts/ASWE_MCPWriter_OAuth_MasterPrompt_20260309_V1.md
- prompts/<passender Slice-Prompt>.md
- handbook/reference/AgenticSWE_Codex_HandoverChecklist_20260309_V1.md

Arbeite in PLAN -> CHANGE -> VERIFY -> DELIVER.
Keep diffs small.
Keine `.github/workflows/**`, keine Secrets, kein zweiter PR-Pfad.
```
