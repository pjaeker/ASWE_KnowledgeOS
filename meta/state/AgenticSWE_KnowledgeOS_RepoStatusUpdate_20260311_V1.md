---
project: ASWE_KnowledgeOS
doc_type: state
date: 2026-03-11
version: V1
status: draft
audience: [human, llm]
intent: "Closeout-Status nach PR-A bis PR-C des SessionLifecycle-Refactors. Stabilisiert den naechsten Einstieg und legt den operativen Hauptfokus wieder auf WS-CHATGPT-MCP-BRIDGE."
tags:
  - layer/state
  - artifact/status-update
  - topic/status
  - topic/router
  - topic/evidence
  - topic/codex
  - topic/chatgpt
  - topic/workstreams
  - topic/automation
---

# Repo Status Update - SessionLifecycle Stabilized / Bridge Focus Restored

## 1) Executive Summary

- Der kanonische Session-Start ist jetzt repo-seitig stabilisiert: ChatGPT GUI startet semantisch ueber `ENTRY_LATEST`, Codex repo-lokal ueber `AGENTS.md`, danach gilt fuer beide `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`.
- PR-A hat den Session-Contract in den normativen Dokumenten harmonisiert.
- PR-B hat den Automationspfad mit `scripts/validate_session_contract.py`, neuer Task und abgesichertem Anchor-Refresh nachgezogen.
- PR-C hat historische `SESSION_BOOTSTRAP`-/`SESSION_CLOSEOUT`-Prompts zu `legacy/manual fallback` herabgestuft und `NextChat-Handoff` klar als optionales Resume-Sidecar begrenzt.
- `ENTRY_LATEST` bleibt Pointer-Bund; MeaningMap, Snapshot und Manifest wurden in diesem Closeout bewusst **nicht** neu erzeugt.
- Der SessionLifecycle-Refactor gilt fuer diesen Lauf als gruene Stabilisierung; der operative Hauptfokus kehrt zu `WS-CHATGPT-MCP-BRIDGE` zurueck.

## 2) E2E Reifegrad (UI -> Change -> Writer -> PR -> CI -> Merge)

| Segment | Status | Evidence |
|---|---|---|
| Session Contract / Routing | gruen | `AGENTS.md`, `ENTRY_LATEST`, PR-A-V2-Dokumente, ADR `SessionLifecycle Entry-First` |
| Automationspfad / Validator | gruen | `scripts/validate_session_contract.py`, `scripts/aswe_bootstrap.py`, `scripts/aswe_update_anchors.py`, `.vscode/tasks.json` |
| Legacy Prompt Entkanonisierung | gruen | `.github/prompts/AgenticSWE_SessionBootstrap_20260302_V1.prompt.md`, `.github/prompts/AgenticSWE_SessionCloseout_20260302_V1.prompt.md` |
| NextChat-Handoff Begrenzung | gruen | `blackboard/AgenticSWE_NextChat_Handoff_ChatGPTMCPBridge_20260310_V1.md` beschreibt Handoff jetzt nur noch als optionales Resume-Sidecar |
| Writer Governance | gruen | Writer bleibt alleiniger PR-Erzeuger; kein zweiter autonomer PR-Pfad |
| Changed-files Preflight (bash-basiert) | gelb | lokal weiter vorhanden, aber in dieser Umgebung nicht ausfuehrbar |
| ChatGPT Custom App / MCP OAuth | rot/gelb | technischer Hauptblocker bleibt ausserhalb dieses Workstreams bestehen |

## 3) Active Workstreams (max 3)

| WS | Ziel | DoD | Next Slice | Blocker | Evidence |
|---|---|---|---|---|---|
| WS-CHATGPT-MCP-BRIDGE | ChatGPT-Custom-App-/MCP-Bridge mit OAuth-first aufsetzen | offizieller MCP-Transport + OAuth-Discovery + erster ChatGPT-Read-Call | Protected-Resource-Metadata, `WWW-Authenticate` und MCP-Transport liefern | Server implementiert noch kein offizielles OAuth-/MCP-Discovery-Verhalten | bestehende `Unauthorized`-/`does not implement OAuth`-Hinweise |
| WS-SESSIONLIFECYCLE-REFACTOR | Session-Contract stabilisieren und Routing-Drift sichtbar machen | PR-A/B/C umgesetzt; neuer Start funktioniert ohne Bootstrap-Prompt und ohne Pflicht-Handoff | kein weiterer Slice in diesem Lauf; nur spaetere Drift-Nachschaerfung falls noetig | keine akuten Kernblocker mehr | PR-A bis PR-C + Validator `overall=warn` nur fuer verbleibende historische Drift |
| WS-MCP-WRITER-RAILWAY | Writer als stabilen PR-only-Schreibpfad halten | Bash-Read/Write/Draft-PR gruen; Policy bleibt hart | nur noch Bridge-stuetzende Nachschaerfung und Dokumentation | kein technischer Kernblocker mehr | gruene Writer-Smokes + aktualisierte `policy.json` |

## 4) Gate-Evidence dieses Zwischenstands

| Gate | Status | Notes |
|---|---|---|
| `ENTRY_LATEST -> RepoStatusUpdate -> Workstream` | pass | Primaerpfad bleibt klar; Codex erreicht ihn ueber `AGENTS.md` |
| `NextChat-Handoff` optional | pass | aktueller Validator bestaetigt optionales Resume-Sidecar |
| Legacy Prompts nicht mehr kanonisch | pass | aktuelle Prompt-Dateien sind als `legacy/manual fallback` markiert |
| Session-Contract-Validator | pass | `python scripts/validate_session_contract.py` laeuft mit `overall=warn pass=8 warn=2 fail=0` |
| Historische Drift sichtbar | warn | alte `SessionEntry`-/Router-Dateien bleiben als sichtbare Altlasten bestehen |
| Changed-files Preflight | not_executed | `bash` ist in dieser Umgebung nicht verfuegbar |
| Full-Refresh von MeaningMap / Snapshot / Manifest | pass | in PR-B/C und diesem Closeout nicht implizit ausgeloest |

## 5) Tooling & Environment

- Codex:
  - `AGENTS.md` bleibt die repo-lokale Startkarte.
  - `.vscode/tasks.json` enthaelt jetzt auch `ASWE: Validate Session Contract`.
  - `scripts/aswe_bootstrap.py` kann den Session-Contract vor dem Start gegenpruefen.
  - `scripts/aswe_update_anchors.py` validiert vor dem `ENTRY_LATEST`-Refresh und schreibt weiterhin nur Pointer.
- Validator:
  - `scripts/validate_session_contract.py` macht Routing-Drift maschinell sichtbar.
  - verbleibende historische Drift wird bewusst als `warn`, nicht stillschweigend ignoriert.

## 6) Entscheidungen (ADRs / operative Entscheidungen)

- Der kanonische Session-Kernfluss bleibt `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`.
- ChatGPT GUI startet semantisch ueber `ENTRY_LATEST`; Codex startet repo-lokal ueber `AGENTS.md` und wechselt dann in denselben Kernfluss.
- `NextChat-Handoff` ist optionales Resume-Sidecar und keine Startvoraussetzung.
- Legacy Prompt-Dateien bleiben nur als manuelle Alt-Werkzeuge bestehen.
- Nach gruener Stabilisierung dieses Workstreams kehrt der operative Hauptfokus zu `WS-CHATGPT-MCP-BRIDGE` zurueck.

## 7) Risiken & Stop-&-Ask

- Risiko: aeltere `SessionEntry`-/Router-Dateien koennen Suchergebnisse weiter verrauschen, bis ein spaeterer Drift-Cleanup erfolgt.
- Risiko: das aeltere `RepoStatusUpdate_20260310_V1` bleibt als historische Quelle im Repo auffindbar.
- Risiko: bash-basierte Preflight-Tasks sind in dieser Umgebung weiterhin nicht lokal pruefbar.
- Stop-&-Ask unveraendert:
  - `.github/workflows/**`
  - Erweiterung der Allowlist in riskante Pfade
  - neue GitHub-App-Permissions
  - No-Auth- oder Nebenpfade um den Writer herum

## 8) Next PR Slices (3-5)

1. Rueckkehr zu `WS-CHATGPT-MCP-BRIDGE`: offizieller MCP-Transport + Protected-Resource-Metadata + `WWW-Authenticate`.
2. Danach `/oauth/*` mit Discovery, Token-Endpoint und JWKS ergaenzen.
3. Optional spaeterer Docs-/Drift-Slice: historische `SessionEntry`-/Router-Dateien explizit als legacy markieren oder archivieren.

## 9) Evidence-Pointer

- Vorheriger Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`
- SessionLifecycle Workstream: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_SessionLifecycle_Refactor_20260311_V1.md`
- Entry-First ADR: `decisions-adr/AgenticSWE_KnowledgeOS_ADR_SessionLifecycle_EntryFirst_20260311_V1.md`
- RepoMeaningMap: `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`
- Routing Strategy: `handbook/explanation/AgenticSWE_KnowledgeOS_RoutingNavigationUX_Strategy_20260311_V2.md`
- RepoStatusUpdate Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260311_V2.md`
- BusinessSync HowTo: `handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260311_V2.md`
- Validator: `scripts/validate_session_contract.py`
- Bridge Handoff: `blackboard/AgenticSWE_NextChat_Handoff_ChatGPTMCPBridge_20260310_V1.md`

