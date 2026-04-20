# Materialization Guide — Agentic News Intake V4

Dieses Paket ist als **manueller Importbatch** fuer `blackboard/workstreams/agentic-news-intake/` gebaut.

## Enthaltene Dateien

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260420_V4.md`
2. `AgenticSWE_AgenticNewsIntake_Manifest_20260420_V4.json`
3. `AgenticSWE_AgenticNewsIntake_ConnectorIndex_20260420_V4.json`
4. `AgenticSWE_AgenticNewsIntake_SourceRegisterDelta_20260420_V4.csv`
5. `AgenticSWE_AgenticNewsIntake_SearchLogAppend_20260420_V4.jsonl`
6. `AgenticSWE_AgenticNewsIntake_ClaimPackDelta_20260420_V4.md`
7. `AgenticSWE_AgenticNewsIntake_ReadingQueueDelta_20260420_V4.md`
8. `AgenticSWE_AgenticNewsIntake_Handoff_20260420_V4.md`
9. `AgenticSWE_AgenticNewsIntake_SessionArchive_20260420_V4.md`
10. `AgenticSWE_AgenticNewsIntake_NextSessionPrompt_20260420_V4.md`

## Import-Regel

- Behalte den Ordnerpfad unter `blackboard/workstreams/agentic-news-intake/` bei.
- Nach Integration soll **genau ein** `START_HERE` als kanonischer Router gelten: die V4-Version.
- Die V3-Dateien bleiben als Basis erhalten, solange du keine konsolidierten V4-Gesamtdateien erzeugst.
- `SearchLogAppend_20260420_V4.jsonl` soll an den kanonischen append-only Log angehaengt werden.
- `SourceRegisterDelta_20260420_V4.csv` soll gegen V3 dedupliziert und danach in ein konsolidiertes Register ueberfuehrt werden, falls du einen Voll-Refresh machst.
- `ClaimPackDelta` und `ReadingQueueDelta` koennen entweder als neue Delta-Dateien beibehalten oder in konsolidierte V4-Gesamtdokumente ueberfuehrt werden.
- Fuehre keine Promotion nach `library/`, `handbook/` oder `templates/` allein aus diesem Paket heraus durch.

## Minimal sichere Integrationsreihenfolge

1. Delta-Dateien in den Workstream-Ordner kopieren
2. SearchLog-Append in den kanonischen Log mergen
3. SourceRegister-Delta gegen V3 deduplizieren
4. ClaimPack und ReadingQueue aktualisieren oder Delta-Dateien beibehalten
5. V4 `START_HERE` als einzigen Router fuer die naechste Session setzen

## Nicht im Paket

- keine neuen Source Cards
- keine Repo-weiten Status-, Entry- oder Handbook-Schreibungen
- keine Promotion in kanonische Wissensschichten
