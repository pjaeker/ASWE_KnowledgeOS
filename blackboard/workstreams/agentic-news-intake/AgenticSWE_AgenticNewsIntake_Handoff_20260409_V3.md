---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-04-09
status: draft
audience:
  - human
  - llm
intent: "Kurze Handoff-Datei fuer den naechsten Agentenlauf nach dem Closeout-Import bis 2026-04-09."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/actionability
  - topic/findability
---

# Handoff — Agentic News Intake

## Lies zuerst

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260409_V3.md`
1. `AgenticSWE_AgenticNewsIntake_Manifest_20260409_V3.json`
1. `AgenticSWE_AgenticNewsIntake_SourceRegister_20260316_V2.csv`
1. `AgenticSWE_AgenticNewsIntake_SourceRegisterDelta_20260409_V3.csv`

## Danach lies nur bei Bedarf

1. `AgenticSWE_AgenticNewsIntake_ClaimPack_20260409_V3.md`
1. `AgenticSWE_AgenticNewsIntake_ReadingQueue_20260409_V3.md`
1. `AgenticSWE_AgenticNewsIntake_SearchLog_20260409_V2.jsonl`

## Naechster Auftrag

Fuehre die Literaturaufnahme zu agentischer Softwareentwicklung auf demselben Themenfeld fort,
ohne die bestehende Struktur zu zerstoeren und ohne einen zweiten Router neben `START_HERE` aufzubauen.

## Arbeitsmodus

1. benutze das Basis-Register V2 plus das Closeout-Delta V3 als gemeinsame Dedupe-Basis
1. sammle neue Quellen waehrend der Session erst als Arbeitsstand
1. schreibe waehrend der laufenden Session nichts vorschnell in die kanonischen Dateien
1. finalisiere gebuendelt am Ende der Session
1. dokumentiere den finalen Batch im `SearchLog.jsonl`
1. erstelle nur dann neue Source Cards, wenn die Quelle echten Mehrwert fuer spaetere Promotion hat
1. fuehre Promotionsentscheidungen ausschliesslich ueber `ClaimPack.md`
1. behandle derived surfaces nicht als neue Primaerquellen, wenn das zugrunde liegende Repo bereits erfasst ist

## Prioritaet fuer Rechecks

1. `needs_recheck = yes` mit `handbook_delta` sehr hoch / hoch / mittel-hoch
1. README-/page-/snippet-only Quellen
1. self-improving und workflow-heavy Quellen mit noch ungepruefter Validation-/Rollback-Logik
1. Glossar-/Taxonomie-relevante Roadmap- und Buchquellen
