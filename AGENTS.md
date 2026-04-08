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

## Architecture Evolution / Codex-App Sonderfall

Wenn die Session explizit auf `ArchitectureEvolution` mit Fokus auf `EvidenceIntake` und `SemanticEvolution` laeuft, lies nach `ENTRY_LATEST -> RepoStatusUpdate -> Workstream` zusaetzlich:

1. `handbook/reference/ASWE_Erkenntnisprozess_Rollenmodell_20260408_V1.md`
2. `handbook/protocol/ASWE_BoundedAutonomy_Orchestrierungsprotokoll_20260408_V1.md`
3. `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260408_V1.md`
4. `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260408_V1.md`
5. `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260408_V1.md`
6. `handbook/reference/ASWE_EvidenceIntake_Methodenmodell_20260408_V1.md`
7. `handbook/reference/ASWE_EvidenceIntake_RoleContract_20260408_V1.md`
8. `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md`
9. `handbook/reference/ASWE_SemanticEvolution_Methodenmodell_20260408_V1.md`
10. `handbook/reference/ASWE_SemanticEvolution_RoleContract_20260408_V1.md`
11. `handbook/reference/ASWE_CodexApp_StartContract_20260408_V1.md`

Wenn die Arbeit in der Codex App ausgefuehrt wird, nutze ausserdem als thread-lokale Operating Guidance:
- `handbook/reference/ASWE_CodexApp_EvidenceIntake_Systemprompt_20260408_V1.md`
- `handbook/reference/ASWE_CodexApp_SemanticEvolution_Systemprompt_20260408_V1.md`

Invarianten fuer diesen Sonderfall:
- `EvidenceIntake` und `SemanticEvolution` werden als drei-Thread-Topologie mit `Architecture Evolution - Umbrella` parallel eingerichtet.
- `EvidenceIntake` bleibt epistemisch der erste produktive Primaerpfad.
- keine finale SSOT-Umschreibung durch bounded Rollen
- kein neuer Writer-Pfad
- `.codex`-Materialisierung nur nach nachgewiesenem Mehrwert

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

Die kanonische Repo-Konfiguration fuer Codex liegt in:

- `.codex/config.toml`

Die fruehere Root-Datei `codex.toml` wurde entfernt, um doppelte Quellen und Prioritaetskonflikte zu vermeiden.

Hinweise:
- Teamweite Runtime-Defaults liegen ausschliesslich in `.codex/config.toml`.
- Lokale Trust-Einstellungen bleiben benutzerspezifisch und werden nicht ins Repo committed.
- Railway-/Diagnose-Skripte sollen sich an der Repo-Konfiguration unter `.codex/config.toml` orientieren.

## Erwartete Outputs pro Slice

- Patch-Spec
- konkrete Dateiliste
- Diff oder Patch
- Checks / Evidence
- Next Thin Slice
