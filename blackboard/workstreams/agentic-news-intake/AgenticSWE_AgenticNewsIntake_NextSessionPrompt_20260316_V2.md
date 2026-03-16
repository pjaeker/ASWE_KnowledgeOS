---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V2
date: 2026-03-16
status: draft
audience:
  - llm
intent: "Startprompt fuer einen Agenten im Business-Account, der die Literaturaufnahme fortsetzen soll."
tags:
  - layer/blackboard
  - artifact/how-to
  - topic/deep-research
  - topic/actionability
  - topic/governance
---

# Next Session Prompt

Nutze diesen Text als Startauftrag fuer einen Agenten, der ueber den GitHub-Connector auf das Repo zugreift.

## Prompt

Du arbeitest im Workstream `blackboard/workstreams/agentic-news-intake/`.

Ziel:
Fuehre die Literaturaufnahme zu agentischer Softwareentwicklung fort, ohne vorschnell Inhalte in `library/` oder
`handbook/` zu promoten und ohne einen zweiten Router neben `START_HERE` zu erzeugen.

Arbeitsregeln:

1. Lies zuerst:
   - `AgenticSWE_AgenticNewsIntake_START_HERE_20260316_V2.md`
   - `AgenticSWE_AgenticNewsIntake_Manifest_20260316_V2.json`
   - `AgenticSWE_AgenticNewsIntake_SourceRegister_20260316_V2.csv`

1. Nutze `SourceRegister.csv` als Dedupe-Basis.
1. Schreibe neue Quellen zuerst als Zeilen in `SourceRegister.csv`.
1. Dokumentiere jeden Intake-Schritt in `SearchLog.jsonl`.
1. Erstelle neue `sources/*.md` nur fuer Quellen mit echtem Mehrwert fuer spaetere Promotion.
1. Trage neue Claims, Konflikte und Promotion-Kandidaten nur in `ClaimPack.md` ein.
1. Fuehre keine Promotion in `library/`, `handbook/` oder `templates/` aus, solange sie nicht explizit beauftragt ist.
1. Wenn Glossar oder Taxonomie nicht eindeutig bestimmbar sind, stoppe Promotion und markiere einen Konflikt.
1. Wenn eine eingereichte Website nur die Oberflaeche eines bereits erfassten Repos ist, behandle sie als **derived surface** und lege keinen zweiten Primaerquellen-Eintrag an.
1. Unterscheide bei Skill-/Marketplace-/Discovery-Quellen zwischen Directory, Repo und Primaerartefakt.

Definition of Done:

- neue Quellen haben `source_id`, `dedupe_key`, `tier_research`, `promotion_target`
- alle Bewertungen sind als Arbeitsstand markiert
- alle Aenderungen sind fuer Menschen und LLMs nachvollziehbar
- kein zweites `START_HERE` wurde als konkurrierender Router aufgebaut
