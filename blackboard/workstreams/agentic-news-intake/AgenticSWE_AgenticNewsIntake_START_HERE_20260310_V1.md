---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-10
status: draft
audience:
  - human
  - llm
intent: "Einstiegsdatei fuer den vorlaeufigen Workstream 'agentic-news-intake' mit Routing, Scope und naechsten Schritten."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/findability
  - topic/governance
---

# Agentic News Intake — START HERE

## Zweck

Dieser Workstream archiviert und operationalisiert einen Chat, dessen urspruengliche Funktion
**aktuelle Quellen zu agentischer Softwareentwicklung sichten und ihren moeglichen Handbook-Mehrwert einschaetzen**
war.

Der Workstream ist bewusst **vorlaeufig**:

- Quellen sind bereits erfasst und grob eingeordnet.
- Promotion in `library/`, `handbook/` oder `templates/` ist **noch nicht** erfolgt.
- Bewertungen aus dem Chat gelten als **Arbeitsstand**, nicht als endgueltige Wahrheit.

## Warum dieser Workstream unter `blackboard/workstreams/` lebt

- Der Inhalt ist bereits wertvoll genug fuer Wiederverwendung.
- Gleichzeitig enthaelt er noch offene Claims, Unsicherheiten, README-only-Auswertungen und
  Promotionsentscheidungen.
- Dadurch passt er besser in einen **arbeitsfaehigen Blackboard-Container** als direkt in die `library/`.

## Connector-Read-Order

Ein Agent im Business-Account sollte in genau dieser Reihenfolge lesen:

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260310_V1.md`
1. `AgenticSWE_AgenticNewsIntake_Manifest_20260310_V1.json`
1. `AgenticSWE_AgenticNewsIntake_ConnectorIndex_20260310_V1.json`
1. `AgenticSWE_AgenticNewsIntake_SourceRegister_20260310_V1.csv`
1. `AgenticSWE_AgenticNewsIntake_ClaimPack_20260310_V1.md`
1. `AgenticSWE_AgenticNewsIntake_Handoff_20260310_V1.md`

Danach nur die benoetigten `sources/*.md` oeffnen.

## SSOT-Hinweise fuer das Ziel-Repo

Dieses Paket nimmt **nicht** an, dass die exakten Versionsdateien im Ziel-Repo unveraendert sind.
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

### Nicht im Scope

- finale Library-Promotion
- finale Handbook-Promotion
- neue Taxonomie-Tags
- automatische Netzrecherche ausserhalb der bereits erfassten Quellen

## Kernartefakte

### `Manifest.json`

Maschinenlesbare Definition des Workstreams:
Status, Lesereihenfolge, Felder, Promotion-Regeln, Dedupe-Regeln.

### `SourceRegister.csv`

Arbeitsfaehiger Quellenkatalog mit:

- `source_id`
- `dedupe_key`
- `fulltext_status`
- `handbook_delta`
- `promotion_target`
- `needs_recheck`

### `SearchLog.jsonl`

Append-only Protokoll mit Intake-Ereignissen.

### `ClaimPack.md`

Konsolidierter Blackboard-Kern fuer spaetere Promotion.

### `sources/`

Vorlaeufige Source Cards pro Quelle.

## Aktueller Stand

- Anzahl erfasster Quellen: 26
- Schwerpunkt: OpenAI, GitHub, arXiv, GitHub-Repos, 1 Social-Post, 1 PDF-Upload
- dominantes Thema: Harness, Skills, Orchestrierung, Kontext-/Memory-Schichten, Review-/Governance-Muster

## Empfohlene naechste Aktion

1. `SourceRegister.csv` gegen das Ziel-Repo deduplizieren
1. alle `needs_recheck = yes` Quellen zuerst pruefen
1. erst danach stabile Source Cards in die `library/` promoten
1. Promotion-Kandidaten in getrennte Handbook-/Template-Workstreams ueberfuehren

## Definition of Done fuer die naechste Session

Die naechste Literaturaufnahme gilt als erfolgreich, wenn:

1. alle neuen Quellen einen `dedupe_key` haben
1. alle neuen Quellen einen vorlaeufigen `tier_research` haben
1. alle geprueften Quellen im `SearchLog.jsonl` dokumentiert sind
1. Promotion-Entscheidungen nicht implizit, sondern im `ClaimPack.md` notiert wurden

## Siehe auch

- `AgenticSWE_AgenticNewsIntake_Handoff_20260310_V1.md`
- `AgenticSWE_AgenticNewsIntake_NextSessionPrompt_20260310_V1.md`
- `AgenticSWE_AgenticNewsIntake_SessionArchive_20260310_V1.md`
