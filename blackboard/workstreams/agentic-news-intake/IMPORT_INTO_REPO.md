# Import into Repo

Dieses Paket ist so gebaut, dass du es in den Repo-Root entpacken oder die enthaltenen Dateien gezielt nach
`blackboard/workstreams/agentic-news-intake/` kopieren kannst.

## Zweck

- Vorläufiger Workstream für den News-/Literatur-Intake aus dem Chat
- connector-ready für den Business-Account
- noch **nicht** direkt in `library/` promoviert

## Enthaltene Kerndateien

1. `START_HERE` — menschlicher und agentischer Einstieg
1. `Manifest.json` — maschinenlesbare Arbeitsdefinition
1. `SourceRegister.csv` — deduplizierbarer Quellenkatalog
1. `SearchLog.jsonl` — append-only Intake-Verlauf
1. `ClaimPack.md` — konsolidierte Claims, Konflikte, TODOs
1. `sources/` — vorläufige Source Cards

## Import-Regel

- Behalte den Ordnerpfad unter `blackboard/workstreams/agentic-news-intake/` bei.
- Falls im Ziel-Repo neuere Versionen vorhanden sind, merge **inhaltlich** und erhöhe die Versionsnummer.
- Behandle dieses Paket als **Workstream-Kapsel**, nicht als SSOT.
