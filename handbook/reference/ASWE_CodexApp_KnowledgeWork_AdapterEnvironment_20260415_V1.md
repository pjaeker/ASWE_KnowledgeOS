---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-15
status: draft
intent: "Adapter- und Environment-Vertrag fuer die Nutzung der Codex App als bounded Wissensarbeits-Runtime."
---

# ASWE Codex App Knowledge Work Adapter Environment

## 0. Zweck

Dieses Dokument beschreibt die Codex App nicht primaer als Coding-Harness, sondern als bounded Runtime fuer Wissensarbeit unter K5-fuehrender Orchestrierung.

## 1. Leitthese

Codex ist im ASWE-Sonderpfad als Adapter/Oberflaeche zu behandeln.
Fuehrend bleiben:
- epistemische Rollen,
- K5-Zustaende,
- Workstream- und Gate-Logik,
- one-writer-many-readers-Governance.

## 2. Grundunterscheidung

### ChatGPT-App
Geeignet fuer:
- Main-Agent-Synthese
- strukturierte Fachanalyse
- Repo-ferne Meta-Planung
- externen Supervisory-Layer

### Codex-App
Geeignet fuer:
- bounded Mehrthread-Arbeit
- worktree-nahe Zwischenkoordination
- K5-gefuehrte Langlaufarbeit
- lokale Review- und Queue-getriebene Folgearbeit

Regel:
Die Produktoberflaeche bestimmt nicht die Erkenntnislogik; sie muss ihr angepasst werden.

## 3. Environment-Profile

### P1 Read-First Analyseumgebung
Zweck:
- bounded Analyse
- Handoff-Erzeugung
- Verify-/Eval-Arbeit

Mindestregeln:
- kein W3-Schreiben
- keine freie Fokusverschiebung
- K5-Pflicht fuer Rueckgabe

### P2 Bounded Payload-Umgebung
Zweck:
- W2-Payloads wie Observation/Claim/Trigger/Verify Note

Mindestregeln:
- Scope explizit
- Rueckgabeziel explizit
- keine semantische oder architektonische Geltung

### P3 Writer-Umgebung
Zweck:
- kanonische Repo-Mutation

Mindestregeln:
- nur Main Agent
- nur nach Writer Gate
- nie Default fuer bounded Threads

## 4. Reasoning-Prinzipien

Modell- und Reasoning-Wahl folgen nicht Produktnamen, sondern:
1. epistemischer Rolle,
2. Risiko- und Abstraktionsniveau,
3. noetiger Handoff-Praezision,
4. Kosten-/Langlaufprofil.

Faustregel:
- Main-Agent-Synthese: hoch
- bounded Analyse / Verify: mittel bis hoch
- Queue-/Hygiene-Automation: niedrig bis mittel
- dokumentative Wording-Nachschaerfung: niedrig

## 5. Fallback-Grenze

Wenn Codex-seitige Runtime, UI oder Scheduling-Faehigkeit fuer einen K5-kritischen Pfad nicht belastbar ist,
bleibt ChatGPT hoechstens Supervisory-Layer fuer:
- Review-Termine
- externe Erinnerungen
- Meta-Checks
- strukturierte Verdichtungen

Nicht als Ersatz fuer:
- K5-fuehrende Repo-Koordination
- Writer-nahe Gate-Steuerung
- implizite shared-local Semantik

## 6. Nicht-Ziele

Dieses Dokument behauptet nicht:
- identische interne Rahmenbedingungen zwischen ChatGPT und Codex
- konkrete Modellnamen als dauerhafte SSOT
- sofortige `.codex`-Fuehrung
