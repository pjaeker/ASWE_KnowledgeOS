---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Modellzuordnung fuer konkrete Codex-Subagentenrollen auf Basis des gemeinsamen Rollenvertrags."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/model-mapping
  - topic/subagents
---

# Reference: Codex Subagent Model Mapping - 2026-03-18

## Grundsatz

Die Zuordnung wird auf zwei Ebenen dokumentiert:

1. **stabiles Modellprofil**
2. **aktueller konkreter Modellvorschlag**

So bleibt der Rollenvertrag stabil, auch wenn konkrete Modelle spaeter rotieren.

## Mapping

| Rolle | Primaerprofil | Konkreter Default | Fallback | Reasoning | Warum |
|---|---|---|---|---|---|
| `ws_mapper` | `codex_balanced_reasoner` | `gpt-5.3-codex` | `gpt-5-codex` | `medium` | Scope, SSOT, Hidden Coupling und kleiner Slice brauchen gutes agentic coding reasoning ohne Long-Run-Max-Kosten |
| `bridge_test_agent` | `codex_balanced_reasoner` | `gpt-5.3-codex` | `gpt-5.2-codex` | `high` | Verify- und Gate-Design profitieren von staerkerem reasoning und sauberem Folgeentscheidungsprofil |
| `bridge_doc_agent` | `codex_fast_helper` | `codex-mini-latest` | `gpt-5.1-codex-mini` | `low` | wording-nahe Folgearbeit soll guenstig bleiben und keine Primaerreasoning-Rolle werden |
| `railway_observer` | `codex_balanced_reasoner` | `gpt-5.3-codex` | `gpt-5.1-codex-max` | `medium` | Runtime- und Log-Signale brauchen robuste Verdichtung, aber keine eigene Hauptsteuerung |
| `issue_triager` | `codex_longrun_reasoner` | `gpt-5.1-codex-max` | `gpt-5.3-codex` | `high` | konkurrierende Hypothesen und laengere Investigation Loops profitieren von long-running Stabilitaet |

## Zusatzregel fuer Nano

`gpt-5-nano` ist **kein** Primaermodell fuer die oben genannten `.codex`-Subagenten.
Es ist nur als `api_nano_helper` fuer Off-Path-Teilaufgaben vorgesehen,
z. B. Klassifikation, Kurzzusammenfassungen, Extraktion oder Normalisierung.

## ChatGPT-Bezug

Wenn dieselbe Rolle nicht als `.codex`-Subagent, sondern als ChatGPT-Skill-Unterstuetzung laeuft,
bleibt die ChatGPT-Zuordnung fuehrend:

- Main-Agent-Synthese -> `GPT-5.4 Pro`
- tiefe tool-reiche bounded Arbeit -> `GPT-5.4 Thinking`
- leichte bounded Helferarbeit -> `GPT-5.3 Instant`

## Materialisierungsregel

Die konkrete `.codex`-Materialisierung darf spaeter durch aktuellere konkrete Modellnamen ersetzt werden,
solange:
- das Modellprofil erhalten bleibt
- die Rollenlast nicht nach unten entgleist
- der gemeinsame Rollenvertrag unveraendert bleibt
