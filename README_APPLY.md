# ASWE Codex Update Bundle

Dieses Bundle enthaelt die umsetzbaren Repo-Dateien fuer den vereinbarten Slice:

- `AGENTS.md`
- `codex.toml`
- `.vscode/tasks.json`
- `scripts/aswe_bootstrap.py`
- `scripts/aswe_update_anchors.py`
- `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`

## Ziel

- ein klarer Einstiegspunkt fuer ChatGPT und Codex
- repo-lokale Codex-Defaults
- 1-Klick-Tasks fuer Bootstrap, Anchor-Refresh, Preflight und ToolingSnapshot
- keine NavMap, wie gewuenscht

## Schnell anwenden

1. Dateien an die entsprechenden Repo-Pfade kopieren.
2. In VS Code die neuen Tasks pruefen.
3. Zuerst `ASWE: Bootstrap (Read Entry + Status + WS)` laufen lassen.
4. Danach `ASWE: Update Anchors` und `ASWE: Preflight Changed Files` testen.
5. Optional `ASWE: Export Tooling Snapshot` laufen lassen.

## Hinweis

Dieses Bundle wurde als Patch-Artefakt vorbereitet.
Es ist nicht direkt in das GitHub-Repo committed worden.
