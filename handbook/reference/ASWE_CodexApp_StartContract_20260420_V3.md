---
project: ASWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "V3-Entwurf des Startvertrags mit Anschluss des Prompt-Architekturpakets."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/start-contract
  - topic/prompt-architecture
---

# ASWE Codex App Start Contract

## Fuehrende Kette (Auszug)
Fuehrend bleiben:
1. ENTRY_LATEST
2. RepoStatusUpdate
3. ASWE_WS_ArchitectureEvolution
4. ASWE_WS_EvidenceIntake
5. PROJECT_INSTRUCTIONS_*
6. ASWE_CodexApp_StartContract_20260420_V3.md
7. ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md
8. ASWE_CodexApp_BootstrapPromptPack_20260420_V3.md
9. ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md
10. ASWE_PromptEval_Contract_20260420_V1.md
11. ASWE_Prompt_Preflight_Operationalization_20260420_V1.md
12. ASWE_CodexApp_PromptPack_Rendering_Contract_20260420_V1.md

## 3a. Bekannter Vorlaufschnitt / Readiness-Restpunkt
Der Prompt-Architecture-Satz ist nur dann streng deterministic-readiness-faehig,
wenn die bekannte Audit-/Readiness-Pfaddrift in der wirksamen Startkette
entweder vorab geschlossen oder im ersten bounded Slice explizit entschieden wird.

Aktueller Restpunkt:
- der relevante Audit-Anker liegt real unter `handbook/explanation/...`
- Teile der wirksamen Start- und Readiness-Kette koennen noch `handbook/reference/...` erwarten

Folge:
- Planung, Vertrags- und Runbook-Arbeit bleiben zulaessig
- bounded Materialisierung in Codex ist zulaessig, wenn dieser Restpunkt als erster Slice geprueft wird
- streng deterministic-readiness-gepruefte Materialisierung setzt voraus,
  dass dieser Pfadkonflikt zuvor geschlossen oder bewusst als non-blocking bewertet wurde

## Wissensarbeits- und Personalisierungsregel
Geeignete Personalisierungen sind nur zulaessig,
wenn sie in explizite Codex-Flaechen uebersetzt wurden.
Prompt-Preflight ist Vorpruefung.
Prompt-Pack-Rendering ist Ableitungsregel.
Bootstrap Prompt Packs bleiben Materialisierung, nicht semantischer Ursprung.
