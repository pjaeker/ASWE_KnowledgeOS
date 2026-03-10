---
project: ASWE_KnowledgeOS
doc_type: howto
version: V1
date: 2026-03-10
status: draft
audience: [human, llm]
intent: "Kurz-HowTo fuer den repo-lokalen Codex-Flow mit AGENTS.md, codex.toml und VS-Code-Tasks fuer Bootstrap, Anchor-Refresh, Preflight und ToolingSnapshot."
tags:
  - layer/handbook
  - artifact/howto
  - topic/codex
  - topic/workstreams
  - topic/router
  - topic/evidence
---

# HowTo: Codex als Workstream Runner im Repo

## Ziel

Codex soll im Repo `ASWE_KnowledgeOS` schneller und reproduzierbarer arbeiten, ohne einen zweiten PR-Pfad neben dem Writer zu schaffen.

## Neue Bausteine

- `AGENTS.md` als operative Startkarte
- `codex.toml` als repo-lokale Default-Policy
- `.vscode/tasks.json` mit vier ASWE-Tasks
- `scripts/aswe_bootstrap.py`
- `scripts/aswe_update_anchors.py`

## Vorbedingungen

- Repo ist lokal geoeffnet
- Python ist verfuegbar
- Bash ist fuer die bestehenden Security-Tasks verfuegbar
- PowerShell ist fuer den ToolingSnapshot-Export verfuegbar

## Empfohlener Ablauf pro Session

### 1) Orientierung
Starte zuerst:

- `ASWE: Bootstrap (Read Entry + Status + WS)`

Ergebnis:
- zeigt aktuelles `ENTRY_LATEST`
- zeigt aktuelles `RepoStatusUpdate`
- zeigt die drei neuesten Workstream-Kapseln
- zeigt die nachgelagerten SSOT-Anker

### 2) Entry-Pointer aktualisieren
Wenn du die Session-Anker frisch ziehen willst:

- `ASWE: Update Anchors`

Ergebnis:
- schreibt eine neue `ENTRY_LATEST`-Datei fuer den aktuellen Tag
- referenziert die neuesten vorhandenen Versionen von:
  - RepoStatusUpdate
  - MeaningMap
  - State Snapshot
  - Manifest
  - Workstreams

Wichtig:
- dieser Schritt regeneriert MeaningMap, Snapshot und Manifest nicht
- er aktualisiert nur die Pointer auf die neuesten vorhandenen Artefakte

### 3) Aenderungen lokal pruefen
Vor einem Diff oder PR-Report:

- `ASWE: Preflight Changed Files`

Ergebnis:
- changed-files Security-Scan
- bestehender lokaler Preflight

### 4) Evidence erzeugen
Wenn der Slice tooling- oder umgebungsrelevant ist:

- `ASWE: Export Tooling Snapshot`

Ergebnis:
- versioniertes YAML unter `meta/state/tooling/*ToolingSnapshot*_V*.yml`
- Digest in der Konsole
- repo-lokale `codex.toml` wird als safe subset mit erfasst, falls vorhanden

## Entscheidungsregeln

- Writer bleibt der einzige PR-Erzeuger
- Codex darf keine Governance-Abkuerzung einfuehren
- Hooks sind Feedback, nicht Enforcement
- Stop-&-Ask bei:
  - `.github/workflows/**`
  - Secrets, Tokens, private keys
  - riskanten Allowlist-Erweiterungen
  - neuen GitHub-App-Permissions

## Schnellstart

1. `AGENTS.md` lesen
2. `ASWE: Bootstrap (Read Entry + Status + WS)` ausfuehren
3. aktiven Workstream bestimmen
4. Thin Slice umsetzen
5. `ASWE: Preflight Changed Files` ausfuehren
6. optional `ASWE: Export Tooling Snapshot`

## Erwartete Outputs

- Patch-Spec
- konkrete Dateiliste
- Diff oder Patch
- Checks / Evidence
- Next Thin Slice
