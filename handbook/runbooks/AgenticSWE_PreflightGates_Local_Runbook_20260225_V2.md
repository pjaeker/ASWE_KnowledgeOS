---
project: "ASWE Knowledge-OS"
doc_type: runbook
version: "V2"
date: "2026-02-25"
status: draft
audience: ["human", "llm"]
intent: "Ich führe lokale Preflight-Gates aus, bevor ich einen PR eröffne: Baseline-Konfigs (Editor/Lint/Spell), Markdown, Spellcheck, YAML, Shell, Security (read-only) und Tag-Validierung – mit phasenweiser Durchsetzung."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/gate
  - topic/observability
  - topic/secrets
---

# Preflight Gates (lokal) – Runbook für Option B

## Begriff-Quickstart

- **Preflight:** Vorab-Checks lokal, bevor du PR/CI triggerst (EN: preflight).
- **Triage:** Findings sortieren nach Dringlichkeit und Fixbarkeit (EN: triage).
- **Baseline-Konfig:** Repo-Defaults für Editor/Linter/Spell (EN: baseline config).
- **Durchsetzung:** Wann Regeln “blocken” dürfen (EN: enforcement).
- **SAST:** Statische Codeanalyse (EN: static app security testing).
- **SCA:** Abhängigkeits-/Library-Scan (EN: software composition analysis).
- **IaC:** Infrastructure-as-Code Scans (EN: IaC).
- **Container Scan:** Scan von Images/Lockfiles (EN: container scan).
- **Secrets Scan:** Suche nach Credentials (EN: secrets scan).

## Ziel

Du willst vor jedem PR schnell sicherstellen:

- keine offensichtlichen Style/Qualitätsprobleme
- keine Tag-/Frontmatter-Brüche
- keine versehentlichen Secrets
- Security-Tools liefern “read-only” Signal, ohne dass du CI anfassen musst
- Diffs bleiben klein (kein Repo-weiter Legacy-Cleanup)

## Nicht-Ziel

- Vollständige Security-Audits (das kommt später über CI).
- Risikoänderungen an `.github/workflows/**`.
- Repo-weites Reformat/Auto-Fix (Legacy wird separat geplant).

## Inputs

- Geänderte Dateien im Working Tree.
- VS Code Extensions installiert (IST).
- Optional: Repo hat Skripte für Tag-/Link-Validation.

## Outputs

- “Gate-Status” pro Check (pass/fail)
- Evidence: Terminal-Logs + kurze Zusammenfassung für PR-Report

---

## Baseline-Konfiguration (Repo) – SSOT für lokale Checks

### Ziel-Pfade (intended)

Diese Dateien liegen **im Repo-Root**, damit VS Code/Tools sie automatisch finden:

- `.editorconfig` – Format-Basics (Zeilenende, Einrückung, Whitespace)
- `.markdownlint.jsonc` – Markdown-Regeln (toleranter Start)
- `cspell.json` – Spellcheck-Regeln (DE+EN, Gitignore respektieren)
- `meta/dictionaries/project-words.txt` – Projekt-Wortliste (stabile Begriffe)

### Prinzip: “Apply global, enforce scoped”

- **Apply (repo-weit anwenden):** Die Konfigs gelten repo-weit als Standard.
- **Enforce (scoped durchsetzen):** Fixes/Blocker nur für *geänderte Dateien* oder *gezielte Ordner*.
- **Legacy/Noise:** Repo-weite Findings sind erwartbar; werden als **Legacy/Scope** dokumentiert, nicht “heimlich” wegformatiert.

---

## Phasenmodell (phased rollout) – wie wir Strenge erhöhen, ohne Diff-Explosion

### Phase 0 — Baseline einführen (jetzt)

- Konfig-Dateien hinzufügen (Root + Dictionary).
- **Targeted clean** nur in einem kleinen Scope (z. B. `meta/state/*.md`).
- Repo-weite Findings bleiben “known noisy” → als Scope-Issue dokumentieren.

### Phase 1 — Durchsetzung auf “changed files”

- Lint/Spell/Checks laufen nur auf Dateien, die der PR verändert.
- Ziel: neue Debt vermeiden, ohne Legacy zu reparieren.

### Phase 2 — Durchsetzung auf “curated zones”

- Zusätzlich zu “changed files” wird in kuratierten Bereichen Strenge erhöht (z. B. `meta/**`, `layer/handbook/**`).
- Legacy bleibt außerhalb dieser Zonen erstmal tolerant.

### Phase 3 — Legacy-Reduktion (bewusst, eigener Workstream)

- Ordnerweise Cleanup mit klarer DoD (z. B. `docs/`, dann `layer/…`).
- Optional: CI-Gates schrittweise schärfen.

---

## Gate 0 — Scope Gate (diff sanity)

**Zweck:** Prüfen, ob der Diff “wie geplant” ist.

Commands:

```bash
git status
git diff --stat
```

Pass-Kriterium:

- Nur erwartete Dateien (keine massiven Format-Änderungen)

---

## Gate 0.5 — Baseline-Konfig Gate (tool pickup)

**Zweck:** Sicherstellen, dass VS Code/Extensions die Repo-Konfigs tatsächlich nutzen.

Checks (VS Code):

- `.editorconfig` wird erkannt (EditorConfig Extension aktiv).
- markdownlint nutzt `.markdownlint.jsonc`.
- cSpell nutzt `cspell.json` und `meta/dictionaries/project-words.txt`.

Evidence:

- kurzer PR-Report Satz: “Baseline configs picked up by VS Code (Problems Panel reflects repo settings).”

---

## Gate 1 — Taxonomy/Frontmatter Gate

**Zweck:** Jedes Dokument hat:

- YAML Frontmatter vorhanden
- genau 1× `layer/*` und 1× `artifact/*`
- alle Tags in Allowlist der Taxonomie

Primary (wenn Repo-Skript existiert):

```bash
python scripts/validate_frontmatter_tags.py --repo-root .
```

Fallback (manuell, schnell):

- Öffne Taxonomie-Datei
- Suche in den neuen Docs nach `tags:` und prüfe auf:
  - 1× layer
  - 1× artifact
  - nur bekannte Tags

Evidence:

- Script output oder Notiz “manually validated”

---

## Gate 2 — Markdownlint Gate

**Zweck:** Struktur/Style konsistent, GitHub-Rendering kompatibel.

VS Code:

- Problems Panel → markdownlint Findings = 0 (im Scope)
- Quick Fix: “Fix all supported violations” (im Scope)

Projektkonfig (SSOT):

- `.markdownlint.jsonc` (Root)

Fallback CLI (wenn markdownlint-cli2 installiert ist):

```bash
npx markdownlint-cli2 "**/*.md"
```

**Scoping (Phase 1, empfohlen):** nur geänderte Dateien linten:

```bash
git diff --name-only --diff-filter=ACMRT origin/main...HEAD -- "*.md" | xargs -r npx markdownlint-cli2
```

Evidence:

- Screenshot/Copy vom Problems Panel oder CLI Exit Code

---

## Gate 3 — Spellcheck Gate (cSpell)

**Zweck:** Schreibfehler minimieren, Glossar-Terminologie stabil halten.

VS Code:

- Fehler werden unterstrichen + Problems Panel

Projektkonfig (SSOT):

- `cspell.json` (Root)
- `meta/dictionaries/project-words.txt` (Projekt-Wortliste)

Pass-Kriterium:

- echte Tippfehler korrigiert
- nur bewusst akzeptierte Domain-Wörter im Dictionary
- kein “disable” ohne Grund

Evidence:

- kurzer Text: “cSpell clean” + ggf. Wörterbuch-Änderung

### Gate 3a — cSpell ↔ Glossar Kopplung (governance)

**Regel:** Glossar ist normativ; cSpell ist Frühwarnsystem.

Wenn cSpell ein Wort markiert:

1. **Tippfehler?** → korrigieren (nicht whitelisten).
2. **Kanonischer Glossar-Begriff?** → in `project-words.txt` aufnehmen (stabil).
3. **Nicht im Glossar, aber sollte rein?** → Glossar-TODO anlegen (statt sofort whitelisten).
4. **Unerwünschtes Synonym?** → bewusst *nicht* whitelisten (damit es sichtbar bleibt).

Optional (später): `flagWords` in `cspell.json` nutzen, um “verbotene Synonyme” aktiv zu markieren (nur nach Glossar-Policy).

### Option: Automatisierte Kopplung (glossary sync) – späterer Workstream

**Ziel:** Glossar-Canonical-Terms + erlaubte Abkürzungen automatisch in ein cSpell-Dictionary exportieren.

Vorschlag (später):

- Script: `scripts/sync_cspell_from_glossary.py`
- Input: neueste `AgenticSWE_KnowledgeOS_Glossary_YYYYMMDD_Vx.md`
- Output (generated): `meta/dictionaries/glossary-words.txt` (nicht manuell editieren)
- cSpell referenziert dann **zwei** Dictionaries:
  - `project-words.txt` (hand-curated, klein)
  - `glossary-words.txt` (generated, aus Glossar)

---

## Gate 4 — YAML Gate (Red Hat)

**Zweck:** YAML ist syntaktisch valide, Schemas greifen.

VS Code:

- Problems Panel → YAML Findings = 0
- Bei `frontmatter` YAML: besonders auf Einrückung achten.

Optional CLI:

```bash
python -c "import yaml,sys; yaml.safe_load(sys.stdin.read())" < file.yml
```

Evidence:

- Problems Panel clean oder CLI Output

---

## Gate 5 — ShellCheck Gate (Bash)

**Zweck:** Bash-Fußangeln vermeiden (word splitting, quoting, pipefail etc.).

VS Code:

- “ShellCheck: Lint Current Document”
- run mode kann onType/onSave/manual sein

Optional CLI (wenn shellcheck installiert):

```bash
shellcheck scripts/*.sh
```

Evidence:

- Problems Panel clean oder CLI Exit Code

---

## Gate 6 — No-Secrets Quickscan (read-only)

**Zweck:** Schnell prüfen, ob “aus Versehen” Tokens/Keys committed werden könnten.

Regel: **Keine Secrets ausgeben!**  
→ Wir suchen nur nach typischen Mustern und prüfen Treffer manuell.

Command (Beispiele, konservativ):

```bash
git diff | grep -nE "(api_key|apikey|secret|token|bearer|authorization:)" || true
```

Wenn Treffer:

- Stop → prüfen, ob es Platzhalter sind
- ggf. ersetzen durch `{TOKEN}` / `${TOKEN}` (je nach Kontext)
- echte Secrets sofort entfernen und rotieren

Evidence:

- “no-secrets quickscan: no hits” oder “hits reviewed, placeholders only”

---

## Gate 7 — Security “Signal Checks” (Klassenebene)

Du hast drei Tools. Ohne konkrete Findings bleibt es auf Klassenebene.

### Trivy (FS/IaC/Container/Secrets)

Typische Finding-Klassen:

- Container vulnerabilities (OS packages)
- IaC misconfigurations (Terraform/K8s)
- Secrets in files

Beispiel (wenn CLI vorhanden, read-only):

```bash
trivy fs --scanners vuln,misconfig,secret .
```

### Snyk (SCA/Code/IaC/Container)

Typische Finding-Klassen:

- Vulnerable dependencies (SCA)
- Code issues (SAST-like)
- IaC issues

Beispiel (wenn CLI vorhanden):

```bash
snyk test
```

### SonarQube (Code quality/SAST-like)

Typische Finding-Klassen:

- Bugs / Code smells
- Security hotspots
- Vulnerabilities (regelbasiert)

Nutzung in VS Code ist oft “Connected Mode” abhängig von Zugang; ohne Zugang nur offline Hinweise.

Pass-Kriterium (für Preflight):

- keine neuen offensichtlichen High-Severity Issues eingeführt
- oder: Issue dokumentiert + TODO/Follow-up PR geplant

Evidence:

- CLI Output (gekürzt) oder “read-only reviewed” + Link auf Report (wenn vorhanden)

---

## Fix-Loop (wenn ein Gate failt)

1. **Triage**: Was ist fail? (markdown, tags, secrets, security)
2. **Fix**: klein halten, nur betroffene Stelle
3. **Re-run**: betroffener Gate + ggf. Abhängigkeiten
4. **Evidence update**: PR-Report aktualisieren

---

## Troubleshooting (Top 7)

1. markdownlint nervt bei langen Zeilen → MD013 konfig, aber begründen.
2. markdownlint “findet alles” → Phase 1 scoping nutzen (changed files).
3. cSpell markiert viele Tech-Begriffe → `project-words.txt` klein pflegen; Glossar-Sync später.
4. cSpell Whitelist wächst zu schnell → “nicht im Glossar?” → Glossar-TODO statt whitelisten.
5. YAML Frontmatter bricht → Einrückung + Listenformat prüfen.
6. ShellCheck meldet “SCxxxx” → Quick Fix + quoting/pipeline nachziehen.
7. Security Tool braucht Auth → Setup in separatem Runbook, keine Tokens im Repo.

## Agent Prompt Snippet
>
> Prüfe meinen Working Tree auf Preflight Gates: scope, baseline config pickup, taxonomy/frontmatter, markdownlint, cSpell (inkl. Glossar-Regel), YAML, ShellCheck, no-secrets quickscan.  
> Liefere: Gate-Status + minimaler Fix-Plan + PR-Report Evidence Text.
