---
project: "ASWE Knowledge-OS"
doc_type: tutorial
version: "V2"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich richte VS Code so ein, dass Portal/CMS (Keystatic) + Docs-as-Code (Option B) produktiv, konfliktarm und mit klaren lokalen Gates funktioniert."
tags:
  - layer/handbook
  - artifact/tutorial
  - topic/diataxis
  - topic/gate
  - topic/actionability
---

# VS Code Setup Tutorial für Portal/CMS Option B (mit Hintergrund)

## Zielbild (in 60 Sekunden)
Du hast ein VS‑Code‑Setup, das dich **beim Schreiben und Reviewen** unterstützt, bevor du einen PR (Pull Request, EN: PR) erstellst:
- **schnell schreiben** (Markdown, Frontmatter, Snippets)
- **früh Fehler sehen** (Problems Panel)
- **lokal prüfen** (Preflight, EN: preflight) statt erst im Review überrascht zu werden
- **Option‑B‑konform liefern**: write-via-PR (Schreiben nur per PR, EN: write via PR)

## Nicht‑Ziele
- Kein Setup von Secrets (Zugangsdaten, EN: secrets) im Repo.
- Keine Aktivierung/Änderung von CI/CD (Automations in `.github/workflows/**`).

---

## Kernkonzepte (damit du verstehst, *warum* jede Extension da ist)

### 1) Linting (linting, rule checks)
**Linting** ist eine automatische Regelprüfung, die typische Probleme früh findet (z. B. kaputte Links, uneinheitliche Überschriften, unsauberes YAML) und dir **Review‑Diskussionen spart**.

### 2) Formatierung (formatting, auto layout)
**Formatierung** ordnet Text nach festen Layout‑Regeln (Einrückung, Zeilenumbrüche). Ziel: **weniger Diff‑Noise** (diff noise: unnötige Änderungen, EN: diff noise) und konsistente Dateien.

### 3) Validierung (validation, schema check)
**Validierung** prüft Struktur gegen ein Schema (schema: Feld-/Typvorgaben, EN: schema). Beispiel: YAML‑Frontmatter muss Pflichtfelder haben und Tags müssen aus der Taxonomie stammen.

### 4) Gate (gate, hard check)
Ein **Gate** ist ein harter Prüfpunkt: “grün = ok, rot = stop”. Option B nutzt Gates, um Write‑Aktionen kontrollierbar zu machen.

### 5) Preflight (preflight, local gates)
**Preflight** heißt: du führst die wichtigsten Gates lokal aus (Lint/Spell/YAML/Link‑Checks), bevor du überhaupt einen PR aufmachst.

### 6) Findings (finding, tool result)
Ein **Finding** ist ein Tool‑Fund (z. B. “Link kaputt”, “Secret‑Pattern gefunden”, “Unsichere Dependency”). Wichtig ist nicht “0 Findings”, sondern **Triage → Fix → Re‑Scan**.

> Wenn du später mehr “Warum/Wie genau funktioniert das?” brauchst, ist das ein eigenes **Explanation**‑Dokument (explanation, background note). In der Taxonomie ist `artifact/explanation` vorgesehen.

---

## Schritt 0 — Workspace öffnen & Vertrauen setzen
1. Repo‑Ordner in VS Code öffnen.
2. Wenn gefragt: **Trust this workspace?**
   - Für lokale Arbeit meist **Trust**, sonst laufen manche Extensions eingeschränkt.

**Warum wichtig?** Viele Linter/Validatoren sind aus Sicherheitsgründen im “Restricted Mode” (weniger Features), wenn der Workspace nicht vertraut ist.

**Gate:** Keine riskanten Writes.

---

## Schritt 1 — Extensions als “Werkzeugkette” verstehen (Map)
Die Extensions sind dein **UX‑Layer** (user experience: Editor‑Komfort, EN: UX layer). Sie ersetzen nicht die Option‑B‑Regeln, sondern machen sie schnell nutzbar.

### Deine installierten Extensions (IST) → Zweck → typischer Nutzen

#### A) Schreiben & Dokuqualität
1) **Markdown All in One**
- **Problem:** In Markdown passiert viel “Handarbeit” (TOC, Navigation, Shortcuts).
- **Nutzen:** schneller strukturieren, TOC pflegen, weniger Copy/Paste.
- **Beispiel:** Du schreibst ein Runbook → `Create Table of Contents` → TOC bleibt aktuell.

2) **markdownlint**
- **Problem:** Markdown wird sonst schnell inkonsistent (Überschriften, Listen, Leerzeilen) und schwer reviewbar.
- **Nutzen:** einheitlicher Stil, weniger Review‑Pingpong.
- **Beispiel:** `MD022` (Headings brauchen Leerzeile) wird sofort angezeigt → du fixst bevor der PR aufgemacht wird.

3) **Code Spell Checker (cSpell)**
- **Problem:** Tippfehler und wechselnde Schreibweisen stören Suche und Glossar‑Konsistenz.
- **Nutzen:** saubere Sprache + projektweites Wörterbuch (Dictionary, EN: dictionary).
- **Beispiel:** “Keystatic” wird als false positive markiert → du fügst es ins Projektwörterbuch hinzu statt “disable all”.

4) **Front Matter**
- **Problem:** Frontmatter‑Felder werden vergessen oder falsch geschrieben → Taxonomie/Gates schlagen später fehl.
- **Nutzen:** strukturierte Frontmatter‑Bearbeitung, Content‑Typen, Medien/Assets‑Flow.
- **Beispiel:** Du erstellst `artifact/runbook` → UI erinnert dich an Pflichtfelder (project/doc_type/version/date/status/audience/intent/tags).

5) **EditorConfig**
- **Problem:** Unterschiedliche EOL/Indent erzeugen Diff‑Noise und Merge‑Konflikte.
- **Nutzen:** weniger “Format‑Churn”, konsistente Dateien.
- **Beispiel:** Ein Agent erzeugt Dateien mit CRLF → EditorConfig erzwingt LF → der Diff bleibt sauber.

#### B) Repo/CI/YAML
6) **GitLens + GitLens Inspect**
- **Problem:** “Warum ist das so?” kostet Zeit ohne Kontext.
- **Nutzen:** Blame/History/PR‑Kontext direkt im Editor.
- **Beispiel:** Eine Zeile in `writeGates.ts` blockt eine Datei → GitLens zeigt Commit/Kommentar → du verstehst die Policy ohne Suchen.

7) **GitHub Actions**
- **Problem:** Workflow‑Fehler sind schwer zu debuggen, wenn man nur GitHub Web nutzt.
- **Nutzen:** Runs/Logs leichter lesen, YAML‑Hints.
- **Beispiel:** Ein PR‑Gate ist rot → du öffnest den Run/Log direkt in VS Code und leitest Fix‑Schritte ab.

8) **YAML (Red Hat)**
- **Problem:** YAML‑Fehler sind oft “unsichtbar” (Indentation) und brechen später CI.
- **Nutzen:** Schema‑Validation, Autocomplete, früh rote Wellenlinie.
- **Beispiel:** Frontmatter/YAML hat falschen Typ (Liste vs String) → wird sofort markiert.

#### C) API/Env
9) **REST Client**
- **Problem:** API‑Tests springen sonst zwischen Postman/Browser/CLI.
- **Nutzen:** `.http`‑Requests im Repo/Workspace, reproduzierbar, reviewbar.
- **Beispiel:** Du testest `/api/chat` read‑only mit Beispiel‑Payload → Ergebnis kannst du im PR‑Report referenzieren.

10) **DotENV**
- **Problem:** `.env` Dateien sind ohne Highlight schwer lesbar, Fehler passieren schnell.
- **Nutzen:** bessere Lesbarkeit lokal; unterstützt “no‑secrets‑in‑repo”.
- **Beispiel:** Du pflegst lokal `.env` und commitest nur `.env.example` (ohne Werte).

#### D) Shell/Security
11) **ShellCheck**
- **Problem:** Bash‑Skripte haben viele “Footguns” (shell pitfalls, EN: footguns) wie falsches Quoting.
- **Nutzen:** robuste `scripts/*` → Gates sind stabiler.
- **Beispiel:** `SC2086` warnt vor unquotierten Variablen → du fixst das, bevor dein Preflight flaky wird.

12) **SonarQube / Snyk / Trivy**
- **Problem:** Sicherheits- und Qualitätsprobleme sollen als “Findings” sichtbar werden, ohne dass du alles manuell liest.
- **Nutzen:** triagebarer Output, Prioritäten, Fix‑Loop.
- **Beispiel:** Trivy findet ein “Secret‑Pattern” in Diff → du stoppst, entfernst es, rotierst Keys (falls geleakt).

---

## Schritt 2 — Minimal‑Konfiguration (konfliktarm)
Ziel: möglichst **wenig Doppelungen** (z. B. nicht 2 Markdown‑Formatter gleichzeitig).

### 2.1 EditorConfig (Format‑Baseline)
Wenn im Repo noch keine `.editorconfig` existiert, nutze diese Baseline (Copy/Paste):
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

**Warum wichtig?** Das reduziert Review‑Noise und macht Agent‑Diffs kleiner.

### 2.2 markdownlint Regeln (start minimal, dann schärfen)
Empfehlung: Projektkonfig, damit Team/Agenten konsistent arbeiten.

Minimalbeispiel:
```jsonc
{
  "MD013": false, // line length: zuerst entspannen
  "MD033": false  // inline HTML: oft nützlich in Docs
}
```

**Warum wichtig?** Zu strenge Regeln am Anfang erzeugen Frust. Du willst zuerst “Signal” (signal: echte Probleme, EN: signal) statt “Noise”.

### 2.3 cSpell (Projektwörterbuch)
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

**Warum wichtig?** cSpell ist ein Findability‑Multiplikator: gleiche Begriffe → bessere Suche → weniger Dubletten.

---

## Schritt 3 — Dein erster “Doc‑Durchlauf” (hands‑on)

### 3.1 Neue Tutorial‑Übungsdatei anlegen
1) Lege eine Datei an: `AgenticSWE_VSCodeSetup_Practice_20260220_V1.md`
2) YAML‑Frontmatter einfügen (Beispiel):
```yaml
---
project: "ASWE Knowledge-OS"
doc_type: reference
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich kann die wichtigsten VS‑Code‑Checks in 5 Minuten ausführen."
tags:
  - layer/handbook
  - artifact/reference
  - topic/gate
---
```
3) Schreibe darunter 5 Bulletpoints: “Was ich nach diesem Setup kann”.

### 3.2 Problems Panel nutzen (dein Kontrollzentrum)
- Öffne **View → Problems**.
- Ziele:
  - markdownlint: 0 Problems (oder bewusst dokumentiert)
  - cSpell: 0 Problems (oder Wörterbuch gepflegt)
  - YAML: 0 Problems

**Warum wichtig?** Problems Panel ist dein “lokaler Gate‑Status” ohne Terminal.

---

## Schritt 4 — Markdown‑Workflow (Markdown All in One + markdownlint)

### 4.1 TOC & Struktur
- Command Palette → `Markdown All in One: Create Table of Contents`
- Danach: einmal Überschriften glätten (H1/H2/H3 konsistent).

### 4.2 Lint‑Fix Loop (5 Minuten)
- Fixe 3–5 markdownlint Findings direkt.
- Wenn eine Regel dich dauerhaft nervt: konfiguriere sie projektlokal statt sie zu ignorieren.

**Mini‑Gate:** “Datei ist reviewbar” (kein offensichtliches Format-Chaos).

---

## Schritt 5 — Front Matter (Keystatic‑kompatible Inhalte)

### 5.1 Warum Frontmatter hier kritisch ist
In Option B werden Writes über Gates kontrolliert. Wenn Frontmatter falsch ist, können Gates später blocken.

### 5.2 Workflow
1) Öffne die `.md` Datei.
2) Front Matter UI → Pflichtfelder prüfen.
3) Tags prüfen: genau 1× `layer/*` + 1× `artifact/*`.

**Gate:** keine ungetaggten Artefakte.

---

## Schritt 6 — YAML Validation (YAML Red Hat) + GitHub Actions (read-only)

### 6.1 YAML: Warum Schemas helfen
YAML ist fehleranfällig, weil Einrückung Bedeutung hat. Schema‑Hints verhindern “silent wrong”.

### 6.2 Actions: Was du damit tust (ohne zu ändern)
- Runs/Logs lesen
- Ursachen aus Logs in eine Fix‑Liste übersetzen

**Stop-&-Ask:** Änderungen an `.github/workflows/**` sind riskant.

---

## Schritt 7 — REST Client + DotENV (API‑Tests ohne Secrets)

### 7.1 Grundregel
Keine Tokens/Keys in Requests oder Repo‑Files. `.env` bleibt lokal.

### 7.2 Minimaler Request (Beispiel)
Lege `requests/portal.http` an (oder lokal):
```http
### Chat read-only
POST {{baseUrl}}/api/chat
Content-Type: application/json

{
  "query": "Liste mir die SSOT-Dateien im Repo und ihre Rolle.",
  "mode": "read_only"
}
```

**Hinweis:** `{{baseUrl}}` setzt du als Environment‑Variable in deinen User‑Settings (oder als Template, wenn `.vscode/**` nicht erlaubt).

---

## Schritt 8 — ShellCheck + Security Tools (Basics ohne Setup-Schmerz)

### 8.1 ShellCheck
- Ziel: Skripte in `scripts/*` (falls vorhanden) werden stabiler.
- Typische Fixes: Quoting, `set -euo pipefail`, saubere Exit Codes.

### 8.2 Security Tools: Welche Finding‑Klassen du grob erwarten kannst
- **SonarQube:** Code‑Qualität + Code‑Smells (smell: Wartbarkeitsproblem, EN: smell), teils sicherheitsnahe Patterns.
- **Snyk:** Dependencies (SCA, dependency vulnerabilities) + teils IaC/Container je nach Setup.
- **Trivy:** Container/IaC/Secrets‑Patterns (schneller Scanner).

**Wichtig:** Ohne konkrete Scan‑Ergebnisse sprechen wir hier nur über Klassen, nicht über konkrete CVEs.

---

## Übung (15 Minuten): “Von 0 auf PR‑ready Doc”
1) Erstelle eine neue Datei in `handbook/portal/` mit sauberem Frontmatter.
2) TOC einfügen.
3) Fixe alle markdownlint Findings.
4) Fixe cSpell Findings oder pflege Wörterbuch.
5) (Optional) REST Client: `/api/chat` read‑only Request ausführen.

**Ergebnis:** eine Datei, die du ohne Bauchschmerzen in einen PR legen kannst.

---

## Agent Prompt Snippets (für Copilot/Codex)

### Prompt 1 — markdownlint Fix in *dieser* Datei
> Bitte behebe alle markdownlint Findings in der aktuell geöffneten Markdown-Datei. Ändere keine Inhalte semantisch, nur Struktur/Abstände/Überschriften. Gib am Ende eine kurze Liste der gefixten Regeln.

### Prompt 2 — cSpell Wörterbuchpflege
> Sammle alle cSpell false positives aus dem Problems Panel für diesen Workspace und schlage eine minimale Ergänzung für `cspell.json` vor. Keine Deaktivierung ganzer Regeln.

### Prompt 3 — Frontmatter korrekt setzen
> Erzeuge YAML‑Frontmatter für dieses Dokument: Pflichtfelder gemäß Tutorial, Tags: genau 1× layer/* und 1× artifact/*; wähle passende topic/* (max 3) ohne neue Tags zu erfinden.

---

## Troubleshooting (Top 7)
1) **Zu viele Lint‑Warnungen:** Regeln minimal starten, dann schärfen.
2) **Markdown Preview ≠ GitHub Rendering:** GitHub‑kompatible Regeln dokumentieren.
3) **cSpell nervt:** Wörterbuch pflegen (userWords), nicht global deaktivieren.
4) **YAML Schema “zu streng”:** nur relevante Schemas aktivieren.
5) **REST Client Variablen unklar:** `{{baseUrl}}` sauber definieren (User‑Settings oder Template).
6) **GitLens langsam:** Blame‑Features selektiv nutzen (große Repos können träger sein).
7) **Security Tools verlangen Login:** Setup ist separat (Stop‑&‑Ask wenn Secrets/CI betroffen).
