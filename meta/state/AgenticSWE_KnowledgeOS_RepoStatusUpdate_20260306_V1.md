---
project: ASWE_KnowledgeOS
doc_type: state
date: 2026-03-06
version: V1
status: draft
audience: [human, llm]
intent: "Zwischenstands-Dokumentation für den MCP-Writer/Railway-Setup-Stand inkl. E2E-Reifegrad, Workstream-Status, Gates/Evidence und nächster Thin Slices."
tags:
  - layer/state
  - artifact/status-update
  - topic/status
  - topic/gate
  - topic/evidence
  - topic/codex
  - topic/github
  - topic/write-via-pr
---

# Repo Status Update — MCP-Writer / Railway

## 1) Executive Summary

- Der MCP-Writer-Scaffold wurde im Repo vorbereitet und als Railway-Service deployed.
- Der ursprüngliche Build-Blocker lag am falschen Root-/Dockerfile-Pfad; nach Korrektur war der Build erfolgreich.
- Die erforderlichen Runtime-Variablen wurden gesetzt; der Service steht in Railway auf `online`.
- `GET /healthz` und `GET /tools` liefen erfolgreich und bestätigen, dass Container, Routing und Basis-Konfiguration erreichbar sind.
- Der erste geschützte `POST /mcp`-Smoke-Test scheitert aktuell serverseitig an der JWT/RS256-Verarbeitung im GitHub-App-Pfad.
- Dadurch sind GitHub-nahe Funktionen (`list_tree`, `read_file`, `create_branch`, `commit_files`, `open_pr`) noch nicht end-to-end validiert.
- ChatGPT-Developer-Mode-/MCP-Einbindung wurde noch nicht umgesetzt; zuerst muss der GitHub-App-/JWT-Blocker behoben werden.

## 2) E2E Reifegrad (UI → Change → Writer → PR → CI → Merge)

| Segment | Status | Evidence |
|---|---|---|
| Railway Build / Containerstart | gelb → grün | Build erst nach Korrektur des Root-/Dockerfile-Pfads erfolgreich |
| Public Endpoint / Service Reachability | grün | `GET /healthz` erfolgreich |
| Tool Discovery | grün | `GET /tools` erfolgreich |
| Auth vor `/mcp` | gelb | Shared Secret gesetzt; geschützter POST erreicht den Server |
| GitHub App JWT / Installation Flow | rot | `POST /mcp` scheitert an RS256-/asymmetrischem Key-Fehler |
| Branch/Commit/PR Flow | rot | noch nicht validiert |
| CI / Required Checks | grau | noch nicht ausgelöst |
| Merge-Flow | grau | noch nicht relevant |

## 3) Active Workstreams (max 3)

| WS | Ziel | DoD | Next Slice | Blocker | Evidence |
|---|---|---|---|---|---|
| WS-MCP-WRITER-RAILWAY | Railway-basierten MCP-Writer stabil deployen und GitHub-App-gestützte Draft-PRs ermöglichen | Service online; GitHub-App-Auth funktioniert; `create_branch` + `commit_files` + `open_pr` laufen auf Allowlist-Pfad | GitHub-App-/JWT-Fehler isolieren und beheben; dann erneute Smoke-Tests | RS256-/Private-Key-/JWT-Problem im GitHub-App-Pfad | Railway-Status `online`; erfolgreiche GET-Tests; fehlgeschlagener erster POST-Test |
| WS-CHATGPT-MCP-BRIDGE | Nach stabilem Writer die ChatGPT-Anbindung vorbereiten | echter MCP-Transport oder kompatibler Remote-Endpunkt definiert; App kann Toolliste laden | erst nach grünem GitHub-App-Flow aufnehmen | hängt vollständig an WS-MCP-WRITER-RAILWAY | noch nicht gestartet |

## 4) Gates (SSOT) — authoritative enforcement pro Gate

| Gate | Authoritative | Status | Coverage-Lücke | Evidence |
|---|---|---|---|---|
| Write-Surface / Allowlist / Blocklist / Limits | Writer | theoretisch vorhanden, praktisch noch nicht validiert | End-to-end-Validierung blockiert durch GitHub-App/JWT-Fehler | Policy-Datei im Scaffold vorhanden; GitHub-Operationen noch nicht grün |
| PR-Report Pflicht | Writer / Review | noch nicht getestet | kein erfolgreicher PR-Lauf | PR-Flow noch blockiert |
| Reachability / Health | Railway + Service Runtime | grün | keine | `GET /healthz` erfolgreich |
| Tool Discovery | Service Runtime | grün | keine | `GET /tools` erfolgreich |
| GitHub Read/Write via App | GitHub App + Writer | rot | JWT-/Key-Verarbeitung | erster `POST /mcp` scheitert serverseitig |
| CI Required Checks | GitHub PR + CI | grau | noch kein PR erzeugt | n/a |
| Secrets / Sensitive Data Hygiene | Mensch + Writer + CI | gelb | bereits im Chat/Logs geteilte Secrets müssen als potentiell kompromittiert betrachtet und rotiert werden | keine Secrets in diese Doku übernommen |

## 5) Tooling & Environment

- Plattform: Railway (Remote Service) + lokaler Windows/PowerShell-Testpfad
- Service-Status: `online`
- Erfolgreiche Basis-Tests:
  - `GET /healthz`
  - `GET /tools`
- Fehlgeschlagener nächster Test:
  - `POST /mcp` mit GitHub-App-JWT-Pfad
- GitHub-App-Basis:
  - App erstellt
  - Installation erfolgt
  - App-ID, Installation-ID, Private Key in Railway gesetzt
- Sicherheit:
  - `MCP_SHARED_SECRET` gesetzt
  - Empfohlen: Secret rotieren, falls es in Chat/Logs unmaskiert verwendet oder geteilt wurde

## 6) Entscheidungen (ADRs / operative Entscheidungen)

- Für diesen Zwischenstand wurde der MCP-Writer als separater Railway-Service aufgebaut.
- Der Writer bleibt PR-only; es wurde kein Direktschreibpfad auf `main` eingeführt.
- Die ChatGPT-Einbindung wird nachgelagert behandelt; zuerst zählt die Stabilisierung des Writer-/GitHub-App-Pfads.
- ENTRY/Manifest/MeaningMap/Snapshot werden heute nicht mit verändert, um keinen halbfrischen SSOT-Anker zu erzeugen.

## 7) Risiken & Stop-&-Ask

- Risiko: GitHub-App-Auth fehlschlägt trotz korrekter Variablen, weil PEM-/Zeilenumbruch-/JWT-Verarbeitung inkonsistent ist.
- Risiko: ein bereits genutztes `MCP_SHARED_SECRET` oder testweise geposteter Bearer-Token könnte kompromittiert sein → rotieren.
- Risiko: voreilige ChatGPT-MCP-Einbindung würde Fehlersymptome verschleiern, bevor der Writer selbst stabil ist.
- Stop-&-Ask:
  - Änderungen an `.github/workflows/**`
  - Erweiterung der Allowlist in riskante Pfade
  - neue GitHub-App-Permissions über Contents/PR/Metadata hinaus
  - produktive Nutzung ohne Secret-Rotation nach exponierten Tests

## 8) Next PR Slices (3–5)

1. GitHub-App-/JWT-Problem reproduzierbar isolieren und fixen; danach `list_tree` und `read_file` erfolgreich grün bekommen.
2. Anschließend Branch-Smoke-Test auf Allowlist-Pfad (`meta/` oder `handbook/`) mit kleinem Commit.
3. Danach Draft-PR-End-to-End validieren und PR-Report-Pflicht mitführen.
4. Erst dann prüfen, ob der Service auf einen echten MCP-Transport für ChatGPT-Web umgebaut werden soll.
5. Optional: nach erfolgreichem End-to-End-Lauf SSOT-Anker/Status Pack mit aktualisierten Evidence-Referenzen nachziehen.

## 9) Evidence-Pointer

- Railway Build- und Runtime-Logs (nicht in diese Datei kopiert)
- Erfolgreiche Smoke-Tests für `GET /healthz` und `GET /tools`
- Fehlgeschlagener `POST /mcp`-Test mit RS256-/JWT-Hinweis
- Lokale Notizen / Chatverlauf zu App-ID, Installation, Variablen und Root-Directory-Korrektur
