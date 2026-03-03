---
title: "ASWE KnowledgeOS — Automatisierungs-/Autonomie-Analyseplan"
type: "runbook"
project: "ASWE_KnowledgeOS"
date: "2026-03-03"
version: "V5"
status: "draft"
---

## Interaktionen (VS-Code-kompatibles Mermaid, ohne Parser-Fallen)

**10-Sekunden-Story**
- **FEEDBACK (optional):** Prompt → Patch/Diff + lokale Diagnosen
- **ENFORCEMENT (authoritative):** Policy erzwingen → PR → Checks → Merge

**Legende**
- `->>` Aktion (führt etwas aus)
- `-->>` Datenfluss (read-only Artefakt)

```mermaid
sequenceDiagram
  participant UI as Chat/CMS UI
  participant POL as Policy (allowlist/blocklist/limits)
  participant TPL as PR-Report Template
  participant AG as Codex/Copilot (VS Code)
  participant EX as VS Code Diagnostics (feedback)
  participant W as Writer (PR-only)
  participant GH as GitHub PR
  participant CI as Required Checks (CI)
  participant H as Human Merge

  Note over UI,EX: FEEDBACK (optional)
  UI-->>POL: read constraints (allowlist, limits, stop-and-ask)
  UI-->>TPL: read required PR fields
  UI->>AG: prompt (patch spec + DoD thin slice)
  AG->>EX: run diagnostics (optional)
  EX-->>AG: diagnostics
  AG-->>UI: patch/diff + PR-report draft + evidence hints

  Note over UI,H: ENFORCEMENT (authoritative)
  UI->>W: submit patch/diff + PR-report (final)
  Note over UI,W: TRUST BOUNDARY
  W->>W: enforce policy (fail-closed, stop-and-ask)
  W->>GH: create branch, commit, open PR
  Note over W,GH: WRITE BOUNDARY (PR-only)
  GH->>CI: run SSOT gates
  CI-->>GH: pass/fail + evidence logs
  GH->>H: review and merge (default)
```

### Tool-/Extension-Overlay (aus ToolingSnapshot)

| Schritt | Schicht | Tools/Extensions | Rolle |
|---|---|---|---|
| Prompt + Patch-Spec | Feedback | Copilot Chat `0.37.9` / Codex (Konfig im Snapshot) | Change-Generierung (Patch/Diff) |
| Diagnostics | Feedback | markdownlint `0.61.1`; cSpell `4.5.6` + DE `2.3.4`; YAML `1.21.0`; Front Matter `10.9.0`; ShellCheck `0.39.1`; SonarLint `4.44.0` | Schnelles Feedback, nicht authoritative |
| PR/Checks UX | Feedback | PR `0.128.0`; Actions `0.31.0` | Komfort (Review/Checks), keine Policies |
| Writer | Enforcement | (GitHub App/Token; Portal/MCP Implementation) | **Einziger** Schreibpfad |
| Checks | Enforcement | SSOT-Skripte (Lint/Links/Taxonomy/Frontmatter) | Nicht umgehbar |
| Security (optional) | Feedback/Enforcement | Trivy `1.8.11` / Snyk `2.29.0` | **Genau 1** als Enforcement, Rest Feedback |
