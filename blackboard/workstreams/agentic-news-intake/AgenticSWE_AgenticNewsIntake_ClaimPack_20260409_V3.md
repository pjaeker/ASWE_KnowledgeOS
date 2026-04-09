---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-04-09
status: draft
audience:
  - human
  - llm
intent: "Konsolidierte Claims, Konflikte, Promotion-Kandidaten und TODOs nach dem Closeout-Import der Session bis 2026-04-09."
tags:
  - layer/blackboard
  - artifact/conflict-cluster
  - topic/deep-research
  - topic/governance
  - topic/promotion-policy
---

# Claim Pack — Agentic News Intake

## Arbeitsstatus

Dies ist **kein** finales Normdokument.
Es konsolidiert den bisherigen Chat-Arbeitsstand so, dass spaetere Promotion in `library/`, `handbook/` und
`templates/` systematisch vorbereitet werden kann.

## Konsolidierte Claims aus V2 bleiben bestehen

Weiterhin stark tragend bleiben:

- kleines `AGENTS.md` als Map / Pflichtregeln / Trigger-Datei
- Skills als Prozedurbuendel mit klarer Routing-Metadaten-Schicht
- Harness / Verifier-Code als echter Leistungshebel
- strukturierter, lifecycle-faehiger Shared Context
- explizite Review- und Approval-Logik

## Delta 2026-04-09

### D6 — Managed-Agent-Runtimes trennen durable Session, Harness und Ausfuehrung

Mehrere neue Quellen staerken das Muster, dass ein langlebiges Agentensystem nicht nur aus Modell + Prompt besteht,
sondern mindestens drei technisch unterscheidbare Ebenen hat:

- durable Session / Event-Log
- Harness / Orchestrierungsschicht
- getrennte Ausfuehrungsumgebung / Sandbox

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Handbook-Policy fuer durable session architecture / managed runtime

### D7 — Skill-Routing, Skill-Internalisierung und Skill-Directory sind drei verschiedene Probleme

Die neue Quellengruppe zeigt sauber unterscheidbare Ebenen:

- **Directory / Marketplace / Discovery-Surface**
- **Routing / Auswahl aus grossen Skill-Pools**
- **Internalisierung / Training statt Retrieval**
- **Skill als ausfuehrbares Artefakt**

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Glossar-/Taxonomie-Arbeit vor Promotion zwingend

### D8 — Self-Improvement ist nur als Workspace- und Harness-Prozess belastbar

Neue Quellen zu Meta-Harness, Agent Evolution, Context Engineering und selbst-evolvierenden Skill-Systemen
zeigen wiederholt:

- bearbeitbarer Workspace / Skill- / Prompt- / Memory-Artefaktraum
- Evaluation / Holdout / Validation
- Rollback oder Reject-Pfad
- Trace / Verlauf / Vergleich frueherer Kandidaten

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Validation-first / rollback-first Policy fuer self-improving systems

### D9 — ASWE bekommt eine explizite Begriffsfamilie und Ordnungsoberflaeche

Mit Roadmap-Paper und Buchmaterial werden externe Vokabeln staerker sichtbar:

- `ACE`
- `AEE`
- `MRP`
- `CRP`
- Workbench / Context / Coordination / Capability / Trust Engineering

**Status:** wachsend stark  
**Promotion-Hinweis:** vor Uebernahme zuerst gegen internes Glossar und Taxonomie mappen

### D10 — Durable Session Logs und Wake/Replay sind ein eigenes Runtime-Muster

Mehrere Quellen staerken das Muster, dass long-running agents nicht allein ueber Kontextfenster,
sondern ueber durable Log-/State-Objekte mit selektivem Rehydrate / Wake / Replay arbeiten.

**Status:** mittel bis stark  
**Promotion-Hinweis:** Handbook-Erklaerung fuer durable session lifecycle

## Neue Conflict Cluster

### K8 — Directory / Marketplace / Repo / Primaerartefakt

**Spannung:**

- Discovery-Surfaces sind nuetzlich fuer Intake und Scouting
- dieselbe Quelle ist nicht automatisch das eigentliche methodische Primaerartefakt

**Arbeitsregel fuer spaeter:**
Directory, Repo, Deployment-Surface und Primaerartefakt getrennt halten; derived surfaces nicht doppelt eintragen.

### K9 — Skill-Routing vs Skill-Internalisierung

**Spannung:**

- grosse Skill-Pools verlangen Routing und Ranking
- dieselben Oekosysteme versprechen zugleich, Skills spaeter intern zu lernen und Retrieval zu vermeiden

**Arbeitsregel fuer spaeter:**
Routing und Internalisierung nicht vermischen; unterschiedliche Artefakte, Metriken und Failure Modes.

### K10 — Repo-native Autonomie vs Managed Runtime

**Spannung:**

- einige Systeme verankern Regeln, Skills und Memory direkt im Repo / Workspace
- andere Systeme trennen Session, Harness und Sandbox in eine verwaltete Runtime

**Arbeitsregel fuer spaeter:**
nicht allgemein entscheiden; ueber Betriebskontext, Trust Boundary und Governance-Anforderungen differenzieren.

### K11 — Allgemeine Agentenplattform vs agentische Softwareentwicklung

**Spannung:**

- viele neue Quellen sind breit agentisch
- nur ein Teil davon adressiert direkt Planen, Codieren, Review, Test, Merge, Governance oder Repo-Artefakte

**Arbeitsregel fuer spaeter:**
allgemeine Agentensysteme nur dann hochpromoten, wenn ihr Delta fuer ASWE konkret benennbar ist.

## Promotion Candidates

### Handbook Candidates

- managed runtime / durable session architecture
- meta-harness als optimierbarer Hebel
- self-improving workspace contracts mit validation / rollback
- skill-routing / internalization boundary
- ASWE-Ordnungsbegriffe nur nach Glossar-Mapping
- durable context / wake / replay / event-log patterns

### Template Candidates

- source classification template: directory vs repo vs primary artifact
- runtime boundary template: session / harness / sandbox
- self-improvement validation checklist
- skill artifact description vs skill routing metadata template

## Offene TODOs

1. `needs_recheck = yes` Quellen mit `very_high` / `high` / `medium_high` priorisieren
2. AgenticSE-Book und ASWE-Roadmap gegen internes Glossar / Taxonomie mappen
3. OpenAI Codex Plugins, Anthropic Managed Agents und Meta-Harness als Begriffs-/Runtime-Anker triangulieren
4. SkillRouter, SKILL0 und Memento-Skills zusammen als Skill-Lifecycle-Cluster ausarbeiten
5. managed runtime vs repo-native autonomy als Konfliktregel scharfstellen

## Promotion Gate

Keine Promotion aus diesem Workstream, wenn mindestens einer der folgenden Punkte offen bleibt:

- dedupe ungeklaert
- Primaerquelle zu schwach
- Begriff nicht sauber auf Glossar/Taxonomie abbildbar
- Konfliktcluster ohne Risiko-Klassen-Regel
- self-improving oder workflow-heavy Quelle ohne nachvollziehbare Validation-/Rollback-Logik
