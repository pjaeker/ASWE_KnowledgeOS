---
project: AgenticSWE
doc_type: knowledge_os_archive_synthesis
version: V1
date: 2026-02-13
status: draft
audience: [human, llm]
intent: "Consolidate current chat outputs into a Knowledge-OS baseline for later optimization."
---

# Knowledge-OS Archive Synthesis (V1)

## 0) Quick Use
- **If you only have 3 minutes:** read **1) Executive Summary**, then **5) Next Actions**.
- **If you want to improve later with ChatGPT Pro:** use **9) Optimization Hooks** and keep edits inside the defined templates/schemas.

---

## 1) Executive Summary (≤10)
- **Stable:** Target architecture is a **Knowledge-OS** with 4 layers: **Library → Blackboard → Handbook → Templates & Harness**.
- **Stable:** For building the ASWE base, **Blackboard is the working core**, but it must be paired with **curation + gates** to promote content into Handbook/Templates.
- **Stable:** For recursive self-improvement (RSI), **feedback loops (harness) + gates + versioned state** matter more than “chat topology”.
- **Stable:** **Committee/Mesh** is useful **only as an exception path** (conflicts), not as the default interaction mode.
- **Draft:** A heuristic RSI approach can work via **Proxy-Scorecard + Golden Prompts + Role loop (Architect/Skeptic/Librarian/Judge)** until real metrics exist.
- **Open:** Final **taxonomy / information architecture** (IA) for the Handbook (categories, tags, entry points).
- **Open:** **Promotion Policy** (Blackboard → Handbook → Templates).
- **Open:** Final **Golden Prompts set** (20–30 scenarios) to function as regression tests.
- **Open:** Minimal **Eval/Observability** per project archetype (ETL SaaS, grading SaaS, knowledge base ops).

---

## 2) Knowledge-OS Layer Model (Baseline)

### 2.1 Library (Sources & Evidence)
**Purpose:** Hold source pointers + minimal metadata, not essays.

**Guidelines**
- Keep it **citeable**, **deduplicated**, **tagged**.
- Store an **evidence level**: `primary | secondary | mentioned`.

**Current Library Index (from this chat)**
- **[LIB-BB] Blackboard system** — evidence: primary (conceptual anchor)
- **[LIB-DIATAXIS] Diátaxis** — evidence: primary (documentation structure)
- **[LIB-DOCSASC] Docs-as-Code** — evidence: primary (operationalization)
- **[LIB-ADR] ADR / ADR-Lite** — evidence: primary (decision logging)
- **[LIB-OTEL] OpenTelemetry (traces + context propagation)** — evidence: primary (observability backbone)
- **[LIB-BROOKS] Brooks’ Law** — evidence: secondary (mesh cost warning)
- **[LIB-CONWAY] Conway’s Law** — evidence: secondary (org ↔ architecture)
- **[LIB-COORD] Coordination theory** — evidence: secondary (dependency ↔ mechanism)
- **[LIB-MRTA] MRTA/task allocation** — evidence: secondary (market vs central planning)
- **[LIB-UNCERTAINTY] Uncertainty ↔ centralization simulation** — evidence: secondary (quality vs time/cost tradeoff)
- **[LIB-K6] k6 load / synthetics** — evidence: mentioned (performance harness tool)
- **[LIB-APM] APM providers (Datadog, Honeycomb, X-Ray)** — evidence: mentioned
- **[LIB-LLMOBS] LLM observability (LangSmith, Phoenix, etc.)** — evidence: mentioned
- **[LIB-FORMAL] Actor/Petri/π-calculus** — evidence: mentioned (formal modeling options)
- **[LIB-GCA] Graph cellular automata** — evidence: mentioned (simulation lens)

---

### 2.2 Blackboard (Working Notes / Claims / TODO / Conflicts)
**Purpose:** Active workspace: claims, hypotheses, partial drafts, open questions, contradictions.

**Stable claims**
- **[BB-TOPO] Topology palette** for orchestration: Pipeline/DAG, Router, Supervisor/Hierarchy, Committee/Mesh, Blackboard, Market/Auction.
- **[BB-PERF] Processing time harness** is mainly **distributed tracing + load/synthetics**; LLM-evals complement quality/cost.
- **[BB-RSI] RSI requires harness + gates + versioned state**; topology alone is insufficient.
- **[BB-HYBRID] Default operating mode:** Blackboard-centered + Meta-Supervisor; Committee only on conflicts.

**Draft heuristics**
- **[BB-PROXY] Proxy scorecard**: Findability, Actionability, Consistency, Non-Redundancy, Scope-Fit.
- **[BB-GOLDEN] Golden prompts**: 20–30 standard scenarios as regression test set.
- **[BB-ROLES] Role loop**: Architect → Skeptic/Red-Team → Librarian → Judge.

**Trigger/event ideas (draft)**
- **[BB-TRIGGERS]** `new_source_added`, `claim_extracted`, `conflict_detected`, `pattern_candidate_ready`, `promote_to_handbook`, `template_ready`, `smoke_passed/failed`.

**Tensions / drift risks**
- **[BB-TENSION] “Big & comprehensive” vs “fast & operational”** → risk of knowledge hoarding.
- **[BB-TENSION2] Heuristic evaluation vs real metrics** → risk of “plausibility overfitting”.

---

### 2.3 Handbook (Curated, fast readable)
**Purpose:** The user-facing, stable, minimal surface: “what to do, when, and why”.

**Rule:** Use **Diátaxis** categories to prevent text soup.

#### Tutorial (draft index)
- **[TUT-1] Knowledge-OS setup in 60 minutes**  
  Minimal repo structure + first promotion rule. (Refs: [TMP-PROMOTION], [TMP-ADR])

#### How-to (draft index)
- **[HT-1] Choose topology for a target project**  
  Map goals/uncertainty/coupling → pipeline/blackboard/supervisor. (Refs: [BB-TOPO], [LIB-COORD])
- **[HT-2] Conflict handling: “committee on demand”**  
  When multiple agents are allowed; when not. (Refs: [BB-HYBRID])
- **[HT-3] Diagnose processing-time bottlenecks**  
  Tracing + load profiles. (Refs: [LIB-OTEL], [LIB-K6], [BB-PERF])

#### Reference (draft index)
- **[REF-1] Topology glossary**
- **[REF-2] Trigger event schema** (Refs: [TMP-TRIGGERS])
- **[REF-3] Proxy scorecard schema** (Refs: [TMP-SCORECARD])

#### Explanation (mixed stable/draft)
- **[EXP-1] Why topology isn’t enough** (Stable) — harness + gates drive reliability.
- **[EXP-2] Why blackboard fits an ASWE base** (Draft) — opportunistic contributions + promotion.

---

### 2.4 Templates & Harness (Executable assets)
**Purpose:** Reusable building blocks: checklists, schemas, prompts, CI rules, smoke tests.

Current assets (draft)
- **[TMP-SCORECARD] Proxy-Scorecard**
- **[TMP-GOLDEN] Golden Prompts**
- **[TMP-PROMOTION] Promotion Policy**
- **[TMP-ADR] ADR-Lite**
- **[TMP-TRIGGERS] Trigger/Event Schema**
- **[TMP-ROLE-PROMPTS] Role Prompt Pack (Architect/Skeptic/Librarian/Judge)**

---

## 3) Decisions (ADR-Lite Log)

### ADR-1 — Adopt Knowledge-OS as baseline (Stable)
- **Context:** Need a fast, structured ASWE base that guides E2E projects for human & AI.
- **Options:** (A) literature pile, (B) Knowledge-OS (4 layers), (C) handbook only.
- **Decision:** Choose **(B)** Knowledge-OS layer model.
- **Consequences:** Requires promotion rules and a curated surface.
- **Revisit-when:** Maintenance cost > benefit, or findability degrades.

### ADR-2 — Default orchestration mode (Stable)
- **Context:** Need scalable interaction without chat overhead.
- **Options:** Mesh, Supervisor-only, Blackboard-only, Hybrid.
- **Decision:** **Hybrid: Blackboard + Meta-Supervisor**, Committee only on conflicts.
- **Consequences:** More auditability; requires trigger schema + gates.
- **Revisit-when:** Blackboard/supervisor becomes bottleneck.

### ADR-3 — Heuristic RSI as interim harness (Draft)
- **Context:** Lacking production metrics for architecture optimization.
- **Options:** Wait for metrics, proxy scorecard + golden prompts, intuition-only.
- **Decision:** Use **proxy scorecard + golden prompts** as interim eval harness.
- **Consequences:** Comparability improves; still risks plausibility bias.
- **Revisit-when:** Real telemetry/evals exist per project archetype.

---

## 4) Minimal Schemas (Machine-friendly)

### 4.1 Trigger/Event Schema (TMP-TRIGGERS) — Draft
```json
{
  "event_id": "evt_...",
  "run_id": "run_...",
  "timestamp": "ISO-8601",
  "event_type": "new_source_added | claim_extracted | conflict_detected | pattern_candidate_ready | promote_to_handbook | template_ready | smoke_passed | smoke_failed",
  "artifact": {
    "type": "source | claim | handbook_page | template | decision",
    "id": "string",
    "path": "string|null",
    "version": "string|null"
  },
  "payload": {},
  "next_actions": [
    {
      "action_type": "route_to_role | open_issue | request_revision | promote | reject",
      "target": "Architect | Skeptic | Librarian | Judge | Supervisor",
      "reason": "string"
    }
  ]
}
```

### 4.2 Proxy Scorecard (TMP-SCORECARD) — Draft
```json
{
  "change_id": "chg_...",
  "scored_on": "ISO-8601",
  "scores": {
    "findability": 0,
    "actionability": 0,
    "consistency": 0,
    "non_redundancy": 0,
    "scope_fit": 0
  },
  "verdict": "accept | revise | reject",
  "required_changes": ["string"],
  "notes": "string"
}
```

### 4.3 ADR-Lite (TMP-ADR) — Draft
```json
{
  "adr_id": "ADR-###",
  "title": "string",
  "status": "draft | accepted | superseded",
  "context": "string",
  "options": [
    {"id": "A", "summary": "string"},
    {"id": "B", "summary": "string"}
  ],
  "decision": "string",
  "consequences": ["string"],
  "revisit_when": ["string"]
}
```

---

## 5) Next Actions (Backlog, prioritized)

### P0 — Make it usable
- Define **Handbook IA / taxonomy** (categories + tags + entry points).  ✅ needed for “fast readable”
- Define **Promotion Policy** (Blackboard → Handbook → Templates).
- Freeze **Golden Prompts v1** (20–30 scenarios).
- Add **Glossary page** with normalized terms (Topology, Harness, Gate, Promotion, ADR-Lite, Blackboard).

### P1 — Make it reliable
- Add **Drift guards**: document length limits, Diátaxis enforcement, “no essays in how-to”.
- Add **Conflict protocol**: when to trigger committee + how to resolve.
- Add **Staleness rule**: when to re-check a library item.

### P2 — Make it scalable
- Add **indexing strategy** (tags, backlinks, decision links).
- Add **basic CI checks** (schema validity, broken refs, max length).

---

## 6) Draft Golden Prompts (TMP-GOLDEN) — Placeholder List
> Freeze as a versioned list later.

1) Start a new ASWE project repo with minimal “codex-ready” structure.  
2) Decide between Pipeline vs Blackboard vs Hybrid for project X.  
3) Add quality gates (tests/lint/security) for a new feature.  
4) Handle a regression: tests fail after a change—triage plan.  
5) Reduce processing time of a PDF → structured output pipeline.  
6) Resolve conflicting design recommendations from two sources.  
7) Create ADR-Lite for a new tool adoption decision.  
8) Promote a claim from Blackboard to Handbook—what must be true?  
9) Create a template for “agent role prompt” and validate its outputs.  
10) Create a minimal observability plan (tracing spans + metrics).  

---

## 7) Role Prompt Pack (TMP-ROLE-PROMPTS) — Draft Spec
**Architect**
- Produces: concrete change proposal (≤ 12 bullets) + affected layer(s) + expected benefit.

**Skeptic (Red-Team)**
- Produces: failure modes (≤ 8) + mitigations (≤ 8) + “what would disprove this”.

**Librarian**
- Produces: Diátaxis-compliant rewrite + references to Library/Blackboard/Templates.

**Judge**
- Produces: Proxy Scorecard JSON + verdict + required changes + ADR-Lite if accepted.

---

## 8) Drift Control Rules (Draft)
- **No new ideas** enter Handbook without: (a) tag + (b) short action + (c) link to evidence or explicit “hypothesis”.
- **Committee only on conflict:** trigger when disagreement or low confidence is detected.
- **How-to pages** must be: ≤ 200 lines, ≥ 1 checklist, ≥ 1 “gate”.
- **Reference pages** must be: schema/definitions only, no prose.

---

## 9) Optimization Hooks (for later ChatGPT Pro iterations)
Use these prompts (or variations) to iteratively improve without drifting:

### 9.1 “Promote & prune”
- Identify redundancies and propose merges.
- Convert long prose into Diátaxis structure.
- Enforce max-length & add checklists.

### 9.2 “Make it executable”
- Extract 1 new template/harness item from the Blackboard.
- Add an example input/output pair.
- Add a smoke test definition.

### 9.3 “Consistency audit”
- Find contradictions between: (a) ADRs, (b) Handbook rules, (c) Templates.
- Propose the minimal set of edits to restore consistency.

### 9.4 “Golden prompt regression”
- Run the Golden Prompts against the current Handbook.
- Report which prompts fail “findability/actionability” and why.

---

## 10) Change Log
- 2026-02-13 — V1 created from current conversation; status: draft.

