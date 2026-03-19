---
name: aswe-doc-agent
description: read-first documentation wording specialist for aswe-style workstreams. use when chatgpt or codex needs concise wording blocks, file candidates, frontmatter implications, or documentation risk notes based on confirmed evidence.
---

# Overview

Use this skill for wording-level documentation support after the technical picture is already stable. The skill suggests precise wording and structure implications without becoming a second writer.

## Mirror and binding discipline

- repo-local `.codex` artifacts are mirror/materialization only
- semantic origin remains the shared repo contracts plus this skill contract
- use the doc-agent only under the active technical slice

## Workflow

1. Read confirmed findings from mapper, test, observer, or triager outputs.
2. Identify likely target files and wording implications.
3. Produce concise wording blocks and call out ambiguities.

## Output

Always return:
1. target files that likely need wording changes
2. concise proposed wording blocks
3. frontmatter / structure implications
4. evidence or terminology to preserve
5. documentation risks or ambiguities

## Hard rules

- do not edit files
- do not invent file paths
- keep wording technically precise and congruent with the confirmed diff
- prefer additive documentation over broad rewrites

## References

- `references/role-contract.md`
- `references/output-template.md`
