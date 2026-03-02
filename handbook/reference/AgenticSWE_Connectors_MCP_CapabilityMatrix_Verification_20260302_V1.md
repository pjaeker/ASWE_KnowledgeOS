---
project: AgenticSWE_KnowledgeOS
doc_type: audit_report
version: V1
date: 2026-03-02
scope: "Verification of AgenticSWE_Connectors_MCP_CapabilityMatrix_Reference_20260302_V2.md"
source_file: "AgenticSWE_Connectors_MCP_CapabilityMatrix_Reference_20260302_V2.md"
---

# Verification Report – Capability Matrix V2 (Connector/Sync/MCP/API)

Ziel: Jede **faktische** Aussage aus V2 wird verifiziert oder als (a) Empfehlung, (b) Annahme/Inference oder (c) unverifiziert markiert.

## Quellen (extern, primaer)

- OpenAI Help: Connectors in ChatGPT (Plan-Matrix + GitHub/Sync List): <https://help.openai.com/en/articles/11487775/>
- OpenAI Help: Apps with sync (Synced connectors FAQ): <https://help.openai.com/en/articles/10847137-chatgpt-synced-connectors-faq>
- OpenAI Help: Developer mode + MCP apps/connectors (beta): <https://help.openai.com/en/articles/12584461-developer-mode-and-mcp-apps-in-chatgpt-beta>
- OpenAI Help: Release Notes (Rollouts/Region/Connector notes): <https://help.openai.com/en/articles/6825453-chatgpt-release-notes>
- OpenAI Pricing: File Search: <https://openai.com/api/pricing/>
- OpenAI Business data: no-train default (Business/API): <https://openai.com/business-data>
- OpenAI Help: Data Controls (Plus/Pro/Free default; opt-out): <https://help.openai.com/en/articles/8983130-what-if-i-want-to-keep-my-history-on-but-disable-model-training>
- GitHub Docs: Copilot instructions files: <https://docs.github.com/copilot/customizing-copilot/adding-custom-instructions-for-github-copilot>
- GitHub Docs: Branch protection (require PR): <https://docs.github.com/articles/enabling-required-reviews-for-pull-requests>
- GitHub Docs: Secret scanning/push protection: <https://docs.github.com/code-security/secret-scanning/working-with-secret-scanning-and-push-protection>

## Ergebnisse (V2 – Statement-by-statement)

Legende: ✅ Verified · ◑ Partially (needs nuance) · ❌ Unverified/Incorrect · 🧭 Recommendation (no external truth claim) · 🔎 Inference (supported but not explicitly stated)

| Bereich | Aussage (aus V2, paraphrasiert) | Typ | Status | Referenz | Befund / Korrektur |
| --- | --- | --- | --- | --- | --- |
| Connector-Nutzung pro Plan | Plus: Chat + Deep Research, kein Sync | Fakt | ✅ | OpenAI Help „Connectors in ChatGPT“ | Stimmt; Plan-Matrix zeigt Plus: Chat ✔, Deep Research ✔, Synced „-“ |
| Connector-Nutzung pro Plan | Business: Chat + Deep Research + Sync | Fakt | ✅ | OpenAI Help „Connectors in ChatGPT“ | Stimmt; Business: Synced ✔ |
| Praxis | Connectoren/Modi erscheinen je nach Rollout/Region unterschiedlich | Fakt | ✅ | Release Notes + Apps/Connectors Artikel | Rollouts/Region restrictions werden dokumentiert; Verfügbarkeit variiert |
| Praxis | „UI ist Truth“ als Regel | Empfehlung | 🧭 | (abgeleitet) | Als Vorgehensregel sinnvoll; keine harte Fakt-Aussage |
| Matrix: Chat | „Connector in Chat nutzen“ für Plus/Business möglich | Fakt | ✅ | OpenAI Help „Connectors in ChatGPT“ | Stimmt, sofern App in UI verfügbar |
| Matrix: DR | „Connector in Deep Research nutzen“ für Plus/Business möglich | Fakt | ✅ | OpenAI Help „Connectors in ChatGPT“ | Stimmt |
| Notes DR | „Quelle oft manuell“ | Fakt | ❌ | OpenAI Help „Connectors in ChatGPT“ | In Doku: Antworten haben Zitate; Zitate öffnen Quelle. „oft manuell“ nicht belegt → streichen |
| Matrix: Sync | Sync: Plus ❌, Business ✅ | Fakt | ✅ | OpenAI Help „Connectors in ChatGPT“ + Sync FAQ | Stimmt |
| Notes Sync | Sync „ermoeglicht automatische Referenzen“ | Fakt | ◑ | Sync FAQ | Sync indexiert vorab; ChatGPT kann automatisch entscheiden, wann es sucht. „Automatische Referenzen“ als Effekt ok, aber besser als „automatische Nutzung + schneller“ formulieren |
| Matrix: GitHub | GitHub read/search/cite für Plus/Business | Fakt | ✅ | OpenAI Help „Connectors in ChatGPT“ | GitHub ist als App/Connector gelistet (Chat/Deep Research/Sync) |
| Matrix: Built-in write | „OpenAI-built Apps sind search-only“ | Fakt | ◑ | MCP Beta FAQ + Apps in ChatGPT | In MCP FAQ: OpenAI-built **connectors** sind search-only. Es gibt aber „Apps“ mit Write-Kategorie; deshalb Begriffspräzisierung nötig |
| Matrix: Write via PR lokal | Manuelle PR-Erzeugung möglich (VS Code/CLI) | Fakt | ✅ | GitHub Branch protection Docs | PR-Workflow ist Standard und erzwingbar (Require PR) |
| Matrix: Write via PR aus ChatGPT (MCP) | Plus: abhängig; Business: ja | Fakt | ◑ | MCP Beta FAQ + Connectors Plan-Matrix | Full MCP write/modify rollt für Business/Enterprise/Edu; Plus ist nicht als „write“ via MCP belegt |
| Matrix: Portal PR | Portal kann PRs erzeugen via /api/pr + GitHub App | Inference | 🔎 | GitHub REST API + GitHub App Auth | Technisch möglich; V2 ist Architektur-Aussage, kein OpenAI Feature |
| Matrix: Front Matter Mini-CMS | Lokal nutzbar | Empfehlung | 🧭 | (optional) | Tooling-Strategie, nicht verifizierbare Produktfunktion |
| Matrix: Copilot Instructions | Steuert Copilot, reduziert Diff-Noise | Fakt/Inference | ◑ | GitHub Copilot instructions Docs | Copilot liest `.github/copilot-instructions.md`; „Diff-Noise reduzieren“ ist Erfahrungswert |
| Matrix: Admin Controls | Business Admins steuern Apps/Sync | Fakt | ✅ | OpenAI Help „Connectors in ChatGPT“ | Admin setup beschreibt Enable/Sync in Workspace settings |
| Matrix: no-train | Business/API default no-train | Fakt | ✅ | openai.com/business-data + Help „disable training“ | Business/API: default nicht trainieren; Plus/Pro/Free: training default an, opt-out möglich |
| Kosten | File search pricing bullets | Fakt | ✅ | openai.com/api/pricing | Stimmt |
| Kosten-Hinweis | „Data sharing free tokens kompensieren Tool-Nutzung nicht“ | Fakt | ❌ | (keine belastbare Quelle gefunden) | Unklar/ohne Quelle → entfernen oder mit konkreter Quelle nachtragen |
| Governance | SSOT, PR-only, Gates, Rollback, Secrets nie im Repo | Empfehlung (Security) | 🧭 | GitHub branch protection + secret scanning | Als konservative Governance gut begründbar; technisch erzwingbar via Branch protection + Secret scanning |

## Zusammenfassung der wichtigsten Korrekturen gegen V2

1. Begriffe präzisieren: „Apps“ vs „OpenAI-built connectors“ (search-only).  
2. Deep Research Note korrigieren: Zitate/Quellen sind explizit Teil des Workflows – „Quelle oft manuell“ streichen.  
3. MCP write/modify klar einschränken: full MCP write/modify nur Business/Enterprise/Edu (Beta); Pro ggf. read/fetch; Agent mode nutzt keine custom connectors; Deep Research nutzt custom connectors nur read/fetch.  
4. Den „Data sharing free tokens …“ Satz entfernen oder mit Quelle belegen.

## Deliverable

- Empfohlene neue Referenzdatei: `AgenticSWE_Connectors_MCP_CapabilityMatrix_Reference_20260302_V3.md`
