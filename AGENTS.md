# AGENTS.md — ASWE KnowledgeOS Repo-Karte

Diese Datei ist die operative Startkarte fuer ChatGPT, Codex und Copilot im Repo `ASWE_KnowledgeOS`.
Sie ersetzt kein SSOT-Artefakt, sondern zeigt auf die autoritativen Anker.

## Read first

1. `meta/state/entry/*ENTRY_LATEST*_V*.md`
2. `meta/state/*RepoStatusUpdate*_V*.md`
3. `blackboard/workstreams/*.md`

## Zielbild fuer neue Sessions

- Startpunkt ist **Entry-LATEST**.
- Danach folgt das aktuelle **RepoStatusUpdate**.
- Danach werden nur die **aktiven Workstreams** geoeffnet.
- MeaningMap, Snapshot und Manifest dienen als nachgelagerte SSOT-Anker fuer Determinismus, Audit und Strukturfragen.

## Wenn du etwas finden willst

Nutze diese Reihenfolge:

1. `meta/state/entry/*ENTRY_LATEST*_V*.md`
2. `meta/state/*RepoStatusUpdate*_V*.md`
3. `blackboard/workstreams/*.md`
4. `meta/state/*RepoMeaningMap*_V*.md`
5. `meta/state/*RepoStateSnapshot*_V*.md`
6. `meta/state/*RepoManifest*_V*.json`

## Wenn du etwas aendern willst

1. Aktiven Workstream bestimmen.
2. Nur einen kleinen Thin Slice schneiden.
3. Changed-files Preflight ausfuehren.
4. Evidence erzeugen, wenn relevant:
   - ToolingSnapshot
   - PR-Report Draft
   - Handoff / Status Update nur bei echtem Erkenntnisgewinn

## Wichtige Invarianten

- Der Writer bleibt der einzige autoritative PR-Erzeuger.
- Kein zweiter autonomer PR-Pfad durch Codex.
- Hooks sind Feedback, nicht Enforcement.
- CI und Writer bleiben die harten Governance-Layer.

## Standard-Tasks in VS Code

- `ASWE: Bootstrap (Read Entry + Status + WS)`
- `ASWE: Update Anchors`
- `ASWE: Preflight Changed Files`
- `ASWE: Export Tooling Snapshot`

## Stop-&-Ask

Sofort anhalten bei:

- `.github/workflows/**`
- Secrets, Tokens, private keys
- Erweiterung von riskanten Allowlists
- neuen GitHub-App-Permissions
- No-Auth- oder Nebenpfaden um den Writer herum

## Codex-Konfiguration

Repo-lokale Defaults liegen in `codex.toml`.
Der bestehende ToolingSnapshot-Exporter kann diese Datei als safe subset lesen.

## Erwartete Outputs pro Slice

- Patch-Spec
- konkrete Dateiliste
- Diff oder Patch
- Checks / Evidence
- Next Thin Slice
