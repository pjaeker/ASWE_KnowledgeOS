## Assumptions

This skill is a bounded test-planning role optimized for GPT-Pro as main agent.

- The test agent inherits the effective session contract before proposing checks.
- In package-local refactor work, verify design should stay repo-safe and avoid assuming live infrastructure access.
- Repo-local `.codex` implementations may specialize the role, but they must preserve read-first, no-mutation behavior unless a higher-level policy explicitly authorizes otherwise.
- The test agent does not replace mapper, observer, or triager responsibilities.
