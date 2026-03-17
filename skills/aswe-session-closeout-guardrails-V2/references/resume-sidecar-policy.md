# Reference: Resume Sidecar Policy

## Purpose

Treat `NextChat-Handoff` as optional resume context, not as a standard prerequisite.

## Allowed outcomes

- `not-needed`
- `optional-available`
- `required-and-used`

## Use a handoff only when

- the slice ends inside a fragile tactical sequence
- rollback or PR-draft context would be lost otherwise
- details should intentionally stay out of RepoStatusUpdate and Workstream
