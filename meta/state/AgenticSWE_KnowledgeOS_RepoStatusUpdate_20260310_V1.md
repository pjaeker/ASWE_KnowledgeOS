---
project: ASWE_KnowledgeOS
doc_type: state
date: 2026-03-10
version: V1
status: draft
audience: [human, llm]
intent: "High-version Repo-Status-Update nach dem lokalen Codex/Routing-Update und dem Writer-Policy-Follow-up. Hellt den Startpfad fuer neue Sessions auf und haelt WS-CHATGPT-MCP-BRIDGE als naechsten Schwerpunkt fest."
tags:
  - layer/state
  - artifact/status-update
  - topic/status
  - topic/router
  - topic/evidence
  - topic/codex
  - topic/github
  - topic/write-via-pr
  - topic/mcp
  - topic/oauth
---

# Repo Status Update - Codex Routing / MCP Writer Policy / ChatGPT Bridge

## 1) Executive Summary

- Das Repo besitzt jetzt eine repo-lokale Codex-/Routing-Schicht mit `AGENTS.md`, `codex.toml`, VS-Code-Tasks sowie Bootstrap-/Anchor-Skripten.
- Die bevorzugte Startreihenfolge fuer neue Sessions lautet nun: `ENTRY_LATEST -> RepoStatusUpdate -> aktive Workstreams`; MeaningMap, Snapshot und Manifest sind nachgelagerte Tiefenanker.
- Der Follow-up an `tools/mcp-writer/policy.json` erweitert die serverseitige Allowlist auf `blackboard/` und `.github/prompts/`.
- `.github/workflows/**`, `infra/**`, `secrets/**` und `.env*` bleiben explizit blockiert.
- Der Writer bleibt der einzige autoritative PR-Erzeuger; der neue Codex-Layer verbessert Navigation und Reproduzierbarkeit, nicht die Governance.
- Der Railway-MCP-Writer bleibt fuer Bash/CLI Read/Write/Draft-PR technisch gruen.
- Naechster Hauptfokus ist weiterhin `WS-CHATGPT-MCP-BRIDGE` mit OAuth-first und offiziellem MCP-Transport.

## 2) E2E Reifegrad (UI -> Change -> Writer -> PR -> CI -> Merge)

| Segment | Status | Evidence |
|---|---|---|
| Codex Session Bootstrap / Routing | gruen | `AGENTS.md`, `codex.toml`, `scripts/aswe_bootstrap.py`, `scripts/aswe_update_anchors.py`, `.vscode/tasks.json`, neues HowTo |
| Status / State Pack | gruen | neue High-version-Artefakte fuer Handoff, Status, Manifest, Snapshot und MeaningMap |
| Writer Policy / Allowlist | gruen | `tools/mcp-writer/policy.json` erlaubt `blackboard/` und `.github/prompts/`; Workflows bleiben blockiert |
| Railway Build / Containerstart | gruen | unveraenderter gruener Writer-Stand aus dem vorherigen Zyklus |
| Public Endpoint / Service Reachability | gruen | `/healthz` war im vorherigen Writer-Zyklus erfolgreich |
| Tool Discovery | gruen | `/tools` war im vorherigen Writer-Zyklus erfolgreich |
| GitHub App JWT / Installation Flow | gruen | Bash-/CLI-Pfad zuvor erfolgreich validiert |
| Branch / Commit / PR Flow | gruen | Writer bleibt auf Draft-PRs in erlaubten Pfaden begrenzt |
| ChatGPT GitHub Read | gruen | unveraendert verbunden und lesend funktionsfaehig |
| ChatGPT Custom App / MCP OAuth | rot/gelb | offizieller MCP-Transport und OAuth-Discovery fehlen weiterhin |

## 3) Active Workstreams (max 3)

| WS | Ziel | DoD | Next Slice | Blocker | Evidence |
|---|---|---|---|---|---|
| WS-MCP-WRITER-RAILWAY | Writer als stabilen PR-only-Schreibpfad halten | Bash-Read/Write/Draft-PR gruen; Policy bleibt hart; sichere Doku-/Prompt-Pfade explizit erlaubt | nur noch Bridge-stuetzende Nachschaerfung und Dokumentation | kein technischer Kernblocker mehr; nur Scope-Disziplin | gruene Writer-Smokes + aktualisierte `policy.json` |
| WS-CHATGPT-MCP-BRIDGE | ChatGPT-Custom-App-/MCP-Bridge mit OAuth-first aufsetzen | offizieller MCP-Transport + OAuth-Discovery + erster ChatGPT-Read-Call | Protected-Resource-Metadata, `WWW-Authenticate` und MCP-Transport liefern | Server implementiert noch kein offizielles OAuth-/MCP-Discovery-Verhalten | bestehende `Unauthorized`-/`does not implement OAuth`-Hinweise |

## 4) Gate-Evidence dieses Zwischenstands

| Gate | Status | Notes |
|---|---|---|
| Repo-lokaler Bootstrap (`AGENTS.md` + Task + Script) | pass | Startpfad fuer neue Sessions ist dokumentiert und skriptbar |
| `ENTRY_LATEST -> Status -> Workstreams` | pass | neuer Entry-Refresh zieht die neuesten State-Anker nach |
| Writer Policy Allowlist | pass | `blackboard/` und `.github/prompts/` explizit erlaubt |
| Writer Policy Blocklist | pass | `.github/workflows/**`, `infra/**`, `secrets/**`, `.env*` bleiben geblockt |
| Bash Writer Read / Write / Draft-PR | pass | vorheriger Zyklus bleibt massgebliche technische Evidence |
| ChatGPT Custom App OAuth Discovery | fail | weiterhin fehlende serverseitige Discovery-/Transport-Schicht |
| Secrets Hygiene | gelb | keine neuen Secrets im Repo; ehemals exponierte Test-Secrets bleiben rotationspflichtig |

## 5) Tooling & Environment

- Codex:
  - `AGENTS.md` ist die operative Startkarte
  - `codex.toml` liefert repo-lokale Defaults fuer Approval, Sandbox und Web-Search
  - `.vscode/tasks.json` stellt Bootstrap, Anchor-Refresh, Changed-Files-Preflight und ToolingSnapshot bereit
  - `scripts/aswe_bootstrap.py` liest die neuesten vorhandenen Anker
  - `scripts/aswe_update_anchors.py` schreibt ein neues `ENTRY_LATEST` fuer den Tag
- ToolingSnapshot:
  - letzter vorhandener Snapshot bleibt `meta/state/tooling/AgenticSWE_KnowledgeOS_ToolingSnapshot_20260303_V3.yml`
  - der Exporter kann `codex.toml` als safe subset lesen
- Writer:
  - Railway-Service und GitHub-App-Pfad bleiben auf dem zuletzt gruen validierten Stand
  - serverseitige Policy ist jetzt besser auf Handoff-/Prompt-Artefakte abgestimmt

## 6) Entscheidungen (ADRs / operative Entscheidungen)

- `AGENTS.md` wird als operative Startkarte fuer ChatGPT, Codex und Copilot im Repo genutzt.
- Der bevorzugte Startpfad fuer Sessions ist jetzt `Entry -> Status -> Workstreams`; MeaningMap, Snapshot und Manifest dienen als tiefere SSOT-Anker.
- Die Writer-Allowlist darf `blackboard/` und `.github/prompts/` enthalten, ohne `.github/workflows/**` zu oeffnen.
- Der Writer bleibt der einzige autoritative PR-Erzeuger; der Codex-Layer fuehrt keinen zweiten autonomen PR-Pfad ein.
- `WS-CHATGPT-MCP-BRIDGE` bleibt der naechste Hauptfokus nach dem Closeout-State-Pack.

## 7) Risiken & Stop-&-Ask

- Risiko: Drift zwischen `AGENTS.md`, `ENTRY_LATEST` und `RepoStatusUpdate`, wenn kuenftige Routing-Aenderungen nur in einer Schicht landen.
- Risiko: die Freigabe von `.github/prompts/` koennte faelschlich als Freigabe fuer `.github/workflows/**` missverstanden werden.
- Risiko: Codex-/Routing-Artefakte duerfen nicht als Governance-Abkuerzung um den Writer herum verwendet werden.
- Risiko: Workstream-Kapseln spiegeln die neue `.github/prompts/`-Allowlist noch nicht explizit wider.
- Stop-&-Ask:
  - Aenderungen an `.github/workflows/**`
  - Erweiterung der Allowlist in riskante Pfade
  - neue GitHub-App-Permissions ueber `Contents`, `Pull requests`, `Metadata` hinaus
  - No-Auth- oder Nebenpfade um den Writer herum

## 8) Next PR Slices (3-5)

1. PR-1: offiziellen MCP-Transport + `/.well-known/oauth-protected-resource` + `WWW-Authenticate` liefern.
2. PR-2: `/oauth/*` mit Discovery, Token-Endpoint und JWKS ergaenzen.
3. PR-3: Tool-Scopes (`mcp.read`, `mcp.write`) und serverseitige Policy-Verkabelung fuer den Bridge-Pfad sauber ziehen.
4. Optional docs-only: Workstream-Kapseln an die neue `.github/prompts/`-Allowlist anpassen und einen neuen ToolingSnapshot exportieren.

## 9) Evidence-Pointer

- Vorheriger Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260309_V1.md`
- Neues Handoff: `blackboard/AgenticSWE_NextChat_Handoff_ChatGPTMCPBridge_20260310_V1.md`
- Writer-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
- Bridge-Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`
- Neues Snapshot: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260310_V1.md`
- Neue MeaningMap: `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260310_V1.md`
- Neues Manifest: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260310_V1.json`
- Codex Runner HowTo: `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`
- Writer Policy: `tools/mcp-writer/policy.json`
