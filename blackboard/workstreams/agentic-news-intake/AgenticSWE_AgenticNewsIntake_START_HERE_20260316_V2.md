---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-16
status: draft
audience:
  - human
  - llm
intent: "Einziger Router fuer den fortgefuehrten Workstream 'agentic-news-intake' nach der Delta-Session vom 2026-03-16."
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

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260316_V2.md`
1. `AgenticSWE_AgenticNewsIntake_Manifest_20260316_V2.json`
1. `AgenticSWE_AgenticNewsIntake_ConnectorIndex_20260316_V2.json`
1. `AgenticSWE_AgenticNewsIntake_SourceRegister_20260316_V2.csv`
1. `AgenticSWE_AgenticNewsIntake_ClaimPack_20260316_V2.md`
1. `AgenticSWE_AgenticNewsIntake_Handoff_20260316_V2.md`

Danach nur die benoetigten `sources/*.md` oeffnen.

## Warum kein zusaetzlicher Unterordner angelegt wurde

- V1 und V2 gehoeren zum **gleichen** Workstream.
- Ein eigener `v2/`-Unterordner wuerde mehrere Router-Oberflaechen erzeugen.
- Der bestehende Pfad `blackboard/workstreams/agentic-news-intake/` bleibt deshalb erhalten.

## SSOT-Hinweise fuer das Ziel-Repo

Dieses Paket nimmt **nicht** an, dass exakte Versionsdateien im Ziel-Repo unveraendert sind.
Statt fester Dateinamen gilt:

- finde die **neueste** Glossar-Datei unter `meta/` mit Muster `*Glossary*_V*.md`
- finde die **neueste** Taxonomie-Datei unter `meta/` mit Muster `*Taxonomy*_V*.md`
- finde, falls vorhanden, die neueste Repo-MeaningMap und Diataxis-Policy

Wenn Glossar und Taxonomie fehlen oder offenkundig nicht kompatibel sind:

1. Promotion stoppen
1. nur den Workstream pflegen
1. Konflikt im Claim Pack markieren

## Scope

### Im Scope

- deduplizierte Liste der im Chat behandelten Quellen
- vorlaeufige Source Cards
- konsolidierte Claims, Konflikte und Promotion-Kandidaten
- connector-freundliche Einstiegspunkte fuer neue Literaturaufnahme
- Dedupe-/Alias-/Derived-Surface-Entscheidungen

### Nicht im Scope

- finale Library-Promotion
- finale Handbook-Promotion
- neue Taxonomie-Tags
- automatische Netzrecherche ausserhalb bereits erfasster oder bewusst neu intake-ter Quellen

## Kernartefakte

### `Manifest.json`

Maschinenlesbare Definition des Workstreams:
Status, Lesereihenfolge, Felder, Promotion-Regeln, Dedupe-Regeln und Router-Datei.

### `SourceRegister.csv`

Arbeitsfaehiger Quellenkatalog mit:

- `source_id`
- `dedupe_key`
- `fulltext_status`
- `handbook_delta`
- `promotion_target`
- `needs_recheck`

### `SearchLog.jsonl`

Append-only Protokoll mit Intake-Ereignissen, Duplicates und Derived-Surface-Entscheidungen.

### `ClaimPack.md`

Konsolidierter Blackboard-Kern fuer spaetere Promotion.

### `ReadingQueue.md`

Priorisierte Rechecks fuer schwache Primaerartefakte, Delta-Quellen und hochrelevante Pattern-Kandidaten.

### `sources/`

Vorlaeufige Source Cards pro Quelle mit echtem Mehrwert.

## Aktueller Stand

- Anzahl erfasster Quellen: 40
- Delta aus Folgechat: 14 neue eindeutige Quellen
- Duplicate-/Alias-Faelle in dieser Delta-Session: 2 echte Duplicates, 1 Derived Surface
- dominantes Thema bleibt: Harness, Skills, Orchestrierung, Kontext-/Memory-Schichten, Review-/Governance-Muster

## Was in dieser Delta-Session neu hinzugekommen ist

- Workflow-Contracts / `WORKFLOW.md` als eigene Orchestrierungsebene
- persistenter, modularer Kontext / auto-extracted project knowledge
- self-improving skills und self-evolving scaffolds
- Skill-Discovery-, Scoring- und Curation-Infrastruktur
- cross-tool agent setup und packaging

## Empfohlene naechste Aktion

1. `SourceRegister.csv` gegen das Ziel-Repo deduplizieren
1. zuerst neue und alte `needs_recheck = yes` Quellen priorisieren
1. Derived surfaces nicht als neue Primaerquellen behandeln
1. erst danach stabile Source Cards oder Promotion-Kandidaten in getrennte Workstreams ueberfuehren

## Definition of Done fuer die naechste Session

Die naechste Literaturaufnahme gilt als erfolgreich, wenn:

1. alle neuen Quellen einen `dedupe_key` haben
1. alle neuen Quellen einen vorlaeufigen `tier_research` haben
1. alle geprueften Quellen im `SearchLog.jsonl` dokumentiert sind
1. Promotion-Entscheidungen nicht implizit, sondern im `ClaimPack.md` notiert wurden
1. kein zweiter paralleler Router neben diesem `START_HERE` aufgebaut wurde

## Siehe auch

- `AgenticSWE_AgenticNewsIntake_Handoff_20260316_V2.md`
- `AgenticSWE_AgenticNewsIntake_NextSessionPrompt_20260316_V2.md`
- `AgenticSWE_AgenticNewsIntake_SessionArchive_20260316_V2.md`
- `AgenticSWE_AgenticNewsIntake_ReadingQueue_20260316_V2.md`
