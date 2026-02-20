---
project: "ASWE Knowledge-OS"
doc_type: explanation
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich verstehe den Unterschied zwischen Linting, Formatierung, Validierung und Gates und kann Tool-Findings sinnvoll triagieren."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/consistency
  - topic/gate
  - topic/observability
---

# Qualitäts-Basics: Linting, Formatierung, Validierung & Gates (Warum das wichtig ist)

## Kontext: Warum du überhaupt diese “Qualitätswerkzeuge” brauchst
In einem Docs‑as‑Code Workflow (docs-as-code: Doku wie Code behandeln, EN: docs as code) ist der PR dein zentraler Review‑Ort. Ohne frühe Checks passiert typischerweise:
- Reviewer diskutieren Stil statt Inhalt.
- Kleine Fehler (kaputte Links, falsche YAML‑Einrückung) werden erst spät entdeckt.
- Agenten/Automationen erzeugen große Diffs, die schwer reviewbar sind.

Die Lösung ist eine kleine, stabile Werkzeugkette:
- **Linting** → Stil/Regeln
- **Formatierung** → Layout/Konsistenz
- **Validierung** → Struktur/Schemas
- **Gates** → harte Stopps

Das Ziel ist nicht “Perfektion”, sondern **Verifizierbarkeit** (verifiability: überprüfbar, EN: verifiability) und weniger Reibung.

---

## 1) Linting (linting, rule checks) vs. Formatierung (formatting, auto layout)

### Linting: “Ist das nach Regeln ok?”
Linting prüft Regeln und meldet Abweichungen.
- Beispiel Markdown: fehlende Leerzeile vor Überschrift, inkonsistente Listen.
- Beispiel Shell: unquotierte Variablen, die bei Leerzeichen kaputt gehen.

**Warum wichtig?** Linting ist wie ein “Junior Reviewer”, der stumpfe Fehler immer findet.

### Formatierung: “Mach’s automatisch gleichförmig.”
Formatierung verändert Text, um ein Layout zu erzwingen.
- Beispiel: Einrückung in YAML auf 2 Spaces.
- Beispiel: abschließende Newline am Dateiende.

**Warum wichtig?** Formatierung reduziert Diff‑Noise und Merge‑Konflikte.

> Faustregel: Linter sagen dir **was** falsch ist; Formatter machen es **automatisch gleich**.

---

## 2) Validierung (validation, schema check)
Validierung prüft, ob Struktur und Datentypen stimmen.

### YAML/Schema
- YAML ist syntaktisch “leicht”, aber semantisch fragil.
- Schemas verhindern: “falsches Feld”, “falscher Typ”, “Liste vs String”.

### Frontmatter/Taxonomie
In deinem Knowledge‑OS ist die Taxonomie normativ: Tags müssen aus einer erlaubten Liste kommen.
- Pflicht: genau 1× `layer/*` und 1× `artifact/*`.

**Warum wichtig?** Nur so können Gates und Agent‑Routing deterministisch funktionieren.

---

## 3) Gates (gate, hard check) und Preflight (preflight, local gates)

### Gate: “Rot = Stop”
Ein Gate ist eine harte Bedingung. In Option B wird damit verhindert, dass der Chat/Agent “ungeprüft schreibt”.

### Preflight: “Mach die wichtigsten Gates lokal”
Preflight ist die lokale Vorprüfung, damit du den PR nicht als Debug‑Umgebung missbrauchst.

**Typische Preflight‑Gates**
- markdownlint grün
- cSpell grün
- YAML grün
- ShellCheck grün
- No‑secrets Quickscan
- Tag‑Validation (Taxonomie)

---

## 4) Findings triagieren (triage, prioritize)
Ein Finding ist nur ein Signal. Entscheidend ist die Triage:

1) **Relevanz**: Blockiert es ein Gate?
2) **Schweregrad**: Security‑Leak > Build‑Fail > Stil.
3) **Scope**: Fix minimal und lokal halten (thin slice).
4) **Evidence**: Nach Fix Re‑Run und Ergebnis dokumentieren.

---

## 5) Security-Scanner: Welche Klassen von Problemen sie typischerweise abdecken
Ohne konkrete Scan‑Outputs bleiben wir bewusst auf Klassenebene.

### SonarQube (static analysis, code quality)
Typisch:
- Code‑Smells (smell: Wartbarkeitsproblem, EN: smell)
- Bugs (potenzielle Laufzeitfehler)
- Security‑Patterns (z. B. unsichere APIs) je nach Rule‑Set

### Snyk (dependency scanning, SCA)
Typisch:
- Dependency‑Vulnerabilities in `package-lock.json`/`pnpm-lock.yaml`
- (Optional) IaC/Container je nach Produkt/Config

### Trivy (fast scanner, container/iac/secrets)
Typisch:
- Container‑CVEs in Images
- IaC‑Fehlkonfigurationen
- Secret‑Patterns (nicht perfekt, aber schneller Alarm)

**Wichtig:** “Tool sagt ok” ist kein Beweis für “sicher”. Es ist ein Sicherheitsnetz, kein Garant.

---

## 6) Warum das für Agenten besonders wichtig ist
Agenten sind schnell. Geschwindigkeit ohne Gates erzeugt:
- große Diffs
- schwer reviewbare PRs
- riskante Writes

Mit Gates und Preflight wird der Agent steuerbar:
- Agent schlägt Änderungen vor
- du siehst sofort lokale Findings
- du lässt nur “grüne” Patches in PRs

---

## 7) Praxis-Check: Wie du merkst, dass dein Setup gut ist
- Problems Panel ist dein “Dashboard”.
- Diffs sind klein und fokussiert.
- PR‑Review diskutiert Inhalt/Entscheidungen, nicht Format.
- “Broken links / kaputtes YAML / Tippfehler” sind seltene Ausnahmen.
