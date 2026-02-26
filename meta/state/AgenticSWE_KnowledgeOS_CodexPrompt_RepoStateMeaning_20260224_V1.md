---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V1
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Codex-Prompt Template: Erzeuge/aktualisiere RepoStateSnapshot + RepoMeaningMap konsistent zu SSOT, Taxonomie, Write-via-PR und No-Secrets."
tags:
  - layer/handbook
  - artifact/template
  - topic/ssot
  - topic/governance
  - topic/gate
  - topic/secrets
  - topic/topologie
  - topic/run-id
---

# Codex Prompt Template — RepoStateSnapshot + RepoMeaningMap (V1)

> **Use case:** Codex hat Repo-Zugriff und erzeugt einen **sauberen, versionierten Status** + **Semantik-Landkarte**, damit Updates im Chat korrekt sind, auch wenn nicht alle Dateien im Chat vorliegen.

---

## A) Inputs (fülle aus oder lass Defaults)

- TODAY: `<YYYY-MM-DD>` (default: system date)
- TARGET_DIR: `meta/state/`
- TEMPLATE_SNAPSHOT: `meta/templates/AgenticSWE_KnowledgeOS_RepoStateSnapshot_Template_20260224_V1.md` (oder: suche nach `*RepoStateSnapshot_Template*`)
- TEMPLATE_MEANINGMAP: `meta/templates/AgenticSWE_KnowledgeOS_RepoMeaningMap_Template_20260224_V1.md` (oder: suche nach `*RepoMeaningMap_Template*`)
- FILE_PREFIX:
  - snapshot: `AgenticSWE_KnowledgeOS_RepoStateSnapshot_`
  - meaningmap: `AgenticSWE_KnowledgeOS_RepoMeaningMap_`

---

## B) Hard Rules (nicht verhandelbar)

1) **No-Secrets (no secrets, keine Keys):**

- Gib niemals Tokens/Keys/Secrets aus.
- Ignoriere und lies nicht: `**/.env*`, `**/secrets/**`, `**/.git/**`, `**/node_modules/**`, `**/dist/**`.
- Wenn du beim Scannen verdächtige Strings siehst: **redact** als `<REDACTED>` und setze ein TODO.

1) **SSOT & Normen:**

- Glossar ist normativ; Taxonomie-Tags nur aus Allowlist.
- Wenn ein Tag/Regel in Docs widersprüchlich ist: **markiere Konflikt** (TODO) statt zu raten.

1) **Small diff (thin slice, kleinster Schnitt):**

- Ändere nur Dateien in `TARGET_DIR` (plus optional `meta/templates/` falls Templates fehlen).
- Kein Refactor, keine Umformatierung über viele Dateien.

1) **Write via PR (pull request, Änderungsvorschlag):**

- Arbeite auf einem Branch `chat/<run_id>/repo-state`.
- Erzeuge einen PR mit PR-Report (siehe Abschnitt F).

1) **Evidence (evidence, Nachweis):**

- Führe verfügbare lokale Gates aus (markdownlint/cSpell) oder dokumentiere exakt, warum nicht.

---

## C) Task — ANALYZE (read-only)

1. Bestimme `basis_ref` (aktueller Branch + HEAD commit).
2. Ermittele die **neuesten** SSOT-Dateien anhand Namensregel:
   - höchste `Vx`, Tie-Break: neuestes `YYYYMMDD`.
3. Suche in `TARGET_DIR` nach dem letzten Snapshot/MeaningMap:
   - `AgenticSWE_KnowledgeOS_RepoStateSnapshot_YYYYMMDD_Vx.md`
   - `AgenticSWE_KnowledgeOS_RepoMeaningMap_YYYYMMDD_Vx.md`
4. Erfasse Repo-Topologie (max depth 2) als Liste, nicht als Vollbaum.

**Output dieser Phase:** kurzer Plan + welche Dateien du erzeugst.

---

## D) Task — APPLY (write)

### D1) RepoStateSnapshot erzeugen/aktualisieren

- Wenn kein Snapshot existiert: erstelle `..._TODAY_V1.md`.
- Wenn existiert: erstelle `..._TODAY_V(next+1).md` und setze `previous_snapshot` auf die letzte Version.
- Nutze das Snapshot-Template als Struktur; fülle nur:
  - Executive Delta
  - Repo-Topologie
  - SSOT-Registry
  - Gates/Checks IST
  - Risks/Stop-&-Ask
  - TODOs

### D2) RepoMeaningMap erzeugen/aktualisieren

- Wenn keine MeaningMap existiert: erstelle `..._TODAY_V1.md`.
- Wenn existiert: erstelle `..._TODAY_V(next+1).md` und referenziere `last_snapshot_ref`.
- Nutze das MeaningMap-Template; fülle nur Schlüsselartefakte (max ~15).

### D3) Konsistenzregeln (minimum)

- Frontmatter:
  - `project: AgenticSWE_KnowledgeOS`
  - `version: Vx` muss zum Dateinamen passen
  - Tags: exakt 1 `layer/*` + 1 `artifact/*`; zusätzliche `topic/*` nur aus Allowlist.
- Keine langen Zitate; keine Volltext-Kopien.

---

## E) Task — VERIFY (gates)

Versuche (sofern Tooling vorhanden):

- `npx markdownlint-cli2 "**/*.md"`
- `npx cspell lint .`

Wenn nicht möglich:

- schreibe in beide Dateien unter „Gates & Checks“: `not_executed` + Grund.

---

## F) Task — DELIVER (PR)

1. Commit Message:

- `chat: repo state snapshot + meaning map (run_id=<...>)`

1. PR Title:

- `Repo state snapshot + meaning map (run_id=<...>)`

1. PR Body:

- Nutze dieses PR-Report Template:

```md
### Summary
- Added/updated RepoStateSnapshot + RepoMeaningMap for TODAY.

### Scope / Files touched
- <TARGET_DIR/...Snapshot...>
- <TARGET_DIR/...MeaningMap...>

### Risk class
- risk/risk-class/a — docs-only, no code execution, no workflow changes.

### Gates executed (evidence)
- markdownlint: <pass/fail/not_executed> (notes)
- cSpell: <pass/fail/not_executed> (notes)

### Rollback plan
- Revert PR / git revert commit.

### SSOT refs
- Glossar: <file>
- Taxonomie: <file>
- Option-B Blueprint/Runbook: <file>
```

---

## G) Stop Conditions (Stop-&-Ask)

Stoppe und liefere **nur** einen Plan, wenn:

- du außerhalb `TARGET_DIR` schreiben müsstest,
- du `.github/workflows/**` anfassen müsstest,
- du Secrets vermutest,
- du keine eindeutigen SSOT-Dateien bestimmen kannst (z. B. Namenskonflikte).

---

## H) Expected Outputs (outputs, Ergebnisse)

- `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_<TODAY>_Vx.md`
- `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_<TODAY>_Vx.md`
- PR mit PR-Report.
