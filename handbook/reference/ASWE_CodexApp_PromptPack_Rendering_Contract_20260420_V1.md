---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Rendering-Vertrag fuer die Ableitung von Codex-App-Promptflaechen aus PromptEval und PromptPreflight."
tags:
  - layer/handbook
  - artifact/reference
  - topic/prompt-architecture
  - topic/rendering
  - topic/codex
---

# ASWE CodexApp PromptPack Rendering Contract

## 0. Zweck
Dieses Dokument regelt,
wie die Prompt-Architektur in konkrete Codex-App-Flaechen gerendert wird.

## 1. Renderziele
- Projekt-Kickoff
- Thread-Startprompt
- Bootstrap Prompt Pack
- optional bounded Systemprompt-Ergaenzungen

## 2. Fuehrende Regel
Rendering ist eine Ableitung aus:
1. `ASWE_PromptEval_Contract_20260420_V1.md`
2. `ASWE_Prompt_Preflight_Operationalization_20260420_V1.md`

Prompt-Packs und Startprompts sind nicht semantischer Ursprung.

## 3. Renderprinzipien
- project-wide nur stabile Disziplinen
- threadnah nur bounded, pfadspezifische Regeln
- keine neue Gate-, Writer- oder Governancewirkung im Rendering
- See-also-/Anschlussstellen explizit

## 4. Driftregel
Wenn Pack, Runbook oder StartContract vom Eval-/Preflight-Contract abweichen,
ist der Contract fuehrend und das Rendering nachzuziehen.
