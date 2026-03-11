# AGENTS.md - ASWE KnowledgeOS Repo-Karte

Diese Datei ist die repo-lokale operative Startkarte fuer Codex und Copilot im Repo `ASWE_KnowledgeOS`.
ChatGPT GUI startet semantisch ueber `ENTRY_LATEST` und trifft danach denselben kanonischen Kernfluss.
Diese Datei ersetzt kein SSOT-Artefakt, sondern zeigt auf die autoritativen Anker.

## Read first

1. `meta/state/entry/*ENTRY_LATEST*_V*.md`
2. `meta/state/*RepoStatusUpdate*_V*.md`
3. `blackboard/workstreams/*.md`

## Zielbild fuer neue Sessions

- ChatGPT GUI startet semantisch mit **ENTRY_LATEST**.
- Codex/Copilot starten repo-lokal in `AGENTS.md` und wechseln dann in denselben Kernfluss.
- Der kanonische Kernfluss lautet: `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`.
- `ENTRY_LATEST` bleibt ein duenner Pointer-Bund, kein operativer Sammelpunkt.
- `NextChat-Handoff` ist ein optionales Resume-Sidecar, keine Standardvoraussetzung.
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
3. Changed-files Preflight und Session-Contract-Validator ausfuehren.
4. Evidence erzeugen, wenn relevant:
   - ToolingSnapshot
   - PR-Report Draft
   - RepoStatusUpdate nur bei geaenderter operativer Wahrheit
   - NextChat-Handoff nur bei echtem Resume-Bedarf

## Closeout-Reihenfolge

1. `RepoStatusUpdate` aktualisieren, wenn sich operative Wahrheit geaendert hat.
2. Betroffenen Workstream aktualisieren, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind.
3. MeaningMap, Snapshot und Manifest nur bei echter Struktur- oder Routing-Aenderung aktualisieren.
4. Danach `ENTRY_LATEST` refreshen.

## Wichtige Invarianten

- Der Writer bleibt der einzige autoritative PR-Erzeuger.
- Kein zweiter autonomer PR-Pfad durch Codex.
- Hooks sind Feedback, nicht Enforcement.
- CI und Writer bleiben die harten Governance-Layer.
- Legacy-Prompt-Dateien sind kein primaerer GUI-Weg.

## Standard-Tasks in VS Code

- `ASWE: Bootstrap (Read Entry + Status + WS)`
- `ASWE: Validate Session Contract`
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
