---
project: ASWE_KnowledgeOS
doc_type: state
date: 2026-03-09
version: V1
status: draft
audience: [human, llm]
intent: "High-version Repo-Status-Update nach erfolgreicher Stabilisierung des Railway-MCP-Writers und Aufnahme des neuen Bridge-Workstreams für ChatGPT-MCP OAuth-first."
tags:
  - layer/state
  - artifact/status-update
  - topic/status
  - topic/gate
  - topic/evidence
  - topic/codex
  - topic/github
  - topic/write-via-pr
  - topic/mcp
  - topic/oauth
---

# Repo Status Update — MCP-Writer / Railway / ChatGPT Bridge

## 1) Executive Summary

- Der Railway-basierte MCP-Writer wurde nach dem zuvor dokumentierten RS256-/Private-Key-/JWT-Blocker erfolgreich stabilisiert.
- Die ursprünglichen Basis-Checks `GET /healthz` und `GET /tools` bleiben grün.
- Der GitHub-App-Pfad ist wieder funktionsfähig; Read- und Write-Operationen bis zum Draft-PR wurden per Bash/CLI erfolgreich getestet.
- Damit ist der ursprüngliche Writer-Workstream technisch im Kernziel angekommen.
- Die eingebaute GitHub-Verbindung in ChatGPT funktioniert für Read/Navigation bereits.
- Die eigentliche ChatGPT-Custom-App-/MCP-Anbindung ist noch nicht produktiv, weil der aktuelle Server noch keinen offiziellen MCP-Transport mit OAuth-Discovery bereitstellt.
- Nächster aktiver Fokus ist daher `WS-CHATGPT-MCP-BRIDGE` mit OAuth-first statt weiterer Shared-Secret-Optimierung.

## 2) E2E Reifegrad (UI → Change → Writer → PR → CI → Merge)

| Segment | Status | Evidence |
|---|---|---|
| Railway Build / Containerstart | grün | Writer-Service erfolgreich gebaut und online |
| Public Endpoint / Service Reachability | grün | `GET /healthz` erfolgreich |
| Tool Discovery | grün | `GET /tools` erfolgreich |
| Auth vor `/mcp` | grün für Bash-Pfad / gelb für ChatGPT-Bridge | Shared-Secret/Bash-Pfad funktioniert; ChatGPT-Custom-App verlangt nun OAuth-kompatiblen Flow |
| GitHub App JWT / Installation Flow | grün | Read/Write/PR-Tests nach RS256-/Key-Fix erfolgreich |
| Branch/Commit/PR Flow | grün | per Bash/CLI erfolgreich bis Draft-PR validiert |
| CI / Required Checks | grau | noch nicht Schwerpunkt dieses Zyklus |
| Merge-Flow | grau | bewusst nicht Teil des Smokes |
| ChatGPT GitHub Read | grün | GitHub in ChatGPT verbunden und Read-Navigation funktionsfähig |
| ChatGPT Custom App / MCP OAuth | rot/gelb | aktueller Railway-Endpoint liefert noch keinen OAuth-/MCP-kompatiblen Discovery-Flow |

## 3) Active Workstreams (max 3)

| WS | Ziel | DoD | Next Slice | Blocker | Evidence |
|---|---|---|---|---|---|
| WS-MCP-WRITER-RAILWAY | Writer als stabilen PR-only-Schreibpfad absichern | Read + Write + Draft-PR erfolgreich; Policy bleibt hart | Status-/Evidence-Artefakte high-versionieren | kein technischer Kernblocker mehr; nur Nachlauf / Doku | erfolgreiche Bash-Smokes bis Draft-PR |
| WS-CHATGPT-MCP-BRIDGE | ChatGPT-Custom-App-/MCP-Bridge mit OAuth-first aufsetzen | offizieller MCP-Transport + OAuth-Discovery + erster ChatGPT-Read-Call | Protected-Resource-Metadata und OAuth-Discovery ergänzen | aktueller Server implementiert noch kein OAuth / offiziellen MCP-Transport | ChatGPT-Fehler `Unauthorized` / `does not implement OAuth` |

## 4) Gate-Evidence dieses Zwischenstands

| Gate | Status | Notes |
|---|---|---|
| `/healthz` | pass | Service erreichbar |
| `/tools` | pass | Basis-Toolliste erreichbar |
| GitHub-App-JWT / Installation | pass | nach Key-/RS256-Fix grün |
| Read via Writer | pass | `list_tree` / `read_file` funktionsfähig im Bash-Pfad |
| Write via Writer | pass | `create_branch` / `commit_files` / `open_pr` funktionsfähig |
| ChatGPT GitHub Read | pass | GitHub in ChatGPT verbunden |
| ChatGPT Custom App OAuth Discovery | fail | Server meldet sinngemäß `Unauthorized` / `does not implement OAuth` |
| Secrets Hygiene | gelb | bereits exponierte Test-Secrets/Tokens bleiben rotationspflichtig |

## 5) Tooling & Environment

- Plattform: Railway (Remote Service) + lokaler Bash-/CLI-Testpfad
- Writer-Service: online
- Erfolgreiche Writer-Tests:
  - `GET /healthz`
  - `GET /tools`
  - Read-Smokes
  - Branch / Commit / Draft-PR
- ChatGPT-Seite:
  - GitHub-Connector verbunden und Read grün
  - Custom App Discovery gegen aktuellen Endpoint noch nicht OAuth-kompatibel
- Sicherheit:
  - Writer bleibt PR-only
  - Shared-Secret-Modell ist für Bash-Smokes ausreichend, aber nicht das Zielbild für die ChatGPT-Bridge

## 6) Entscheidungen (ADRs / operative Entscheidungen)

- Der MCP-Writer bleibt der einzige autoritative Schreibpfad für PR-only-Änderungen.
- Die erfolgreiche Writer-Stabilisierung wird als eigener Meilenstein festgehalten; der nächste Umbau gehört logisch in einen separaten Bridge-Workstream.
- Für die ChatGPT-Custom-App-/MCP-Anbindung gilt OAuth-first als Zielbild; Mixed höchstens als Übergang.
- State-/Workstream-/Handoff-Artefakte werden high-versioniert statt in-place überschrieben.
- ENTRY/Manifest/MeaningMap/Snapshot werden in diesem Schritt nicht mitgezogen; Fokus bleibt auf Status-/Workstream-/Handoff-Artefakten.

## 7) Risiken & Stop-&-Ask

- Risiko: vorschnelles Öffnen des öffentlichen Railway-Endpoints ohne OAuth würde Sicherheit und Governance verschlechtern.
- Risiko: ein zweiter PR-Erzeuger neben dem Writer würde die Governance verwässern.
- Risiko: ehemals exponierte Secrets oder Tokens bleiben ein Hygiene-Thema, auch wenn sie nicht in Repo-Artefakten auftauchen.
- Stop-&-Ask:
  - Änderungen an `.github/workflows/**`
  - Erweiterung der Allowlist in riskante Pfade
  - neue GitHub-App-Permissions über `Contents`, `Pull requests`, `Metadata` hinaus
  - produktive No-Auth-Bridge nur für schnellere Tests

## 8) Next PR Slices (3–5)

1. PR-0: Handover-/Status-/Workstream-Artefakte high-versionieren.
2. PR-1: offiziellen MCP-Transport + `/.well-known/oauth-protected-resource` + `WWW-Authenticate` ergänzen.
3. PR-2: `/oauth/*` mit OIDC-/OAuth-Discovery und optional DCR ergänzen.
4. PR-3: Tool-Scopes (`mcp.read`, `mcp.write`) plus Railway-CLI-Automation und Smoke-Skripte grün ziehen.
5. Optional: nach erfolgreicher Bridge-Integration breitere SSOT-Anker nachziehen.

## 9) Evidence-Pointer

- Vorheriger Status: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260306_V1.md`
- Writer-Workstream alt: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260306_V1.md`
- Writer-Workstream neu: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
- Bridge-Workstream neu: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`
- Vorheriges Handoff: `blackboard/AgenticSWE_NextChat_Handoff_MCPWriterRailway_20260306_V1.md`
- Nächstes Handoff: `blackboard/AgenticSWE_NextChat_Handoff_ChatGPTMCPBridge_20260309_V1.md`
