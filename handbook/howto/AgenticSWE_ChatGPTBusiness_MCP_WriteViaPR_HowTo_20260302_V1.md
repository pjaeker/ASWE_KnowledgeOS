---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V1
date: 2026-03-02
status: draft
audience:
  - human
  - llm
intent: "Setup-Rezept: GitHub App/Connector (Read) und optional MCP (Write-via-PR) so einrichten, dass Änderungen auditierbar bleiben und No-Secrets/Gates eingehalten werden."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/actionability
  - topic/gate
  - topic/secrets
  - topic/human-approval
  - topic/thin-slice
  - risk/stop-ask
---

# How-to: GitHub App/Connector + optional MCP Write-via-PR (Bridge bis Keystatic)

## Ziel

> **🟦 Ziel:** Du nutzt ChatGPT als „Read-Navigator“ fürs Repo (Apps/Connector, optional Sync) und richtest optional MCP so ein, dass ChatGPT PRs erzeugen kann, ohne direkt auf `main` zu schreiben.

## Scope

- In scope:
  - GitHub in ChatGPT verbinden (Read).
  - Optional: MCP remote server für PR-Erstellung (Write-via-PR).
- Out of scope:
  - Portal-API (`/api/chat`, `/api/pr`) implementieren.
  - CI-Workflows aktivieren (`.github/workflows/**`).

> **🟥 Stop:** Sobald Secrets/Deploy/CI angefasst werden müssten.

## Inputs / Outputs

| Feld | Beschreibung |
| --- | --- |
| Inputs | GitHub Repo, ChatGPT Plan (Plus/Business), optional Hosting für MCP Server |
| Outputs | Read-Zugriff via GitHub App in ChatGPT; optional: PR-Erstellung via MCP |
| Constraints | keep diffs small; no secrets in repo; write only via PR |
| Evidence | 1 Notiz: App connected; 1 Test-PR (draft) via gewünschtem Write-Pfad |

## Teil A: GitHub App/Connector verbinden (Read)

1. In ChatGPT: Settings → Apps (oder Connectors) → GitHub → Connect.
1. In GitHub: App autorisieren und Repo(s) auswählen.
1. Test: Frage im Chat nach einer SSOT-Regel und bitte um Zitate aus Repo-Dateien.

**🟩 Check:** Antwort referenziert tatsächlich Repo-Inhalte (nicht „aus dem Kopf“).

**Known limitation:** File-name search kann eingeschränkt sein (repo-name und inhaltsbasierte Suche).

## Teil B: Sync aktivieren (wenn verfügbar)

1. In ChatGPT: GitHub App-Eintrag öffnen.
1. Wenn die UI „Sync“ anbietet: Sync/Indexing aktivieren.
1. Test: gleiche Frage wie in Teil A, aber nun schneller/verlässlicher.

**🟩 Check:** Antworten benötigen weniger manuelle Routing-Hinweise.

> **Hinweis:** Sync ist plan- und region-abhängig. Wenn es nicht da ist: kein Workaround erzwingen, sondern Bridge-Strategie wie ADR nutzen.

## Teil C: Optional – MCP Write-via-PR

> **🟧 Achtung:** MCP Write ist riskant. Ohne Policy-Enforcer ist es ein No-Go.

### C1) Voraussetzungen

- Du kannst einen remote MCP server betreiben (SSE/HTTP streaming).
- Du nutzt GitHub API Credentials. Empfehlung: GitHub App (Installation Token) statt PAT.

> **🟥 Stop:** Wenn du Tokens/Keys im Repo ablegen würdest.

### C2) Minimaler MCP Tool-Satz (Write-via-PR only)

Implementiere nur diese Write-Fähigkeiten:

1. `create_branch(base, name)`
1. `commit_files(branch, files[], message)` (nur allowlisted paths)
1. `open_pr(base, head, title, body, draft=true)`

Zusätzlich Read:

1. `read_file(path, ref)`
1. `list_tree(path, ref)` (optional)

### C3) Policy-Enforcer (hart)

Serverseitig erzwingen:

- Repo-Allowlist: nur dieses Repo.
- Path-Allowlist: z. B. `handbook/**`, `meta/**`, `decisions-adr/**`, `templates-harness/**`.
- Blocklist: `.github/workflows/**`, `**/.env*`, `secrets/**`, `infra/**`.
- Limits:
  - max files (z. B. 10)
  - max diff lines (z. B. 3000)
- No-Secrets Quickscan:
  - reject wenn diff typische secret patterns enthält.
- Human approval:
  - PRs immer draft oder klar markiert, Merge bleibt manuell.

### C4) ChatGPT Developer mode (MCP Client)

1. Settings → Apps → Advanced settings → Developer mode aktivieren.
1. Custom App erstellen, die auf deinen remote MCP server zeigt.
1. Test (Read): `list_tree` oder `read_file` auf eine harmlose Datei.
1. Test (Write): Erzeuge eine kleine Doku-Datei als PR (draft) in erlaubtem Pfad.

**🟩 Check:** PR enthält nur erlaubte Pfade und einen PR-Report (Summary, Scope, Risk class, Gates, Rollback).

## Verifikation

- `git diff --name-only` (oder PR-Files) zeigt nur erwartete Dateien.
- Preflight Gates lokal ausführen (changed files only).
- Keine Secrets in Diff/PR-Body.

## Rollback

- PR schließen oder revert commit.
- Falls Secret-Leak-Verdacht: sofort rotieren und Incident-Notiz erstellen.

## Failure Modes (Top 5)

1. MCP schreibt außerhalb Allowlist → Policy-Enforcer fixen, nicht „tolerieren“.
1. PR zu groß → max files/lines reduzieren, thin slice erzwingen.
1. Tool tries to modify `.github/**` → sofort Stop-&-Ask.
1. Chat halluziniert Pfade → Read-first (read_file) erzwingen.
1. Kosten/Rate-Limits (API) → Budgets/Rate-Limits setzen oder Bridge ohne API nutzen.

## See also

- ADR Bridge-Strategie: `decisions-adr/AgenticSWE_Connectors_MCP_BridgeStrategy_ADR_20260302_V1.md`
- Explanation Trade-offs: `handbook/explanation/AgenticSWE_Connectors_MCP_PlusBusiness_Explanation_20260302_V1.md`
- Preflight Gates Runbook: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`

## DoD (Quick)

- GitHub App/Connector connected und getestet.
- Wenn MCP genutzt: serverseitige Policy aktiv, 1 Test-PR erstellt.
- markdownlint + cSpell clean in changed files.
- No-Secrets quickscan clean.

## Evidence (External)

- GitHub App in ChatGPT verbinden (read-only): <https://help.openai.com/en/articles/11145903-Connecting-connecting-connecting-connecting-connecting>
- Developer mode + MCP apps: <https://help.openai.com/en/articles/12584461-developer-mode-and-mcp-apps-in-chatgpt-beta>
- Apps in ChatGPT (Plan-Matrix): <https://help.openai.com/en/articles/11487775-connectors-in-chatgpt>
