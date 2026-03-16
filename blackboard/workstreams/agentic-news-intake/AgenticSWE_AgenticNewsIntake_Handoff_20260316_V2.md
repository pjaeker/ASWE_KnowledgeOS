---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-16
status: draft
audience:
  - human
  - llm
intent: "Kurze Handoff-Datei fuer den naechsten Agentenlauf im Business-Account nach der Delta-Session."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/actionability
  - topic/findability
---

# Handoff — Agentic News Intake

## Lies zuerst

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260316_V2.md`
1. `AgenticSWE_AgenticNewsIntake_Manifest_20260316_V2.json`
1. `AgenticSWE_AgenticNewsIntake_SourceRegister_20260316_V2.csv`

## Danach lies nur bei Bedarf

1. `AgenticSWE_AgenticNewsIntake_ClaimPack_20260316_V2.md`
1. `AgenticSWE_AgenticNewsIntake_ReadingQueue_20260316_V2.md`
1. einzelne `sources/*.md`
1. `AgenticSWE_AgenticNewsIntake_SearchLog_20260310_V1.jsonl`

## Naechster Auftrag

Fuehre die Literaturaufnahme zu agentischer Softwareentwicklung auf demselben Themenfeld fort,
ohne die bestehende Struktur zu zerstoeren und ohne einen zweiten Router neben `START_HERE` aufzubauen.

## Arbeitsmodus

1. benutze `SourceRegister.csv` als ersten Dedupe-Checkpoint
1. fuehre neue Quellen zuerst als neue Zeilen dort ein
1. dokumentiere jeden Review-Schritt in `SearchLog.jsonl`
1. erstelle nur dann neue Source Cards, wenn eine Quelle mehr als eine blosse Bezeichnung bekommt
1. fuehre Promotionsentscheidungen ausschliesslich ueber `ClaimPack.md`
1. behandle derived surfaces nicht als neue Primaerquellen, wenn das zugrunde liegende Repo bereits erfasst ist

## Prioritaet fuer Rechecks

1. `needs_recheck = yes` mit `handbook_delta` hoch/sehr hoch/mittel-hoch
1. README-/page-/snippet-only Quellen
1. self-improving und workflow-heavy Quellen mit noch ungepruefter Validation-/Rollback-Logik

## Stop-Conditions

Stoppe Promotion und markiere einen Konflikt, wenn:

- Glossar oder Taxonomie im Ziel-Repo unklar sind
- ein bestehender `dedupe_key` kollidiert
- eine Quelle nur ueber Social Snippets oder Marketing Claims vorliegt
- ein neuer Begriff nicht sauber auf vorhandene Canonicals mappt
- eine self-improving Quelle keine belastbare Validation-/Rollback-Spur zeigt

## DoD fuer den naechsten Lauf

- alle neuen Quellen haben `source_id`, `dedupe_key`, `tier_research`, `promotion_target`
- alle geaenderten Eintraege wurden im `SearchLog.jsonl` protokolliert
- kein direkter Sprung in `library/` ohne expliziten Promotion-Eintrag im Claim Pack
- kein zweites paralleles `START_HERE`-Routing wurde erzeugt
