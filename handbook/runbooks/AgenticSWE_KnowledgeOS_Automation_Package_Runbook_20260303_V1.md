---
title: "ASWE KnowledgeOS — Automations-/Autonomie-Paket"
type: "runbook"
project: "ASWE_KnowledgeOS"
date: "2026-03-03"
version: "V1"
status: "draft"
---

## Zielbild (End-to-End)

UI (Chat/CMS) → Writer (PR-only) → PR → Required Checks → Merge.

**Invarianten**
- PR-only (kein Direktwrite auf default/main)
- Allowlist/Blocklist (Workflows = Stop-&-Ask)
- No-Secrets, fail-closed
- SSOT: Gates als Repo-Skripte

## Zwei Ebenen

**Feedback (optional):** VS Code Extensions/Tasks, lokale Hooks, Agent-in-Editor.  
**Enforcement (authoritative):** Writer-Policy + CI Required Checks (+ Branch Protection).

## ToolingSnapshot (Auszug)

- OS: Microsoft Windows 10 Pro (Build 19045) 64-Bit
- Repo: `https://github.com/pjaeker/ASWE_KnowledgeOS.git` @ `f9c5c627e5894f505ce0bfde4a97db144a02dad6`
- Git: `2.52.0.windows.1` · `gh`: `2.87.3`
- Node/npm: `24.13.0` / `11.6.2`
- Python: `3.14.3` (packages_digest: `NONE`)
- Codex: sandbox_mode=`workspace-write`, approval_policy=`never`

**Key Extensions (Feedback-Sensoren)**
- `github.copilot-chat`: `0.37.9`
- `github.vscode-github-actions`: `0.31.0`
- `github.vscode-pull-request-github`: `0.128.0`
- `openai.chatgpt`: `0.4.79`
- `eliostruyf.vscode-front-matter`: `10.9.0`
- `davidanson.vscode-markdownlint`: `0.61.1`
- `streetsidesoftware.code-spell-checker`: `4.5.6`
- `streetsidesoftware.code-spell-checker-german`: `2.3.4`
- `timonwong.shellcheck`: `0.39.1`
- `aquasecurityofficial.trivy-vulnerability-scanner`: `1.8.11`
- `snyk-security.snyk-vulnerability-scanner`: `2.29.0`
- `sonarsource.sonarlint-vscode`: `4.44.0`
- `redhat.vscode-yaml`: `1.21.0`
- `editorconfig.editorconfig`: `0.18.1`
- `mikestead.dotenv`: `1.0.1`

## Minimal-Enforcement-Kern

1) Writer: Allowlist/Blocklist/Limits + PR-Report Pflicht.  
2) CI: Lint, Links, Taxonomy↔Glossary, Frontmatter/Tags (SSOT-Skripte).  
3) Merge nur bei grünen Checks.  
4) Stop-&-Ask für Workflows/Secrets/Permissions.  
5) Lokale Checks zählen nur als Feedback.

## Thin Slices (3–5)

1) Writer-Entscheidung (Portal `/api/pr` vs MCP-Writer) + Policy-Datei + PR-Report Template.  
2) CI Enforcement-Kern stabilisieren (Draft→live nur nach Stop-&-Ask).  
3) Frontmatter/Tags baseline/changed-files-mode (Legacy entkoppeln).  
4) No-`npx` Lint/Spell Enforcement (devDeps/Container).  
5) Agent-Härtung (Feedback-only) + 1 Security-Scanner als Enforcement.

## Offene Entscheidungen (kurz)

- Writer: Portal vs MCP (UI/Plan-Capabilities)
- Security: Trivy vs Snyk als *einziger* Enforcement-Scanner
- Lint/Spell: devDependencies vs CI-Container
- Frontmatter: changed-files-only vs baseline-file
