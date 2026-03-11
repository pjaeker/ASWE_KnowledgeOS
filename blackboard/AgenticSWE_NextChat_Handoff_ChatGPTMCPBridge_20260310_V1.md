---
project: AgenticSWE_KnowledgeOS
doc_type: handoff
version: V1
date: 2026-03-10
status: draft
audience: [human, llm]
intent: "Optionales Resume-Artefakt fuer einen moeglichen naechsten Bridge-Lauf. Hilfreich fuer spezifischen Kontextuebergang, aber nicht noetig fuer einen neuen Standardstart."
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

# Handoff - Optionales Resume-Sidecar (ChatGPT MCP Bridge)

## Status dieses Artefakts

- Dieses Handoff ist optional.
- Ein neuer Chat kann ohne dieses Handoff korrekt starten.
- Der kanonische Primaerpfad bleibt: `AGENTS.md -> ENTRY_LATEST -> RepoStatusUpdate -> Workstream`.
- Nutze dieses Artefakt nur, wenn du den spezifischen Bridge-Resume-Kontext aus dem letzten Zyklus wirklich brauchst.

## Rollenabgrenzung

- `AGENTS.md`, `ENTRY_LATEST`, `RepoStatusUpdate` und `Workstream` bilden den kanonischen Navigationsvertrag.
- Dieses Handoff ist nur ein optionales Resume-Artefakt fuer kurzlebigen Bridge-Kontext.
- Legacy Prompt-Dateien unter `.github/prompts/**` sind manuelle Alt-Werkzeuge und nicht der Standardpfad.

## Ziel fuer einen moeglichen naechsten Bridge-Zyklus

Den bereits technisch gruennen Railway-MCP-Writer vom Stand "Bash/CLI bis Draft-PR + Codex-Routing/Handover-Layer steht" auf "ChatGPT-Custom-App per offiziellem MCP-Transport und OAuth-first erreichbar" weiterfuehren.

## Was im letzten Zyklus erreicht wurde

### 1) Codex-/Routing-Layer im Repo
- `AGENTS.md` definiert den repo-lokalen Adapter in den kanonischen Startpfad.
- `codex.toml` legt repo-lokale Codex-Defaults fuer reproduzierbare Runs fest.
- `.vscode/tasks.json` bietet die ASWE-Tasks fuer Bootstrap, Validator, Anchor-Refresh, Changed-Files-Preflight und ToolingSnapshot.
- `scripts/aswe_bootstrap.py` und `scripts/aswe_update_anchors.py` kapseln den Start- und Anchor-Refresh-Flow.
- `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md` dokumentiert den lokalen Runner-Ablauf.

### 2) Writer-Policy Follow-up
- `tools/mcp-writer/policy.json` erlaubt nun zusaetzlich `blackboard/` und `.github/prompts/`.
- `.github/workflows/**`, `infra/**`, `secrets/**` und `.env*` bleiben gesperrt.
- Der Writer bleibt der einzige autoritative PR-Erzeuger.

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

## Optionaler Wiedereinstieg fuer Bridge-Resume

1. Starte kanonisch ueber `AGENTS.md`, `ENTRY_LATEST`, `RepoStatusUpdate` und den passenden Workstream.
2. Lies dieses Handoff nur zusaetzlich, wenn du den spezifischen Bridge-Kontext aus dem letzten Zyklus wiederaufnehmen willst.
3. Lies dann optional auch `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md` und `tools/mcp-writer/policy.json`.
4. Setze danach den ersten Bridge-Thin-Slice um: offizieller MCP-Transport + Protected-Resource-Metadata + `WWW-Authenticate`.

## Optionaler Operator Shortcut (manual fallback)

> OPTIONAL RESUME SHORTCUT
> WS: WS-CHATGPT-MCP-BRIDGE
> Standardstart bleibt: `AGENTS.md -> ENTRY_LATEST -> RepoStatusUpdate -> Workstream`.
> Wenn du den konkreten Bridge-Resume-Kontext brauchst, lies danach zusaetzlich dieses Handoff sowie `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md` und `tools/mcp-writer/policy.json`.
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
