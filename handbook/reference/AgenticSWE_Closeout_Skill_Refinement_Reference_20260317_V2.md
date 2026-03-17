---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Verdichtet die Lehren aus Init-Skill-Verfeinerung, Closeout-Runbook und dem jetzigen Closeout-Writingslice fuer den V3-Closeout-Skill."
---

# Closeout Skill Refinement Reference

## Ausloeser fuer V3

Der bisherige Closeout-Skill V2 konnte den narrativen Checkpoint korrekt ziehen, blieb aber unterbestimmt bei der Frage, wann aus neuer Repo-Evidence ein konkreter Closeout-Writingslice folgen muss.

## Kernlehre

Ein sauberer Closeout braucht nicht nur:
- Fresh-Evidence-Preflight
- Dual-Status-Sicht

sondern zusaetzlich:
- einen expliziten Artefaktentscheid pro Artefaktklasse
- einen klaren Output fuer den Closeout-Writingslice
- aktive Begruendung fuer jede `no-change`-Entscheidung

## Neue V3-Regeln

1. Nicht bei einem narrativen Checkpoint stehenbleiben, wenn neue operative Wahrheit oder Workstream-Intent vorliegt.
2. `RepoStatusUpdate`, `Workstream`, Strukturdocs, `ENTRY_LATEST` und `NextChat-Handoff` jeweils aktiv bewerten.
3. `ENTRY_LATEST` nur dann bewusst nicht refreshen, wenn das fuer den naechsten Start wirklich noch der beste Zustand ist.
4. Neue repo-weite Betriebsmodell-Artefakte koennen einen Status- und Entry-Refresh rechtfertigen, auch wenn der primaere technische Workstream gleich bleibt.

## Bezug zu Init-Learnings

Aus dem Init-Skill uebernommen bzw. gespiegelt:
- Freshness-Challenge
- GitHub-first Evidence
- Trennung von Canonical Entry und Latest Status
- Resume-Sidecar nur bei echtem Bedarf

## Erwarteter Output eines guten Closeout-Skills ab V3

- Closeout checkpoint
- PATCH-SPEC fuer den Writingslice
- FILES TOUCHED
- PLANNED DIFF
- create / update / no-change pro Artefaktklasse
- Next-Start-Paket
