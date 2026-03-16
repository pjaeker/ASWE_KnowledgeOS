    ---
    project: AgenticSWE_KnowledgeOS
    doc_type: reference
    version: V1
    date: 2026-03-16
    status: draft
    audience:
      - human
      - llm
    intent: "Vorlaeufige Source Card fuer den Workstream 'agentic-news-intake'; noch nicht in die Library promoviert."
    tags:
      - layer/blackboard
      - artifact/reference
      - topic/deep-research
      - topic/findability
      - topic/research-tier/c
    ---

    # GitHub – openai/symphony

    ## Basisdaten

    - source_id: `src_openai_symphony_20260311`
    - url: `https://github.com/openai/symphony`
    - source_type: `github-repo`
    - publisher_class: `vendor-open-source-repo`
    - source_date: `2026-03-11`
    - tier_research: `c`
    - fulltext_status: `readme-plus-docs-reviewed`
    - dedupe_key: `github:openai/symphony`

    ## Intake-Status

    - chat_covered: `yes`
    - needs_recheck: `yes`
    - handbook_delta: `very_high`
    - promotion_target: `handbook_candidate`

    ## Review-Basis

    README, SPEC und Implementierungs-Hinweise im Chat ausgewertet.

    ## Kurznotiz

    Per-issue isolated workspaces; in-repo WORKFLOW.md contract; tracker-driven dispatch, retries, reconciliation, observability.

    ## Vorlaeufige Kernaussagen

    - Workflow-Vertraege verdienen eine eigene Ebene neben AGENTS.md.
- Per-Issue-Isolation und bounded concurrency sind starke Orchestrierungs-Muster.
- Preview-/Prototype-Status verlangt Trennung zwischen allgemeinem Pattern und Referenzimplementierung.

    ## Vorlaeufige Einschaetzung

    Diese Quelle ist im Workstream **noch nicht final normativ**.
    Sie ist aktuell vor allem als Arbeitsgrundlage fuer spaetere Promotion brauchbar.

    ## Empfohlene naechste Aktion

    - Spec gegen Implementierung stichprobenartig pruefen.
- Workflow.md-vs-AGENTS.md sauber in ClaimPack ausarbeiten.

    ## Verknuepfungen

    - `../AgenticSWE_AgenticNewsIntake_SourceRegister_20260316_V2.csv`
    - `../AgenticSWE_AgenticNewsIntake_ClaimPack_20260316_V2.md`
    - `../AgenticSWE_AgenticNewsIntake_SearchLog_20260310_V1.jsonl`
