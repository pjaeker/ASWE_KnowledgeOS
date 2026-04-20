---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V4
date: 2026-04-20
status: draft
audience:
  - human
  - llm
intent: "Kurze Handoff-Datei fuer den naechsten Agentenlauf nach Integration des V4-Chatbatchs."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/actionability
  - topic/findability
---

# Handoff — Agentic News Intake

## Lies zuerst

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260420_V4.md`
2. `AgenticSWE_AgenticNewsIntake_Manifest_20260420_V4.json`
3. `AgenticSWE_AgenticNewsIntake_SourceRegisterDelta_20260420_V4.csv`
4. `AgenticSWE_AgenticNewsIntake_ClaimPackDelta_20260420_V4.md`

## Danach lies nur bei Bedarf

1. `AgenticSWE_AgenticNewsIntake_ReadingQueueDelta_20260420_V4.md`
2. `AgenticSWE_AgenticNewsIntake_SearchLogAppend_20260420_V4.jsonl`
3. `AgenticSWE_AgenticNewsIntake_START_HERE_20260409_V3.md`
4. `AgenticSWE_AgenticNewsIntake_SourceRegister_20260409_V3.csv`
5. `AgenticSWE_AgenticNewsIntake_ClaimPack_20260409_V3.md`

## Naechster Auftrag

Fuehre die Literaturaufnahme zu agentischer Softwareentwicklung auf demselben Themenfeld fort, ohne die bestehende Struktur zu zerstoeren und ohne einen zweiten Router neben `START_HERE` aufzubauen.

## Arbeitsmodus

1. benutze V3 plus V4-Delta als gemeinsame Dedupe-Basis
2. sammle neue Quellen waehrend der Session erst als Arbeitsstand
3. schreibe waehrend der laufenden Session nichts vorschnell in kanonische Dateien
4. finalisiere gebuendelt am Ende der Session
5. dokumentiere den finalen Batch im SearchLog
6. erstelle nur dann neue Source Cards, wenn die Quelle echten Mehrwert fuer spaetere Promotion hat
7. fuehre Promotionsentscheidungen ausschliesslich ueber `ClaimPack`
8. behandle derived surfaces und sekundare Clusterseiten nicht als neue Primaerquellen
9. behandle unresolved social posts nicht als analysierbare Primarquellen

## Prioritaet fuer Rechecks

1. `needs_recheck = yes` mit `handbook_delta` sehr hoch / hoch / mittel-hoch
2. Literaturanker und Runtime-/Harness-/Verifier-Quellen
3. Context-, Continuity- und Memory-Cluster mit moeglicher Glossar-Kollision
4. README-, page- und snippet-only Quellen
