# Reference: Closeout Workflow

## Purpose

Apply the symmetric session contract during closeout without silently preserving stale anchors and without stopping before the repo artifacts implied by the session are decided.

## Mandatory order

1. run fresh-evidence preflight
2. determine latest status update found
3. determine status referenced by entry
4. emit closeout checkpoint
5. decide the closeout writingslice per artifact class
6. update RepoStatusUpdate when operational truth changed
7. update workstream when goal, scope, DoD, slices, or next focus changed
8. update structural state docs only when routing, architecture, or navigation changed
9. evaluate NextChat-Handoff
10. refresh ENTRY_LATEST last
11. emit next-start packet

## Artifact classes that must be decided

- RepoStatusUpdate
- active workstream
- structural docs / runbooks / references
- ENTRY_LATEST
- NextChat-Handoff

## Reporting rule

Never collapse `latest status update found` into `status referenced by entry` unless the repo evidence shows they are the same artifact.
Never collapse `checkpoint complete` into `closeout complete` unless the artifact decisions have also been made.
