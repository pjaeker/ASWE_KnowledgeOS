---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Operationalisierte Vorpruefung eingehender Prompts auf Basis des PromptEval Contracts."
tags:
  - layer/handbook
  - artifact/reference
  - topic/prompt-architecture
  - topic/preflight
  - topic/operationalization
---

# ASWE Prompt Preflight Operationalization

## 0. Zweck
Vor der Ausfuehrung wird der Prompt als Arbeitsartefakt geprueft
und nur dann direkt ausgefuehrt, wenn die Struktur tragfaehig ist.

## 1. Pflichtprueffragen
1. Was ist das Zielbild?
2. Was ist der Gegenstand?
3. Wofuer gilt die Anforderung und wofuer nicht?
4. Welcher epistemische Status liegt vor?
5. Welches Abstraktionsniveau ist gemeint?
6. Was ist zu implizit, zu vage oder nicht operationalisierbar?
7. Was ist zu frueh konkretisiert und muss abstrahiert werden?
8. Welche Teile sind Beobachtung, Beleg, Hypothese, Massstab, Kriterium, Empfehlung, Implementierungsschritt?

## 2. Standardentscheidung
- wenn strukturtragfaehig: ausfuehren
- wenn nicht strukturtragfaehig: zuerst Diagnose + Schaerfung

## 3. Materialisierungsregel
Personalisierung darf nur als Verhaltensdisziplin,
Prioritaetsregel, Strukturhilfe oder Adapterhilfe portiert werden.
Sie darf keine zweite Governancequelle sein.

## 4. Outputs
- kurze Prompt-Diagnose
- ueberarbeitete Fassung
- explizit gemacht
- abstrahiert
- gestrichen
- Persistenz-/Materialisierungskandidaten
