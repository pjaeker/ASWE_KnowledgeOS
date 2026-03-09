---
project: AgenticSWE_KnowledgeOS
doc_type: handoff
version: V1
date: 2026-03-09
status: draft
audience: [human, llm]
intent: "Handoff für den nächsten Chat/Runner: Writer ist technisch grün; nächster Fokus ist die ChatGPT-Custom-App-/MCP-Bridge mit OAuth-first auf dem Railway-MCP-Writer."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/mcp
  - topic/oauth
  - topic/chatgpt
  - topic/meta-state
  - topic/github
  - topic/codex
  - topic/gates
  - topic/evidence
---

# Handoff — Nächster Chat / nächster Runner (ChatGPT MCP Bridge)

## Ziel für den nächsten Zyklus

Den bereits funktionierenden Railway-MCP-Writer vom Zustand „per Bash/CLI bis Draft-PR grün“ auf „von ChatGPT als Custom App per OAuth-first ansprechbar“ weiterführen.

## Was im letzten Zyklus erreicht wurde

### 1) Writer-Stabilisierung
- RS256-/Private-Key-/GitHub-App-Blocker wurde behoben
- Read- und Write-Smokes des Writers sind erfolgreich
- Branch / Commit / Draft-PR wurden per Bash/CLI erfolgreich getestet

### 2) ChatGPT-Seite
- GitHub in ChatGPT verbunden
- GitHub-Read/Navigation in ChatGPT funktioniert
- Versuch der Custom-App-Erstellung gegen den Railway-Endpoint erreicht den Server, scheitert aber an fehlender OAuth-/MCP-Kompatibilität

### 3) Dokumentations-/Planungsstand
- OAuth-first als Zielbild festgelegt
- Mixed nur als Übergang erwogen, nicht als bevorzugter Endzustand
- Codex-Handover-/Prompt-Paket wurde vorbereitet

## Aktueller Haupt-Blocker

Der aktuelle Railway-Endpoint ist noch ein für Bash/CLI praktikabler Writer-Pfad, aber noch kein ChatGPT-kompatibler MCP-Server mit offiziellem MCP-Transport und OAuth-Discovery.

### Praktische Hypothesen
1. Der Server liefert für ChatGPT noch keinen offiziellen MCP-Transport / kein kompatibles Discovery-Verhalten.
2. `/.well-known/oauth-protected-resource` und die zugehörige `WWW-Authenticate`-Kette fehlen noch.
3. Der Authorization-Server-Teil unter `/oauth/*` ist noch nicht implementiert.
4. Das bisherige Shared-Secret-Modell ist für ChatGPT-Custom-App-Setup nicht ausreichend.

## Wiedereinstieg: empfohlene Reihenfolge

1. Im Codepfad zuerst MCP-Transport + Discovery ergänzen:
   - offizieller MCP-Transport
   - `/.well-known/oauth-protected-resource`
   - `401` + `WWW-Authenticate`
2. Danach OAuth-first ergänzen:
   - `/oauth/.well-known/openid-configuration`
   - `/oauth/.well-known/oauth-authorization-server`
   - `/oauth/authorize`
   - `/oauth/token`
   - `/oauth/jwks`
   - optional `/oauth/register`
3. Dann neuen ChatGPT-Smoke-Test:
   - Custom App erneut anlegen
   - `list_tree` oder `read_file` aus ChatGPT
4. Erst danach:
   - `mcp.read` / `mcp.write` sauber trennen
   - Railway-CLI-Automation und Smoke-Skripte nachziehen

## Copy/Paste Startprompt für den nächsten Chat

> START SESSION  
> WS: WS-CHATGPT-MCP-BRIDGE  
> Lies zuerst:  
> 1. `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260309_V1.md`  
> 2. `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`  
> 3. `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`  
> 4. `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260305_V1.md`  
> 5. `handbook/reference/AgenticSWE_PRReport_Template_Reference_20260303_V1.md`  
> Dann: implementiere den ersten Thin Slice für offiziellen MCP-Transport + OAuth-Discovery auf dem Railway-MCP-Writer, ohne `.github/workflows/**`, Secrets/Permissions oder riskante Pfade auszuweiten.

## PR-Report Draft (für den nächsten technischen PR)

### Summary (What)
- Ergänzung von offiziellem MCP-Transport und OAuth-Discovery auf dem Railway-MCP-Writer
- Vorbereitung der ChatGPT-Custom-App-Kompatibilität
- keine Erweiterung der Write-Fläche über die bestehende PR-only-Governance hinaus

### Motivation (Why)
- Der Writer ist per Bash/CLI bereits grün, aber ChatGPT kann ihn noch nicht als OAuth-fähige Custom App nutzen.
- Ohne MCP-/OAuth-kompatiblen Discovery-Flow bleibt die ChatGPT-Bridge blockiert.

### Scope & Constraints
- Nur `tools/mcp-writer/**` plus ggf. kleine Doku-/Status-Artefakte in sicheren Pfaden
- Keine Änderungen an `.github/workflows/**`
- Keine No-Auth-Öffnung des öffentlichen Endpoints
- Keine neuen riskanten Permissions
- Keine Secrets im Repo

### Risk Assessment
- Risikostufe: medium
- Hauptrisiko: Server-Auth-/Discovery-Umbau erzeugt einen Zwischenzustand, in dem Bash-Pfad oder ChatGPT-Pfad temporär inkonsistent sind
- Mitigation: thin slices, Legacy-/Rollback-Pfad, Railway-Smokes und kleine ChatGPT-Read-Tests zuerst

### Gates & Checks (Evidence)
- bestehender Writer-Bash-Pfad: pass
- GitHub-Read in ChatGPT: pass
- MCP OAuth Discovery: aktuell fail → Ziel: pass
- ChatGPT `read_file`/`list_tree`: aktuell not executed → Ziel: pass
- Secrets Scan: keine Secrets in Commit-Inhalten; exponierte Test-Secrets rotieren

### Rollback Plan
- Service auf letzten funktionierenden Deploy-Stand zurücksetzen
- problematische OAuth-/MCP-Änderung revertieren
- Legacy-Bash-Pfad bis zur grünen Bridge optional weiter nutzbar halten

### Notes
- Agent beteiligt: ChatGPT + Codex (Analyse/Hinweise/Patches), aber kein autonomer zweiter PR-Pfad
- Zielbild bleibt OAuth-first; Mixed nur als möglicher Übergang
