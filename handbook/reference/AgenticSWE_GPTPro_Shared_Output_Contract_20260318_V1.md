---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Gemeinsamer Outputvertrag fuer bounded Rollen ueber ChatGPT- und Codex-Ebene."
tags:
  - layer/handbook
  - artifact/reference
  - topic/output-contract
  - topic/roles
---

# Reference: Shared Output Contract - 9 Core Fields

## Ziel

Alle bounded Rollen liefern denselben Mindestkern,
unabhaengig davon, ob sie als Skill in ChatGPT oder spaeter als `.codex`-Subagent laufen.

## Pflichtfelder

1. work or observation mode
2. session-anchor alignment
3. active scope
4. key findings
5. evidence anchors
6. confidence
7. open questions
8. recommended next action
9. role handoff / next bounded role

## Feldregeln

### 1. work or observation mode
Markiert Arbeitsweise und Provenienz.

Beispiele:
- `mapping-only`
- `verify-design-only`
- `wording-only`
- `triage-only`
- `live-readonly`
- `repo-evidence-only`
- `mixed`

### 2. session-anchor alignment
Immer ausweisen:
- inherited entry or equivalent anchor
- inherited repo status or dual-status view
- active technical workstream
- drift or conflict: `yes` / `no`

### 3. active scope
Nur den wirklich bearbeiteten Ausschnitt nennen.
Beispiele:
- betroffene Pfade
- Verify-Surfaces
- Doku-Ziele
- Runtime-Scope
- Hypothesenraum

### 4. key findings
Nur belastbare Kernaussagen.
Kein Storytelling, keine stillschweigende Mutation.

### 5. evidence anchors
Nenne nur die Signale, Dateien oder read-only Oberflaechen,
auf denen die Aussage wirklich beruht.

### 6. confidence
Nutze `low`, `medium` oder `high` plus einen Satz Begruendung.

### 7. open questions
Nur Gaps, die fuer die naechste Entscheidung relevant sind.

### 8. recommended next action
Der kleinste sichere naechste Schritt innerhalb der Rollenlogik.

### 9. role handoff / next bounded role
Nur angeben, wenn ein Handoff wirklich noetig ist.
Sonst explizit `none`.

## Zusatzfelder pro Rolle

Zulaessig, wenn sie dem Rollenzweck dienen:
- likely files / paths
- smoke commands or checks
- expected good / bad outcomes
- concise wording blocks
- ranked hypotheses
- dead ends to avoid

## Modellportable Kurzregel

Kleinere Modelle duerfen kuerzer formulieren,
aber **keines** der 9 Pflichtfelder auslassen.

## Verbote

- repo-materialisierte Evidence als live ausgeben
- aktiven technischen Hauptfokus implizit umdefinieren
- finale Merge- oder Deploy-Entscheidung als already done ausgeben
- Handoff stillschweigend unterschlagen

## Standard-Handoff-Packet

Wenn ein Handoff erfolgt, muss mindestens mitgegeben werden:
- inherited anchor summary
- active scope summary
- evidence anchors
- confidence
- exact next question for the next role
