---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-04-09
status: draft
audience:
  - human
  - llm
intent: "Einziger Router fuer den fortgefuehrten Workstream 'agentic-news-intake' nach dem Session-Closeout vom 2026-04-09."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/findability
  - topic/governance
---

# Agentic News Intake — START HERE

## Zweck

Dieser Workstream archiviert und operationalisiert fortlaufende Chat-Sessions, deren Funktion darin besteht,
**aktuelle oder aktuelle-nahe Quellen zu agentischer Softwareentwicklung zu sichten und ihren moeglichen Handbook-
oder Template-Mehrwert zu beurteilen**.

Der Workstream bleibt bewusst **vorlaeufig**:

- Quellen sind erfasst und grob eingeordnet.
- Promotion in `library/`, `handbook/` oder `templates/` ist **noch nicht** erfolgt.
- Bewertungen gelten weiterhin als **Arbeitsstand**, nicht als endgueltige Wahrheit.

## Router-Regel fuer die naechste Session

Dieses Dokument ist der **einzige** sinnvolle Einstiegspunkt fuer die naechste Session.

Ein Agent oder Mensch sollte in genau dieser Reihenfolge lesen:

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260409_V3.md`
1. `AgenticSWE_AgenticNewsIntake_Manifest_20260409_V3.json`
1. `AgenticSWE_AgenticNewsIntake_ConnectorIndex_20260409_V3.json`
1. `AgenticSWE_AgenticNewsIntake_SourceRegister_20260409_V3.csv`
1. `AgenticSWE_AgenticNewsIntake_ClaimPack_20260409_V3.md`
1. `AgenticSWE_AgenticNewsIntake_Handoff_20260409_V3.md`

Danach nur die benoetigten `sources/*.md` oeffnen.

## Warum kein zusaetzlicher Unterordner angelegt wurde

- V1, V2 und V3 gehoeren zum **gleichen** Workstream.
- Ein eigener `v3/`-Unterordner wuerde mehrere Router-Oberflaechen erzeugen.
- Der bestehende Pfad `blackboard/workstreams/agentic-news-intake/` bleibt deshalb erhalten.

## Scope dieses Closeouts

### Im Scope

- Session-konsolidierte Einpflege aller in diesem Chat gesammelten Quellen
- deduplizierte neue Zeilen in `SourceRegister`
- Search- / intake-Dokumentation fuer die Closeout-Session
- Claim-/Konflikt-/Promotion-Kandidaten nur im Blackboard
- priorisierte Recheck-Queue fuer hochrelevante, aber noch schwache Primaerartefakte

### Nicht im Scope

- finale Promotion in `library/`
- finale Promotion in `handbook/`
- neue Taxonomie-Tags
- zweiter Router neben diesem `START_HERE`

## Aktueller Stand

- Anzahl erfasster Quellen: 81
- neu eingepflegte eindeutige Quellen im Closeout 2026-04-09: 41
- Duplicate-/Alias-Faelle in diesem Closeout: 1 echter Duplicate
- Derived-Surface-Faelle in diesem Closeout: 1
- dominantes Thema bleibt: Harness, Skills, Orchestrierung, Kontext-/Memory-Schichten, Review-/Governance-Muster, Self-Improvement

## Was in diesem Closeout neu sichtbar wurde

- explizite Managed-Agent-Runtimes mit Session/Harness/Sandbox-Trennung
- Meta-Harness-Optimierung als eigener Hebel neben Modellwahl
- Skill-Routing, Skill-Internalisierung und Marketplace-/Directory-Artefakte als getrennte Ebenen
- ASWE als explizit benanntes Feld mit Roadmap-, Buch- und Begriffsfamilie
- durable session logs, event replay, wake/resume und trigger-getriebene Agentenorganisation
- selbstverbessernde Workspaces mit Holdout-Gating und Rollback

## Empfohlene naechste Aktion

1. zuerst `needs_recheck = yes` mit `handbook_delta` hoch / sehr hoch / mittel-hoch priorisieren
1. zuerst starke Runtime-/Harness-/Skill-Quellen triangulieren, nicht sofort promoten
1. derived surfaces weiterhin nicht als neue Primaerquellen behandeln
1. Begriffe fuer Plugin / Skill / Directory / Marketplace / Harness / Runtime sauber gegen das interne Glossar mappen

## Definition of Done fuer die naechste Session

Die naechste Literaturaufnahme gilt als erfolgreich, wenn:

1. alle neuen Quellen einen `dedupe_key` haben
1. alle neuen Quellen einen vorlaeufigen `tier_research` haben
1. alle geprueften Quellen im `SearchLog` dokumentiert sind
1. Promotionsentscheidungen nicht implizit, sondern im `ClaimPack.md` notiert wurden
1. kein zweiter paralleler Router neben diesem `START_HERE` aufgebaut wurde

## Siehe auch

- `AgenticSWE_AgenticNewsIntake_Handoff_20260409_V3.md`
- `AgenticSWE_AgenticNewsIntake_NextSessionPrompt_20260409_V3.md`
- `AgenticSWE_AgenticNewsIntake_SessionArchive_20260409_V3.md`
- `AgenticSWE_AgenticNewsIntake_ReadingQueue_20260409_V3.md`
