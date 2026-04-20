---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V4
date: 2026-04-20
status: draft
audience:
  - human
  - llm
intent: "Priorisierte Leseliste fuer Rechecks und Triangulation fuer die neuen V4-Quellen."
tags:
  - layer/blackboard
  - artifact/reading-queue
  - topic/deep-research
  - topic/findability
  - topic/consistency
---

# Reading Queue Delta — Agentic News Intake

## Priorisierungslogik

Hohe Prioritaet fuer:

1. schwache Primaerartefakte mit hohem moeglichem Handbook-Delta
2. Literaturanker und Runtime-Quellen mit starkem Begriffs- oder Strukturwert
3. Token-, Context- und Continuity-Quellen mit moeglicher Glossar-Kollision
4. Social-Surfaces nur dann, wenn Transcript oder belastbarer Spiegel vorliegt

## Queue A — Neue V4-Rechecks

| Prioritaet | source_id | Warum | Naechste Aktion |
| --- | --- | --- | --- |
| 1 | `src_arxiv_2604_08224_20260409` | Literaturanker fuer Externalization, Harness, Protocols und Skills. | Volltext gegen internes Glossar und Taxonomie mappen. |
| 2 | `src_openai_next_evolution_agents_sdk_2026` | Offizieller Runtime-Anker fuer harness, sandbox und memory. | Produkt- und Runtime-Grenzen gegen bestehende OpenAI-Quellen triangulieren. |
| 3 | `src_anthropic_harness_design_long_running_apps_2026` | Sehr starker Harness- und evaluator-zentrierter Runtime-Beitrag. | File handoffs, sprint contracts und evaluator layer gegen internes Modell ziehen. |
| 4 | `src_arxiv_2604_14228_2026` | Designraum-Paper zu Claude Code mit permission, compaction und extensibility. | 13 Designprinzipien und offene Richtungen aus dem Volltext ziehen. |
| 5 | `src_arxiv_2604_15034_2026` | Versionierte Ressourcen und auditable self-evolution via AGP. | RSPL vs SEPL als Protokollschichten sauber gegen internes Begriffsmodell mappen. |
| 6 | `src_arxiv_2604_06240_20260405` | Verifier-Architektur fuer computer-use agents. | Repo- und Benchmark-Artefakte pruefen; Verifier vs judge sauber trennen. |
| 7 | `src_thoughtworks_codebase_cognitive_debt_2026` | Starker Engpass- und Verstehensanker fuer KI-beschleunigtes Coding. | Gegen Governance-, Review- und Cognitive-Load-Begriffe im Repo mappen. |
| 8 | `src_martinfowler_harness_engineering_2026` | Starker operationaler Harness-Text mit feedforward/feedback Modell. | AGENTS.md, skills und verification loops als Pattern-Matrix extrahieren. |
| 9 | `src_context_mode_2026` | Integrierte context/runtime layer mit hooks, retrieval und continuity. | Tooling, hook contracts und continuity claims gegen Implementierung stichprobenartig pruefen. |
| 10 | `src_token_savior_recall_2026` | Persistente Memory- und structural-navigation-Schicht mit progressive disclosure. | Memory contracts, contradiction detection und validity logic im Codepfad pruefen. |
| 11 | `src_alexgreensh_token_optimizer_2026` | Strong runtime around context quality, checkpoints and restore. | Quality-scoring logic, cache-safety claims und restore path stichprobenartig pruefen. |
| 12 | `src_arxiv_2604_14004_2026` | Memory-transfer-Paper mit klaren Abstraktionsstufen. | Insight, workflow, summary, trajectory gegen internes Memory-Modell mappen. |
| 13 | `src_googleapis_mcp_toolbox_2026` | Klarer adapter/package pattern mit toolsets, prompts und skills. | Skill generation und security boundaries aus Doku oder Code nachziehen. |
| 14 | `src_loopndroll_2026` | Stop/continue governance via Codex hooks. | Completion checks, await-reply und max-turn modes gegen internes governance vocabulary mappen. |

## Queue B — Sekundaere oder schwach priorisierte V4-Faelle

| Prioritaet | source_id | Warum | Naechste Aktion |
| --- | --- | --- | --- |
| 15 | `src_openai_codex_use_cases_2026` | Gute Discovery-Surface, aber schwache Normquelle. | Nur fuer Taxonomie und Task-Mapping nutzen. |
| 16 | `src_ooples_token_optimizer_mcp_2026` | Breites Tooling-Muster, aber methodisch weniger tragend. | Nur bei Bedarf gegen Context-Runtime-Cluster abgleichen. |
| 17 | `src_claude_token_optimizer_2026` | Repo-lokale Dokumentationsstruktur nuetzlich, aber schmal. | Als Dokumentationsmuster behalten, nicht uebergewichten. |
| 18 | `src_heise_thoughtworks_warns_2026` | Sekundaerquelle, nuetzlich als Einstieg. | Nicht ueber Primaerquellen promoten. |
| 19 | `src_heise_true_bottleneck_2026` | Sekundaerer Diskursanker. | Nur als Kontext fuer cognitive-debt-Cluster behalten. |
| 20 | `src_dora_metrics_2026` | Hintergrund fuer Delivery-Messung, aber kein ASWE-Kernanker. | Nur fuer Messrahmen referenzieren. |

## Nicht direkt weiterbearbeiten ohne Zusatzmaterial

- `src_x_status_2045077274660135210`
- `src_x_status_2045420155434320270`

Diese Quellen bleiben snippet-only, bis Transcript, Screenshot oder belastbare Spiegelquelle vorliegt.

## Abschlussregel

Eine Quelle verlaesst diese Delta-Queue erst, wenn:

1. Primaerartefakt klar identifiziert ist
2. `fulltext_status` verbessert oder bewusst als begrenzt belassen wurde
3. Promotion-Ziel im Claim Pack begruendet ist
4. Dedupe-, Derived-Surface- und Begriffsfragen sauber geschlossen sind
