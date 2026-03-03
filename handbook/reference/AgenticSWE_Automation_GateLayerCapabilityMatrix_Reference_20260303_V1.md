---
title: "ASWE KnowledgeOS — Gate×Layer×Capability Matrix"
type: "reference"
project: "ASWE_KnowledgeOS"
date: "2026-03-03"
version: "V1"
status: "draft"
---

## Zweck

Ein Artefakt, das pro Gate festlegt:

- Feedback-Ausführung (optional)
- **Authoritative Enforcement** (genau eine Quelle)
- Permissions, Evidence, fail-closed, Redundanzhinweise

## Matrix

| Gate | Feedback (Kontext/Tool) | **Authoritative Enforcement** | Permissions | Evidence | Fail-closed | Hinweis |
|---|---|---|---|---|---|---|
| Write-Surface (Allow/Block/Limits) | n/a | Writer (Portal `/api/pr` oder MCP) | PR-write (GitHub App) | Policy-Log + PR-Report | reject | zentralisieren |
| PR-Report Pflichtfelder | Editor-Snippets (optional) | Writer (reject wenn fehlt) | PR-write | PR-Body | reject | Template SSOT |
| Lint | markdownlint (optional) | CI: SSOT lint script | CI read | CI logs | fail | Editor = Feedback |
| Links | optional lokal | CI: SSOT link script | CI read | CI logs | fail | SSOT |
| Taxonomy↔Glossary | optional lokal | CI: SSOT validator | CI read | CI logs | fail | SSOT |
| Frontmatter/Tags | Front Matter + YAML (optional) | CI: SSOT validator | CI read | CI logs | fail | braucht baseline |
| Spell | cSpell (+DE) (optional) | CI: erst nach No-`npx` | CI read | CI logs | fail | Coverage-Lücke |
| Security (Vuln) | Trivy/Snyk Extensions (optional) | **genau 1** Tool in CI | CI read (+token?) | report/log | fail | Entscheidung nötig |
| Secrets | optional lokal | CI/Writer Scan | CI read | log | fail | Token-Policy beachten |
| Workflows `.github/**` | n/a | Stop-&-Ask | n/a | n/a | reject | niemals autonom |

## Capability Snapshot (Auszug)

- `gh`: `2.87.3` · Git: `2.52.0.windows.1` · Node/npm: `24.13.0` / `11.6.2`
- Python: `3.14.3` (packages_digest: `NONE`)
- Codex: sandbox_mode=`workspace-write`, approval_policy=`never` (Agent = Feedback-only)
