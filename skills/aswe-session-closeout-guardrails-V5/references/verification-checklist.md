# Reference: Verification Checklist

## Fresh-evidence preflight

Before any closeout judgment, explicitly check:

- newest RepoStatusUpdate candidate
- status referenced by current ENTRY_LATEST
- affected workstream and nearby fresher workstream artifacts
- relevant routing or runbook artifacts for the active slice
- commits or generated artifacts that may shift operational truth

## Minimum questions

- Is there a newer RepoStatusUpdate than the one first opened?
- Does current ENTRY_LATEST still point to the best next-start anchor set?
- Has a workstream changed its next focus, DoD, or slice plan?
- Does fresher commit or artifact evidence change the closeout conclusion?
- If the answers changed, was the session model refreshed before proceeding?

## Writingslice questions

For each artifact class, decide explicitly:

- RepoStatusUpdate: `create`, `update`, or `no-change`?
- Workstream: `create`, `update`, or `no-change`?
- Structural docs / runbooks / references: `create`, `update`, or `no-change`?
- ENTRY_LATEST: `refresh`, or `no-change`?
- NextChat-Handoff: `required-and-used`, `optional-available`, or `not-needed`?
- Recommended bounded roles for next slice: `emit`, or `no-block`?
