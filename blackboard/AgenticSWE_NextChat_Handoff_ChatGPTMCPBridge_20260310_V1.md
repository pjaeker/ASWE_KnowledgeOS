---
project: AgenticSWE_KnowledgeOS
doc_type: handoff
version: V1
date: 2026-03-10
status: draft
audience: [human, llm]
intent: "Handoff fuer den naechsten Chat/Runner: Codex-Routing und Writer-Policy wurden nachgezogen; naechster Fokus bleibt die ChatGPT-Custom-App-/MCP-Bridge auf dem klarer gerahmten PR-only-Writingsurface."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/codex
  - topic/router
  - topic/mcp
  - topic/github
  - topic/gates
  - topic/evidence
---

# Handoff - Naechster Chat / naechster Runner (ChatGPT MCP Bridge)

## Ziel fuer den naechsten Zyklus

Den bereits technisch gruennen Railway-MCP-Writer vom Stand "Bash/CLI bis Draft-PR + Codex-Routing/Handover-Layer steht" auf "ChatGPT-Custom-App per offiziellem MCP-Transport und OAuth-first erreichbar" weiterfuehren.

## Was im letzten Zyklus erreicht wurde

### 1) Codex-/Routing-Layer im Repo
- `AGENTS.md` definiert den operativen Startpfad: `ENTRY_LATEST -> RepoStatusUpdate -> aktive Workstreams`
- `codex.toml` legt repo-lokale Codex-Defaults fuer reproduzierbare Runs fest
- `.vscode/tasks.json` bietet die ASWE-Tasks fuer Bootstrap, Anchor-Refresh, Changed-Files-Preflight und ToolingSnapshot
- `scripts/aswe_bootstrap.py` und `scripts/aswe_update_anchors.py` kapseln den neuen Start- und Anchor-Refresh-Flow
- `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md` dokumentiert den lokalen Runner-Ablauf

### 2) Writer-Policy Follow-up
- `tools/mcp-writer/policy.json` erlaubt nun zusaetzlich `blackboard/` und `.github/prompts/`
- `.github/workflows/**`, `infra/**`, `secrets/**` und `.env*` bleiben gesperrt
- Der Writer bleibt der einzige autoritative PR-Erzeuger

### 3) Closeout / State Pack
- neuer `RepoStatusUpdate` fuer 2026-03-10
- neuer `RepoManifest` aus tracked files
- neuer `RepoStateSnapshot` mit Manifest-Referenz
- neuer `RepoMeaningMap`, weil sich die Routing-Semantik durch `AGENTS.md` und den Bootstrap-Flow materiell verschoben hat
- `ENTRY_LATEST` wird auf die neuen Anker nachgezogen

## Aktueller Haupt-Blocker

Die Repo-interne Orientierung und die erlaubte Dokument-/Prompt-Schreibflaeche sind jetzt sauberer, aber der eigentliche ChatGPT-Custom-App-Pfad bleibt blockiert, solange der Railway-Endpoint noch keinen offiziellen MCP-Transport und keine OAuth-Discovery liefert.

### Praktische Hypothesen
1. Der Server liefert fuer ChatGPT weiterhin keinen kompatiblen MCP-Transport / kein vollstaendiges Discovery-Verhalten.
2. `/.well-known/oauth-protected-resource` und die zugehoerige `WWW-Authenticate`-Kette fehlen weiterhin.
3. Der Authorization-Server-Teil unter `/oauth/*` ist noch nicht implementiert.
4. Die neue Policy-Freigabe fuer `blackboard/` und `.github/prompts/` hilft bei Handoffs/Prompts, ersetzt aber nicht den OAuth-Transport.

## Wiedereinstieg: empfohlene Reihenfolge

1. `AGENTS.md` lesen.
2. Neues `ENTRY_LATEST` lesen.
3. `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md` lesen.
4. `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md` lesen.
5. `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md` lesen.
6. `tools/mcp-writer/policy.json` kurz pruefen.
7. Dann den ersten Bridge-Thin-Slice umsetzen: offizieller MCP-Transport + Protected-Resource-Metadata + `WWW-Authenticate`.

## Copy/Paste Startprompt fuer den naechsten Chat

> START SESSION  
> WS: WS-CHATGPT-MCP-BRIDGE  
> Lies zuerst:  
> 1. `AGENTS.md`  
> 2. `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260310_V1.md`  
> 3. `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260310_V1.md`  
> 4. `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`  
> 5. `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`  
> 6. `tools/mcp-writer/policy.json`  
> Dann: implementiere den ersten Thin Slice fuer offiziellen MCP-Transport + OAuth-Discovery auf dem Railway-MCP-Writer, ohne `.github/workflows/**`, Secrets/Permissions oder riskante Pfade auszuweiten.

## PR-Report Draft (fuer den naechsten technischen PR)

### Summary (What)
- offizieller MCP-Transport fuer den Railway-MCP-Writer
- Protected-Resource-Metadata und `WWW-Authenticate`
- Vorbereitung der ChatGPT-Custom-App-Kompatibilitaet
- optionale Prompt-/Blackboard-Artefakte nur innerhalb der jetzt explizit erlaubten Writer-Pfade

### Motivation (Why)
- Der Writer ist fuer Bash/CLI und den lokalen Codex-Routing-Flow vorbereitet, aber ChatGPT kann ihn noch nicht als OAuth-faehige Custom App nutzen.
- Ohne kompatiblen MCP-/OAuth-Discovery-Flow bleibt `WS-CHATGPT-MCP-BRIDGE` der Hauptblocker.

### Scope & Constraints
- primaer `tools/mcp-writer/**`
- optional kleine Artefakte in `blackboard/**` oder `.github/prompts/**`, falls sie dem Bridge-Slice direkt dienen
- keine Aenderungen an `.github/workflows/**`
- keine No-Auth-Oeffnung des Endpoints
- keine neuen riskanten GitHub-App-Permissions
- keine Secrets im Repo

### Risk Assessment
- Risikostufe: medium
- Hauptrisiko: ein teilweiser OAuth-/Transport-Umbau erzeugt einen Zwischenzustand, in dem Bash-Pfad und ChatGPT-Pfad auseinanderlaufen
- Mitigation: thin slices, vorhandenen Writer-Smoke-Pfad gruen halten, Prompt-/Blackboard-Artefakte nur als Begleitdoku nutzen

### Gates & Checks (Evidence)
- lokaler Codex-Bootstrap/Anchor-Flow: pass
- Writer-Policy fuer neue sicheren Pfade: pass
- Bash-Writer-Pfad: pass
- MCP OAuth Discovery: aktuell fail -> Ziel: pass
- ChatGPT `read_file`/`list_tree`: aktuell not executed -> Ziel: pass

### Rollback Plan
- Service auf letzten funktionierenden Deploy-Stand zuruecksetzen
- problematische OAuth-/Transport-Aenderung revertieren
- Codex-/Status-Artefakte beibehalten; sie sind von der Bridge-Implementierung entkoppelt

### Notes
- Agent beteiligt: ChatGPT + Codex fuer Analyse/Handoffs/Patches, aber kein autonomer zweiter PR-Pfad
- Zielbild bleibt OAuth-first; Mixed nur als moeglicher Uebergang
