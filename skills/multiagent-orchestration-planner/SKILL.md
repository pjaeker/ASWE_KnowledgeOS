---
name: multiagent-orchestration-planner
description: plan, scope, and prepare multi-agent orchestration for a given task across technical, scientific, research, governance, or mixed problem types. use when chatgpt needs to analyze an incoming task, route it to the right abstraction level, decide whether single-agent or bounded multi-agent work is justified, design workstreams or slices, map required capabilities, model information flow and authority boundaries between agents, identify role or tool gaps, recommend a suitable execution environment such as chatgpt, codex app, cli, or repo-local helpers, and produce an implementable orchestration plan. use especially when tasks are ambiguous, cross-disciplinary, high-stakes, or likely to drift without explicit routing, handoffs, and stop rules.
---

# Multiagent Orchestration Planner

## Overview

Use this skill to turn a raw task description into a bounded orchestration plan.
Do not start by assigning agents. First determine what kind of question or task this is, what knowledge level it needs, what the correct first access path is, and what the smallest safe work structure is.

This skill is general-first and can be used for technical engineering work, scientific or research tasks, governance questions, or mixed tasks.
When the user's context is ASWE-style, apply the optional ASWE profile in `references/aswe-profile.md`.

## Core rule

Treat orchestration as a consequence of task structure, not as a default solution.
Prefer:
1. single-agent work when the task is narrow and low-coupling
2. bounded helper roles when specialization clearly reduces risk or ambiguity
3. deeper multi-agent orchestration only when information flow, handoffs, gates, and authority boundaries can be stated explicitly

## Required workflow

### 1) Route the task before planning
Always begin with a routing step modeled on the ASWE question-router discipline.
Classify the task along these three axes:

- primary object domain
  - external domain
  - system or product object
  - local governance or policy
  - tool or environment
  - concrete case
- primary knowledge level
  - concept or definition
  - theory or model
  - observation or finding
  - norm or rule
  - operational procedure
  - implementation
- abstraction level
  - principle
  - system structure
  - context-bound work rule
  - single case

Then state:
- why this routing is primary
- which wrong route it prevents
- what the correct first access path is
- what should not be branched to yet

Do not skip this routing step just because the user mentioned agents, codex, a repo, or implementation.

### 2) Determine the true task shape
After routing, identify:
- the real objective
- the expected deliverable
- the evidence requirements
- whether the task is exploratory, semantic, architectural, operational, or implementational
- whether the user needs planning only or planning plus implementation preparation

Separate clearly:
- observation vs claim
- claim vs rule
- concept clarification vs execution
- architecture question vs environment question

### 3) Decide whether orchestration is justified
Use the smallest orchestration that safely fits the task.
Evaluate at least these factors:
- ambiguity
- coupling across domains or artifacts
- need for distinct evidence types
- need for verification or adversarial checking
- risk of semantic or focus drift
- need for long-running iteration
- safety, permissions, or external impact

Default to no multi-agent orchestration unless there is a clear gain.

### 4) Define work structure
Produce a bounded work structure.
Depending on the task, this may be:
- a single slice
- a small sequence of slices
- a set of workstreams
- a primary path plus supporting paths

For each unit, state:
- purpose
- scope
- expected artifact or output
- what it depends on
- what should remain out of scope

If the task is broad, decompose it into the smallest meaningful work units.

### 5) Plan capabilities before naming agents
Before mapping to agents or roles, derive the capability classes needed.
Examples:
- evidence intake
- terminology or ontology work
- scope mapping
- hypothesis triage
- verification or gate design
- runtime observation
- documentation codification
- architecture synthesis
- security review

For each capability, state whether it is:
- required now
- helpful later
- unnecessary for this task

### 6) Map capabilities to roles and identify gaps
Only after capabilities are clear, map them to concrete roles, skills, or subagents.
For each role, specify:
- why it is needed
- what input contract it needs
- what output contract it must satisfy
- what it must not do
- who it hands off to
- whether it is only recommended, spawn-ready, or already materialized

If no existing role fits well, say so explicitly and describe the missing role contract.
Do not force-fit a weak role match.

### 7) Plan the information flow explicitly
This is mandatory.
For each role or stage, define:
- inbound information
- source of truth or evidence surface
- transformation performed
- outbound artifact or message
- next receiver
- required handoff packet
- stop condition or return-to-main-agent condition

The information flow must make clear:
- where observations enter
- where claims are formed or tested
- where authority changes
- where verification happens
- where final synthesis happens

Do not produce a multi-agent plan without a visible information-flow model.
Use the checklist in `references/information-flow-checklist.md` when the flow is complex or the task is high-stakes.

### 8) Evaluate environment fit
Recommend the best execution environment for the plan.
Consider whether the work is better suited to:
- ChatGPT alone
- ChatGPT plus web or file tools
- Codex App
- Codex CLI or IDE
- repo-local scripts or automations
- external connectors

When recommending Codex App or other agentic environments, state why:
- worktree isolation
- parallel threads
- longer-running delegated tasks
- repo-local context
- tooling boundaries

Also state what that environment should not be trusted to do autonomously.

### 9) Select the output profile
Choose the output profile that best matches the routed task:
- scientific or research task -> `references/profile-scientific.md`
- repo-local architecture or governance task -> `references/profile-repo-architecture.md`
- codex app or multi-agent runtime planning -> `references/profile-codex-orchestration.md`
- mixed task -> combine the generic default template with only the relevant sections from one or more profiles

Do not force a profile that does not match the routed task.
If no profile fits cleanly, use the generic template and explain the mismatch.

### 10) Produce the orchestration plan
Your final plan must include, at minimum:
- routed task classification
- orchestration decision with justification
- bounded work structure
- capability matrix
- role mapping and role gaps
- information flow
- authority and write boundaries
- environment recommendation
- main risks and failure modes
- smallest next implementation step

## Hard rules

- never start with agent assignment before routing and work decomposition
- never equate tool availability with architectural necessity
- never assume multi-agent is better than single-agent
- never hide role gaps; surface them explicitly
- never blur evidence, semantics, governance, and implementation into one stage
- never omit information-flow design when recommending multi-agent work
- never assign final authority to bounded helper roles by default
- never create a second writer path implicitly
- never treat scientific or conceptual questions as implementation tasks merely because tools exist

## ASWE profile

When the user's context is ASWE-style, load `references/aswe-profile.md` and adapt the plan to:
- evidence -> semantic -> architecture -> harness ordering
- bounded helper roles
- one-writer-many-readers governance
- router-first discipline
- workstream-aware outputs
- explicit spawn-readiness vs materialization

## Output format

Use the default template in `references/output-template.md` unless a better fit is required by one of the output profiles.

## References

- `references/output-template.md` for the default plan format
- `references/aswe-profile.md` for the optional ASWE adaptation layer
- `references/information-flow-checklist.md` for flow validation
- `references/profile-scientific.md` for scientific and research tasks
- `references/profile-repo-architecture.md` for repo-local architecture and governance tasks
- `references/profile-codex-orchestration.md` for Codex App and runtime orchestration tasks
