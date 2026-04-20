---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V4
date: 2026-04-20
status: draft
audience:
  - human
  - llm
intent: "Einziger Router fuer die manuell zu integrierende V4-Fortsetzung des Workstreams 'agentic-news-intake' nach dem Chat-Intake vom 2026-04-20."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/findability
  - topic/governance
---

# Agentic News Intake — START HERE

## Zweck

Dieses V4-Paket materialisiert den Chat-Intake vom 2026-04-20 als **manuell importierbare Workstream-Fortsetzung**.

Es bleibt bewusst **vorlaeufig**:

- neue Quellen sind aufgenommen und grob eingeordnet
- Promotion in `library/`, `handbook/` oder `templates/` ist **noch nicht** erfolgt
- Bewertungen gelten weiter als **Arbeitsstand**, nicht als endgueltige Wahrheit

## Router-Regel fuer die naechste Session

Nach manueller Integration ist **dieses Dokument** der einzige sinnvolle Einstiegspunkt fuer die naechste Session.

Lies in genau dieser Reihenfolge:

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260420_V4.md`
2. `AgenticSWE_AgenticNewsIntake_Manifest_20260420_V4.json`
3. `AgenticSWE_AgenticNewsIntake_ConnectorIndex_20260420_V4.json`
4. `AgenticSWE_AgenticNewsIntake_SourceRegisterDelta_20260420_V4.csv`
5. `AgenticSWE_AgenticNewsIntake_ClaimPackDelta_20260420_V4.md`
6. `AgenticSWE_AgenticNewsIntake_Handoff_20260420_V4.md`

Danach nur die benoetigten V3-Basisartefakte und spaeter nur benoetigte Quellen oeffnen.

## Basis und Delta

### V3-Basis bleibt gueltig
- kanonischer Pfad: `blackboard/workstreams/agentic-news-intake/`
- Basisstand vor diesem Paket: 81 Quellen
- V3 bleibt Referenz fuer bereits integrierte Quellen und alte Recheck-Queue

### V4-Delta
- neue eindeutige Quellen in diesem Paket: 24
- projizierte Gesamtzahl nach Integration: 105
- echte Duplicate-Faelle in diesem Batch: 1
- unresolved snippet-only X-Surfaces: 2

## Scope dieses Pakets

### Im Scope
- session-konsolidierte Einpflege der hier analysierten neuen Quellen
- deduplizierte neue Zeilen fuer das SourceRegister-Delta
- Search- / Intake-Dokumentation fuer den V4-Chatbatch
- Claim-/Konflikt-/Promotion-Kandidaten nur im Blackboard
- priorisierte Recheck-Queue fuer die neuen hochrelevanten Quellen

### Nicht im Scope
- finale Promotion in `library/`
- finale Promotion in `handbook/`
- finale Promotion in `templates/`
- neue Taxonomie-Tags
- zweiter Router neben diesem `START_HERE`

## Was in diesem Delta neu sichtbar wurde

- Verifier- und Harness-Logik als eigene Leistungs- und Architekturhebel
- Externalisierung von Memory, Skills, Protocols und Harness als systemisches Erklaerungsmodell
- Context-Optimierung als Mehrschichtproblem: Output-Filter, Strukturhygiene, Repo-Graph, persistente Memory, Compaction-Survival
- Termination- und Continuation-Governance als eigene Betriebsfrage
- codebase cognitive debt und Verstaendnisengpaesse als sozio-technischer Grenzfaktor fuer ASWE

## Empfohlene naechste Aktion

1. zuerst `needs_recheck = yes` mit `handbook_delta` sehr hoch / hoch / mittel-hoch priorisieren
2. zuerst starke Runtime-, Harness-, Verifier- und Externalization-Quellen triangulieren
3. Social-Snippets ohne belastbaren Inhalt nicht promoten
4. Kontextoptimierer als Cluster aus Output-Filter, Continuity, Memory und Quality-Scoring ausarbeiten
5. Begriffe fuer Plugin, Skill, Hook, MCP, Harness, Runtime, Compaction, Checkpoint und Continuation sauber gegen internes Glossar mappen

## Definition of Done fuer die naechste Session

Die naechste Literaturaufnahme gilt als erfolgreich, wenn:

1. alle neuen Quellen einen `dedupe_key` haben
2. alle neuen Quellen einen vorlaeufigen `tier_research` haben
3. alle Intake-Schritte im SearchLog dokumentiert sind
4. Promotionsentscheidungen nicht implizit, sondern im Claim Pack begruendet werden
5. kein zweiter paralleler Router neben diesem `START_HERE` aufgebaut wird
6. unresolved X-Surfaces nur mit Transcript, Screenshot oder belastbarer Spiegelquelle weiterbearbeitet werden

## Siehe auch

- `AgenticSWE_AgenticNewsIntake_Manifest_20260420_V4.json`
- `AgenticSWE_AgenticNewsIntake_ClaimPackDelta_20260420_V4.md`
- `AgenticSWE_AgenticNewsIntake_ReadingQueueDelta_20260420_V4.md`
- `AgenticSWE_AgenticNewsIntake_SessionArchive_20260420_V4.md`
- `AgenticSWE_AgenticNewsIntake_NextSessionPrompt_20260420_V4.md`
- `AgenticSWE_AgenticNewsIntake_MaterializationGuide_20260420_V4.md`
