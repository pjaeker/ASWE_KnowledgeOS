---
project: "ASWE Knowledge-OS"
doc_type: how-to
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich nutze Copilot Agent Mode und/oder Codex, um kontrolliert kleine PRs zu erzeugen (write-via-PR) – inkl. Gates und PR-Report."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/governance
  - topic/human-approval
  - topic/thin-slice
---

# How-to: Write-via-PR mit Copilot (Agent Mode) & Codex – kontrolliert und review-freundlich

## Begriff-Quickstart
- **Copilot Agent Mode:** Modus, in dem Copilot Aufgaben in Schleifen plant/ändert/prüft (EN: agent mode).
- **Codex:** Modell/Agent für größere Code- und Diff-Erzeugung (EN: Codex).
- **Patch:** Kleine Änderungsmenge, die als Diff reviewbar ist (EN: patch).
- **PR-Report:** Standardisierter PR-Text inkl. Evidence und Rollback (EN: PR report).

## Ziel
Du willst KI für Produktivität nutzen, aber so, dass:
- keine „wild“ verteilten Änderungen passieren,
- PRs klein, testbar und reviewbar bleiben,
- Gates und Stop-&-Ask eingehalten werden.

## Nicht-Ziel
- Vollautonomie (Autopilot) ohne menschliche Freigabe.
- Änderungen an CI/CD, Deploy, Secrets.

## Voraussetzungen
- Repo im VS Code geöffnet.
- SSOT gelesen (Glossar/Taxonomie/Option-B-Runbook).
- Installierte Extensions sind aktiv (markdownlint, cSpell, GitLens, …).

---

## Schrittfolge (minimaler Standard-Loop)

### Schritt 1 — Auftrag sauber formulieren (1–3 Sätze)
Beispiel:
- „Erstelle ein How-to für REST Client, das `/api/chat` und `/api/pr` testet, ohne Secrets zu committen.“
- Constraints:
  - nur `handbook/**` (und ggf. `meta/**` als Template), keine `.github/**`
  - YAML Frontmatter: genau 1× `layer/*` und 1× `artifact/*`
  - Tags nur aus Taxonomie
  - keine Secrets

**Gate:** Sobald du merkst, dass du `.github/**` oder Secrets anfassen würdest → Stop-&-Ask.

---

### Schritt 2 — Copilot: PLAN-Phase (Plan + Patch-Plan + Gates)
**Copilot Prompt (PLAN)**
> Plane die Umsetzung als thin slices (max 3 Dateien).  
> Nenne: Files, Inhalte, Gates, Stop-Conditions.  
> Prüfe Tag-Auswahl gegen Taxonomie (wenn unsicher: TBD + TODO statt raten).

Erwartetes Ergebnis:
- 1 Slice, z. B. eine Datei in `handbook/portal/…HowTo…`
- Gates: markdownlint, cSpell, Tag-Validation, Link-Check (wenn verfügbar)

---

### Schritt 3 — Copilot/Codex: CHANGE-Phase (kleine Änderungen)
Regeln:
- maximal 1–3 Dateien
- keine Umformatierung ganzer Ordner
- keine „refactors“ ohne Not

**Praktisch in VS Code**
- Lass Copilot Textblöcke erzeugen (Frontmatter + Kapitel).
- Du steuerst über das Diff: GitLens “Changes” + Editor Diff-View.

---

### Schritt 4 — VERIFY-Phase (Gates laufen lassen)
Minimal:
- markdownlint: Problems Panel = 0 (oder dokumentierte Ausnahmen)
- cSpell: nur echte Fehler, Wörterbuch gepflegt
- Frontmatter/Tags: 1× layer + 1× artifact, Allowlist

Optional (wenn Repo-Skripte existieren):
```bash
python scripts/validate_frontmatter_tags.py --repo-root .
python scripts/check_links.py --repo-root .
python scripts/lint_repo.py --repo-root .
```

**Evidence:** Terminal-Output + kurze Zusammenfassung.

---

### Schritt 5 — DELIVER-Phase (PR erstellen + PR-Report)
Erzeuge den PR und nutze dieses Template als PR-Body.

## PR-Report Template (copy/paste)

```md
### Summary
- <1–3 bullets: Was wurde verbessert?>

### Scope / Files touched
- <Liste der Dateien>

### Risk class
- <risk/risk-class/a|b|c> + kurze Begründung

### Gates executed (evidence)
- markdownlint: <pass/fail> (Output/Exit Code)
- cSpell: <pass/fail> (Output/Notizen)
- taxonomy tags: <pass/fail> (wie geprüft?)
- link-check: <pass/fail> (wenn vorhanden)
- optional security read-only: <pass/fail> (nur falls gelaufen)

### Rollback plan
- Revert PR / Git revert Commit
- Falls Secret-Leak-Verdacht: PR schließen + Secrets rotieren (siehe Policy)

### SSOT refs
- Glossar: <Dateiname>
- Taxonomie: <Dateiname>
- Option-B Runbook: <Dateiname>
```

---

## Agent-Patterns (prompts, die funktionieren)

### Pattern 1: “Nur Skeleton”
> Erzeuge nur Skeletons: Frontmatter + Überschriften + Checklisten, keine langen Texte.  
> Danach stoppe.

### Pattern 2: “Finde Konflikte”
> Prüfe, ob markdownlint und Markdown All in One Konflikte erzeugen (z. B. TOC vs. Heading Style).  
> Schlage eine minimale Regelanpassung vor.

### Pattern 3: “No-Secrets Guardrail”
> Finde Stellen, wo Tokens/Keys versehentlich im Text landen könnten.  
> Ersetze sie durch Platzhalter und füge einen Hinweis zur lokalen `.env` Nutzung ein.

---

## Troubleshooting (Top 5)
1. **Copilot erzeugt zu große Diffs** → neu starten mit “max 1 Datei” + “no refactor”.
2. **Tags geraten falsch** → Taxonomie öffnen, nur Allowlist; notfalls TBD + TODO.
3. **Markdownlint meckert über Layout** → Regeln minimal konfigurieren, nicht „disable all“.
4. **cSpell markiert Glossar-Begriffe** → Wörterbuch erweitern, Glossar-Export planen.
5. **Du brauchst CI-Änderung** → Stop-&-Ask; dann separate PR.

## Fallback (Plan B)
Ohne Agent:
- Du schreibst Skeleton + Steps selbst.
- VS Code Extensions liefern Diagnosen.
- PR-Report trotzdem nutzen (Standardisierung).

