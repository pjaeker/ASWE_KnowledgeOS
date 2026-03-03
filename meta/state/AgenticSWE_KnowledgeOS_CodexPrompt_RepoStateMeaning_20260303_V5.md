---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V5
date: 2026-03-03
status: draft
audience: [human, llm]
intent: "Codex-Prompt Template (Update von V4): Erzeuge/aktualisiere RepoStateSnapshot + RepoMeaningMap + RepoManifest konsistent zu SSOT, Taxonomie, Write-via-PR und No-Secrets. V5 praezisiert relevante Read/Write-Verzeichnisse und kann optional einen SessionEntry unter meta/state/entry/ mitaktualisieren."
tags:
  - layer/handbook
  - artifact/template
  - topic/ssot
  - topic/governance
  - topic/gate
  - topic/secrets
  - topic/topologie
  - topic/run-id
  - topic/router
---

# Codex Prompt Template — RepoStateSnapshot + RepoMeaningMap + RepoManifest (+ optional SessionEntry) (V5)

> **Use case:** Codex hat Repo-Zugriff und erzeugt einen **sauberen, versionierten Status** + **Semantik-Landkarte** + **vollständiges Manifest**, damit Updates im Chat korrekt sind, auch wenn nicht alle Dateien im Chat vorliegen.  
> **Neu in V5:** klare **Read/Write-Surfaces** und optionales Update eines **Session Entry Points** unter `meta/state/entry/`.

---

## A) Inputs (fülle aus oder lass Defaults)

- RUN_ID: `<YYYYMMDD-HHMM>` (optional, empfohlen)
- TODAY: `<YYYY-MM-DD>` (default: system date)

### A1) Write-Surface (wo darf geschrieben werden?)

- TARGET_DIR: `meta/state/` (default)
- ENTRY_DIR: `meta/state/entry/` (default; liegt innerhalb TARGET_DIR)
- ALLOWED_WRITE_DIRS (default):
  - `meta/state/**`
  - `meta/templates/**` (nur falls Templates fehlen und du sie erzeugen musst)

> **Regel:** Es wird **nur** innerhalb `ALLOWED_WRITE_DIRS` geschrieben. Alles andere = Stop-&-Ask.

### A2) Read-Surface (wo wird gelesen?)

- READONLY_NORM_DIRS (default):
  - `meta/**` (Glossar, Taxonomie, Allowlists, Policies)
  - `handbook/**` (Runbooks/HowTos)
  - `scripts/**` (Validatoren, Preflight-Skripte)
- SCAN_MODE:
  - `git ls-files` (für Manifest; repo-weit, aber *write bleibt begrenzt*)

### A3) Templates (SSOT)

- TEMPLATE_SNAPSHOT: `meta/templates/AgenticSWE_KnowledgeOS_RepoStateSnapshot_Template_20260224_V2.md` (oder: suche nach `*RepoStateSnapshot_Template*`)
- TEMPLATE_MEANINGMAP: `meta/templates/AgenticSWE_KnowledgeOS_RepoMeaningMap_Template_20260224_V1.md` (oder: suche nach `*RepoMeaningMap_Template*`)
- TEMPLATE_MANIFEST: `meta/templates/AgenticSWE_KnowledgeOS_RepoManifest_Template_20260224_V1.json` (oder: suche nach `*RepoManifest_Template*`)

### A4) File Prefixes (Naming)

- FILE_PREFIX:
  - snapshot: `AgenticSWE_KnowledgeOS_RepoStateSnapshot_`
  - meaningmap: `AgenticSWE_KnowledgeOS_RepoMeaningMap_`
  - manifest: `AgenticSWE_KnowledgeOS_RepoManifest_`
  - session_entry: `AgenticSWE_KnowledgeOS_SessionEntry_`

### A5) Optional: SessionEntry mitaktualisieren

- UPDATE_SESSION_ENTRY: `true|false` (default: `true`)
- SESSION_ENTRY_FILENAME (default):
  - `meta/state/entry/AgenticSWE_KnowledgeOS_SessionEntry_<TODAY>_Vx.md`

---

## B) Hard Rules (nicht verhandelbar)

1) **No-Secrets (no secrets, keine Keys):**

- Gib niemals Tokens/Keys/Secrets aus.
- Ignoriere und lies nicht: `**/.env*`, `**/secrets/**`, `**/.git/**`, `**/node_modules/**`, `**/dist/**`.
- Wenn du beim Scannen verdächtige Strings siehst: **redact** als `<REDACTED>` und setze ein TODO.
- Wenn du in der Dateiliste (Manifest) einen Pfad findest, der auf `.env*` oder `secrets/**` matcht: schreibe statt Pfad `<REDACTED_PATH>` + TODO im Snapshot.

1) **SSOT & Normen:**

- Glossar ist normativ; Taxonomie-Tags nur aus Allowlist.
- Wenn ein Tag/Regel in Docs widersprüchlich ist: **markiere Konflikt** (TODO) statt zu raten.

1) **Small diff (thin slice, kleinster Schnitt):**

- Schreibe **nur** in `ALLOWED_WRITE_DIRS`.
- Kein Refactor, keine Umformatierung über viele Dateien.
- Keine repo-weiten Cleanups.

1) **Write via PR (pull request, Änderungsvorschlag):**

- Arbeite auf einem Branch `chat/<run_id>/repo-state`.
- Erzeuge einen PR mit PR-Report (siehe Abschnitt F).

1) **Evidence (evidence, Nachweis):**

- Führe verfügbare lokale Gates aus (markdownlint/cSpell/frontmatter-validator) oder dokumentiere exakt, warum nicht.

---

## C) Task — ANALYZE (read-only)

1) Bestimme `basis_ref` (aktueller Branch + HEAD commit).
2) Ermittele die **neuesten** SSOT-Dateien anhand Namensregel:
   - höchste `Vx`, Tie-Break: neuestes `YYYYMMDD`.
3) Suche in `TARGET_DIR` nach dem letzten Snapshot/MeaningMap/Manifest:
   - `AgenticSWE_KnowledgeOS_RepoStateSnapshot_YYYYMMDD_Vx.md`
   - `AgenticSWE_KnowledgeOS_RepoMeaningMap_YYYYMMDD_Vx.md`
   - `AgenticSWE_KnowledgeOS_RepoManifest_YYYYMMDD_Vx.json`
4) (Optional) Wenn `UPDATE_SESSION_ENTRY=true`: suche in `ENTRY_DIR` nach letztem SessionEntry:
   - `AgenticSWE_KnowledgeOS_SessionEntry_YYYYMMDD_Vx.md`
5) Erfasse Repo-Topologie (max depth 2) als Liste, nicht als Vollbaum.
6) Erfasse Key-Files-Inventar (Presence Check):
   - `.editorconfig`
   - `.markdownlint.jsonc` (oder Alternativen)
   - `cspell.json`
   - `.vscode/settings.json`
   - `.vscode/extensions.json`
   - `meta/dictionaries/`

**Output dieser Phase:** kurzer Plan + welche Dateien du erzeugst (inkl. exakter Dateinamen).

---

## D) Task — APPLY (write)

> **Versionsregel:**  
>
> - Wenn es für TODAY noch keine Datei gibt: `..._<TODAY>_V1`  
> - Wenn es bereits eine Datei für TODAY gibt: `..._<TODAY>_V(next+1)`

### D1) RepoManifest erzeugen/aktualisieren (vollständig)

- Wenn kein Manifest existiert: erstelle `..._TODAY_V1.json`.
- Wenn existiert: erstelle `..._TODAY_V(next+1).json`.
- Inhalt:
  - `files`: liste aus `git ls-files` (relative Pfade).
  - `file_count`: Anzahl der Einträge in `files`.
  - `basis_ref`: Commit-SHA (oder Branch+SHA).
  - Redactions anwenden (`.env*`, `secrets/**` → `<REDACTED_PATH>` + TODO im Snapshot).

### D2) RepoStateSnapshot erzeugen/aktualisieren

- Wenn kein Snapshot existiert: erstelle `..._TODAY_V1.md`.
- Wenn existiert: erstelle `..._TODAY_V(next+1).md` und setze `previous_snapshot`.
- Nutze das Snapshot-Template als Struktur; fülle:
  - Executive Delta
  - Repo-Topologie
  - **Key Files Inventory** (Presence + Notes)
  - **manifest_ref** + optional `manifest_digest` (sha256 über Manifest-Dateiinhalt)
  - SSOT-Registry (inkl. Referenzen auf Glossar/Taxonomie/Allowlist/Runbooks)
  - Gates/Checks IST
  - Risks/Stop-&-Ask
  - TODOs

### D3) RepoMeaningMap erzeugen/aktualisieren

- Wenn keine MeaningMap existiert: erstelle `..._TODAY_V1.md`.
- Wenn existiert: erstelle `..._TODAY_V(next+1).md` und referenziere `last_snapshot_ref`.
- Nutze das MeaningMap-Template; fülle nur Schlüsselartefakte (max ~15) inkl. `question_to_file_map` / Router-Hinweise.

### D4) OPTIONAL: SessionEntry unter `meta/state/entry/` erzeugen/aktualisieren (wenn UPDATE_SESSION_ENTRY=true)

- Ziel: Ein „Single Entry Point“ für Sessions (insb. Chat ohne Projekt-Kontext).
- Erzeuge oder update:
  - `meta/state/entry/AgenticSWE_KnowledgeOS_SessionEntry_<TODAY>_Vx.md`
- Inhalt minimal:
  - „Neueste Version“-Regel (höchste Vx; Tie-Break neuestes Datum)
  - Verweise auf **neueste**:
    - RepoMeaningMap
    - RepoStateSnapshot
    - RepoManifest
    - Preflight-Gates Runbook (unter `handbook/runbooks/**`)
    - Session-Ritual HowTo (unter `handbook/howto/**`)
  - Copy/Paste Snippets: `SESSION_BOOTSTRAP` und `SESSION_CLOSEOUT` (kurz, stabil)

### D5) Konsistenzregeln (minimum)

- Frontmatter:
  - `project: AgenticSWE_KnowledgeOS`
  - `version: Vx` muss zum Dateinamen passen
  - Tags: exakt 1 `layer/*` + 1 `artifact/*`; zusätzliche `topic/*` nur aus Allowlist.
- Keine langen Zitate; keine Volltext-Kopien.

---

## E) Task — VERIFY (gates)

Ziel: **Best-effort Evidence (evidence, Nachweis)** ohne unnötige Hard-Fails.

### E1) Prefer local scripts (falls vorhanden)

Wenn `package.json` Scripts existieren, bevorzuge:

- `npm run lint:md` (oder ähnlicher Scriptname)
- `npm run spell` (oder ähnlicher Scriptname)

Zusätzlich (falls vorhanden):

- `python scripts/validate_frontmatter_tags.py --repo-root . --paths <CHANGED_MD_FILES>`

### E2) Fallback via npx (nur wenn Registry erreichbar)

Versuche (sofern Tooling/Registry erreichbar):

- `npx markdownlint-cli2 "<CHANGED_MD_GLOBS>"`
- `npx cspell lint <CHANGED_PATHS>`

### E3) Registry/Environment Restriction Handling

Wenn ein Gate scheitert mit **npm 403 Forbidden** (registry restricted):

- markiere das Gate als: `not_executed (npm 403 registry restricted)`
- **nicht** als inhaltlichen Fail interpretieren.
- setze TODO: `enable editor gates OR install local devDependencies (no-npx) OR configure allowed registry/mirror`

### E4) Editor Gates (VS Code) als akzeptables Ersatz-Evidence

Wenn im Repo Editor-Gates konfiguriert sind (z. B. `.vscode/`, `.markdownlint.jsonc`, `cspell.json`):

- dokumentiere in „Gates & Checks“:
  - `editor_gates: required` (falls CLI nicht läuft)
  - optional: `editor_gates: available` (falls konfig vorhanden)

### E5) Wenn VERIFY insgesamt nicht möglich

Wenn weder lokale Scripts noch npx noch Editor-Gates verfügbar sind:

- schreibe in die geänderten Dateien unter „Gates & Checks“:
  - `not_executed` + konkreter Grund (z. B. `tooling not configured yet`)
  - und ein TODO zur Aktivierung der Gates.

---

## F) Task — DELIVER (PR)

1) Commit Message:

- `chat: repo state snapshot + meaning map + manifest (+entry) (run_id=<...>)`

1) PR Title:

- `Repo state snapshot + meaning map + manifest (+entry) (run_id=<...>)`

1) PR Body:
Nutze dieses PR-Report Template:

```md
### Summary
- Added/updated RepoStateSnapshot + RepoMeaningMap + RepoManifest for TODAY.
- (Optional) Added/updated SessionEntry under meta/state/entry/.

### Scope / Files touched
- <meta/state/...Snapshot...>
- <meta/state/...MeaningMap...>
- <meta/state/...Manifest...>
- (Optional) <meta/state/entry/...SessionEntry...>

### Risk class
- risk/risk-class/a — docs-only, no code execution, no workflow changes.

### Gates executed (evidence)
- markdownlint: <pass/fail/not_executed> (notes)
- cSpell: <pass/fail/not_executed> (notes)
- frontmatter validator: <pass/fail/not_executed> (notes)

### Rollback plan
- Revert PR / git revert commit.

### SSOT refs
- Glossar: <file>
- Taxonomie: <file>
- Allowlist: <file>
- Preflight Gates Runbook: <file>
- Session Ritual HowTo: <file>
```

---

## G) Stop Conditions (Stop-&-Ask)

Stoppe und liefere **nur** einen Plan, wenn:

- du außerhalb `ALLOWED_WRITE_DIRS` schreiben müsstest,
- du `.github/workflows/**` anfassen müsstest,
- du Secrets vermutest,
- du keine eindeutigen SSOT-Dateien bestimmen kannst (z. B. Namenskonflikte),
- du zur Umsetzung repo-weite Formatierungen/Cleanups bräuchtest.

---

## H) Expected Outputs (outputs, Ergebnisse)

- `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_<TODAY>_Vx.json`
- `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_<TODAY>_Vx.md`
- `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_<TODAY>_Vx.md`
- optional (wenn `UPDATE_SESSION_ENTRY=true`):
  - `meta/state/entry/AgenticSWE_KnowledgeOS_SessionEntry_<TODAY>_Vx.md`
- PR mit PR-Report.
