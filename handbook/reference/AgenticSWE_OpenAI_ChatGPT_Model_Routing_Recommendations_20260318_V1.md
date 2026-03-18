---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Routing-Empfehlungen fuer ChatGPT- und API-/Codex-Modelle je ASWE-Rollenklasse."
tags:
  - layer/handbook
  - artifact/reference
  - topic/model-routing
  - topic/gpt-pro
  - topic/codex
---

# Reference: OpenAI Model Routing Recommendations - 2026-03-18

## Entscheidungshierarchie

1. **erst Toolflaeche**
2. **dann Rollenlast / reasoning-bedarf**
3. **dann Kosten / Geschwindigkeit**
4. **dann konkrete Modellversion**

## ChatGPT-seitiges Routing

### Route zu GPT-5.4 Pro
Nutzen, wenn:
- Main-Agent-Orchestrierung gefragt ist
- tiefe Synthese ueber mehrere bounded Rollen noetig ist
- lange reasoning-lastige Architektur-, Vertrags- oder Refactor-Arbeit ansteht
- keine Pro-inkompatiblen ChatGPT-Funktionen benoetigt werden

### Route zu GPT-5.4 Thinking
Nutzen, wenn:
- tiefe Analyse mit voller ChatGPT-Toolflaeche benoetigt wird
- Web-, Datei-, Daten- oder Bildanalyse im Vordergrund steht
- Pro wegen Apps/Memory/Canvas/Bildgenerierung nicht passt
- ein starker Main-Agent-Fallback ohne Pro gebraucht wird

### Route zu GPT-5.3 Instant
Nutzen, wenn:
- schnelle Routing-, Struktur- oder wording-nahe Hilfsarbeit gefragt ist
- ein bounded Helper knapp und guenstig arbeiten soll
- die Aufgabe nicht stark kopplungs- oder langlaufkritisch ist

## API-/Codex-seitiges Routing

### `api_frontier_agentic`
- Default: `gpt-5.4`
- Zweck: starke API-seitige Agentik und Supervisor-Logik

### `codex_balanced_reasoner`
- Default: `gpt-5.3-codex`
- Fallback: `gpt-5-codex`
- Zweck: bounded Engineering-Subagenten mit mittlerer bis hoher Reasoning-Last

### `codex_longrun_reasoner`
- Default: `gpt-5.1-codex-max`
- Alternative: `gpt-5.3-codex` mit hohem reasoning effort
- Zweck: laengere investigative Schleifen und Problemraeume mit Iterationsbedarf

### `codex_fast_helper`
- Default: `codex-mini-latest`
- Alternative: `gpt-5.1-codex-mini`
- Zweck: leichte Codex-Routinen, wording-nahe Folgearbeit, schlanke bounded Helfer

### `api_nano_helper`
- Default: `gpt-5-nano`
- Zweck: billige Off-Path-Teilschritte wie Klassifikation, kleine Zusammenfassungen, Normalisierung
- Nicht nutzen fuer: harte Coupling-, Verify-, Routing- oder Long-Run-Steuerung

## Rollenbezogene Kurzempfehlung

- Main Agent in ChatGPT -> `chatgpt_orchestrator_max`, fallback `chatgpt_reasoner_tool_rich`
- Mapper -> `chatgpt_reasoner_tool_rich` oder `codex_balanced_reasoner`
- Test-Agent -> `chatgpt_reasoner_tool_rich` oder `codex_balanced_reasoner`
- Doku-Agent -> `chatgpt_fast_helper` oder `codex_fast_helper`
- Observer -> `chatgpt_reasoner_tool_rich` oder `codex_balanced_reasoner`
- Triager -> `chatgpt_orchestrator_max` / `chatgpt_reasoner_tool_rich` oder `codex_longrun_reasoner`

## Harte Guardrails

- Route niemals nach reiner Modellstaerke, wenn die Toolflaeche nicht passt.
- Nutze `nano` nicht als Ersatz fuer Reasoning- oder Governance-starke Rollen.
- Nutze Pro nicht fuer Flows, die explizit Pro-inkompatible ChatGPT-Funktionen benoetigen.
- Nutze Codex-Subagenten nur bounded, nicht als stillschweigende neue Hauptsteuerung.
