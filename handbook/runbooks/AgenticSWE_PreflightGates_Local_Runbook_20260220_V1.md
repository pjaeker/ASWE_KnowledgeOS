---
project: "ASWE Knowledge-OS"
doc_type: runbook
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich führe lokale Preflight-Gates aus, bevor ich einen PR eröffne: Markdown, Spellcheck, YAML, Shell, Security (read-only) und Tag-Validierung."
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
- **SAST:** Statische Codeanalyse (EN: static application security testing).
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

## Nicht-Ziel
- Vollständige Security-Audits (das kommt später über CI).
- Risikoänderungen an `.github/workflows/**`.

## Inputs
- Geänderte Dateien im Working Tree.
- VS Code Extensions installiert (IST).
- Optional: Repo hat Skripte für Tag-/Link-Validation.

## Outputs
- “Gate-Status” pro Check (pass/fail)
- Evidence: Terminal-Logs + kurze Zusammenfassung für PR-Report

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
- Problems Panel → markdownlint Findings = 0
- Quick Fix: “Fix all supported violations”

Projektkonfig:
- `.markdownlint.jsonc` oder `.markdownlint-cli2.jsonc` (empfohlen)

Fallback CLI (wenn markdownlint-cli2 installiert ist):
```bash
npx markdownlint-cli2 "**/*.md"
```

Evidence:
- Screenshot/Copy vom Problems Panel oder CLI Exit Code

---

## Gate 3 — Spellcheck Gate (cSpell)
**Zweck:** Schreibfehler minimieren, Glossar-Terminologie stabil halten.

VS Code:
- Fehler werden unterstrichen + Problems Panel

Projektwörterbuch:
- `cspell.json` (am Root oder `.vscode/`)

Pass-Kriterium:
- nur bewusst akzeptierte Domain-Wörter im Dictionary
- keine “disable” ohne Grund

Evidence:
- kurzer Text: “cSpell clean” + ggf. Wörterbuch-Änderung

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

## Troubleshooting (Top 5)
1. markdownlint nervt bei langen Zeilen → MD013 konfig, aber begründen.
2. cSpell markiert viele Tech-Begriffe → projekt dictionary + Glossar-Export planen.
3. YAML Frontmatter bricht → Einrückung + Listenformat prüfen.
4. ShellCheck meldet “SCxxxx” → Quick Fix + quoting/pipeline nachziehen.
5. Security Tool braucht Auth → Setup in separatem Runbook, keine Tokens im Repo.

## Agent Prompt Snippet
> Prüfe meinen Working Tree auf Preflight Gates: taxonomy/frontmatter, markdownlint, cSpell, YAML, ShellCheck, no-secrets quickscan.  
> Liefere: Gate-Status + minimaler Fix-Plan + PR-Report Evidence Text.
