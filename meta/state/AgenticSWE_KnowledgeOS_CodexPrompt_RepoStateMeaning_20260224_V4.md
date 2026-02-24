---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V4
date: 2026-02-24
status: draft
audience: [human, llm]
intent: "Codex-Prompt Template: Erzeuge/aktualisiere RepoStateSnapshot + RepoMeaningMap + RepoManifest konsistent zu SSOT, Taxonomie, Write-via-PR und No-Secrets. V4 ergänzt Manifest + Key-Files-Inventar."
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

# Codex Prompt Template — RepoStateSnapshot + RepoMeaningMap + RepoManifest (V4)

> **Use case:** Codex hat Repo-Zugriff und erzeugt einen **sauberen, versionierten Status** + **Semantik-Landkarte** + **vollständiges Manifest**, damit Updates im Chat korrekt sind, auch wenn nicht alle Dateien im Chat vorliegen.

---

## A) Inputs (fülle aus oder lass Defaults)

- TODAY: `<YYYY-MM-DD>` (default: system date)
- TARGET_DIR: `meta/state/`
- TEMPLATE_SNAPSHOT: `meta/templates/AgenticSWE_KnowledgeOS_RepoStateSnapshot_Template_20260224_V2.md` (oder: suche nach `*RepoStateSnapshot_Template*`)
- TEMPLATE_MEANINGMAP: `meta/templates/AgenticSWE_KnowledgeOS_RepoMeaningMap_Template_20260224_V1.md` (oder: suche nach `*RepoMeaningMap_Template*`)
- TEMPLATE_MANIFEST: `meta/templates/AgenticSWE_KnowledgeOS_RepoManifest_Template_20260224_V1.json` (oder: suche nach `*RepoManifest_Template*`)
- FILE_PREFIX:
  - snapshot: `AgenticSWE_KnowledgeOS_RepoStateSnapshot_`
  - meaningmap: `AgenticSWE_KnowledgeOS_RepoMeaningMap_`
  - manifest: `AgenticSWE_KnowledgeOS_RepoManifest_`

---

## B) Hard Rules (nicht verhandelbar)

1) **No-Secrets (no secrets, keine Keys):**
- Gib niemals Tokens/Keys/Secrets aus.
- Ignoriere und lies nicht: `**/.env*`, `**/secrets/**`, `**/.git/**`, `**/node_modules/**`, `**/dist/**`.
- Wenn du beim Scannen verdächtige Strings siehst: **redact** als `<REDACTED>` und setze ein TODO.
- Wenn du in der Dateiliste (Manifest) einen Pfad findest, der auf `.env*` oder `secrets/**` matcht: schreibe statt Pfad `<REDACTED_PATH>` + TODO.

2) **SSOT & Normen:**
- Glossar ist normativ; Taxonomie-Tags nur aus Allowlist.
- Wenn ein Tag/Regel in Docs widersprüchlich ist: **markiere Konflikt** (TODO) statt zu raten.

3) **Small diff (thin slice, kleinster Schnitt):**
- Ändere nur Dateien in `TARGET_DIR` (plus optional `meta/templates/` falls Templates fehlen).
- Kein Refactor, keine Umformatierung über viele Dateien.

4) **Write via PR (pull request, Änderungsvorschlag):**
- Arbeite auf einem Branch `chat/<run_id>/repo-state`.
- Erzeuge einen PR mit PR-Report (siehe Abschnitt F).

5) **Evidence (evidence, Nachweis):**
- Führe verfügbare lokale Gates aus (markdownlint/cSpell) oder dokumentiere exakt, warum nicht.

---

## C) Task — ANALYZE (read-only)

1. Bestimme `basis_ref` (aktueller Branch + HEAD commit).
2. Ermittele die **neuesten** SSOT-Dateien anhand Namensregel:
   - höchste `Vx`, Tie-Break: neuestes `YYYYMMDD`.
3. Suche in `TARGET_DIR` nach dem letzten Snapshot/MeaningMap/Manifest:
   - `AgenticSWE_KnowledgeOS_RepoStateSnapshot_YYYYMMDD_Vx.md`
   - `AgenticSWE_KnowledgeOS_RepoMeaningMap_YYYYMMDD_Vx.md`
   - `AgenticSWE_KnowledgeOS_RepoManifest_YYYYMMDD_Vx.json`
4. Erfasse Repo-Topologie (max depth 2) als Liste, nicht als Vollbaum.
5. Erfasse Key-Files-Inventar (Presence Check):
   - `.editorconfig`
   - `.markdownlint.jsonc` (oder Alternativen)
   - `cspell.json`
   - `.vscode/settings.json`
   - `.vscode/extensions.json`
   - `meta/dictionaries/`

**Output dieser Phase:** kurzer Plan + welche Dateien du erzeugst.

---

## D) Task — APPLY (write)

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
  - SSOT-Registry
  - Gates/Checks IST
  - Risks/Stop-&-Ask
  - TODOs

### D3) RepoMeaningMap erzeugen/aktualisieren
- Wenn keine MeaningMap existiert: erstelle `..._TODAY_V1.md`.
- Wenn existiert: erstelle `..._TODAY_V(next+1).md` und referenziere `last_snapshot_ref`.
- Nutze das MeaningMap-Template; fülle nur Schlüsselartefakte (max ~15).

### D4) Konsistenzregeln (minimum)
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

### E2) Fallback via npx (nur wenn Registry erreichbar)
Versuche (sofern Tooling/Registry erreichbar):
- `npx markdownlint-cli2 "**/*.md"`
- `npx cspell lint .`

### E3) Registry/Environment Restriction Handling
Wenn ein Gate scheitert mit **npm 403 Forbidden** (registry restricted):
- markiere das Gate als:
  - `not_executed (npm 403 registry restricted)`
- **nicht** als inhaltlichen Fail interpretieren.
- setze zusätzlich ein TODO:
  - `TODO: enable editor gates OR install local devDependencies (no-npx) OR configure allowed registry/mirror`

### E4) Editor Gates (VS Code) als akzeptables Ersatz-Evidence
Wenn im Repo bereits Editor-Gates konfiguriert sind (z. B. `.vscode/`, `.markdownlint.jsonc`, `cspell.json`):
- dokumentiere in „Gates & Checks“:
  - `editor_gates: required` (falls CLI nicht läuft)
  - optional: `editor_gates: available` (falls konfig vorhanden)
Hinweis: Kein Screenshot/GUI-Export in PR nötig, aber im Text klar markieren, dass Evidence über Editor erfolgt.

### E5) Wenn VERIFY insgesamt nicht möglich
Wenn weder lokale Scripts noch npx noch Editor-Gates verfügbar sind:
- schreibe in beide Dateien unter „Gates & Checks“:
  - `not_executed` + konkreter Grund (z. B. `tooling not configured yet`)
  - und ein TODO zur Aktivierung der Gates.

---

## F) Task — DELIVER (PR)

1. Commit Message:
- `chat: repo state snapshot + meaning map + manifest (run_id=<...>)`

2. PR Title:
- `Repo state snapshot + meaning map + manifest (run_id=<...>)`

3. PR Body:
- Nutze dieses PR-Report Template:

```md
### Summary
- Added/updated RepoStateSnapshot + RepoMeaningMap + RepoManifest for TODAY.

### Scope / Files touched
- <TARGET_DIR/...Snapshot...>
- <TARGET_DIR/...MeaningMap...>
- <TARGET_DIR/...Manifest...>

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
- Option-B Blueprint/Runbook: <file>
```

---

## G) Stop Conditions (Stop-&-Ask)

Stoppe und liefere **nur** einen Plan, wenn:
- du außerhalb `TARGET_DIR` schreiben müsstest (außer `meta/templates/` für Templates),
- du `.github/workflows/**` anfassen müsstest,
- du Secrets vermutest,
- du keine eindeutigen SSOT-Dateien bestimmen kannst (z. B. Namenskonflikte).

---

## H) Expected Outputs (outputs, Ergebnisse)

- `meta/state/AgenticSWE_KnowledgeOS_RepoManifest_<TODAY>_Vx.json`
- `meta/state/AgenticSWE_KnowledgeOS_RepoStateSnapshot_<TODAY>_Vx.md`
- `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_<TODAY>_Vx.md`
- PR mit PR-Report.
