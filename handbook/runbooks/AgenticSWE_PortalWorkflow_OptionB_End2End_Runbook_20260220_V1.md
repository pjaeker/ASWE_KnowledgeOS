---
project: "ASWE Knowledge-OS"
doc_type: runbook
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich kann den Portal-Workflow (Option B) in VS Code end-to-end ausführen: ändern → prüfen → PR → Review."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/actionability
  - topic/stop-condition
  - risk/stop-ask
---

# Portal-Workflow Option B – End-to-End Runbook

## Begriff-Quickstart
- **SSOT (single source of truth):** Die „Wahrheit“ liegt in bestimmten Repo-Dateien, nicht in Chat-Verläufen (EN: SSOT).
- **Write-via-PR:** Änderungen werden nicht direkt geschrieben, sondern als Pull Request eingereicht (EN: write via PR).
- **Gate:** Harte Prüfung, die „grün“ sein muss, bevor etwas als „done“ gilt (EN: gate).
- **Stop-&-Ask:** Bei riskanten Bereichen wird gestoppt und eine Freigabe eingeholt (EN: stop & ask).
- **Thin slice:** Kleine, additive Änderungseinheit für schnelle Reviews (EN: thin slice).

## Ziel
Du willst vom Gedanken „ich ändere etwas am Portal/CMS“ bis zum **sauberen PR** in einem konsistenten Ablauf kommen – mit maximalem Nutzen aus VS Code + Extensions + (optional) Copilot/Codex.

## Nicht-Ziel
- Keine CI/CD- oder Deploy-Änderungen.
- Kein Setup neuer Secrets oder GitHub App Konfiguration (Stop-&-Ask).

## Inputs
- Repo im VS Code geöffnet (Workspace).
- SSOT-Dateien sind auffindbar:
  - Glossar: `AgenticSWE_KnowledgeOS_Glossary_*`
  - Taxonomie: `AgenticSWE_KnowledgeOS_Taxonomy_*`
  - Option-B-Runbook: `AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_*`
- Installierte Extensions (IST):
  GitLens, Front Matter, GitHub Actions, markdownlint, Markdown All in One, Code Spell Checker, EditorConfig,
  DotENV, REST Client, YAML (Red Hat), ShellCheck, SonarQube, Trivy, Snyk.

## Outputs
- **PR** mit klarer Beschreibung + PR-Report Pflichtfeldern.
- Geänderte/Neue Dateien in erlaubten Pfaden (z. B. `handbook/**`, `meta/**` je nach Allowlist).
- Gate-Evidence (Logs/Exit Codes) im PR-Report.

## Stop-Conditions (immer sofort stoppen)
Stoppe und hole Freigabe ein, wenn du anfasst:
- `.github/workflows/**` (CI/CD)
- Deploy/Infra/Migrationen oder produktive Datenänderungen
- GitHub App Setup / Secrets / Keys
- kostenintensive Scans ohne Budgetrahmen
- Widerspruch zwischen Glossar/Taxonomie/Runbook

## Runbook (Schrittfolge)

### Schritt 0 — Orientierung (read-only)
1. Öffne **Explorer** und prüfe Repo-Topologie (Ordner):
   `meta/`, `handbook/`, `portal/`, `scripts/`, `templates/`, `.vscode/`, `requests/`.
2. Suche die SSOT-Dateien und öffne sie einmal (Lesen, keine Änderungen).
3. Lege fest: **Welche Änderung** willst du (1 Satz), und welche **Risiko-Klasse** ist das?
   - Meist **risk/risk-class/a** für reine Doku/Content-Änderungen.
   - **risk/risk-class/b** wenn Außenwirkung oder Security-Policy betroffen ist.

**Evidence:** Linke Seitenleiste → „Timeline“ / GitLens Verlauf reicht als Orientierung, noch kein Log nötig.

---

### Schritt 1 — Aufgabe in “thin slices” schneiden
Formuliere:
- **Ziel:** z. B. „How-to für REST Client hinzufügen“
- **Scope:** max 1–3 Dateien
- **Gates:** welche Checks werden laufen?

Beispiel (thin slice):
- Neues Dokument in `handbook/portal/…HowTo…`
- Keine Änderungen an CI/Secrets
- Gates: Frontmatter/Tags, markdownlint, cSpell, Link-Check

---

### Schritt 2 — Branch & Arbeitsmodus (GitLens + GitHub)
1. Sync: `git fetch --all --prune`
2. Neuen Branch:
   - Namensvorschlag: `docs/portal-restclient-howto`
3. In VS Code:
   - GitLens: “Repository” → Branches → neuen Branch auswählen.

**Tipp:** GitLens Inspect nutzen, wenn du verstehen willst, warum eine Stelle so ist („Who/Why“).

---

### Schritt 3 — Dokument/Content erstellen (Front Matter + Markdown)
1. Erzeuge neue Datei (Beispiel):
   `handbook/portal/AgenticSWE_RESTClient_PortalAPI_NoSecrets_HowTo_20260220_V1.md`
2. Füge YAML-Frontmatter ein:
   - `layer/handbook` (genau 1×)
   - `artifact/how-to` oder passend (genau 1×)
   - 0–3 `topic/*`
   - optional `risk/*`
3. Inhalt nach Diátaxis:
   - Ziel/Nicht-Ziel
   - Voraussetzungen
   - Schritte (Copy/Paste)
   - Gates & erwarteter Output
   - Troubleshooting
   - Beispiel + Agent Prompt Snippet

**Gates sofort währenddessen:**
- markdownlint: Problems Panel beobachten.
- cSpell: Tippfehler/Termini, ggf. ins Wörterbuch.

---

### Schritt 4 — Lokale Gates laufen lassen (Preflight)
**Primary:** Repo-Skripte (wenn vorhanden) aus dem Option-B-Runbook.
Beispiel-Commandset (nur ausführen, wenn diese Skripte im Repo existieren):
```bash
python scripts/validate_frontmatter_tags.py --repo-root .
python scripts/check_links.py --repo-root .
python scripts/lint_repo.py --repo-root .
```

**Secondary:** VS Code UX-Gates
- markdownlint: “Fix all supported violations” (Quick Fix).
- YAML: Red Hat Validation im Problems Panel.
- ShellCheck: “ShellCheck: Lint Current Document” bei `*.sh`.
- GitHub Actions: YAML/Workflow Visualizer & Logs (read-only).

**Evidence:** Terminal-Output (Exit Codes) + Screenshot/Copy ins PR-Report.

---

### Schritt 5 — PR erstellen (write-via-PR)
1. `git status` → prüfen, dass nur erwartete Files geändert wurden.
2. Commit message (konservativ, beschreibend):  
   `docs(portal): add REST Client no-secrets how-to`
3. Push Branch:
   `git push -u origin <branch>`
4. PR erstellen:
   - GitHub Desktop oder VS Code “Pull Requests” (falls installiert/benutzt) oder Web.

**PR-Report Pflichtfelder (Template)**
- Summary
- Scope / Files touched
- Risk class
- Gates executed + Evidence
- Rollback plan
- SSOT refs (Glossar/Taxonomie/Option-B-Runbook)

---

### Schritt 6 — Review & Merge
- Review in GitHub: Focus auf Diff (keine “format churn”).
- GitLens hilft, Kontext zu prüfen (Blame/History).
- Merge erst, wenn alle Gates grün sind.

## Troubleshooting (Top 5)
1. **Taxonomie-Tag ungültig** → Tag-Liste im Taxonomie-Dokument prüfen; nur Allowlist.  
2. **markdownlint Konflikte** → Projekt-Regel definieren (z. B. MD013) statt ad-hoc Ignorieren.  
3. **cSpell markiert viele Wörter** → Projekt-Wörterbuch anlegen (`cspell.json`) + Glossar-Export (später) als Dictionary.  
4. **Link-Check fail** → relative Links, GitHub-Render-Compatibility, Pfade korrigieren.  
5. **Gate-Skripte fehlen** → Fallback: VS Code Lints + minimaler manueller Check; TODO für Repo-Setup.

## Beispiel: 15-Minuten Ablauf (Mini)
- 2 min: Aufgabe definieren + thin slice
- 6 min: Datei anlegen + Frontmatter + Steps
- 4 min: Preflight (markdownlint + cSpell)
- 3 min: Commit + PR + PR-Report

## Agent Prompt Snippet (Copilot/Codex)
> Ziel: Erstelle eine neue How-to Datei für REST Client “No secrets” unter handbook/portal.  
> Constraints: nur allowlist Pfade; YAML Frontmatter mit genau 1× layer/* und 1× artifact/*; nutze Taxonomie-Tags; keine Secrets.  
> Output: PR-fähiger Patch + PR-Report Text + Gate-Evidence Checkliste.
