---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V2
date: 2026-03-03
status: draft
audience: [human, llm]
intent: "Single Entry Point für Session-Start/Closeout mit Verweisen auf neueste State-Artefakte und zentrale Runbooks."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/router
  - topic/run-id
  - topic/governance
---

# Session Entry — 2026-03-03 (V2)

## Neueste-Version-Regel

- Verwende immer die Datei mit **höchster `Vx`**; bei Gleichstand gilt das **neueste Datum (`YYYYMMDD`)**.
- Reihenfolge für Session-Start: `SessionEntry -> RepoMeaningMap -> RepoStateSnapshot -> RepoManifest`.

## Aktuelle Referenzen (latest)

- RepoMeaningMap: `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260303_V1.md`
- RepoStateSnapshot: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260303_V1.md`
- RepoManifest: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260303_V1.json`
- Preflight-Gates Runbook: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`
- Session-Ritual HowTo: `handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260302_V1.md`
- Write-via-PR (MCP) HowTo: `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md`

## SESSION_BOOTSTRAP (copy/paste)

```text
1) Open latest SessionEntry (highest Vx, newest date).
2) Read latest RepoMeaningMap + RepoStateSnapshot.
3) Check RepoManifest reference + basis_ref before making claims.
4) Respect ALLOWED_WRITE_DIRS and No-Secrets policy.
5) Execute thin-slice change, run gates, then prepare PR report.
```

## SESSION_CLOSEOUT (copy/paste)

```text
1) Summarize delta and touched files.
2) Record gate evidence (pass/fail/not_executed + reason).
3) Update state artifacts if repository meaning/state changed.
4) Commit with run_id in message.
5) Create PR report with rollback plan and SSOT references.
```


## Hinweise

- Dieser Entry verweist auf die **bestehenden Dateinamen** (in-place aktualisiert), nicht auf neue Tagesversionen.
