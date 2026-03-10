---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-10
status: draft
audience:
  - human
  - llm
intent: "Kurze Handoff-Datei fuer den naechsten Agentenlauf im Business-Account."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/actionability
  - topic/findability
---

# Handoff — Agentic News Intake

## Lies zuerst

1. `AgenticSWE_AgenticNewsIntake_START_HERE_20260310_V1.md`
1. `AgenticSWE_AgenticNewsIntake_Manifest_20260310_V1.json`
1. `AgenticSWE_AgenticNewsIntake_SourceRegister_20260310_V1.csv`

## Danach lies nur bei Bedarf

1. `AgenticSWE_AgenticNewsIntake_ClaimPack_20260310_V1.md`
1. einzelne `sources/*.md`
1. `AgenticSWE_AgenticNewsIntake_SearchLog_20260310_V1.jsonl`

## Naechster Auftrag

Fuehre eine **neue Literaturaufnahme** auf demselben Themenfeld fort, ohne die bestehende Struktur zu zerstoeren.

## Arbeitsmodus

1. benutze `SourceRegister.csv` als ersten Dedupe-Checkpoint
1. fuehre neue Quellen zuerst als neue Zeilen dort ein
1. dokumentiere jeden Review-Schritt in `SearchLog.jsonl`
1. erstelle nur dann neue Source Cards, wenn eine Quelle mehr als eine bloe Bezeichnung bekommt
1. fuehre Promotionsentscheidungen ausschliesslich ueber `ClaimPack.md`

## Prioritaet fuer Rechecks

1. `snippet-only`
1. `readme-reviewed`
1. `page-reviewed`
1. `vendor-pdf`
1. `hackathon-project`

## Stop-Conditions

Stoppe Promotion und markiere einen Konflikt, wenn:

- Glossar oder Taxonomie im Ziel-Repo unklar sind
- ein bestehender `dedupe_key` kollidiert
- eine Quelle nur ueber Social Snippets oder Marketing Claims vorliegt
- ein neuer Begriff nicht sauber auf vorhandene Canonicals mappt

## DoD fuer den naechsten Lauf

- alle neuen Quellen haben `source_id`, `dedupe_key`, `tier_research`, `promotion_target`
- alle geaenderten Eintraege wurden im `SearchLog.jsonl` protokolliert
- kein direkter Sprung in `library/` ohne expliziten Promotion-Eintrag im Claim Pack
