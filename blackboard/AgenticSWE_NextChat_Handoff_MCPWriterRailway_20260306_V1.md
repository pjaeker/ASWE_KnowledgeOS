---
project: AgenticSWE_KnowledgeOS
doc_type: handoff
version: V1
date: 2026-03-06
status: draft
audience: [human, llm]
intent: "Handoff für den nächsten Chat/Runner: aktueller Stand des Railway-MCP-Writers, offener Blocker, Evidence und empfohlener Wiedereinstieg."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/write-via-pr
  - topic/meta-state
  - topic/github
  - topic/codex
  - topic/gates
  - topic/evidence
---

# Handoff — Nächster Chat / nächster Runner (MCP Writer + Railway)

## Ziel für den nächsten Zyklus

Den aktuell online laufenden Railway-MCP-Writer vom Zustand „Basis erreichbar, GitHub-App-Pfad blockiert“ auf „erster erfolgreicher Draft-PR“ bringen.

## Was in diesem Zyklus erreicht wurde

### 1) Infrastruktur / Hosting
- Railway-Projekt angelegt
- Repo verbunden
- Root Directory / Dockerfile-Pfad korrigiert
- Build erfolgreich
- Service steht auf `online`

### 2) Konfiguration
- GitHub App erstellt und installiert
- App-ID, Installation-ID, Private Key in Railway gesetzt
- `MCP_SHARED_SECRET` gesetzt
- Service-Variablen deployed

### 3) Smoke Tests
- `GET /healthz` erfolgreich
- `GET /tools` erfolgreich
- erster geschützter `POST /mcp` erreicht den Server, scheitert aber an JWT-/RS256-Key-Verarbeitung

## Aktueller Haupt-Blocker

Der GitHub-App-Pfad im Writer scheitert beim ersten echten `POST /mcp`-Aufruf serverseitig mit einem Hinweis auf RS256 / asymmetrischen Schlüssel.

### Praktische Hypothesen
1. `GITHUB_PRIVATE_KEY` wurde formal gesetzt, aber PEM-/Zeilenumbrüche werden falsch verarbeitet.
2. Der Server behandelt einen simplen Bearer-Teststring an einer Stelle fälschlich wie ein RS256-JWT.
3. Die GitHub-App-JWT-Signierung nutzt nicht den tatsächlich korrekt geladenen RSA-Key.

## Wiedereinstieg: empfohlene Reihenfolge

1. Railway Runtime-Logs zum fehlgeschlagenen `POST /mcp` direkt an der Auth-/JWT-Stelle lesen.
2. Im Codepfad prüfen:
   - private key loading
   - `\n`-Normalisierung
   - JWT-Signierung
   - Trennung zwischen `MCP_SHARED_SECRET`-Auth und GitHub-App-JWT
3. Danach neuen Smoke-Test:
   - `list_tree`
   - `read_file`
4. Erst danach:
   - `create_branch`
   - `commit_files`
   - `open_pr`

## Copy/Paste Startprompt für den nächsten Chat

> START SESSION  
> WS: WS-MCP-WRITER-RAILWAY  
> Lies zuerst:  
> 1. `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260306_V1.md`  
> 2. `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260306_V1.md`  
> 3. `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260305_V1.md`  
> 4. `handbook/reference/AgenticSWE_PRReport_Template_Reference_20260303_V1.md`  
> Dann: isoliere den RS256-/GitHub-App-Fehler im Writer, ohne `.github/workflows/**` oder Secrets/Permissions auszuweiten.

## PR-Report Draft (für den nächsten technischen PR)

### Summary (What)
- Fix des GitHub-App-/JWT-Pfads im Railway-MCP-Writer
- erfolgreicher GitHub-Read/Write-Smoke-Test
- optional: kleine Meta-Datei auf Allowlist-Pfad und Draft-PR

### Motivation (Why)
- Ohne stabilen GitHub-App-Flow kann der Writer keine PR-only-Änderungen erzeugen.
- Die ChatGPT-MCP-Einbindung sollte erst nach stabilem Writer erfolgen.

### Scope & Constraints
- Nur `tools/mcp-writer/**` plus ggf. kleine Testdatei in Allowlist-Pfad
- Keine Änderungen an `.github/workflows/**`
- Keine neuen riskanten Permissions
- Keine Secrets im Repo

### Risk Assessment
- Risikostufe: low bis medium
- Hauptrisiko: Auth-/Key-Fix unvollständig, dadurch weiterhin keine GitHub-Operationen
- Mitigation: kleine Smoke-Tests in klarer Reihenfolge; Secret-Rotation falls nötig

### Gates & Checks (Evidence)
- `/healthz`: pass
- `/tools`: pass
- `/mcp` Read-Test: aktuell fail → Ziel: pass
- Branch/Commit/PR: aktuell not executed → Ziel: pass
- Secrets Scan: keine Secrets in Commit-Inhalten; exponierte Test-Secrets rotieren

### Rollback Plan
- Service auf letzten funktionierenden Deploy-Stand zurücksetzen
- problematische Auth-Änderung revertieren
- bei Bedarf neuen Private Key generieren und Variablen neu setzen

### Notes
- Agent beteiligt: ChatGPT + Codex (Analyse/Hinweise), aber kein autonomer PR-Pfad
- ChatGPT-Developer-Mode-/MCP-Einbindung noch offen
