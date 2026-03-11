# AgenticSWE Session Closeout (Legacy Manual Fallback)

Status: legacy/manual fallback.
Nicht kanonisch: Der Standard-Abschlussvertrag liegt bei `RepoStatusUpdate -> Workstream -> Tiefenanker bei Bedarf -> ENTRY_LATEST`.
Nutze diese Datei nur als optionalen Operator-Shortcut, wenn ein manueller Closeout-Helfer hilfreich ist.

```text
OPTIONAL_OPERATOR_SHORTCUT_CLOSEOUT (ASWE)

Nutze den GitHub Sync Connector.

1) Folge zuerst dem kanonischen Closeout:
   - RepoStatusUpdate aktualisieren, wenn sich operative Wahrheit geaendert hat
   - betroffenen Workstream aktualisieren, wenn Ziel, Scope, DoD oder naechste Slices betroffen sind
   - MeaningMap, StateSnapshot und Manifest nur bei echter Struktur- oder Routing-Aenderung aktualisieren
   - danach ENTRY_LATEST refreshen
   - NextChat-Handoff nur bei echtem Resume-Bedarf anlegen

2) Formuliere anschliessend ein kompaktes Closeout:
   - Was wurde entschieden (Decision/ADR Bedarf?)
   - Welche Dateien wurden veraendert oder neu angelegt?
   - Welche Thin Slices folgen als naechstes?
   - Welche Gates/Checks liefen oder sind noch offen?

3) Wenn neue Dokumente entstanden:
   - Diataxis Typ korrekt?
   - Frontmatter vorhanden?
   - Tags: 1x layer/*, 1x artifact/*, topic tags sparsam.
```

Hinweis:
- Dieser Legacy-Shortcut ersetzt nicht den kanonischen Session-Abschluss.
- Ein sauberer Closeout muss auch ohne diesen Prompt dokumentationsseitig moeglich bleiben.
