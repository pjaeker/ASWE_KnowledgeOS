---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-04-09
status: draft
audience:
  - human
  - llm
intent: "Priorisierte Leseliste fuer Rechecks und Triangulation nach dem Closeout-Import bis 2026-04-09."
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
1. neue Runtime-/Harness-/Skill-/ASWE-Roadmap-Quellen mit starkem Begriffs- oder Strukturwert

## Queue A — Neue Closeout-Rechecks

| Prioritaet | source_id | Warum | Naechste Aktion |
| --- | --- | --- | --- |
| 1 | `src_agenticse_book_20260328` | Sehr hoher Struktur- und Glossarwert; moeglicher starker Handbook-Anker. | Kapitel zu Workbench / Context / Coordination / Trust stichprobenartig gegen internen Canonical-Raum pruefen. |
| 2 | `src_arxiv_2509_06216_20250923` | Externe ASWE-Roadmap mit ACE/AEE/MRP/CRP-Vokabular. | Begriffsfamilie gegen internes Glossar und Taxonomie mappen. |
| 3 | `src_anthropic_managed_agents_20260408` | Durable runtime mit Session/Harness/Sandbox-Grenzen; sehr hoher Pattern-Wert. | Produktdoku / Runtime-Details nachziehen und Sicherheitsgrenzen haerten. |
| 4 | `src_arxiv_2603_28052_20260330` | Harness-Optimierung als eigener Meta-Hebel; sehr relevant fuer ASWE-Harnessing. | Repo-/Eval-Artefakte nachziehen und Failure Modes notieren. |
| 5 | `src_openai_codex_plugins_20260323` | Artifact-boundary-Quelle fuer Plugin / Skill / App / MCP / Marketplace. | Begriffe fuer internes Glossar und Directory-vs-Artifact-Policy ausarbeiten. |
| 6 | `src_aevolve_20260325` | Self-improving workspace contracts mit holdout gating / rollback. | `DESIGN.md`, seed workspaces und eval path lesen. |
| 7 | `src_mementoskills_20260325` | Skill rewrite / reflection / persistent library stark, aber README-first. | Skill optimization path und utility scoring pruefen. |
| 8 | `src_arxiv_2604_02268_20260402` | Skill internalization grenzt Retrieval-Routing klar ab. | Repo `SkillZero` und eval setup pruefen. |
| 9 | `src_arxiv_2603_22455_20260323` | Skill routing at scale; wichtig fuer grosse skill pools. | Repo / benchmark availability und metric assumptions pruefen. |
| 10 | `src_sweaf_20260319` | Starkes multi-role ASWE-Modell mit verification claims. | Beispiele / benchmark / orchestration path gegen Code oder docs pruefen. |
| 11 | `src_deerflow_20260322` | Super-agent harness mit skills, memory, sandbox, channels. | backend/docs/skills stichprobenartig lesen. |
| 12 | `src_hermes_agent_20260322` | Self-improvement, subagents, cron, gateway, memory. | skills/tools/cron/gateway paths verifizieren. |

## Queue B — Weiterhin offen aus V2

| Prioritaet | source_id | Warum | Naechste Aktion |
| --- | --- | --- | --- |
| 13 | `src_openai_symphony_20260311` | Sehr hoher Pattern-Wert; Preview/Spec-vs-Implementierung noch nicht sauber getrennt. | Spec und Referenzimplementierung stichprobenartig pruefen. |
| 14 | `src_autocontext_20260313` | Persistenter Lern-Loop, Validation und Rollback sind stark, aber README-first. | Unterdokumente und Kernimplementierung pruefen. |
| 15 | `src_smart_codebase_20260311` | Projektindex + modulare Wissensdateien sind stark, aber Extraktion/Inject noch nicht verifiziert. | Codepfade fuer Extract/Index/Inject lesen. |
| 16 | `src_paperclipai_paperclip_20260312` | Governance-/Control-Plane-Claims noch nicht gegen Code validiert. | server/shared/ui auf Invarianten pruefen. |
| 17 | `src_agentsys_20260312` | Marketplace-/runtime-Claims und Persistenz sind noch README-first. | Kern-Docs und exemplarische Plugins pruefen. |
| 18 | `src_claude_codex_settings_20260316` | Cross-tool Pattern stark, aber Skills/Hooks/Plugins noch nicht stichprobenartig geprueft. | Beispielhafte Skills/Hooks oeffnen. |

## Depriorisiert fuer spaeter

- `src_publicapis_marcelscruz_20260319`
- `src_dlt_20260320`
- `src_ladder_20260323`
- `src_arxiv_2602_16301_20260218`
- `src_arxiv_2604_06015_20260407`
- `src_markitdown_20260409`

Diese Quellen bleiben nuetzlich als Hintergrund- oder Blackboard-Material, haben aber geringeren direkten ASWE-Delta als die priorisierten Rechecks.

## Abschlussregel

Eine Quelle verlaesst die Reading Queue erst, wenn:

1. Primaerartefakt klar identifiziert ist
1. `fulltext_status` verbessert oder bewusst als begrenzt belassen wurde
1. Promotion-Ziel im Claim Pack begruendet ist
1. Dedupe-/Derived-Surface-Fragen sauber geschlossen sind
