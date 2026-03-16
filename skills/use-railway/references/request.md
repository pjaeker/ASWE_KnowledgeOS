# request

Use official Railway docs, the Public API, or community channels when the CLI path is incomplete.

## when to use this path

Load this reference when the user asks for:

- a GraphQL query or mutation
- an action not exposed clearly in the CLI
- official documentation lookup
- domain or environment automation through the API
- escalation to community support or docs-backed guidance

## official docs first

Prefer official Railway docs for current behavior, limits, and command syntax.

Look for these areas:

- CLI reference
- variables and environments
- deployments and healthchecks
- domains and networking
- public API guides and cookbook

## public api principles

Railway's public API is GraphQL-based. Use scoped tokens whenever possible.

Token guidance:

- **project token**: project-level automation
- **workspace token**: shared team automation
- **account token**: broader personal automation; use cautiously

Do not recommend broad tokens when a narrower token works.

## example graphql workflow

When the user needs the API:

1. identify the smallest query or mutation that answers the task
2. specify required variables
3. specify the expected token scope
4. show how to verify the result

## bundled helper script

This skill includes `scripts/railway-api.sh` as a convenience helper for authenticated GraphQL requests in shell-capable environments.

## community and support

For product limitations, unclear platform behavior, or cases where logs and docs still do not explain the issue, suggest:

- Railway docs
- Central Station
- Railway Discord

When escalating, include the minimum useful evidence: project or service ID, environment, error text, and relevant log excerpts.
