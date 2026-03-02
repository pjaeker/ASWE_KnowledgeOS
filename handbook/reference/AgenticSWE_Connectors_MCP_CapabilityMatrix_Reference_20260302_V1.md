---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-02
status: draft
audience:
  - human
  - llm
intent: "Nachschlageblatt: Capability Matrix und Entscheidungshilfen für ChatGPT Apps (Connector/Sync) und MCP (Write) im Vergleich Plus vs Business vs API-Portal."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/findability
  - topic/governance
  - topic/gate
  - topic/secrets
---

# Reference: Capability Matrix – Apps/Connector, Sync, MCP, API-Portal

## Quick Use

- Wenn du nur 2 Minuten hast:
  1. Nutze „Decision Checklist“.
  1. Wähle eine der 3 Strategien: Plus-Bridge, Business-Bridge, Portal-API.

## Capability Matrix (funktional)

| Fähigkeit | Plus | Business | Portal-API (Option B Slices 2/3) | Notes |
| --- | --- | --- | --- | --- |
| Repo read/search/cite (GitHub App) | ✅ | ✅ | ✅ | Portal-API benötigt eigene Implementierung. |
| Deep research mit Repo | ✅ | ✅ | ✅ (wenn gebaut) | UI/Verfügbarkeit planabhängig. |
| Sync (Indexing) | ⚠️ oft nein | ✅ | n/a | Sync ist in ChatGPT UI verfügbar oder nicht. |
| Write/Modify via OpenAI-built App | ❌ | ❌ | n/a | Built-in Apps sind search-only. |
| Write-via-PR (manuell in VS Code) | ✅ | ✅ | ✅ | Governance bleibt gleich. |
| Write-via-PR aus ChatGPT (MCP) | ⚠️ plan/feature abhängig | ✅ | n/a | Benötigt remote MCP server. |
| Write-via-PR im Portal | n/a | n/a | ✅ | `/api/pr` + GitHub App + Gates. |
| Admin Controls (Workspace Apps) | ❌ | ✅ | n/a | Business Admins steuern Apps. |
| „Nicht trainieren“ default | ⚠️ opt-in/setting | ✅ | ✅ | Business/API sind default no-train. |

Legende:

- ✅: möglich/typisch
- ⚠️: abhängig von UI/Region/Feature-Rollout
- ❌: nicht vorgesehen

## Decision Checklist (kurz)

1. Willst du „Chat“ als primäre Repo-Navigation?
   - Ja → Business-Bridge ist oft sinnvoll.
   - Nein → Plus reicht oft.

2. Willst du, dass Chat PRs erzeugt (Write)?
   - Ja → MCP (remote server) oder Portal-API.
   - Nein → Write-via-PR in VS Code bleibt Standard.

3. Ist „Chat im Portal“ ein Produktfeature?
   - Ja → Portal-API (Slices 2/3) planen.
   - Nein → Business-Bridge reicht als Dev-UI.

4. Ist Sicherheit/Compliance ein Treiber?
   - Ja → Business/API default no-train, plus zusätzliche Workspace-Kontrollen.

## Kosten-Referenz (API file_search)

- File search storage: $0.10/GB/day (first GB free)
- File search tool calls: $2.50/1k calls

Hinweis:

- Free-tokens-Programme durch Data Sharing kompensieren Tool-Nutzung nicht.

## Minimaler Governance-Satz (immer gleich)

- SSOT ist Repo-Datei.
- Writes nur via PR.
- Gates + Evidence + Rollback.
- Secrets niemals im Repo.

## See also

- Explanation: `handbook/explanation/AgenticSWE_Connectors_MCP_PlusBusiness_Explanation_20260302_V1.md`
- How-to: `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V1.md`
- ADR: `decisions-adr/AgenticSWE_Connectors_MCP_BridgeStrategy_ADR_20260302_V1.md`

## Sources (External)

- Apps in ChatGPT (Plan-Matrix): <https://help.openai.com/en/articles/11487775-connectors-in-chatgpt>
- GitHub App in ChatGPT (read-only): <https://help.openai.com/en/articles/11145903-Connecting-connecting-connecting-connecting-connecting>
- File search pricing (storage + tool calls): <https://openai.com/api/pricing/>
- Data sharing free tokens: Tool-Nutzung ausgeschlossen: <https://help.openai.com/de-de/articles/10306912-sharing-feedback-evaluation-and-fine-tuning-data-and-api-inputs-and-outputs-with-openai>
