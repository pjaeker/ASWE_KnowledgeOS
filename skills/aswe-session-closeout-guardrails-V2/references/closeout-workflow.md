# Reference: Closeout Workflow

## Purpose

Apply the symmetric session contract during closeout without silently preserving stale anchors.

## Mandatory order

1. run fresh-evidence preflight
2. determine latest status update found
3. determine status referenced by entry
4. update RepoStatusUpdate when operational truth changed
5. update workstream when goal, scope, DoD, slices, or next focus changed
6. update structural state docs only when routing or architecture changed
7. evaluate NextChat-Handoff
8. refresh ENTRY_LATEST last
9. emit closeout checkpoint and next-start packet

## Reporting rule

Never collapse `latest status update found` into `status referenced by entry` unless the repo evidence shows they are the same artifact.
