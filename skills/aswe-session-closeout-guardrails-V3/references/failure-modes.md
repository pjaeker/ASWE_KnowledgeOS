# Reference: Failure Modes

Common failure modes:

- stale status, entry, or workstream anchor survives only because it was opened earlier
- latest status update found and status referenced by entry are collapsed into one without evidence
- closeout stops after a correct checkpoint even though a writingslice should be created
- ENTRY_LATEST is left stale after stable new status/workstream artifacts already exist
- NextChat-Handoff is created by habit instead of actual resume need
