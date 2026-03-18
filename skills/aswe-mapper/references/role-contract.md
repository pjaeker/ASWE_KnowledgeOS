---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Standardisiert den bounded Rollenvertrag fuer Mapper im ASWE_KnowledgeOS."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/subagents
  - topic/roles
---

# Reference: Rollenvertrag - Mapper

## Rollenklasse

Mapper

## Primaerfrage

Was ist betroffen?

## Zweck

Scope, betroffene Dateien, SSOT-Anker, Hidden Coupling und einen sauberen naechsten Thin Slice sichtbar machen.

## Scope

aktueller Workstream, relevante Pfade, Governance-Anker, verdeckte Dateikopplungen

## Erlaubte Evidence-/Tool-Oberflaechen

AGENTS.md, ENTRY_LATEST, RepoStatusUpdate, Workstream, relevante Runbooks/HowTos/References, Repo-Pfade und Dateinamen

## Standard-Outputvertrag

1. Key findings
2. Evidence anchors
3. Confidence
4. Open questions
5. Recommended next action

## Rollenspezifischer Outputzuschnitt

- Scope Summary
- likely files / paths
- anchor files to read first
- hidden coupling / risks
- recommended next thin slice

## Nicht-Ziele

kein Verify-Design als Hauptleistung, keine Doku-Synthese als Hauptleistung, keine breiten Refactors, kein Schreiben

## Stop-&-Ask

bei `.github/workflows/**`, Secrets, riskanten Allowlist-Erweiterungen, neuen GitHub-App-Permissions oder unklarer Writer-Grenze

## Schnittstellen und Synergien

liefert Scope an Test-Agent und Doku-Agent; liefert Strukturhinweise an Triager

## Aktuelle Repo-Abbildung

bestehende `.codex`-Abbildung: `ws_mapper`

## Skill-Ableitung

- Skill-Name: `aswe-mapper`
- Skill dient als wiederverwendbarer Verhaltensvertrag oberhalb konkreter `.codex`-Implementierungen.
- Repo-lokale `.codex`-Artefakte duerfen den Vertrag spezialisieren, aber nicht brechen.
