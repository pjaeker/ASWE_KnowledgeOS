# Output profile: codex app and runtime orchestration tasks

Use this profile when the routed task is primarily about designing or evaluating bounded multi-agent execution in Codex App or closely related runtimes.

## Additional planning emphasis
Prioritize:
- whether Codex App is justified at all
- thread, worktree, and role topology
- spawn-readiness vs materialization
- handoff packets and supervisor routing
- write boundaries and one-writer-many-readers governance
- what Codex App may help with versus what it must not autonomously control

## Additional capabilities to consider
- orchestration supervision
- worktree-aware mapping
- verify-gate design
- runtime observation
- dead-end tracking
- resume and long-run state support
- environment and permission review

## Suggested extra output sections
- Codex App suitability and limits
- proposed thread or project structure
- role spawn conditions
- handoff and return-to-main-agent points
- policy and writer-boundary constraints

## Warnings
Do not recommend Codex App merely because parallel agents are available.
