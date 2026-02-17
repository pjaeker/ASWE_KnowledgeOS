---
project: AgenticSWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Runbook zur Umsetzung von Option B (Portal/Keystatic + Chat schreibt per PR) als auditierbare Docs-as-Code Lösung."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/knowledge-os
  - topic/ssot
  - topic/governance
  - topic/gate
  - topic/hardgates
---

# Runbook: Option B Portal/Keystatic + Chat schreibt per PR (V1)

## 0) Ziel
- Portal-App hostet `/keystatic`, `/chat`, `/api/chat`, `/api/pr`.
- **Schreiben nur via PR (Pull Request, Review-Flow)**: Chat erzeugt Patch/Diff → PR → Gates → Merge durch Mensch.

## 1) Inputs (SSOT)
- Blueprint: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
- Glossar (normativ): `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
- Taxonomie (normativ): `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
- Allowlist (maschinenlesbar): `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`

## 2) Slices (0–3) mit Gates

### Slice 0 — CI-Gates (lokal/CI-ready)
**Output**
- `scripts/*` Validierer
- `meta/*Allowlist*.json`
- `meta/*Workflow_Draft*.yml`

**Gates (Hardgates)**
- Taxonomie↔Glossar Mapping: keine `TBD`, alle Canonical Terms existieren.
- Frontmatter: genau 1× `layer/*` + 1× `artifact/*`, alle Tags in Allowlist.
- Link-Check: keine broken relative links.
- Lint: Tabs verboten, Newline am Dateiende.

**Commands**
```bash
python scripts/generate_taxonomy_allowlist_json.py --taxonomy meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md --out meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json
python scripts/validate_taxonomy_glossary_mapping.py --glossary meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md --taxonomy meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
python scripts/validate_frontmatter_tags.py --repo-root .
python scripts/check_links.py --repo-root .
python scripts/lint_repo.py --repo-root .
```

### Slice 1 — Keystatic (GitHub mode)
**Output**
- `apps/portal/*` Next.js + Keystatic Skeleton
- Keystatic Schemas (Collections) für: Glossar, Taxonomie, ADR, Runbook

**Gate**
- Editing erzeugt PRs statt Direkt-Commit (GitHub mode).

### Slice 2 — Chat read-only
**Output**
- `/chat` UI
- `/api/chat` Backend (OpenAI Responses API)

**Gate**
- Read-only: keine Write-Tools exposed.

### Slice 3 — Chat write via PR
**Output**
- `/api/pr` Backend (GitHub App Token) + Write-Gates
- PR-Report Template + JSON-Schema
- Prompt-Contract + Tool-Policy

**Write-Gates (Hard)**
- Allowlist paths: `meta/**`, `handbook/**`, `templates-harness/**`, `decisions-adr/**`
- Blocklist paths: `.github/workflows/**`, `infra/**`, `secrets/**`, `**/.env*`
- Limits: max_files, max_diff_lines, max_bytes
- PR-Body muss PR-Report enthalten (Risk Class, Files touched, Rollback)

## 3) Packages (P0–P3)
- P0: Glossar↔Taxonomie Fix + Blueprint V2 + ADR/Runbook
- P1: Gate-Scripts + Allowlist JSON + CI Draft
- P2: Portal + Keystatic Skeleton
- P3: Chat + PR Endpoint + Contracts/Templates

## 4) Stop-&-Ask (Stop & Ask, human approval)
- CI Workflow aktivieren (`.github/workflows/**`) → **explizite Freigabe nötig**.
- Deployment/Secrets/Infra → **explizite Freigabe nötig**.
