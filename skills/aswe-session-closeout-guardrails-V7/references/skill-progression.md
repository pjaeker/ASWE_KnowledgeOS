# Skill progression note

## V7 focus

V7 evolves the closeout skill from optional write-capable materialization to package-first, PR-deferred materialization.

## New capability

If GitHub write access is available and the user wants actual closeout materialization now, the skill should:
- decide artifact families first
- assemble the full decided file set as one package
- materialize that package to a branch in one commit
- keep PR creation as an explicit later step

## Invariants preserved

- GitHub-first evidence
- dual-status reporting
- one-writer-many-readers
- ENTRY_LATEST refreshed last among artifact updates
- NextChat-Handoff remains conditional
