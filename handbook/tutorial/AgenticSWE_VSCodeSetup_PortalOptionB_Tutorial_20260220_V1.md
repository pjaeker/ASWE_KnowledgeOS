---
project: "ASWE Knowledge-OS"
doc_type: tutorial
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich richte VS Code so ein, dass Doku+Portal-Workflow (Option B) mit minimalen Konflikten und klaren Gates funktioniert."
tags:
  - layer/handbook
  - artifact/tutorial
  - topic/diataxis
  - topic/consistency
  - topic/findability
---

# VS Code Setup Tutorial für Portal/CMS Option B

## Begriff-Quickstart
- **Workspace (Arbeitsbereich):** Dein geöffnetes Repo als Einheit inkl. Settings (EN: workspace).
- **Konfliktarm:** Möglichst keine überlappenden Formatter/Linter, die sich widersprechen (EN: low-conflict).
- **Problems Panel:** Zentrale Liste aller Diagnosen (EN: problems panel).
- **Settings (settings.json):** Konfiguration für Editor/Extensions (EN: settings).

## Ziel
Ein VS Code Setup, das dich bei Doku- und Portal-Arbeit unterstützt:
- schnell schreiben
- automatisch prüfen
- PR-ready liefern (write-via-PR)

## Nicht-Ziel
- Keine Repo-weiten CI/CD-Änderungen.
- Kein Secret-Setup (Tokens/Keys).

## Voraussetzungen
- VS Code installiert.
- Repo ist lokal geklont und kann geöffnet werden.
- Extensions sind installiert (IST).

> Hinweis zu Option B: Manche Teams speichern geteilte Settings unter `.vscode/**`. Falls deine Allowlist für write-via-PR das nicht erlaubt, halte team-shared Settings als **Templates unter `meta/**`** oder als Copy/Paste im Handbook und übernimm sie lokal. (Allowlist/Policy-Änderungen sind Stop-&-Ask.)

---

## Schritt 1 — Workspace öffnen & Vertrauen setzen
1. Öffne den Repo-Ordner in VS Code.
2. Wenn gefragt: “Trust this workspace?”  
   - Für lokale Arbeit meist “Trust”, sonst laufen manche Extensions eingeschränkt.

**Gate:** Keine riskanten Writes.

---

## Schritt 2 — Extension-Check (IST) + Rollenklärung
Die Extensions sind ein UX-Layer (user experience: Editor-Komfort). Du nutzt sie so:

### (A) Authoring: Markdown, Frontmatter, Rechtschreibung
- **Markdown All in One:** TOC, Navigation, Shortcuts
- **markdownlint:** Style/Lint für Markdown (regelbasiert)
- **Front Matter:** Frontmatter-Editing, Content Types/Assets
- **Code Spell Checker (cSpell):** Rechtschreibung + Projektwörterbuch

### (B) Repo/CI: Git, Actions, YAML
- **GitLens/GitLens Inspect:** Historie/Blame/Review-Assist
- **GitHub Actions:** Workflows lesen, Runs/Logs debuggen (read-only)
- **YAML (Red Hat):** Schema/Validation für YAML

### (C) API/Env: REST + .env
- **REST Client:** `.http` Requests testen (ohne Secrets)
- **DotENV:** `.env` Lesbarkeit (lokal)

### (D) Shell/Security
- **ShellCheck:** Bash-Linting mit Quick Fixes
- **SonarQube/Snyk/Trivy:** Findings lesen → Fix-Loop

---

## Schritt 3 — Minimal-Settings (konfliktarm)

### 3.1 EditorConfig aktiv halten
EditorConfig verhindert Diff-Noise (whitespace churn: Format-Rauschen).  
- Stelle sicher, dass `.editorconfig` im Repo existiert (oder als Template).

Beispiel `.editorconfig` (Copy/Paste):
```ini
root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true

[*.md]
trim_trailing_whitespace = false

[*.{yml,yaml}]
indent_style = space
indent_size = 2
```

### 3.2 markdownlint Konfiguration (projektlokal)
markdownlint unterstützt Konfig-Dateien wie:
- `.markdownlint.jsonc` / `.markdownlint.json`
- `.markdownlint-cli2.jsonc` (wenn du auch CLI-Tools konsistent nutzen willst)

Empfehlung: **projektlokal** (Team-konsistent) statt nur User-Settings.

Minimalbeispiel:
```jsonc
{
  "MD013": false,
  "MD033": false
}
```

### 3.3 cSpell Projektwörterbuch (`cspell.json`)
Empfehlung:
- `cspell.json` am Repo-Root (oder Template)
- später: Glossar-Begriffe als Wörterbuchquelle hinzufügen (automatisierbar)

Minimalbeispiel:
```json
{
  "version": "0.2",
  "language": "de,en",
  "ignorePaths": [
    "**/node_modules/**",
    "**/dist/**",
    "**/.git/**"
  ]
}
```

---

## Schritt 4 — Markdown Workflow (Authoring)
1. Datei anlegen mit Namenskonvention: `AgenticSWE_<Topic>_YYYYMMDD_Vx.md`
2. YAML Frontmatter einfügen:
   - genau 1× `layer/*`
   - genau 1× `artifact/*`
   - 0–3 `topic/*`
3. Markdown All in One:
   - TOC erzeugen/aktualisieren
   - Überschriften konsistent halten

**Gate:** markdownlint Problems Panel = 0 (oder dokumentierte Ausnahmen).

---

## Schritt 5 — Front Matter (Keystatic Content)
Nutzungsidee:
- Content Types definieren (wenn im Repo vorhanden)
- Frontmatter validieren (Pflichtfelder)
- Assets/Medien konsistent ablegen (z. B. `assets/` oder `portal/assets/`)

**Mini-Workflow**
1. Neue Content-Datei / Handbook-Datei erstellen.
2. Frontmatter via UI anpassen.
3. Preview prüfen (Markdown Preview / Keystatic Preview je nach Setup).

**Gate:** Keine ungetaggten oder taxonomie-widrigen Dokumente.

---

## Schritt 6 — YAML + GitHub Actions (CI lesen, nicht “bauen”)
- YAML (Red Hat): Schemas/Validation verhindern YAML-Fußangeln.
- GitHub Actions Extension: hilft beim Lesen/Debuggen von Workflow-Runs.

**Gate:** Keine Changes an `.github/workflows/**` ohne Stop-&-Ask.

---

## Schritt 7 — REST Client + DotENV (ohne Secrets)
Wichtig: REST Client Environments werden in VS Code Settings über `rest-client.environmentVariables` gepflegt (team-shared nur als Template, falls `.vscode/**` nicht erlaubt).  
Sichere Patterns:
- Committe nur Example Requests ohne Tokens.
- Secrets nur via lokale `.env` + REST Client `{$dotenv ...}` oder OS env vars.

---

## Schritt 8 — ShellCheck & Security Tools (Basics)
- ShellCheck: Lint Current Document, Quick Fixes, Run Modes (onType/onSave/manual).
- SonarQube/Snyk/Trivy: starte “read-only” (Findings lesen), dann Fix-Loop.

---

## Troubleshooting (Top 5)
1. Zu viele Linter-Warnungen → erst Konfig minimalisieren, dann schärfen.
2. Markdown Preview ≠ GitHub Rendering → GitHub-Compat-Regeln dokumentieren.
3. cSpell false positives → Wörterbuch pflegen, nicht “disable”.
4. YAML Schema nervt → nur relevante Schemas aktivieren.
5. Security Tools brauchen Login → keine Tokens im Repo; Setup in separatem Runbook/Policy.

## Übung (10 Minuten)
- Erzeuge eine neue Reference-Datei mit Frontmatter + 5 Bulletpoints.
- Fixe markdownlint + cSpell Findings.
- Commit + PR (ohne Merge).

## Agent Prompt Snippet
> Richte ein konfliktarmes VS Code Setup für dieses Repo ein (nur als Dokumentation/Template, keine riskanten Pfade).  
> Liefere: empfohlenes `.editorconfig`, `cspell.json`, `.markdownlint.jsonc` als Copy/Paste + Erklärung, welche Extension was macht.
