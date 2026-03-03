---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V2
date: 2026-03-03
status: draft
audience: [human, llm]
intent: "Kuratierte Bedeutungslandkarte für zentrale SSOT-, Policy-, Gate- und Workflow-Artefakte auf Repo-Stand 2026-03-03."
tags:
  - layer/handbook
  - artifact/reference
  - topic/ssot
  - topic/router
  - topic/governance
  - topic/gate
  - topic/run-id
  - topic/topologie
---

# Repo-MeaningMap — 2026-03-03 (V2)

## 0) MeaningMap-Metadaten

- meaningmap_id: `repo-meaning-20260303-V2`
- run_id: `20260303-1801`
- erstellt_am: `2026-03-03`
- basis_ref: `work @ a8ed1935f12a775e22ca10994c36264167ba288d`
- scope: `key-artefacts-only` (keine Volltexte)
- last_snapshot_ref: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260303_V2.md`

## 1) Systembild (1 Bildschirm)

- system_one_liner: `KnowledgeOS kuratiert SSOT-Dokumente, Runbooks und Validatoren für sichere, PR-basierte Änderungen im AgenticSWE-Setup.`
- primary_loop (loop, Hauptschleife):
  1. SSOT lesen (Glossar/Taxonomie/Policies/Runbooks).
  2. Small diff in erlaubter Schreibfläche umsetzen.
  3. Gates/Validatoren ausführen und Evidence dokumentieren.
  4. Commit + PR-Report + Rollback-Pfad liefern.

## 2) Schlüsselartefakte (Index)

### 2.1) SSOT (Glossar/Taxonomie)

- glossary (Glossar, Begriffe):
  - path: `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - role: `normativ, canonical terms`
  - used_by:
    - `Taxonomie, Runbooks, HowTos, ADRs`
- taxonomy (Taxonomie, Tags):
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - role: `routing + gate allowlist semantics`
  - depends_on: `glossary`
- taxonomy_allowlist:
  - path: `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`
  - role: `maschinenlesbare Liste erlaubter Tags`

### 2.2) Portal Option B (Kern)

- option_b_blueprint:
  - path: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
  - role: `architekturelle Leitlinie für Portal Option B`
  - upstream: `glossary, taxonomy`
  - downstream: `runbooks, portal implementation`
- option_b_runbook(s):
  - path(s):
    - `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V2.md`
    - `handbook/runbooks/AgenticSWE_PortalWorkflow_OptionB_End2End_Runbook_20260220_V1.md`
  - role: `Betriebsabläufe und End-to-End-Handlungsanweisungen`

### 2.3) Gates / Policies

- preflight_gates_local:
  - path: `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`
  - role: `lokale Gate-Strategie und Evidence-Erwartung`
- write_surface_policy:
  - path: `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md`
  - role: `MCP Write-via-PR Ablauf inkl. Scope und PR-Disziplin`
- no_secrets_policy:
  - path: `handbook/reference/AgenticSWE_NoSecretsInRepo_Policy_20260220_V1.md`
  - role: `No-Secrets-Regeln inkl. Redaction-/Incident-Hinweisen`

### 2.4) Session- und State-Artefakte

- repo_state_snapshot:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_20260303_V2.md`
  - role: `aktueller Repo-Status inkl. Manifest-Referenz, Risiken, TODOs`
- repo_manifest:
  - path: `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_20260303_V2.json`
  - role: `vollständige tracked-file Liste (mit Redactions)`
- session_entry:
  - path: `meta/state/entry/AgenticSWE_KnowledgeOS_SessionEntry_20260303_V3.md`
  - role: `Single Entry Point für Sessions ohne Vollkontext`

## 3) Routing-Hinweise (Router-Signale)

- question_to_file_map:
  - "Wie tagge ich Artefakte korrekt?": `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
  - "Was bedeutet Begriff X?": `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
  - "Wie läuft write via PR (MCP) konkret?": `handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md`
  - "Welche Gates muss ich lokal ausführen?": `handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md`
  - "Wie starte/schließe ich Business-Sync Sessions?": `handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260302_V1.md`
  - "Wie ist Option B aufgebaut?": `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`

## 4) Flüsse (Flows)

### 4.1) Write via PR (pull request, Änderungsvorschlag)

- trigger: `Chat/Codex soll Änderung umsetzen`
- steps:
  1. SSOT und Allowlist prüfen.
  2. Small diff in erlaubter Schreibfläche anwenden.
  3. Gates laufen lassen oder sauber als `not_executed` begründen.
  4. Commit + PR-Report mit Evidence und Rollback-Plan liefern.
- stop_conditions:
  - `Änderung außerhalb ALLOWED_WRITE_DIRS erforderlich`
  - `Secrets-Verdacht`
  - `normativer Konflikt ohne klare Priorität`

### 4.2) Read-only Q&A (read-only, nur lesen)

- indexed_paths: `meta/**, handbook/**, scripts/**, decisions-adr/**`
- constraints: `keine Spekulation; Aussagen über SSOT/State-Dateien begründen`

## 5) Contracts (Contracts, Arbeitskontrakte)

- ssot_contract:
  - "Wahrheit liegt in Repo-Dateien; Chat ist Arbeitsraum."
- taxonomy_contract:
  - "Tags nur aus Allowlist; fehlt ein Tag, dann Konflikt markieren + TODO setzen."
- no_secrets_contract:
  - "Keine Tokens/Keys in Artefakten, Logs, Commits oder PR-Text."
- write_via_pr_contract:
  - "Nie direkt auf main; kleiner Diff; Evidence; PR-Report erforderlich."

## 6) Offene Entscheidungen (ADR-Lite Kandidaten)

- ADR-CAND-001: `topic/pr` in Allowlist aufnehmen oder Runbook-Tags harmonisieren — revisit_when: `vor flächendeckender Hardgate-Aktivierung`.
- ADR-CAND-002: markdownlint/cspell CLI als lokale devDependencies standardisieren — revisit_when: `nächster Tooling-Härtungszyklus`.

## 7) TODO (max 10)

- TODO-1: Root `.editorconfig` ergänzen.
- TODO-2: markdownlint-Konfig-Namenskonvention vereinheitlichen (`.markdownlint.jsonc` vs `markdownlint.jsonc`).
- TODO-3: Taxonomie-Konflikt `topic/pr` bereinigen.
- TODO-4: SessionEntry bei künftigen State-Updates mitziehen.

## 8) Chat-Handoff (copy/paste)

```yaml
meaningmap_handoff:
  meaningmap_id: repo-meaning-20260303-V2
  basis_ref: work @ a8ed1935f12a775e22ca10994c36264167ba288d
  ssot:
    glossary: meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md
    taxonomy: meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
  key_routes:
    - question: "Wie läuft write via PR (MCP) konkret?"
      first_stop: "handbook/howto/AgenticSWE_ChatGPTBusiness_MCP_WriteViaPR_HowTo_20260302_V2.md"
    - question: "Welche Gates muss ich lokal ausführen?"
      first_stop: "handbook/runbooks/AgenticSWE_PreflightGates_Local_Runbook_20260225_V2.md"
  open_todos:
    - Add root .editorconfig and align markdownlint config naming.
    - Resolve taxonomy allowlist conflict around topic/pr.
```
