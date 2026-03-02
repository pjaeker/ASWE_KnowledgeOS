---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-03-02
status: revised
audience:
  - human
  - llm
intent: "Nachschlageblatt: Capability Matrix und Entscheidungshilfen fuer ChatGPT Apps/Connector/Sync/MCP/API sowie Bridge-Varianten (Front Matter, Copilot Instructions)."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/findability
  - topic/governance
  - topic/gate
  - topic/secrets
  - topic/actionability
---

# Reference: Capability Matrix – Apps (Connector), Sync, MCP, API + Repo-Governance

## Terminologie (Stand 2025-12-17)

- „Connectoren“ heissen in ChatGPT inzwischen „Apps“ (unified experience). Quelle: OpenAI Help Center „Apps in ChatGPT“ + „Apps with sync“.

## Quick Use

1. Pruefe zuerst, **was du in deiner UI wirklich siehst** (Chat vs Deep Research vs Sync) – Verfuegbarkeit variiert nach Plan und Region.
2. Nutze die Decision Checklist.
3. Waehle die passende Bridge:
   - Plus/Pro Bridge: Read/Analyse in Chat/Deep Research, Writes lokal via PR.
   - Business Bridge: optional Sync + optional MCP (write/modify via custom connector).
   - Portal-API: eigenes Backend (GitHub App) fuer PR-Erzeugung + Gates.

## Apps/Connectoren: Verfuegbarkeit nach Plan (faktisch)

Quelle: OpenAI Help Center „Connectors in ChatGPT“ (Connector availability by plan).

- Plus: Chat ✅, Deep Research ✅, Sync ❌, Custom (MCP) ✅ (siehe Notes: „full MCP“ = nicht fuer Plus)
- Pro: Chat ✅, Deep Research ✅, Sync ✅, Custom (MCP) ✅
- Business: Chat ✅, Deep Research ✅, Sync ✅, Custom (MCP) ✅ (inkl. full MCP)
- Enterprise/Edu: Chat ✅, Deep Research ✅, Sync ✅ (mit Einschränkungen), Custom (MCP) ✅ (inkl. full MCP)

### Praxis-Notes (Rollout/Region)

- Verfuegbarkeit und einzelne Apps koennen nach Region/Plan variieren; Release Notes dokumentieren Rollouts.
- Einige Apps sind fuer Plus/Pro in EEA/CH/UK zeitweise eingeschraenkt (app-spezifisch).

## Capability Matrix (funktional)

Legende: ✅ möglich/typisch · ⚠️ abhängig von App/Region/Rollout/Policy · ❌ nicht angeboten (Stand der Quellen)

| Fähigkeit | Plus | Pro | Business | Enterprise/Edu | Portal-API (Option B) | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| App/Connector in Chat nutzen | ✅* | ✅* | ✅* | ✅* | n/a | *nur wenn in UI angeboten; pro App unterschiedlich |
| App/Connector in Deep Research nutzen | ✅* | ✅* | ✅* | ✅* | n/a | Deep Research liefert zitierte Antworten; Zitate öffnen in der Quell-App |
| Sync (Indexing) | ❌ | ✅ | ✅ | ✅* | n/a | Enterprise/Edu: Einschränkungen (z.B. Data residency/EKM) möglich |
| GitHub: read/search/cite | ✅* | ✅* | ✅* | ✅* | ✅ (wenn gebaut) | GitHub ist als App mit Chat/Deep Research/Sync gelistet |
| OpenAI-built App/Connector: write/modify | ⚠️ | ⚠️ | ⚠️ | ⚠️ | n/a | OpenAI-built **Connectors** sind „search-only“; „Write“ existiert als App-Kategorie, aber nicht jeder Connector kann schreiben |
| Custom MCP Connector: write/modify Aktionen | ❌ | ⚠️ (read/fetch) | ✅ | ✅ | n/a | Full MCP (write/modify) rollt fuer Business/Enterprise/Edu; Pro kann read/fetch in developer mode |
| Agent mode nutzt custom MCP connectors | ❌ | ❌ | ❌ | ❌ | n/a | Agent mode nutzt keine custom connectors (laut MCP Beta FAQ) |
| Deep Research nutzt custom MCP connectors fuer write | ❌ | ❌ | ❌ | ❌ | n/a | Deep Research: custom apps/connector nur read/fetch (keine write) |
| Writes via PR (manuell in VS Code/CLI) | ✅ | ✅ | ✅ | ✅ | ✅ | Empfehlung: PR-Workflow + Branch protection + Status Checks |
| Writes via PR (Portal) | n/a | n/a | n/a | n/a | ✅ | GitHub REST API „Create pull request“ + GitHub App Auth |
| Copilot Instructions (Repo-Datei) | ✅ | ✅ | ✅ | ✅ | ✅ | `.github/copilot-instructions.md` + optional `.github/instructions/*.instructions.md` |
| Admin Controls (Workspace Apps/Sync/MCP) | ❌ | ❌ | ✅ | ✅ | n/a | Business/Enterprise/Edu Admins steuern Enablement/Sync/Developer Mode |

## Kosten-Referenz (OpenAI API)

- File search storage: $0.10/GB/day (first GB free)
- File search tool calls (Responses API): $2.50/1k calls

## Minimaler Governance-Satz (bewusst konservativ)

- SSOT ist Repo-Datei.
- Writes nur via PR (mit Reviews/Checks).
- Gates + Evidence + Rollback.
- Secrets niemals im Repo (Secret Scanning / Push Protection empfohlen).

## Quellen (primaer)

- OpenAI Help Center: Connectors/App Verfuegbarkeit nach Plan: <https://help.openai.com/en/articles/11487775/>
- OpenAI Help Center: Apps mit Sync: <https://help.openai.com/en/articles/10847137-chatgpt-synced-connectors-faq>
- OpenAI Help Center: Release Notes (Rollouts/Region): <https://help.openai.com/en/articles/6825453-chatgpt-release-notes>
- OpenAI Help Center: Developer mode + MCP apps/connectors (beta): <https://help.openai.com/en/articles/12584461-developer-mode-and-mcp-apps-in-chatgpt-beta>
- OpenAI API Pricing (File Search): <https://openai.com/api/pricing/>
- OpenAI Business data (no-train default fuer Business/API): <https://openai.com/business-data>
- OpenAI Help Center: Data Controls (Plus/Pro/Free default train-on, opt-out): <https://help.openai.com/en/articles/8983130-what-if-i-want-to-keep-my-history-on-but-disable-model-training>
- GitHub Docs: Copilot Instructions: <https://docs.github.com/copilot/customizing-copilot/adding-custom-instructions-for-github-copilot>
- GitHub REST API: Create pull request: <https://docs.github.com/en/rest/pulls/pulls#create-a-pull-request>
- GitHub Apps Auth: <https://docs.github.com/apps/building-github-apps/authenticating-with-github-apps>
- GitHub Docs: Branch protection (Require PR + checks): <https://docs.github.com/articles/enabling-required-reviews-for-pull-requests>
- GitHub Docs: Secret scanning + push protection: <https://docs.github.com/code-security/secret-scanning/working-with-secret-scanning-and-push-protection>
