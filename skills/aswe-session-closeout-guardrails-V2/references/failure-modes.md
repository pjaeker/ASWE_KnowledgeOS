# Reference: Failure Modes

## Critical failure mode 1: stale status carry-forward

An older status anchor is preserved because it was already opened, while fresher repo evidence exists and was not actively checked.

## Critical failure mode 2: dual-status collapse

`latest status update found` and `status referenced by entry` are merged into one claim even though the repo still distinguishes them.

## Critical failure mode 3: chat-first over repo-first

The closeout conclusion follows chat memory or prior assumptions instead of GitHub-first evidence.
