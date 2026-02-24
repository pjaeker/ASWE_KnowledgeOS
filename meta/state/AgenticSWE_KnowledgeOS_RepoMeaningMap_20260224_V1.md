---
project: AgenticSWE_KnowledgeOS
doc_type: map
version: V1
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Kuratierte Bedeutungslandkarte der Schlüsselartefakte inkl. Routing-Hinweisen und Arbeitskontrakten."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/router
  - topic/findability
  - topic/governance
  - topic/run-id
  - topic/topologie
---

# Repo-MeaningMap — 2026-02-24 (V1)

## 0) MeaningMap-Metadaten

- meaningmap_id: `repo-meaning-20260224-V1`
- run_id: `20260224-152512`
- erstellt_am: `2026-02-24`
- basis_ref: `chat/20260224-152512/repo-state @ 5612258`
- scope: `key-artefacts-only` (keine Volltexte)
- last_snapshot_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V1.md`

## 1) Systembild (1 Bildschirm)

- system_one_liner: `KnowledgeOS kuratiert normative Doku, Gates und Runbooks für einen write-via-PR Workflow rund um Portal Option B.`
- primary_loop:
  1. Normative SSOT-Dateien (Glossar/Taxonomie) festlegen.
  2. Änderung über Runbooks/HowTo als thin slice durchführen.
  3. Gates als Evidence dokumentieren und via PR liefern.

## 2) Schlüsselartefakte (Index)

### 2.1 SSOT (Glossar/Taxonomie)

- glossary:
  - path: `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - role: `normativ, canonical terms`
  - used_by:
    - `Taxonomie, Runbooks, HowTo und PR-Berichte`
- taxonomy:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - role: `routing + gate allowlist`
  - depends_on: `glossary`
- taxonomy_allowlist:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`
  - role: `maschinenlesbare Tag-Quelle für Validierung`

### 2.2 Portal Option B (Kern)

- option_b_blueprint:
  - path: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
  - role: `architektonischer Kernplan`
  - upstream: `glossary, taxonomy`
  - downstream: `runbooks, implementation`
- option_b_runbook_core:
  - path(s):
    - `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md`
    - `handbook/runbooks/AgenticSWE_PortalWorkflow_OptionB_End2End_Runbook_20260220_V1.md`
  - role: `Implementierung und Betriebsablauf`
- write_via_pr_howto:
  - path: `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
  - role: `verbindlicher Ablauf für kleine PR-basierte Änderungen`

### 2.3 Gates / Policies

- preflight_gates_local:
  - path: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260220_V1.md`
  - role: `lokale Gates und Evidence-Strategie`
- no_secrets_policy:
  - path: `handbook/AgenticSWE_NoSecretsInRepo_Policy_20260220_V1.md`
  - role: `No-Secrets-Regeln inkl. Redaction-Prinzip`
- promotion_policy:
  - path: `meta/AgenticSWE_KnowledgeOS_PromotionPolicy_20260213_V1.md`
  - role: `Freigabe-/Promotionslogik für Artefakte`
- tag_validator:
  - path: `scripts/validate_frontmatter_tags.py`
  - role: `prüft erlaubte Frontmatter-Tags gegen Taxonomie-Allowlist`
- glossary_taxonomy_validator:
  - path: `scripts/validate_taxonomy_glossary_mapping.py`
  - role: `prüft Begriff-zu-Tag-Konsistenz`

## 3) Routing-Hinweise (Router-Signale)

- question_to_file_map:
  - "Wie tagge ich Artefakte?": `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - "Was bedeutet Begriff X?": `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - "Wie läuft write via PR?": `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
  - "Welche Gates muss ich laufen lassen?": `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260220_V1.md`
  - "Wie ist Option B aufgebaut?": `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`

## 4) Flüsse (Flows)

### 4.1 Write via PR (pull request, Änderungsvorschlag)

- trigger: `Chat/Codex will Änderung im Repository`
- steps:
  1. Plan + SSOT-Abgleich.
  2. Small diff in erlaubter Schreibfläche.
  3. Gates ausführen bzw. not_executed sauber begründen.
  4. Commit + PR-Report erstellen.
- stop_conditions:
  - `Änderung außerhalb Allowlist`
  - `Secrets-Verdacht`
  - `SSOT-Konflikte ohne eindeutige Priorität`

## 5) Contracts (Contracts, Arbeitskontrakte)

- ssot_contract:
  - "Wahrheit liegt in Repo-Dateien; Chat ist Arbeitsraum."
- taxonomy_contract:
  - "Tags nur aus Allowlist; wenn fehlt: TBD + TODO."
- no_secrets_contract:
  - "Keine Tokens/Keys in Text/Logs/PR."
- write_via_pr_contract:
  - "Nie direkt auf main; nur PR; kleiner diff; PR report required."

## 7) TODO (max 10)

- TODO-1: markdownlint/cspell lokal vendoren (devDependencies) oder erlaubte Registry konfigurieren (npx derzeit npm 403).
- TODO-2: Snapshot/MeaningMap bei jeder substanziellen Repo-Änderung hochversionieren.
- TODO-3: CI-Workflow-Status als explizites SSOT-Artefakt nachziehen.
