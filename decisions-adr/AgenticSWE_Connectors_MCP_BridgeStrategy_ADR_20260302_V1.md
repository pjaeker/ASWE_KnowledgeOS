---
project: AgenticSWE_KnowledgeOS
doc_type: adr
version: V1
date: 2026-03-02
status: draft
audience:
  - human
  - llm
intent: "Architekturentscheid: Wie wir bis zum Keystatic-CMS eine skalierende Repo-Integration (Read/Write) mit ChatGPT Apps (Connector/Sync) und optional MCP (Write-via-PR) nutzen, ohne Portal-Overbuild."
tags:
  - layer/handbook
  - artifact/adr
  - topic/knowledge-os
  - topic/ssot
  - topic/governance
  - topic/gate
  - topic/secrets
  - topic/human-approval
---

# ADR: Bridge-Strategie bis Keystatic-CMS – Apps (Connector/Sync) + optional MCP Write-via-PR

## Status

- status: draft
- decision_id: ADR-CONNECTORS-MCP-BRIDGE-20260302

## Kontext

Wir bauen ein Knowledge-OS Repo, das für Mensch und Maschine navigierbar ist (Findability) und Änderungen auditierbar hält (write-via-PR).
Der Engpass ist aktuell nicht fehlender Inhalt, sondern:

1. Kontext- und Quellen-Handling im Chat (Limit / Reibung).
1. Reproduzierbare Read-Navigation (Welche Dateien sind SSOT? Wo stehen Regeln?).
1. Saubere Write-Flows (PRs, Gates, Rollback) ohne „Portal-Overbuild“ vor Keystatic.

Zusätzlicher Kontext aus bestehender Architektur:

- Option B (Portal/Keystatic + Chat writes via PR) existiert bereits als Zielbild und Slices. Der „CMS“-Teil (Keystatic GitHub Mode) benötigt keine OpenAI API. Die Portal-Chat-Integration (`/api/chat`, `/api/pr`) würde eine OpenAI-API-Integration benötigen. (Siehe Option-B-Runbook/Blueprint im Repo.)

## Entscheidung

Wir verfolgen bis Keystatic die folgende Bridge-Strategie:

1. Read-Navigation: GitHub als „App“ in ChatGPT verbinden (Search/Deep Research). Wenn verfügbar und sinnvoll: Sync (Indexing) nutzen, um Reibung zu reduzieren.
1. Write: Standard bleibt „Write-via-PR“ in VS Code (Copilot/Codex) nach Runbook.
1. Optionaler Upgrade-Pfad: Write-via-PR aus ChatGPT heraus über ein **Custom MCP App** (MCP; tool protocol) mit **remote MCP server**, der PRs über GitHub API erzeugt.
1. Portal-Chat (Slice 2/3) bleibt bis Keystatic als eigener Workstream „deferred“, außer es entsteht ein klarer Produktbedarf für „Chat im Portal“.

## Begründung

- Apps/Connector (read) lösen den unmittelbaren Findability-Engpass ohne Portal-Code.
- Write-via-PR bleibt auditierbar und kompatibel mit existierenden Gates (Taxonomie/Glossar/No-Secrets).
- MCP ermöglicht Write-Integration in ChatGPT, aber erhöht Risiko (Prompt-Injection → Tool Call → Wirkung). Daher nur als optionaler, gated Upgrade-Pfad.
- Portal-Chat-Integration über API macht erst Sinn, wenn Keystatic als UI-Schicht steht oder ein echtes Produktfeature „Chat im Portal“ benötigt wird.

## Optionen (vollständig, inkl. Trade-offs)

### Option A — Plus/Pro + Apps (read) + Write in VS Code

- Read: GitHub App/Connector in ChatGPT (search/deep research).
- Write: Copilot/Codex in VS Code erzeugt PRs (thin slice), manuelles Merge.
- Pros:
  - Minimales Engineering.
  - Niedriges Sicherheitsrisiko (keine neue Write-Schnittstelle).
- Cons:
  - Kein Sync (je nach Plan/Region) → mehr Such-Reibung möglich.
  - Write bleibt „Editor-first“, nicht „Chat-first“.

### Option B — Business + Sync + optional MCP Write-via-PR

- Read: Sync (Indexing) reduziert Kontextkosten deutlich.
- Write: MCP App kann PRs erzeugen, aber nur mit strikten Gates.
- Pros:
  - Sehr gute Findability im Chat-UI.
  - Potenzial für „Chat als Arbeitsoberfläche“ ohne eigenes Portal.
- Cons:
  - MCP benötigt remote server und GitHub Auth (GitHub App empfohlen).
  - Höhere Sicherheitsanforderungen (Policy-Enforcer, Allowlist, Limits, Audits).

### Option C — Portal-Chat Integration per OpenAI API (Option-B Slices 2/3)

- Read: `/api/chat` + file_search (vector store).
- Write: `/api/pr` + GitHub App + Write-Gates.
- Pros:
  - Vollständige Kontrolle; kann später Produktfeature werden.
  - Stabiler, deterministischer Gatekeeper in eigener Codebase.
- Cons:
  - Engineering-Aufwand + Betriebskosten (File search storage + tool calls).
  - Secrets/Hosting/RBAC werden früh relevant.

## Konsequenzen

### Kurzfristig (jetzt)

- Wir dokumentieren die Bridge-Strategie als SSOT und routen Workstreams:
  - „Kontext/Findability“ → Apps/Sync.
  - „Write“ → VS Code Write-via-PR.
  - „MCP Write“ → eigener risk-class/b oder c Workstream.

### Mittelfristig

- Wenn Business + MCP gewählt wird:
  - Ein Policy-Enforcer (policy enforcement; deterministic rules) ist Pflicht (Allowlist, Limits, Confirmation, Audit Logs).
  - Branch Protection bleibt zwingend (kein direct push to main).

### Langfristig

- Wenn Portal-Chat ein Produktfeature wird:
  - Option C wird umgesetzt, aber erst nach Keystatic-Slice 1 oder nach explizitem Bedarf.

## Risiken und Stop-&-Ask

- Stop-&-Ask (risk/stop-ask):
  - Änderungen an `.github/workflows/**`, Deploy/Infra, Secrets-Handling.
  - MCP Write ohne erlaubte Policy/Allowlist.
- Hauptrisiko: Prompt-Injection (untrusted text) → falscher Tool Call → unerwünschte Writes.

## Revisit-When

- Wir stoßen regelmäßig an Kontext-/Findability-Limits trotz Apps/Sync.
- Write-via-PR wird zu langsam oder zu fehleranfällig.
- Portal-Chat wird Produktanforderung (nicht nur Dev-Comfort).

## Referenzen (Repo-SSOT)

- Option-B Blueprint: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
- Option-B Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md`
- Write-via-PR How-to: `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
- Preflight Gates Runbook: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`
- Diátaxis Policy: `handbook/reference/AgenticSWE_Docs_Diataxis_Policy_20260226_V2.md`

## Offene Punkte (TODO)

1. Plan-/Feature-Konflikte um „Full MCP“ je Plan in der UI prüfen und hier als Evidence ergänzen.
1. Entscheiden, ob MCP-Write in diesem Repo überhaupt nötig ist oder ob VS Code Write-via-PR bis Keystatic reicht.

## Evidence (External, plan-/feature-abhängig)

Diese Quellen ändern sich gelegentlich. Wenn etwas nicht zu deiner UI passt, gilt: **UI ist Truth**, und wir aktualisieren diese ADR mit Screenshot/Notiz als Evidence.

- Apps in ChatGPT (Plan-Matrix: Search/Deep Research/Sync/Custom MCP): <https://help.openai.com/en/articles/11487775-connectors-in-chatgpt>
- Apps with sync (Indexing): <https://help.openai.com/en/articles/10847137-chatgpt-synced-connectors-faq>
- GitHub in ChatGPT verbinden (read-only, kein Push): <https://help.openai.com/en/articles/11145903-Connecting-connecting-connecting-connecting-connecting>
- Developer mode + MCP apps (write/modify via custom MCP): <https://help.openai.com/en/articles/12584461-developer-mode-and-mcp-apps-in-chatgpt-beta>
- File search pricing (storage + tool calls): <https://openai.com/api/pricing/>
- Data sharing free tokens: Tool-Nutzung ausgeschlossen: <https://help.openai.com/de-de/articles/10306912-sharing-feedback-evaluation-and-fine-tuning-data-and-api-inputs-and-outputs-with-openai>
- Business data: default no-train: <https://openai.com/business-data>
