---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Template für PR Report (Pull Request Report, standardisierter PR-Body) inkl. Risk Class und Rollback."
tags:
  - layer/templates-harness
  - artifact/pr-report
  - topic/governance
  - topic/gate
  - topic/hardgates
---

# PR Report (Template) (V1)

## Summary
- What changed?
- Why?

## Risk Class
- risk_class: A | B | C
- rationale:

## Files Touched
- list all files and why they are touched

## Gates / Checks
- [ ] Lint
- [ ] Link-Check
- [ ] Taxonomy↔Glossary validation
- [ ] Frontmatter/Tag validation

## Evidence
- commands executed + outputs (short)

## Rollback Plan
- how to revert safely (branch revert / PR revert)

## Notes
- open questions / follow-ups
