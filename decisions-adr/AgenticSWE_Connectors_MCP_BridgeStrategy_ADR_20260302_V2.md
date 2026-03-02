---
project: AgenticSWE_KnowledgeOS
doc_type: adr
version: V2
date: 2026-03-02
status: draft
audience:
  - human
  - llm
intent: "Architekturentscheid: Bridge bis Keystatic-CMS. Kombiniert ChatGPT Apps (Connector/Sync) fuer Read-Navigation, VS Code (Front Matter, Copilot Instructions) fuer lokale UI/Write und optional MCP Write-via-PR als Upgrade."
tags:
  - layer/handbook
  - artifact/adr
  - topic/knowledge-os
  - topic/ssot
  - topic/governance
  - topic/findability
  - topic/gate
  - topic/secrets
  - topic/human-approval
---

# ADR: Bridge-Strategie bis Keystatic-CMS – Apps (Connector/Sync) + VS Code Mini-CMS + optional MCP Write-via-PR

## Status

- status: draft
- decision_id: ADR-CONNECTORS-MCP-BRIDGE-20260302

## Kontext

Wir bauen ein Knowledge-OS Repo, das fuer Mensch und Maschine navigierbar ist (Findability) und Aenderungen auditierbar haelt (write-via-PR).

Der Engpass ist aktuell nicht fehlender Inhalt, sondern:

1. Kontext- und Quellen-Handling im Chat (Limit / Reibung).
1. Reproduzierbare Read-Navigation (Welche Dateien sind SSOT? Wo stehen Regeln?).
1. Saubere Write-Flows (PRs, Gates, Rollback) ohne „Portal-Overbuild“ vor Keystatic.
1. Lokale UI fuer Content-Pflege (Frontmatter, Navigation) bis das Portal existiert.

Zusatz: bestehende Architektur

- Option B (Portal/Keystatic + Chat writes via PR) existiert als Zielbild und Slices.
- Der „CMS“-Teil (Keystatic GitHub Mode) benoetigt keine OpenAI API.
- Portal-Chat-Integration (`/api/chat`, `/api/pr`) wuerde eine OpenAI-API-Integration benoetigen.

## Entscheidung

Wir verfolgen bis Keystatic die folgende Bridge-Strategie (kombinierbar):

1. **Read-Navigation (ChatGPT Apps):**
   - GitHub als App/Connector in ChatGPT verbinden.
   - Connector kann (UI-abhaengig) fuer **Chat** und/oder **Deep Research** aktiviert werden.
   - In normalen Chats wird der Connector (UI-abhaengig) ueber „+“ → „More“ ausgewaehlt.
   - Wenn Business: Sync (Indexing) aktivieren, falls angeboten, um Findability zu verbessern.

1. **Lokale UI bis Portal (VS Code Mini-CMS):**
   - Front Matter (VS Code Mini-CMS) als lokale Content-Navigation und Frontmatter-Editor nutzen.

1. **Write (Standard):**
   - Write-via-PR in VS Code (Copilot/Codex) nach Runbook.
   - Branch Protection: kein direct push auf `main`.

1. **Optionaler Upgrade-Pfad (Chat-first Write):**
   - Write-via-PR aus ChatGPT heraus ueber ein Custom MCP App + remote MCP server,
     der PRs ueber die GitHub API erzeugt (nur allowlisted paths, Policy-Enforcer).

1. **Portal-Chat (Slice 2/3) ist deferred:**
   - Implementierung von `/api/chat` + `/api/pr` wird erst begonnen, wenn Keystatic-Slice 1 steht oder ein Produktbedarf existiert.

## Begründung

- Apps/Connector (Read) loesen den Findability-Engpass ohne Portal-Code.
- Front Matter bringt schnelle „Mini-CMS“ UI auf Repo-Ebene, ohne Portal-Architektur vorwegzunehmen.
- Copilot Instructions reduzieren Prompt-Reibung und sorgen fuer konsistente Write-via-PR Ergebnisse.
- MCP erlaubt Chat-first Write-via-PR, ist aber ein Risiko-Sprung (Text → Aktion) und braucht harte Gates.
- Portal-Chat-Integration per API ist erst sinnvoll, wenn sie Produktwert liefert (nicht nur Dev-Comfort).

## Optionen (vollständig, inkl. Trade-offs)

### Option A — Plus + Apps (Read) + VS Code Mini-CMS + VS Code Write-via-PR

- Read:
  - Connector in Chat und/oder Deep Research (je nach Connector/Region/UI).
- Local UI:
  - Front Matter fuer Content-Editing, Navigation, Frontmatter.
  - Copilot Instructions zur Standardisierung der Write-Prompts.
- Write:
  - PRs aus VS Code (Copilot/Codex), manuelles Merge.
- Pros:
  - Minimales Engineering, schnelle Wirkung.
  - Niedriges Sicherheitsrisiko (kein neuer Write-Endpunkt).
- Cons:
  - Kein Sync (Indexing) auf Plus.
  - Connector-Verfügbarkeit kann je nach Region/Rollout variieren.
  - Write bleibt „Editor-first“.

### Option B — Business + Sync + VS Code Mini-CMS + optional MCP Write-via-PR

- Read:
  - Sync (Indexing) reduziert Kontextkosten/Reibung deutlich, wenn verfuegbar.
  - Business kann Connectors workspace-weit administrieren.
- Write:
  - Standard bleibt VS Code PR.
  - Optional MCP fuer Chat-first PRs (nur mit Policy-Enforcer).
- Pros:
  - Sehr gute Findability im Chat-UI.
  - Potenzial, ChatGPT als Arbeitsoberflaeche zu nutzen, ohne eigenes Portal.
- Cons:
  - MCP braucht remote server + GitHub Auth (GitHub App empfohlen).
  - Hoehere Sicherheitsanforderungen (Allowlist, Limits, Audit).
  - Admin/Workspace-Komplexitaet (Policies, Settings).

### Option C — Portal-Chat Integration per OpenAI API (Option-B Slices 2/3)

- Read:
  - `/api/chat` + file_search (vector store).
- Write:
  - `/api/pr` + GitHub App + Write-Gates.
- Pros:
  - Produktfaehig, kontrollierter Gatekeeper in eigener Codebase.
  - Unabhaengig von ChatGPT UI/Plan-Rollouts.
- Cons:
  - Engineering-Aufwand + Betriebskosten (file_search storage + tool calls).
  - Secrets/Hosting/RBAC werden frueh relevant.

## Konsequenzen

### Kurzfristig (jetzt)

- Bridge-Strategie ist SSOT:
  - Read: Apps/Sync.
  - Local UI: Front Matter + Copilot Instructions.
  - Write: VS Code Write-via-PR.
  - MCP/Portal-API sind Upgrade-Workstreams.

### Mittelfristig

- Wenn Business + MCP gewaehlt wird:
  - Policy-Enforcer (deterministic rules) ist Pflicht.
  - PRs sind draft by default, Merge bleibt manuell.

### Langfristig

- Wenn Portal-Chat Produktfeature wird:
  - Option C umsetzen (Slices 2/3), aber erst nach Keystatic-Slice 1 oder explizitem Bedarf.

## Risiken und Stop-&-Ask

- Stop-&-Ask:
  - `.github/workflows/**`, Deploy/Infra, Secrets.
  - MCP Write ohne Policy-Enforcer/Allowlist.
- Hauptrisiko: Prompt-Injection (untrusted content) → Tool Call → unerwuenschte Writes.

## Revisit-When

- Kontext-/Findability-Limits trotz Apps/Sync bleiben hoch.
- Write-via-PR wird zu langsam oder fehleranfällig.
- Portal-Chat wird Produktanforderung (nicht nur Dev-Comfort).

## Referenzen (Repo-SSOT)

- Option-B Blueprint: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
- Option-B Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md`
- Write-via-PR How-to: `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
- Preflight Gates Runbook: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`
- Diátaxis Policy: `handbook/reference/AgenticSWE_Docs_Diataxis_Policy_20260226_V2.md`

## Evidence (External, plan-/feature-abhängig)

Diese Quellen ändern sich gelegentlich. Wenn etwas nicht zu deiner UI passt, gilt: **UI ist Truth**, und wir aktualisieren diese ADR mit Screenshot/Notiz als Evidence.

- Connectors Plan-Matrix: <https://help.openai.com/en/articles/11487775-connectors-in-chatgpt>
- Synced Connectors FAQ (Sync/Indexing): <https://help.openai.com/en/articles/10847137-chatgpt-synced-connectors-faq>
- GitHub Connector (inkl. Deep Research): <https://help.openai.com/en/articles/11145903-connecting-github-to-chatgpt-deep-research-to-chatgpt-deep-research>
- Release Notes (Rollouts/Region): <https://help.openai.com/en/articles/6825453-chatgpt-release-notes>
- Admin Controls / Sync Index: <https://help.openai.com/en/articles/11509118>
- Developer mode + MCP apps: <https://help.openai.com/en/articles/12584461-developer-mode-and-mcp-apps-in-chatgpt-beta>
- Pricing (File search storage + tool calls): <https://openai.com/api/pricing/>
- Data sharing free tokens (Tool-Nutzung ausgeschlossen): <https://help.openai.com/de-de/articles/10306912-sharing-feedback-evaluation-and-fine-tuning-data-and-api-inputs-and-outputs-with-openai>

## Offene Punkte (TODO)

1. Evidence aus deiner UI: Welche Connector-Optionen siehst du in Plus in DE heute (Chat vs Deep Research vs Agent)?
1. Entscheiden, ob MCP-Write in diesem Repo ueberhaupt noetig ist oder ob VS Code Write-via-PR bis Keystatic reicht.
1. Festlegen, ob Front Matter als verbindlicher „Pre-Keystatic“ Editor gilt (oder nur optional).
