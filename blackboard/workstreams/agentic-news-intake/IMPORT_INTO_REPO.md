# Import into Repo

Dieses Paket ist so gebaut, dass du es in den Repo-Root entpacken oder die enthaltenen Dateien gezielt nach
`blackboard/workstreams/agentic-news-intake/` kopieren kannst.

## Zweck

- Vorlaeufiger Workstream fuer den News-/Literatur-Intake aus dem Chat
- connector-ready fuer den Business-Account
- noch **nicht** direkt in `library/` promoviert
- V2 fuehrt den bisherigen V1-Workstream fort, statt ihn zu ersetzen

## Enthaltene Kerndateien

1. `START_HERE` — einziger menschlicher und agentischer Router fuer die naechste Session
1. `Manifest.json` — maschinenlesbare Arbeitsdefinition
1. `ConnectorIndex.json` — Read-Order und Schreibziele
1. `SourceRegister.csv` — deduplizierbarer Quellenkatalog
1. `SearchLog.jsonl` — append-only Intake-Verlauf
1. `ClaimPack.md` — konsolidierte Claims, Konflikte, TODOs
1. `ReadingQueue.md` — priorisierte Rechecks und Triangulation
1. `SessionArchive.md` — Herkunft und Delta-Session-Notiz
1. `sources/` — vorlaeufige Source Cards mit Mehrwert

## Import-Regel

- Behalte den Ordnerpfad unter `blackboard/workstreams/agentic-news-intake/` bei.
- Falls im Ziel-Repo neuere Versionen vorhanden sind, merge **inhaltlich** und erhoehe die Versionsnummer.
- Behandle dieses Paket als **Workstream-Kapsel**, nicht als SSOT.
- Behalte fuer die naechste Session **genau ein** `...START_HERE...` Dokument als Router bei.

## Versionsentscheidung

- V2-Dateien bleiben im selben Ordner wie V1-Dateien.
- Kein separater `v2/`-Unterordner, damit der Router nicht auf mehrere Einstiegspfade verteilt wird.
- `SearchLog.jsonl` bleibt auf derselben Datei und wird append-only fortgeschrieben.
