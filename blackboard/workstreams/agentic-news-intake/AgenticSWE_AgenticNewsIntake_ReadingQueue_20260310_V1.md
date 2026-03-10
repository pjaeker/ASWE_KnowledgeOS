---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-10
status: draft
audience:
  - human
  - llm
intent: "Priorisierte Leseliste fuer Rechecks und Triangulation im Workstream 'agentic-news-intake'."
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

1. schwache Primaerartefakte (`snippet-only`, `page-reviewed`)
1. marketing-nahe oder self-reported Claims
1. Quellen mit hohem moeglichen Handbook-Delta und `needs_recheck = yes`

## Queue

| Prioritaet | source_id | Warum | Naechste Aktion |
| --- | --- | --- | --- |
| 1 | `src_x_clawwork_status_2023282092042580015` | Social-Post nur als Snippet bewertet; primaerer Inhalt fehlt. | Transcript oder zugehoerige Primaerquelle sichern. |
| 2 | `src_longshot_devpost_20260215` | Hackathon-Claims und Zahlen sind self-reported. | Repo/Video/weitere Primaerartefakte triangulieren. |
| 3 | `src_oz_warp_cloudagents_pdf_2026` | Vendor-PDF mit marketing-nahen Claims. | Neutrale Quellen fuer Auditability/Governance suchen. |
| 4 | `src_agno_20260310` | README-basierte Einschaetzung; Runtime-Details nicht voll verifiziert. | Architektur-/Codepfade stichprobenartig nachpruefen. |
| 5 | `src_gitnexus_20260310` | Lizenz- und Privacy-Implikationen fuer spaetere Nutzung relevant. | Lizenz und Data-Egress sauber klassifizieren. |
| 6 | `src_project_orchestrator_20260310` | 19-vs-20-Mega-Tools Unstimmigkeit dokumentiert. | Count und API-Contract im Repo verifizieren. |
| 7 | `src_visual_explainer_20260310` | Nuetzlich als Pattern, aber operativ nur exemplarisch geprueft. | Selected files und Render-Outputs pruefen. |
| 8 | `src_agency_agents_20260310` | Starkes Packaging-Muster, aber Claim-Tiefe begrenzt. | Role-template Extraktion gegen Glossar abgleichen. |

## Abschlussregel

Eine Quelle verlaesst die Reading Queue erst, wenn:

1. Primaerartefakt klar identifiziert ist
1. `fulltext_status` verbessert oder bewusst als begrenzt belassen wurde
1. Promotion-Ziel im Claim Pack begruendet ist
