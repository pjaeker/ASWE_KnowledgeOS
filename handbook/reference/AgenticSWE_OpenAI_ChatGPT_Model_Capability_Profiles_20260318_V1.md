---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Leistungsumfangsprofil der aktuell relevanten OpenAI-ChatGPT-Modelle sowie angrenzender API-/Codex-Profile fuer ASWE-Routing."
tags:
  - layer/handbook
  - artifact/reference
  - topic/models
  - topic/chatgpt
  - topic/codex
---

# Reference: OpenAI ChatGPT Model Capability Profiles - 2026-03-18

## Scope

Dieses Dokument trennt bewusst:

1. **aktuelle ChatGPT-Modellwahl**
2. **API- und Codex-nahe Modellprofile**, die fuer spaetere Subagentenmaterialisierung relevant sind

## A. Aktuell in ChatGPT relevante Modelle

### GPT-5.3 Instant

**Rolle:** schnelles Workhorse fuer Alltagsarbeit und leichtere bounded Helper-Aufgaben.

**ASWE-Fit:**
- schneller Router
- leichte Mapping- oder wording-nahe Vorarbeit
- kurze package-local Strukturarbeit
- guenstige Vortriage kleiner Aufgaben

**Staerken:**
- schnell
- breite ChatGPT-Toolflaeche
- gute Default-Wahl fuer kurze Hilfsschritte

**Grenzen:**
- weniger geeignet als Thinking oder Pro fuer harte Mehrquellen-Synthese und lange Problemketten

### GPT-5.4 Thinking

**Rolle:** tiefer reasoning-orientierter ChatGPT-Modus mit voller aktueller ChatGPT-Toolflaeche.

**ASWE-Fit:**
- tiefe Analyse ueber viele Evidenzquellen
- komplexere Verify- oder Gap-Analyse
- Workflows, die Web, Dateien, Datenanalyse oder Bildverstehen kombinieren
- Main-Agent-Fallback, wenn Pro tool-seitig unpassend ist

**Staerken:**
- staerkeres Reasoning als Instant
- bessere Nachverfolgung laengerer Aufgaben
- volle ChatGPT-Toolflaeche

**Grenzen:**
- nicht die hoechste ChatGPT-Syntheseoption
- bei langen Arbeitslaeufen teurer und langsamer als Instant

### GPT-5.4 Pro

**Rolle:** hoechste ChatGPT-Kapazitaet fuer haerteste Synthese-, Architektur- und Langlaufaufgaben.

**ASWE-Fit:**
- Main-Agent-Orchestrierung
- tiefe Architektur- und Vertragsarbeit
- schwere multi-step reasoning Slices
- finale Synthese ueber mehrere bounded Rollen

**Staerken:**
- hoechste ChatGPT-Kapazitaet fuer harte Aufgaben und long-running workflows

**Wichtige Grenze:**
- Pro unterstuetzt **nicht** Apps, Memory, Canvas oder Bildgenerierung in ChatGPT

## B. ChatGPT-Routing-Folgen fuer ASWE

### Empfohlene stabile ChatGPT-Profile

- `chatgpt_orchestrator_max` -> GPT-5.4 Pro
- `chatgpt_reasoner_tool_rich` -> GPT-5.4 Thinking
- `chatgpt_fast_helper` -> GPT-5.3 Instant

### Wesentliche Regel

Wenn der Task die in Pro fehlenden ChatGPT-Funktionen braucht,
ist `chatgpt_reasoner_tool_rich` vor `chatgpt_orchestrator_max` zu bevorzugen.

## C. API- und Codex-nahe Zusatzprofile

### GPT-5.4

**Rolle:** allgemeines Frontier-API-Modell fuer komplexe reasoning-, coding- und agentische Workflows.

**ASWE-Fit:**
- Supervisor- oder future automation layer
- agentische Arbeit mit grosser Toolflaeche
- starke API-seitige Baseline fuer spaetere Orchestratoren

### GPT-5 mini

**Rolle:** near-frontier Modell fuer cost-sensitive, low-latency High-Volume-Workloads.

**ASWE-Fit:**
- kostensensitiver Helper
- strukturierte leichte bounded Aufgaben
- batch-nahe Folgearbeit mit mittlerem Anspruch

### GPT-5 nano

**Rolle:** sehr guenstige API-Klasse fuer summarization-, classification- und andere leichte Routinearbeit.

**ASWE-Fit:**
- Off-Path-Preprocessing
- Tagging, Normalisierung, kleine Zusammenfassungen
- nicht als Primaermodell fuer Coupling-, Verify- oder Langlaufprobleme

**Wichtige Klarstellung:**
`nano` ist hier ein **API-Profil**, keine aktuelle regulaere ChatGPT-Modellwahl im ChatGPT-Model-Picker.

### GPT-5.3-Codex

**Rolle:** aktuell staerkstes offiziell dokumentiertes Codex-optimiertes agentic-coding Profil.

**ASWE-Fit:**
- bounded Codex-Subagenten fuer Mapping, Verify, Observer-nahe Repo-Arbeit, Investigation

### GPT-5.1-Codex-Max

**Rolle:** long-running Codex-Profil fuer laengere agentische Schleifen.

**ASWE-Fit:**
- investigative oder langlaufende Triaging- und Problemketten
- fallback, wenn dauerhafte Iterationsstabilitaet wichtiger ist als nominal neueste Codex-Variante

### codex-mini-latest

**Rolle:** schneller, guenstiger Codex-CLI-optimierter Helfer.

**ASWE-Fit:**
- leichte bounded Routinearbeit in Codex
- wording-nahe oder schlank strukturierte Folgeaufgaben
- nicht als Primaermodell fuer schwierige Kopplungs- oder Long-Run-Steuerung

## D. Modellportabilitaetsregel fuer das Paket

Der Rollenvertrag wird nicht pro Modell neu erfunden.
Stattdessen wird pro Rolle zwischen diesen Ebenen unterschieden:

1. **role contract**
2. **model profile**
3. **konkreter Modellname**

Dadurch koennen konkrete Modellnamen spaeter getauscht werden,
ohne den Rollenvertrag neu zu schneiden.
