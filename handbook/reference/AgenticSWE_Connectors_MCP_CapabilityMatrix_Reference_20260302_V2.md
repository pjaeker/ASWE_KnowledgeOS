---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-02
status: draft
audience:
  - human
  - llm
intent: "Nachschlageblatt: Capability Matrix und Entscheidungshilfen fuer ChatGPT Connector/Sync/MCP/API sowie Bridge-Varianten (Front Matter, Copilot Instructions). Explizit: Connector-Nutzung in Plus vs Business (Chat vs Deep Research vs Sync)."
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

# Reference: Capability Matrix – Connector/Sync/MCP/API + Front Matter + Copilot Instructions

## Quick Use

- Wenn du nur 2 Minuten hast:
  1. Pruefe „Was sehe ich in meiner UI?“ (Chat vs Deep Research vs Sync).
  1. Nutze „Decision Checklist“.
  1. Waehle eine Strategie: Plus-Bridge, Business-Bridge, Portal-API.

## Connector-Nutzung pro Plan (explizit)

Laut Plan-Matrix gilt:

- Plus: Connectoren in **Chat** und **Deep Research**, aber **kein Sync**.
- Business: Connectoren in **Chat** und **Deep Research** plus **Sync**.

In der Praxis gilt zusätzlich:

- Connectoren/Modi koennen je nach Connector und Rollout unterschiedlich erscheinen.
- Release Notes dokumentieren Rollouts/Regionen; deshalb: **UI ist Truth**.

## Capability Matrix (funktional)

| Fähigkeit | Plus | Business | Portal-API (Option B Slices 2/3) | Notes |
| --- | --- | --- | --- | --- |
| Connector in Chat nutzen | ✅ (wenn UI anbietet) | ✅ | n/a | Connector ggf. separat fuer Chat aktivieren. |
| Connector in Deep Research nutzen | ✅ (wenn UI anbietet) | ✅ | n/a | Deep Research liefert Reports, Quelle oft manuell. |
| Sync (Indexing) | ❌ | ✅ | n/a | Sync ermoeglicht automatische Referenzen. |
| Repo read/search/cite (GitHub) | ✅ | ✅ | ✅ (wenn gebaut) | GitHub Connector: Suche + Zitate. |
| Write/Modify via OpenAI-built App | ❌ | ❌ | n/a | Built-in Apps sind search-only. |
| Write-via-PR (manuell in VS Code) | ✅ | ✅ | ✅ | Governance bleibt gleich. |
| Write-via-PR aus ChatGPT (MCP) | ⚠️ feature/plan | ✅ | n/a | Remote MCP server + Policy-Enforcer. |
| Write-via-PR im Portal | n/a | n/a | ✅ | `/api/pr` + GitHub App + Gates. |
| Front Matter (VS Code Mini-CMS) | ✅ | ✅ | n/a | Lokal, hilft Navigation + Frontmatter. |
| Copilot Instructions | ✅ | ✅ | ✅ | Steuert Copilot/Codex, reduziert Diff-Noise. |
| Admin Controls (Workspace Apps) | ❌ | ✅ | n/a | Business Admins steuern Apps/Sync. |
| „Nicht trainieren“ default | ⚠️ setting | ✅ | ✅ | Business/API default no-train. |

Legende:

- ✅: möglich/typisch
- ⚠️: abhängig von UI/Region/Feature-Rollout

## Decision Checklist (kurz)

1. Siehst du Connectoren in **Chat** in deiner UI?
   - Ja → nutze sie als Standard-Read-Navigation.
   - Nein → nutze Deep Research/Agent (falls vorhanden) oder Business erwägen.

2. Brauchst du **Sync** (Indexing), weil Findability zu schmerzhaft ist?
   - Ja → Business (wenn Sync angeboten).
   - Nein → Plus reicht.

3. Soll **Chat PRs erzeugen**?
   - Ja → MCP (remote server) oder Portal-API.
   - Nein → Write-via-PR in VS Code bleibt Standard.

4. Brauchst du „Portal-Feeling“ vor Keystatic?
   - Ja → Front Matter Mini-CMS.
   - Nein → Explorer + RepoMeaningMap reicht.

## Kosten-Referenz (API file_search)

- File search storage: $0.10/GB/day (first GB free)
- File search tool calls: $2.50/1k calls

Hinweis:

- Data sharing free tokens kompensieren Tool-Nutzung nicht.

## Minimaler Governance-Satz (immer gleich)

- SSOT ist Repo-Datei.
- Writes nur via PR.
- Gates + Evidence + Rollback.
- Secrets niemals im Repo.

## Sources (External)

- Connectors Plan-Matrix + Nutzung: <https://help.openai.com/en/articles/11487775-connectors-in-chatgpt>
- Synced Connectors FAQ: <https://help.openai.com/en/articles/10847137-chatgpt-synced-connectors-faq>
- Release Notes (Rollouts/Region): <https://help.openai.com/en/articles/6825453-chatgpt-release-notes>
- Developer mode + MCP: <https://help.openai.com/en/articles/12584461-developer-mode-and-mcp-apps-in-chatgpt-beta>
- Pricing (File search): <https://openai.com/api/pricing/>
