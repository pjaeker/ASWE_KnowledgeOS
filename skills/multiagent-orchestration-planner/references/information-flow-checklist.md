# Information flow checklist

Use this checklist when the orchestration plan is non-trivial, high-stakes, or likely to drift.

## Minimum flow questions
- Where does the first observation or input enter?
- Which stage turns observations into claims?
- Which stage tests, ranks, or rejects claims?
- Which role has final synthesis authority?
- Which role, if any, is allowed to mutate artifacts?
- Where must work return to the main agent?

## Per-stage checks
For each stage or role, make sure the plan states:
- inbound information
- source of truth or evidence surface
- transformation performed
- outbound artifact
- next receiver
- stop or return condition

## Flow anti-patterns
Do not allow these patterns:
- evidence enters but no role owns provenance or freshness
- claims appear with no visible source transformation
- helper roles hand off directly to mutation with no main-agent synthesis
- verification happens after final synthesis instead of before it
- two roles appear to have final authority
- there is no visible stop condition for a helper role
