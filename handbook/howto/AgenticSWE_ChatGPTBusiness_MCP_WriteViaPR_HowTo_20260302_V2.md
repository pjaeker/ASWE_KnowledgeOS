---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V2
date: 2026-03-02
status: draft
audience:
  - human
  - llm
intent: "Setup-Rezept: Connector-Nutzung in Plus vs Business sauber anwenden (Chat/Deep Research/Sync) und optional MCP Write-via-PR. Integriert Front Matter (Mini-CMS) und Copilot Instructions als Bridge bis Keystatic."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/actionability
  - topic/findability
  - topic/gate
  - topic/secrets
  - topic/human-approval
  - topic/thin-slice
  - risk/stop-ask
---

# How-to: Connector (Plus/Business) + Front Matter + Copilot Instructions + optional MCP Write-via-PR

## Ziel

> **🟦 Ziel:** Du reduzierst Kontext-Reibung sofort: Connector korrekt nutzen (Chat vs Deep Research, optional Sync), lokal mit Front Matter effizient editieren und Writes als PR mit Gates ausfuehren. Optional kannst du Chat-first Writes ueber MCP testen.

## Scope

- In scope:
  - Connector verbinden und korrekt in Chat/Deep Research nutzen.
  - Sync aktivieren (nur wenn UI es anbietet).
  - Front Matter als Mini-CMS in VS Code aktiv nutzen.
  - Copilot Instructions als Repo-Policy setzen.
  - Optional: MCP Write-via-PR (nur mit Policy-Enforcer).
- Out of scope:
  - Portal-API (`/api/chat`, `/api/pr`) implementieren.
  - CI-Workflows (`.github/workflows/**`) aendern.

> **🟥 Stop:** Sobald Secrets/Deploy/CI angefasst werden muessen.

## Teil A: Connector verbinden und nutzen (Plus und Business)

### A1) Verbinden

1. ChatGPT → Settings → Apps & Connectors → GitHub (oder anderer Connector) → Connect.
1. Beim Verbinden: wenn die UI fragt, waehle den Zweck:
   - **Chat** (normale Chats) und/oder
   - **Deep Research** (Reports).
   Manche Connectoren verlangen separate Aktivierung pro Modus.

**🟩 Check:** Der Connector erscheint danach in Settings als „connected“.

### A2) Nutzen im normalen Chat

1. Neuer Chat.
1. Klick „+“ im Composer → „More“ → Connector waehlen.
1. Frage stellen (z. B. „zitiere die SSOT-Regel aus RepoMeaningMap“).

**🟩 Check:** Antwort enthaelt Zitate/Verweise auf Repo-Inhalte.

### A3) Nutzen in Deep Research

1. Deep Research starten.
1. Connector als Quelle auswaehlen.
1. Frage stellen (langform, mit Zitatpflicht).

**🟩 Check:** Report enthaelt Zitate zu Repo-Snippets.

> **🟧 Achtung (Region/Rollout):** Wenn du Features nicht siehst, dokumentiere das als Evidence im RepoStateSnapshot.

## Teil B: Sync aktivieren (nur Business/Pro, wenn angeboten)

1. Settings → Apps & Connectors → GitHub → „Enable Sync“ (falls sichtbar).
1. Folge dem Setup.
1. Test: gleiche Frage wie Teil A2; ChatGPT sollte seltener manuelle Quellenauswahl brauchen.

**🟩 Check:** Antworten werden schneller/verlässlicher und referenzieren Repo haeufiger automatisch.

## Teil C: Front Matter als VS Code Mini-CMS (Variante 2)

> **🟦 Ziel:** Du bekommst Portal-Feeling (Navigation + Formulare) lokal, ohne Keystatic schon zu bauen.

1. VS Code Extension „Front Matter“ installieren und Repo oeffnen.
1. Content Collections (Ordner) konfigurieren (z. B. `handbook/**`, `meta/**`).
1. Nutze Front Matter UI, um:
   - Frontmatter zu pflegen (YAML)
   - Navigation/Übersichten zu nutzen
   - Media/Assets (falls vorhanden) zu verwalten

**🟩 Check:** Frontmatter-Fehler sinken, und du findest Dokumente schneller als per Explorer.

## Teil D: Copilot Instructions (Variante 3)

> **🟦 Ziel:** Copilot/Codex befolgt Repo-Regeln automatisch (Diataxis, keep diffs small, Gates).

1. Datei anlegen: `.github/copilot-instructions.md`
1. Inhalt (minimal, normativ):
   - SSOT Reihenfolge (Glossar/Taxonomie/Policy/Runbook)
   - Dateinaming `Projekt_YYYYMMDD_Vx`
   - Diataxis: Typen nicht mischen
   - Scope: keine repo-weite Cleanup-Aktionen
   - Gates: markdownlint/cSpell nur changed files
   - Stop-&-Ask: `.github/**`, Secrets, CI/Deploy

**🟩 Check:** Copilot/Codex Vorschlaege sind kleiner und passen besser zum Repo-Stil.

## Teil E: Optional – MCP Write-via-PR (Chat-first Write)

> **🟧 Achtung:** MCP Write ist riskant. Ohne Policy-Enforcer ist es ein No-Go.

### E1) Minimaler Tool-Satz (Write-via-PR only)

- `create_branch(base, name)`
- `commit_files(branch, files[], message)` (nur allowlisted paths)
- `open_pr(base, head, title, body, draft=true)`

### E2) Policy-Enforcer (hart)

Serverseitig erzwingen:

- Repo-Allowlist: nur dieses Repo.
- Path-Allowlist: `handbook/**`, `meta/**`, `decisions-adr/**`, `templates-harness/**`.
- Blocklist: `.github/workflows/**`, `**/.env*`, `secrets/**`, `infra/**`.
- Limits: max files (10), max diff lines (3000).
- No-Secrets Quickscan: reject bei secret patterns.
- Human approval: PRs draft, Merge manuell.

### E3) ChatGPT Developer mode (MCP Client)

1. Settings → Apps → Advanced settings → Developer mode aktivieren.
1. Custom App erstellen, die auf deinen remote MCP server zeigt.
1. Test (Read): `read_file` auf harmlose Datei.
1. Test (Write): kleine Doku-Datei als draft PR (allowlisted path).

**🟩 Check:** PR enthaelt nur erlaubte Pfade + PR-Report (Summary, Scope, Gates, Rollback).

## Verifikation (immer)

- `git diff --name-only` (oder PR-Files) zeigt nur erwartete Dateien.
- Preflight Gates lokal (changed files only):
  - markdownlint
  - cSpell
- No-Secrets quickscan clean.

## Evidence (External)

- Connectors Plan-Matrix + Nutzung: <https://help.openai.com/en/articles/11487775-connectors-in-chatgpt>
- GitHub Connector: <https://help.openai.com/en/articles/11145903-connecting-github-to-chatgpt-deep-research-to-chatgpt-deep-research>
- Synced Connectors FAQ: <https://help.openai.com/en/articles/10847137-chatgpt-synced-connectors-faq>
- Developer mode + MCP: <https://help.openai.com/en/articles/12584461-developer-mode-and-mcp-apps-in-chatgpt-beta>
