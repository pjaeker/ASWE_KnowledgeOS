# AgenticSWE Session Bootstrap (Legacy Manual Fallback)

Status: legacy/manual fallback.
Nicht kanonisch: Ein neuer Session-Start laeuft ueber `AGENTS.md -> ENTRY_LATEST -> RepoStatusUpdate -> Workstream`.
Nutze diese Datei nur als optionalen Operator-Shortcut, wenn ein manueller GUI-Helfer hilfreich ist.

```text
OPTIONAL_OPERATOR_SHORTCUT_BOOTSTRAP (ASWE)

Nutze den GitHub Sync Connector.

1) Oeffne zuerst die kanonischen Navigationsanker:
   - in der GUI: neuestes ENTRY_LATEST
   - repo-lokal mit Codex: AGENTS.md und dann ENTRY_LATEST
   - aktuelles RepoStatusUpdate
   - passenden Workstream

2) Ziehe nur bei Bedarf Tiefenanker nach:
   - AgenticSWE_KnowledgeOS_RepoMeaningMap_*
   - AgenticSWE_KnowledgeOS_RepoStateSnapshot_*
   - AgenticSWE_KnowledgeOS_RepoManifest_*

3) Gib danach ein knappes Standup in dieser Struktur:
   - Kanonische Anker
   - Aktiver Workstream
   - Naechste Thin Slices
   - Stop-&-Ask

4) Regeln:
   - Kein Raten: wenn unklar, als TODO/Claim markieren.
   - Keine repo-weite Cleanup-Aktion vorschlagen, ausser als separaten phasenweisen Plan.
```

Hinweis:
- Dieser Legacy-Shortcut ersetzt nicht den kanonischen Session-Start.
- Ein neuer Chat muss auch ohne diesen Prompt korrekt starten koennen.
