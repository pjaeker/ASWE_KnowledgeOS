# Closeout workflow

## Purpose

Apply the symmetric session contract during closeout and keep planning, package materialization, and PR creation explicitly separated.

## Mandatory order

1. run fresh-evidence preflight
2. determine latest status update found
3. determine status referenced by entry
4. emit closeout checkpoint
5. decide artifact families
6. update RepoStatusUpdate when operational truth changed
7. update Workstream when goal, scope, DoD, slices, or next focus changed
8. update structural references, protocols, or codex-app guidance only when they materially changed
9. evaluate NextChat-Handoff
10. refresh ENTRY_LATEST last among artifact updates
11. if planning-only, emit writingslice and next-start packet
12. if batch materialization is chosen, assemble the full decided file package and write it as one branch commit
13. open a PR only if explicitly requested
14. emit next-start packet against the resulting artifact or branch state
