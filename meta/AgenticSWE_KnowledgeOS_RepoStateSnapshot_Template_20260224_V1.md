---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V1
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Template für einen versionierten Repo-State-Snapshot (Status-Snapshot) als Chat-Handoff, bis das CMS/Portal live ist."
tags:
  - layer/handbook
  - artifact/template
  - topic/ssot
  - topic/topologie
  - topic/governance
  - topic/findability
  - topic/run-id
  - topic/secrets
---

# Repo-State-Snapshot — Template (V1)

> **Zweck:** Harte Fakten + überprüfbare Eckdaten, damit ein LLM (und du) denselben Repo-Stand meinen – ohne dass alle Dateien im Chat vorliegen.  
> **Soll-Zielpfad für Snapshots:** `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_YYYYMMDD_Vx.md`

---

## 0) Snapshot-Metadaten

- snapshot_id: `repo-state-YYYYMMDD-Vx`
- run_id: `<run_YYYYMMDD_hhmm_optional>`
- erstellt_am: `<YYYY-MM-DD>`
- erstellt_durch: `<human | codex | copilot>`
- basis_ref: `<branch | tag | commit-sha>`
- scope: `repo-status` (keine Volltexte)
- redactions: `["secrets", ".env", ".git", "node_modules"]`
- tree_max_depth: `2`

---

## 1) Executive Delta (seit letztem Snapshot)

- previous_snapshot: `<Dateiname oder NONE>`
- delta_summary:
  - <NEU/GEÄNDERT: Ordnerstruktur …>
  - <NEU/GEÄNDERT: Tool/Skript …>
  - <NEU/GEÄNDERT: Policy/Gate …>
  - <NEU/GEÄNDERT: Portal/Keystatic/PR-Flow …>

---

## 2) Repo-Topologie (max 2 Ebenen)

- top_level_paths:
  - `<path/>`
  - `<path/>`

- notable_new_or_removed_paths:
  - `<+ path/>`
  - `<- path/>`

- “hotspots” (häufig geändert / kritisch):
  - `<path/> — warum kritisch (max 1 Satz)>`

---

## 3) SSOT-Registry (Single Source of Truth)

> **Regel:** Nur nennen, was im Repo existiert. Wenn unklar: `TBD` + TODO.

- glossary:
  - path: `<.../AgenticSWE_KnowledgeOS_Glossary_YYYYMMDD_Vx.md>`
  - version_rule: `highest Vx; tiebreak newest date`
- taxonomy:
  - path: `<.../AgenticSWE_KnowledgeOS_Taxonomy_YYYYMMDD_Vx.md>`
  - version_rule: `highest Vx; tiebreak newest date`
- option_b_core:
  - blueprint: `<..._Portal_OptionB_Blueprint_YYYYMMDD_Vx.md>`
  - runbooks:
    - `<..._Portal_OptionB_Runbook_YYYYMMDD_Vx.md>`
    - `<..._PortalWorkflow_OptionB_End2End_Runbook_YYYYMMDD_Vx.md>`
  - write_via_pr_howto: `<..._WriteViaPR_..._YYYYMMDD_Vx.md>`
  - preflight_gates: `<..._PreflightGates_Local_Runbook_YYYYMMDD_Vx.md>`

---

## 4) Policies / Decisions / Normen (Index)

- policies:
  - `<path/to/policy.md> — 1 Satz Intent`
- decisions (ADR/ADR-lite):
  - `<path/to/adr.md> — status: draft|accepted|deprecated`

**Known inconsistencies (falls vorhanden):**
- `<tag nicht in Taxonomie / Konflikt zwischen Docs>`

---

## 5) Gates & Checks (IST-Stand)

- local_preflight (preflight, lokale Gates):
  - markdownlint: `<configured? how?>`
  - spellcheck: `<configured? how?>`
  - yaml: `<configured? how?>`
  - tag_validation: `<exists? how?>`
  - security_read_only: `<optional, was genau?>`

- ci (continuous integration, GitHub Actions):
  - workflows_present:
    - `<.github/workflows/...yml>`
  - merge_policy: `<z.B. merge nur grün>`

---

## 6) Tooling & Editor (IST-Stand)

- vscode:
  - recommended_extensions:
    - `<publisher.extension>`
  - workspace_settings:
    - `<.vscode/settings.json exists?>`
  - tasks:
    - `<.vscode/tasks.json exists?>`
- scripts:
  - `<scripts/...> — 1 Satz Zweck`

---

## 7) Risks & Stop-&-Ask (Stop‑&‑Ask, Stoppregel)

- secrets_handling:
  - policy: `<1–3 bullets>`
- write_surface (write surface, Schreibfläche):
  - allowlist_paths: `<z.B. meta/**, handbook/**, templates-harness/**>`
  - blocklist_paths: `<z.B. .github/workflows/**, secrets/**, infra/**>`
- risk_notes:
  - `<was ist aktuell riskant?>`

---

## 8) Offene Punkte (TODO)

- TODO-1: <…>
- TODO-2: <…>

---

## 9) Chat-Handoff (copy/paste)

> Paste im Chat mindestens: **(a)** Executive Delta, **(b)** SSOT-Registry, **(c)** Risks/Stop-&-Ask.

```yaml
snapshot_handoff:
  snapshot_id: repo-state-YYYYMMDD-Vx
  basis_ref: <branch|commit>
  ssot:
    glossary: <file>
    taxonomy: <file>
    option_b_blueprint: <file>
  delta_summary:
    - <...>
  open_todos:
    - <...>
```
