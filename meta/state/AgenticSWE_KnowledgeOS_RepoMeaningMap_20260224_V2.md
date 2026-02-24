---
project: AgenticSWE_KnowledgeOS
doc_type: map
version: V2
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Kuratierte Bedeutungslandkarte der Schluesselartefakte mit Routing, Flows und Arbeitskontrakten."
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

# Repo-MeaningMap — 2026-02-24 (V2)

## 0) MeaningMap-Metadaten

- meaningmap_id: `repo-meaning-20260224-V2`
- run_id: `20260224-180725`
- erstellt_am: `2026-02-24`
- basis_ref: `chat/20260224-180725/repo-state @ 35504cb8ea8ab03ac8221e2f935ab3fe7f6b76af`
- scope: `key-artefacts-only` (keine Volltexte)
- last_snapshot_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V2.md`

## 1) Systembild (1 Bildschirm)

- system_one_liner: `KnowledgeOS ordnet normative Doku, Gates und PR-Workflows so, dass Aenderungen reproduzierbar und auditierbar bleiben.`
- primary_loop (loop, Hauptschleife):
  1. SSOT laden (Glossar + Taxonomie + Allowlist).
  2. Thin-slice Aenderung ueber Runbook/HowTo planen und in erlaubter Schreibflaeche umsetzen.
  3. Gates ausfuehren, Evidence dokumentieren, PR mit Rollback-Pfad liefern.

## 2) Schluesselartefakte (Index)

### 2.1) SSOT (Glossar/Taxonomie)

- glossary (Glossar, Begriffe):
  - path: `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - role: `normativ, canonical terms`
  - used_by:
    - `Taxonomie, Runbooks, HowTo, PR-Reports`
- taxonomy (Taxonomie, Tags):
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - role: `routing + gate allowlist rules`
  - depends_on: `glossary`
- taxonomy_allowlist:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`
  - role: `maschinenlesbare Quelle fuer erlaubte Tags`

### 2.2) Portal Option B (Kern)

- option_b_blueprint:
  - path: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
  - role: `architektureller Kernplan`
  - upstream: `glossary, taxonomy`
  - downstream: `runbooks, implementation`
- option_b_runbook_core:
  - path(s):
    - `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md`
    - `handbook/runbooks/AgenticSWE_PortalWorkflow_OptionB_End2End_Runbook_20260220_V1.md`
  - role: `operative Umsetzung und Ablaufsteuerung`
- write_via_pr_howto:
  - path: `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
  - role: `normativer Ablauf fuer kleine PR-basierte Aenderungen`

### 2.3) Gates / Policies / Validatoren

- preflight_gates_local:
  - path: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260220_V1.md`
  - role: `lokale Gate-Reihenfolge + Evidence-Strategie`
- no_secrets_policy:
  - path: `handbook/AgenticSWE_NoSecretsInRepo_Policy_20260220_V1.md`
  - role: `No-Secrets-Verhalten und Redaction-Pflichten`
- promotion_policy:
  - path: `meta/AgenticSWE_KnowledgeOS_PromotionPolicy_20260213_V1.md`
  - role: `Freigabe- und Promotionslogik fuer Artefakte`
- frontmatter_tag_validator:
  - path: `scripts/validate_frontmatter_tags.py`
  - role: `erzwingt genau 1x layer/* + 1x artifact/* und Allowlist-konforme topic/* tags`
- taxonomy_glossary_validator:
  - path: `scripts/validate_taxonomy_glossary_mapping.py`
  - role: `prueft Terminologie-Konsistenz zwischen Glossar und Taxonomie`

### 2.4) Repo-State-Artefakte

- repo_state_snapshot:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260224_V2.md`
  - role: `aktueller Arbeitsstand mit Topologie, Gates und Risiken`
- repo_manifest:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260224_V1.json`
  - role: `vollstaendige tracked file list mit Redaction-Regeln`

## 3) Routing-Hinweise (Router-Signale)

- question_to_file_map:
  - "Was bedeutet Begriff X?": `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - "Wie tagge ich Artefakte korrekt?": `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - "Woher kommen erlaubte Tags technisch?": `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`
  - "Wie laeuft write-via-PR konkret?": `handbook/howto/AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
  - "Welche Gates brauche ich lokal?": `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260220_V1.md`
  - "Wie ist Option B aufgebaut?": `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`

## 4) Fluesse (Flows)

### 4.1) Write via PR (pull request, Aenderungsvorschlag)

- trigger: `Chat/Codex soll eine Aenderung umsetzen`
- steps:
  1. SSOT und Taxonomie-Allowlist verifizieren.
  2. Small diff in erlaubter Schreibflaeche (`meta/state/**`) anwenden.
  3. Gates laufen lassen (oder sauber als not_executed/fail mit Grund dokumentieren).
  4. Commit + PR-Report mit Evidence und Rollback liefern.
- stop_conditions:
  - `Aenderung waere ausserhalb der erlaubten Schreibflaeche`
  - `Secrets-Verdacht oder Redaction-Konflikt`
  - `SSOT-Konflikt ohne klare Prioritaet`

### 4.2) Read-only Q&A (read-only, nur lesen)

- indexed_paths: `meta/**, handbook/**, scripts/**, decisions-adr/**`
- constraints: `keine Spekulation; Aussagen auf SSOT-Dateien und Snapshot referenzieren`

## 5) Contracts (Contracts, Arbeitskontrakte)

- ssot_contract:
  - "Wahrheit liegt in Repo-Dateien; Chat ist Arbeitsraum."
- taxonomy_contract:
  - "Tags nur aus Allowlist; bei Luecken: Konflikt markieren + TODO setzen."
- no_secrets_contract:
  - "Keine Tokens/Keys in Text, Logs, Commits oder PR-Metadaten."
- write_via_pr_contract:
  - "Nie direkt auf main; immer kleiner Diff, Gates, PR-Report, Rollback-Plan."

## 6) Offene Entscheidungen (ADR-Lite Kandidaten)

- ADR-CAND-001: `topic/pr in Taxonomie-Allowlist aufnehmen oder Runbook-Tag harmonisieren` — revisit_when: `vor Gate-Verschaerfung fuer alle Legacy-Dateien`.
- ADR-CAND-002: `.env.example` Manifest-Redaction explizit beibehalten oder Ausnahme definieren — revisit_when: `naechster Security/Policy-Review`.

## 7) TODO (max 10)

- TODO-1: Root-Basiskonfig fuer markdownlint/cSpell/EditorConfig einfuehren.
- TODO-2: Frontmatter- und Tag-Baseline schrittweise reparieren (legacy docs priorisieren).
- TODO-3: `meta/dictionaries/` anlegen und projektwoerterbuch pflegen.
- TODO-4: Snapshot/MeaningMap bei jeder substanziellen Repo-Aenderung hochversionieren.

## 8) Chat-Handoff (copy/paste)

```yaml
meaningmap_handoff:
  meaningmap_id: repo-meaning-20260224-V2
  basis_ref: chat/20260224-180725/repo-state @ 35504cb8ea8ab03ac8221e2f935ab3fe7f6b76af
  ssot:
    glossary: meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md
    taxonomy: meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
  key_routes:
    - question: "Wie tagge ich Artefakte korrekt?"
      first_stop: "meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md"
    - question: "Welche Gates muss ich lokal laufen lassen?"
      first_stop: "handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260220_V1.md"
  open_todos:
    - Add root markdownlint/cspell/editorconfig baseline.
    - Resolve taxonomy conflict around topic/pr.
```
