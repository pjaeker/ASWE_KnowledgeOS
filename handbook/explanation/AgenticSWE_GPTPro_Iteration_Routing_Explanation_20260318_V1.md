---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Erklaert das Routing zwischen GPT-Pro, kleineren ChatGPT-Modellen und spaeteren Codex-Subagenten fuer iterative ASWE-Arbeit."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/routing
  - topic/gpt-pro
  - topic/codex
---

# Explanation: GPT-Pro Iteration Routing - 2026-03-18

## Leitidee

Die Architektur bleibt **one-writer-many-readers**:

- Main Agent: starke Orchestrierung, Synthese, finale Schreib- und Priorisierungsentscheidungen
- bounded roles: spezialisierte read-first Helfer
- `.codex`-Subagenten: spaetere bounded Materialisierung derselben Rollenlogik

## Routing-Reihenfolge

1. Freeze effective session contract
2. Bestimme Toolflaeche des aktuellen Problems
3. Waehle Main-Agent-Profil
4. Pruefe, ob eine bounded Rolle wirklich Hebel bringt
5. Waehle nur dann ein `.codex`-Profil, wenn eine codex-nahe bounded Materialisierung sinnvoll ist
6. erzwinge gemeinsamen Output- und Handoff-Vertrag
7. fuehre Verify oder Closeout zurueck ueber Main Agent

## Main-Agent-Wahl

### GPT-5.4 Pro als Default
Nutzen, wenn:
- tiefe Synthese dominiert
- multi-step reasoning schwer ist
- die Aufgabe keine Pro-inkompatiblen ChatGPT-Funktionen braucht

### GPT-5.4 Thinking als Default-Fallback
Nutzen, wenn:
- volle ChatGPT-Toolflaeche gebraucht wird
- Web-, Datei-, Daten- oder Bildanalyse zentral ist
- Pro wegen Funktionsgrenzen unpassend ist

### GPT-5.3 Instant fuer leichte Hauptschritte
Nur nutzen, wenn:
- der Task kurz, lokal und wenig gekoppelt ist
- keine tiefe Synthese oder Governance-Last vorliegt

## Spawn-Regel fuer bounded Rollen

Spawn nur, wenn mindestens eine der folgenden Bedingungen erfuellt ist:
- Scope ist unklar -> Mapper
- Verify fehlt -> Test-Agent
- Runtime-Signal fehlt -> Observer
- Hypothesenraum ist unklar -> Triager
- wording-nahe Folgearbeit steht an -> Doku-Agent

## Regeln fuer spaetere `.codex`-Subagenten

- `.codex` bleibt bounded und workstream-gebunden
- keine `.codex`-Rolle setzt allein den neuen Hauptfokus
- `.codex`-Rollen geben ueber den gemeinsamen Outputvertrag zurueck
- `.codex`-Rollen duplizieren nicht die finale Writer-Funktion

## Modellklassenfolge

- schwerste Main-Agent-Synthese -> `chatgpt_orchestrator_max`
- tiefe tool-reiche bounded Analyse -> `chatgpt_reasoner_tool_rich`
- leichte bounded Helper-Aufgabe -> `chatgpt_fast_helper`
- bounded Codex-Engineering -> `codex_balanced_reasoner`
- bounded Codex-Langlauf -> `codex_longrun_reasoner`
- Off-Path low-cost helper -> `api_nano_helper`

## Warum dieses Routing robust ist

Es trennt sauber:
- Session-Wahrheit
- Rollenlogik
- Modellprofil
- konkreten Modellnamen

Dadurch kann die Architektur weiterentwickelt werden,
ohne bei jedem Modellupdate den gesamten Rollenvertrag neu zu schneiden.
