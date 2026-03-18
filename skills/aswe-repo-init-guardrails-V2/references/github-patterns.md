---
project: ASWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "GitHub-spezifische Suchmuster und Fallbacks fuer die Session-Initialisierung mit symmetrischem Session-Contract."
---

# Reference: GitHub Patterns

## Typische Pfadmuster

Beruecksichtige unter anderem:

- `meta/state/entry/`
- `meta/state/`
- `blackboard/workstreams/`
- `handbook/howto/`
- `handbook/reference/`
- `docs/`
- `state/`
- `entry/`
- `handoff/`

## Typische Dateisignale

Achte auf:

- `ENTRY`
- `ENTRY_LATEST`
- `RepoStatusUpdate`
- `StatusUpdate`
- `Workstream`
- `WS_`
- `Handoff`
- `NextChat-Handoff`
- `MeaningMap`
- `Manifest`
- `Snapshot`

## Pflichtprobes

1. Entry sibling sweep
2. Latest-status sweep
3. Workstream probe
4. Handoff sidecar probe
5. Commit probe auf relevanten Pfaden
6. Reference probe zwischen Entry, Status, Workstream und Handoff
7. repo-naher Public-GitHub-Webabgleich, wenn GitHub-primary unvollstaendig wirkt und das Repo public ist

## Sonderfall: Juengeres Status-Update

Wenn ein juengeres Status-Update gefunden wird, finalisiere nicht blind den Entry-Status als alleinige aktuelle Wahrheit. Fuehre stattdessen Contract-Reconciliation aus.
