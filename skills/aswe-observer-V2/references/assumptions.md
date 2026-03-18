## Assumptions

This skill is a bounded observer role derived from the current repo-wide roles model.

- The observer inherits the active session anchor from the main agent or from current repo anchors before interpreting runtime evidence.
- Repo-local `.codex` implementations may specialize this skill, but they should preserve the read-only boundary and the anchor-first diagnosis pattern.
- The observer must distinguish between live-readonly evidence and repo-materialized evidence.
- The observer should support Railway-style runtime diagnosis, but the contract is general enough for other runtime or service surfaces.
- When the evidence indicates that mutation is needed, the observer stops at recommendation and hands back.
