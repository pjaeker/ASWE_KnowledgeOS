---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-16
status: draft
audience:
  - human
  - llm
intent: "Priorisierte Leseliste fuer Rechecks und Triangulation im fortgefuehrten Workstream 'agentic-news-intake'."
tags:
  - layer/blackboard
  - artifact/reading-queue
  - topic/deep-research
  - topic/findability
  - topic/consistency
---

# Reading Queue — Agentic News Intake

## Priorisierungslogik

Hohe Prioritaet fuer:

1. schwache Primaerartefakte (`snippet-only`, `page-reviewed`, README-only)
1. marketing-nahe oder self-reported Claims
1. Quellen mit hohem moeglichen Handbook-Delta und `needs_recheck = yes`
1. neue Delta-Quellen, die starke Pattern versprechen, aber noch nicht bis in Code/Spec/Paper trianguliert wurden

## Queue A — Delta-Session Rechecks

| Prioritaet | source_id | Warum | Naechste Aktion |
| --- | --- | --- | --- |
| 1 | `src_openai_symphony_20260311` | Sehr hoher Pattern-Wert; Preview/Spec-vs-Implementierung noch nicht sauber getrennt. | Spec und Referenzimplementierung stichprobenartig pruefen. |
| 2 | `src_autocontext_20260313` | Persistenter Lern-Loop, Validation und Rollback sind stark, aber README-first. | Unterdokumente und Kernimplementierung pruefen. |
| 3 | `src_smart_codebase_20260311` | Projektindex + modulare Wissensdateien sind stark, aber Extraktion/Inject noch nicht verifiziert. | Codepfade fuer Extract/Index/Inject lesen. |
| 4 | `src_live_swe_agent_20260312` | Self-evolving scaffold und Benchmark-Claims brauchen Paper-/Config-Triangulation. | Paper und Konfiguration nachziehen. |
| 5 | `src_arxiv_2603_02766_20260303` | Nur Abstract-/Page-Level ausgewertet. | Volltext des Papers lesen. |
| 6 | `src_paperclipai_paperclip_20260312` | Governance-/Control-Plane-Claims noch nicht gegen Code validiert. | server/shared/ui auf Invarianten pruefen. |
| 7 | `src_agentsys_20260312` | Marketplace-/runtime-Claims und Persistenz sind noch README-first. | Kern-Docs und exemplarische Plugins pruefen. |
| 8 | `src_claude_codex_settings_20260316` | Cross-tool Pattern stark, aber Skills/Hooks/Plugins noch nicht stichprobenartig geprueft. | Beispielhafte Skills/Hooks oeffnen. |
| 9 | `src_anthropic_cybersecurity_skills_20260314` | Skill-Schema stark, aber Sample-Skills nicht geprueft. | Einige `SKILL.md`-Dateien oeffnen. |
| 10 | `src_agent_skills_hub_20260314` | Bewertungslogik interessant, aber Scoring-Implementierung noch nicht geprueft. | Scorer/quality analyzer und Architektur lesen. |

## Queue B — Carry-over Rechecks aus V1

| Prioritaet | source_id | Warum | Naechste Aktion |
| --- | --- | --- | --- |
| 11 | `src_x_clawwork_status_2023282092042580015` | Social-Post nur als Snippet bewertet; primaerer Inhalt fehlt. | Transcript oder zugehoerige Primaerquelle sichern. |
| 12 | `src_longshot_devpost_20260215` | Hackathon-Claims und Zahlen sind self-reported. | Repo/Video/weitere Primaerartefakte triangulieren. |
| 13 | `src_oz_warp_cloudagents_pdf_2026` | Vendor-PDF mit marketing-nahen Claims. | Neutrale Quellen fuer Auditability/Governance suchen. |
| 14 | `src_agno_20260310` | README-basierte Einschaetzung; Runtime-Details nicht voll verifiziert. | Architektur-/Codepfade stichprobenartig nachpruefen. |
| 15 | `src_project_orchestrator_20260310` | API-/Tool-Claims relevant; noch nicht abschliessend verifiziert. | Count und API-Contract im Repo verifizieren. |
| 16 | `src_visual_explainer_20260310` | Nuetzlich als Pattern, aber operativ nur exemplarisch geprueft. | Selected files und Render-Outputs pruefen. |

## Depriorisiert fuer spaeter

- `src_awesome_system_design_resources_20260310`
- `src_public_apis_20260312`
- `src_awesome_software_architecture_20260310`

Diese Quellen bleiben nuetzlich als Hintergrundbibliothek, haben aber geringeren direkten ASWE-Delta als die oben priorisierten Rechecks.

## Abschlussregel

Eine Quelle verlaesst die Reading Queue erst, wenn:

1. Primaerartefakt klar identifiziert ist
1. `fulltext_status` verbessert oder bewusst als begrenzt belassen wurde
1. Promotion-Ziel im Claim Pack begruendet ist
1. Dedupe-/Derived-Surface-Fragen sauber geschlossen sind
