---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Gemeinsamer rollenuebergreifender Vertrag fuer GPT-Pro, kleinere ChatGPT-Modelle und spaetere Codex-Subagenten."
tags:
  - layer/handbook
  - artifact/reference
  - topic/roles
  - topic/subagents
  - topic/gpt-pro
  - topic/model-portability
---

# Reference: Shared Role Contract - GPT-Pro and Model-Portable Roles

## Ziel

Dieser Vertrag vereinheitlicht die bounded Rollen des ASWE-Pakets ueber zwei Ebenen hinweg:

1. ChatGPT als Main-Agent- und Skill-Ebene
2. spaetere `.codex`-Materialisierung als bounded Subagentenebene

Der Vertrag ist **GPT-Pro-first**, bleibt aber absichtlich so formuliert,
dass dieselben Rollen auch mit kleineren ChatGPT-Modellen oder spaeteren Codex-Modellen tragfaehig bleiben.

## Fuehrende Session-Anker

Jede bounded Rolle arbeitet unter dem effektiven Session-Contract.
In diesem Paket ist die fuehrende Kette:

- Canonical Entry: `AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260318_V1`
- Latest Status Update Found: `AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260318_V1`
- Active Technical Workstream: `AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260318_V1`
- Leading Orchestration Enabler: `AgenticSWE_KnowledgeOS_WS_Codex_Subagent_Orchestration_20260318_V5`

## Main-Agent-Regel

- ChatGPT Pro bleibt, wenn verfuegbar und tool-seitig passend, der bevorzugte Main Agent fuer Orchestrierung, Synthese und finale Schreibentscheidungen.
- Kleinere ChatGPT-Modelle und Codex-Subagenten sind **bounded helper**, keine stillschweigenden Ersatz-Main-Agents.
- Kein bounded Role Output darf den aktiven technischen Hauptfokus ueberschreiben.
- Kein bounded Role Output darf einen zweiten Writer-Pfad aufmachen.

## Modellportabilitaet

Der Rollenvertrag bleibt ueber Modellklassen stabil.
Nur die Tiefe, Geschwindigkeit, Kosten und erlaubte Toolflaeche aendern sich.

### Invariante Pflichtbestandteile pro Rolle

- Anchor-Handshake vor Analyse
- gemeinsamer 9-Felder-Outputkern
- explizite Evidenz- und Frischemarkierung
- Handoff statt stillschweigender Mutationsuebernahme
- klare Nicht-Ziele und Stop-Regeln

### Anpassbar pro Modellklasse

- Antworttiefe
- reasoning effort
- Token-/Kontextbudget
- default handoff direction
- Umfang von Teilanalysen

## Gemeinsame Pflichten aller bounded Rollen

1. Uebernehme zuerst Entry, RepoStatus, aktiven technischen Hauptworkstream und nur bei Bedarf Enabler.
2. Halte requested focus und kanonisches Routing getrennt, wenn sie auseinanderlaufen.
3. Halte package-local, repo-local und live-readonly Provenienz sauber getrennt.
4. Liefere den gemeinsamen Outputvertrag vollstaendig.
5. Gib Unsicherheit, offene Fragen und kleinsten naechsten Schritt explizit an.
6. Handoffe Mutation, finalen Merge und Hauptfokuswechsel immer zurueck an Main Agent oder einen explizit autorisierten Pfad.

## Gemeinsame Nicht-Ziele

- kein zweiter Writer-Pfad
- keine implizite Fokusverschiebung
- keine ungestuetzten Live-Behauptungen
- keine Rollendrift in Nachbarrollen
- keine Gleichsetzung von Skill-Vertrag und `.codex`-Materialisierung
- keine Annahme, dass ein starkes Modell fehlende Governance ersetzt

## Rollenklassen

### Mapper
- Primaerfrage: Was ist betroffen und welcher kleinste saubere Slice ist als Naechstes sinnvoll?
- Liefert: Scope, Pfade, SSOT-Anker, Hidden Coupling, thin slice

### Test-Agent
- Primaerfrage: Was ist verifiziert, widerlegt oder noch als Nachweis offen?
- Liefert: Verify-Design, Gates, Smoke-Checks, good/bad outcomes

### Doku-Agent
- Primaerfrage: Wie wird bestaetigte Lage sauber formuliert, ohne Writer-Pfad zu duplizieren?
- Liefert: wording-nahe Dokumentationsbausteine auf bestaetigter Evidence

### Observer
- Primaerfrage: Was zeigen externe Systeme gerade, und wie ist das am Session-Anker einzuordnen?
- Liefert: read-only Runtime-, Service- und Log-Evidence

### Triager
- Primaerfrage: Welche Spur ist als Naechstes die sinnvollste, und welche Sackgassen sollen nicht wiederholt werden?
- Liefert: priorisierte Hypothesen, Dead Ends, Investigation-Fokus

## Modellklassen fuer die Rollenarbeit

- `chatgpt_orchestrator_max`: hoechste ChatGPT-Synthese fuer Main-Agent-Arbeit
- `chatgpt_reasoner_tool_rich`: tiefe Analyse mit voller ChatGPT-Toolflaeche
- `chatgpt_fast_helper`: schneller, guenstiger ChatGPT-Helfer fuer leichte bounded Arbeit
- `codex_balanced_reasoner`: Codex-orientierter reasoning helper fuer bounded Engineering-Slices
- `codex_longrun_reasoner`: Codex helper fuer laengere investigative oder agentische Schleifen
- `codex_fast_helper`: guenstige Codex- oder API-nahe Helper-Klasse fuer leichte Routinearbeit
- `api_nano_helper`: sehr guenstige API-Klasse fuer summarization-, tagging- und classification-lastige Off-Path-Teilaufgaben

## Handoff-Grenze

Eine bounded Rolle endet spaetestens dann, wenn einer der folgenden Faelle eintritt:

- Mutation ist notwendig
- der technische Hauptfokus muss neu gesetzt werden
- konkurrierende Rollenlogiken geraten in Konflikt
- Verify oder Runtime-Befund ist zu duenn fuer weitere sichere Spezialisierung
- Kosten-, Zeit- oder Kontextbudget laufen gegen Governance-Grenzen

## Erfolgsbegriff

Eine bounded Rolle ist gut, wenn sie:

- den Main Agent schneller und sicherer macht
- einen klar eingegrenzten Spezialausschnitt liefert
- den aktiven Hauptfokus schuetzt
- einen sauberen Handoff-Punkt benennt
- nicht davon abhaengt, dass immer das staerkste Modell verfuegbar ist
