# AgenticSWE SessionLifecycle PR-0 - Codex Runner Prompt

```text
START SESSION
WS: WS-SESSIONLIFECYCLE-REFACTOR

Ziel dieses Laufs:
Fuehre PR-0 als docs-only Slice aus.
Materialisiere den SessionLifecycle-Refactor repo-seitig, damit PR-A / PR-B / PR-C spaeter aus dem Repo statt nur aus dem Chat ableitbar sind.

Lies zuerst in dieser Reihenfolge:
1. AGENTS.md
2. meta/state/entry/*ENTRY_LATEST*_V*.md
3. meta/state/*RepoStatusUpdate*_V*.md
4. meta/state/*RepoMeaningMap*_V*.md
5. handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260302_V1.md
6. handbook/explanation/AgenticSWE_KnowledgeOS_RoutingNavigationUX_Strategy_20260305_V1.md
7. blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md

Erzeuge genau diese neuen Dateien:
- decisions-adr/AgenticSWE_KnowledgeOS_ADR_SessionLifecycle_EntryFirst_20260311_V1.md
- blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_SessionLifecycle_Refactor_20260311_V1.md
- handbook/runbooks/AgenticSWE_SessionLifecycle_Refactor_ImplementationPlan_20260311_V1.md
- blackboard/AgenticSWE_NextChat_Handoff_SessionLifecycleRefactor_20260311_V1.md
- .github/prompts/AgenticSWE_SessionLifecycle_PR0_CodexRunner_20260311_V1.prompt.md

Inhaltlicher Vertrag:
- ChatGPT GUI startet kuenftig semantisch ueber ENTRY_LATEST
- Codex startet repo-lokal ueber AGENTS.md
- beide benutzen dann denselben Kernfluss:
  ENTRY_LATEST -> RepoStatusUpdate -> Workstream -> Tiefenanker nur bei Bedarf
- ENTRY_LATEST bleibt Pointer-Bund
- NextChat-Handoff wird optional
- Closeout erzeugt den naechsten Einstieg indirekt ueber Status-/Workstream-/State-Artefakte plus Entry-Refresh

Arbeite in:
PLAN -> CHANGE -> VERIFY -> DELIVER

Harte Regeln:
- docs-only
- keine Aenderung an bestehenden normativen Dateien in PR-0
- kein .github/workflows/**
- keine Secrets
- kein zweiter autonomer PR-Pfad
- keine Repo-weiten Cleanups

VERIFY:
- Frontmatter vorhanden
- Dateinamen folgen Repo-Konvention
- PR-A / PR-B / PR-C sind klar beschrieben
- Scope bleibt in erlaubten Pfaden

DELIVER:
- Patch-Spec
- Dateiliste
- kurzer Evidence-Block
- naechster Thin Slice = PR-A
```
