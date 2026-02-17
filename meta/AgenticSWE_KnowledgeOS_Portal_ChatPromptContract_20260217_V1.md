---
project: AgenticSWE_KnowledgeOS
doc_type: policy
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Prompt-Contract für Portal-Chat: Read-only by default, Write nur via PR mit Write-Gates."
tags:
  - layer/handbook
  - artifact/policy
  - topic/governance
  - topic/ssot
  - topic/gate
  - topic/hardgates
---

# Portal Chat Prompt-Contract (V1)

## Prinzipien
- **SSOT:** Repo-Dateien sind Wahrheit.
- **Read-only Default:** Chat darf Inhalte erklären/finden, aber nicht direkt schreiben.
- **Write nur via PR:** Wenn Schreiben nötig ist, erzeugt Chat *Patch/Diff* + PR-Report.

## Tool-Policy (Tool policy, enforced rules)
- Lesen: `file_search` / Repo-Read APIs.
- Schreiben: nur `/api/pr` mit:
  - Allowlist-Pfaden
  - Blocklist
  - Diff/Size Limits
  - PR-Report Pflicht

## Output-Kontrakt
- Immer: Risk Class, Files touched, Gates to run, Rollback.
- Bei Risiko (z. B. `.github/workflows/**`): Stop-&-Ask.
