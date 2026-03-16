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

    # GitHub – paperclipai/paperclip

    ## Basisdaten

    - source_id: `src_paperclipai_paperclip_20260312`
    - url: `https://github.com/paperclipai/paperclip`
    - source_type: `github-repo`
    - publisher_class: `company-repo`
    - source_date: `2026-03-12`
    - tier_research: `c`
    - fulltext_status: `readme-plus-docs-reviewed`
    - dedupe_key: `github:paperclipai/paperclip`

    ## Intake-Status

    - chat_covered: `yes`
    - needs_recheck: `yes`
    - handbook_delta: `high`
    - promotion_target: `handbook_candidate`

    ## Review-Basis

    README, AGENTS.md und V1-Implementierungsspezifikation im Chat ausgewertet.

    ## Kurznotiz

    Agent-company control plane with org charts, goals, heartbeats, budgets, approvals, task checkout semantics, and audit logging.

    ## Vorlaeufige Kernaussagen

    - Agentische Firmen-/Ops-Steuerung braucht Org-, Budget-, Approval- und Audit-Modelle.
- Heartbeats und Task-Lifecycle sind Teil der Governance, nicht nur UI/PM-Nachtrag.
- Budget-Hard-Stops und Aktivitaetsprotokolle machen Control-Plane-Ansprueche belastbarer.

    ## Vorlaeufige Einschaetzung

    Diese Quelle ist im Workstream **noch nicht final normativ**.
    Sie ist aktuell vor allem als Arbeitsgrundlage fuer spaetere Promotion brauchbar.

    ## Empfohlene naechste Aktion

    - server/, ui/ und shared/ auf tatsaechliche Invarianten pruefen.
- Governance-/Approval-Pattern im ClaimPack schaerfen.

    ## Verknuepfungen

    - `../AgenticSWE_AgenticNewsIntake_SourceRegister_20260316_V2.csv`
    - `../AgenticSWE_AgenticNewsIntake_ClaimPack_20260316_V2.md`
    - `../AgenticSWE_AgenticNewsIntake_SearchLog_20260310_V1.jsonl`
