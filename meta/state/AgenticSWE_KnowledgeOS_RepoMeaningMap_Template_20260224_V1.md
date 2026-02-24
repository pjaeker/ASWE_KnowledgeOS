---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V1
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Template für eine Repo-MeaningMap (Bedeutungslandkarte): Rollen, Abhängigkeiten und Contracts, damit Planung ohne Volltextzugriff möglich ist."
tags:
  - layer/handbook
  - artifact/template
  - topic/ssot
  - topic/router
  - topic/findability
  - topic/governance
  - topic/run-id
  - topic/topologie
---

# Repo-MeaningMap — Template (V1)

> **Zweck:** Kuratierte Semantik: Welche Datei macht *was*, hängt *wovon* ab, und wird *wofür* benutzt.  
> **Soll-Zielpfad für MeaningMaps:** `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_YYYYMMDD_Vx.md`

---

## 0) MeaningMap-Metadaten

- meaningmap_id: `repo-meaning-YYYYMMDD-Vx`
- run_id: `<run_YYYYMMDD_hhmm_optional>`
- erstellt_am: `<YYYY-MM-DD>`
- basis_ref: `<branch | tag | commit-sha>`
- scope: `key-artefacts-only` (keine Volltexte)
- last_snapshot_ref: `<RepoStateSnapshot file>`

---

## 1) Systembild (1 Bildschirm)

- system_one_liner: `<1 Satz: was ist das System?>`
- primary_loop (loop, Hauptschleife):
  1. `<...>`
  2. `<...>`
  3. `<...>`

---

## 2) Schlüsselartefakte (Index)

> **Regel:** Nur Schlüsseldateien aufnehmen (SSOT, Policies, Runbooks, Templates).  
> **Format:** kurze, deterministische Aussagen; keine Spekulation.

### 2.1 SSOT (Glossar/Taxonomie)

- glossary (Glossar, Begriffe):
  - path: `<...>`
  - role: `<normativ, canonical terms>`
  - used_by:
    - `<wer nutzt es?>`
- taxonomy (Taxonomie, Tags):
  - path: `<...>`
  - role: `<routing + gate allowlist>`
  - depends_on: `glossary`

### 2.2 Portal Option B (Kern)

- option_b_blueprint:
  - path: `<...>`
  - role: `<blueprint>`
  - upstream: `glossary, taxonomy`
  - downstream: `<runbooks, implementation>`
- option_b_runbook(s):
  - path(s): `<...>`
  - role: `<implementation + ops>`

### 2.3 Gates / Policies

- preflight_gates_local:
  - path: `<...>`
  - role: `<lokale Gates, evidence>`
- write_surface_policy:
  - path: `<...>`
  - role: `<allowlist/blocklist>`
- no_secrets_policy:
  - path: `<...>`
  - role: `<redaction rules>`

---

## 3) Routing-Hinweise (Router-Signale)

> **Zweck:** Wenn jemand (du/LLM) X fragt, welches Dokument ist “first stop”?

- question_to_file_map:
  - "Wie tagge ich Artefakte?": `<taxonomy file>`
  - "Was bedeutet Begriff X?": `<glossary file>`
  - "Wie läuft write via PR?": `<write-via-pr howto>`
  - "Welche Gates muss ich laufen lassen?": `<preflight gates runbook>`
  - "Wie ist Option B aufgebaut?": `<blueprint/runbook>`

---

## 4) Flüsse (Flows)

### 4.1 Write via PR (pull request, Änderungsvorschlag)

- trigger: `<Chat/Codex wants change>`
- steps:
  1. `<plan>`
  2. `<apply small diff>`
  3. `<run gates>`
  4. `<create PR + PR report>`
- stop_conditions:
  - `<outside allowlist>`
  - `<secrets suspected>`
  - `<gates fail>`

### 4.2 Read-only Q&A (read-only, nur lesen)

- indexed_paths: `<meta/**, handbook/**, ...>`
- constraints: `<no hallucination, cite SSOT>`

---

## 5) Contracts (Contracts, Arbeitskontrakte)

> **Contracts = Regeln, die immer gelten.**

- ssot_contract:
  - "Wahrheit liegt in Repo-Dateien; Chat ist Arbeitsraum."
- taxonomy_contract:
  - "Tags nur aus Allowlist; wenn fehlt: TBD + TODO."
- no_secrets_contract:
  - "Keine Tokens/Keys in Text/Logs/PR."
- write_via_pr_contract:
  - "Nie direkt auf main; nur PR; kleiner diff; PR report required."

---

## 6) Offene Entscheidungen (ADR-Lite Kandidaten)

- ADR-CAND-001: `<Titel> — revisit_when: <Bedingung>`
- ADR-CAND-002: `<...>`

---

## 7) TODO (max 10)

- TODO-1: <…>
- TODO-2: <…>

---

## 8) Chat-Handoff (copy/paste)

```yaml
meaningmap_handoff:
  meaningmap_id: repo-meaning-YYYYMMDD-Vx
  basis_ref: <branch|commit>
  ssot:
    glossary: <file>
    taxonomy: <file>
  key_routes:
    - question: "..."
      first_stop: "<file>"
  open_todos:
    - <...>
```
