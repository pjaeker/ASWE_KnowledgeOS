# AgenticSWE Session Bootstrap (Business Sync)

```text
SESSION_BOOTSTRAP (ASWE)

Nutze den GitHub Sync Connector. Ziele: Standup + Routing + naechste PR-Slices.

1) Finde und lies die neueste Version dieser Dateien (nach Dateinamen-Schema und Vx):
   - AgenticSWE_KnowledgeOS_RepoMeaningMap_*
   - AgenticSWE_KnowledgeOS_RepoStateSnapshot_*
   - AgenticSWE_KnowledgeOS_RepoManifest_*
   - AgenticSWE_PreflightGates_Local_Runbook_*

2) Gib ein Standup in exakt dieser Struktur:
   - SSOT Anker (Dateiname + Kernaussage je Anker)
   - Aktive Workstreams (max 3) + Status
   - Offene TODOs (top 5, nach Impact)
   - Naechste PR-Slices (2–3, keep diffs small, Pfade + DoD)
   - Stop-&-Ask (falls du `.github/**`, Secrets, CI/Deploy siehst)

3) Regeln:
   - Kein Raten: wenn unklar, als TODO/Claim markieren.
   - Keine repo-weite Cleanup-Aktion vorschlagen, ausser als separaten phasenweisen Plan.
```
