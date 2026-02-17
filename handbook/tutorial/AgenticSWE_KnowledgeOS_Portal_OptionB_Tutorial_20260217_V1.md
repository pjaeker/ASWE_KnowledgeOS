---
project: AgenticSWE_KnowledgeOS
doc_type: tutorial
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Prinzipielles Verständnis der Option B: Portal/Keystatic + Chat erzeugt Änderungen ausschließlich als PR, abgesichert durch Gates (Glossar↔Taxonomie, Tags, Links)."
tags:
  - layer/handbook
  - artifact/tutorial
  - topic/diataxis
  - topic/ssot
  - topic/gate
  - topic/thin-slice
  - topic/autonomie-leiter
  - topic/secrets
  - topic/stop-condition
  - risk/risk-class/b
  - risk/stop-ask
---

# Tutorial: Option B – Was passiert da eigentlich?

## 1) Lernziel
Nach diesem Tutorial (tutorial, Lernpfad) kannst du:
- den **Datenfluss** verstehen: UI → Patch → PR → Gates → Merge.
- erklären, warum **SSOT (single source of truth, Repo-Wahrheit)** zentral ist.
- die Rolle von **Keystatic (Keystatic, Git-CMS)**, Chat, Backend und **Gates (gate, harte Prüfung)** unterscheiden.
- Option B in kleine Slices (thin slice, kleinster Schritt) mental zerlegen.

## 2) Mentales Modell in 30 Sekunden
Option B ist „Docs-as-Code (docs-as-code, Doku als Git)“ mit einem harten Sicherheitsprinzip:
> **Schreiben ist nur über PR (pull request, Review-Änderung) erlaubt.**  
Alles andere (Chat, UI, Automationen) darf höchstens **Vorschläge** machen.

Damit erreichst du:
- Auditierbarkeit (auditability, nachprüfbar): wer/was/wann geändert hat.
- Reproduzierbarkeit (reproducibility, wiederholbar): gleiche Inputs → gleiche Checks.
- Safety (safety, Schutz): riskante Pfade/Änderungen werden blockiert.

## 3) Bausteine (Komponenten) und ihre Aufgaben

### 3.1 Portal-App
Die Portal-App (z. B. Next.js (Next.js, React-Framework)) hostet:
- `/keystatic`: strukturierte Bearbeitung (Collections/Schemas).
- `/chat`: Chat UI.
- `/api/chat`: read-only Backend (nur lesen/suchen).
- `/api/pr`: write Backend (erzeugt PRs).

### 3.2 Keystatic
Keystatic hilft dir beim **strukturieren Tippen**:
- Eingabemasken statt „freiem Markdown“.
- Pflichtfelder durch Schema (schema, Pflichtfelder).
- Speichert in Git (nicht in einer Datenbank).

Im GitHub-Mode schreibt Keystatic typischerweise:
- Branch (branch, Git-Zweig) → Commit → PR.

### 3.3 Chat (read-only vs write-via-PR)
- Read-only: der Chat liest Repo-Dateien, erklärt, zitiert (innerhalb Repo), macht Vorschläge.
- Write-via-PR: der Chat liefert einen **Diff (diff, Patchtext)**, aber schreibt **nicht** direkt.

### 3.4 /api/pr (PR-Erzeugung)
Der PR-Endpunkt ist die „Schreib-Schleuse“:
1. nimmt Patch + Metadaten an,
2. prüft Write-Gates,
3. erstellt Branch/Commit/PR mit PR-Report.

### 3.5 CI (optional)
CI (continuous integration, Checks) ist der automatische Prüflauf bei PRs.
Wichtig: Aktivieren von `.github/workflows/**` ist **Stop-&-Ask**.

## 4) Der Fluss: von Idee → Merge (mit Gates)

```mermaid
flowchart TD
  U[User in /chat oder /keystatic] --> P[Patch/Diff erzeugen]
  P --> G[Write-Gates (Allowlist/Blocklist/Limits)]
  G -->|pass| PR[PR erstellen + PR-Report]
  G -->|fail| R[Request ablehnen + Fehlertext]
  PR --> CI[CI Gates (optional)]
  CI -->|green| M[Manuelles Merge]
  CI -->|red| F[Fix-PR (klein)]
```

### 4.1 Warum „manuelles Merge“?
Weil Option B „Autonomie mit menschlicher Handbremse“ ist:
- Maschine hilft maximal bis zum PR.
- Mensch entscheidet am Ende.

Das reduziert „Silent Corruption“ (silent corruption, leise Fehler) bei normativen Dokumenten.

## 5) Was sind die harten Gates genau?

### 5.1 Tagging-Gates (Taxonomie)
Pro Datei/Eintrag:
- genau 1× `layer/*`
- genau 1× `artifact/*`
- Tags nur aus Taxonomie-Allowlist

### 5.2 Glossar↔Taxonomie Gate
Regel:
- Jeder Taxonomie-Tag mappt auf genau 1 Glossar-Canonical-Term.
- Konflikt: Glossar gewinnt, Taxonomie wird angepasst oder TODO erzeugt.

### 5.3 Write-Gates (serverseitig)
Ziel: verhindern, dass der Chat „versehentlich“ in riskante Bereiche schreibt.

Beispiele:
- Allowlist: `meta/**`, `handbook/**`, `templates-harness/**`, `decisions-adr/**`
- Blocklist: `.github/workflows/**`, `infra/**`, `secrets/**`, `**/.env*`
- Limits: max Dateien / max Diff-Größe, kein Delete

Stop-Condition (stop-condition, Abbruchregel):
- Wenn ein blockierter Pfad durchkommt → sofort Fix-PR.

## 6) Mini-Walkthrough: Read-only verstehen (ohne Risiko)

### 6.1 Starte lokal (automation-first)
Wenn du die Helper-Scripts bereits im Repo hast:
```bash
bash scripts/optionb/bootstrap_local.sh
```

Was das Script macht:
1. Preflight: Tooling check
2. Gates: repo checks
3. Portal: `npm` install + `npm run dev`

### 6.2 Testfrage an den Chat
Frage im `/chat` z. B.:
- „Welche Tags sind für ein Tutorial erlaubt?“
Erwartung:
- Antwort basiert auf Repo-Dateien (Taxonomie), keine Spekulation.

## 7) Mini-Walkthrough: Write-via-PR verstehen (ohne Merge)

### 7.1 Was du dem PR-Endpunkt gibst
Ein Request enthält typischerweise:
- `files[]`: Pfad + neuer Inhalt ODER Patch
- `pr`: Titel + Body
- `report`: Risk Class + Gates + Rollback

### 7.2 Was der Server daraus macht
1. Validiert Pfade (Allowlist/Blocklist).
2. Prüft Limits (z. B. Diff-Zeilen).
3. Erzeugt Branch, commit, PR.
4. PR enthält PR-Report im Body.

### 7.3 Warum ist das auditierbar?
Weil in Git:
- Diff sichtbar ist,
- Commit-Historie existiert,
- PR-Review möglich ist,
- CI-Logs (falls aktiv) nachprüfbar sind.

## 8) Wo steckt die „Automatisierung statt Click & Type“?

### 8.1 Lokal: Scripts als Ein-Kommando-Pipeline
- `preflight.sh` reduziert Setup-Fragen.
- `run_gates.sh` reduziert „welche Checks nochmal?“
- `bootstrap_local.sh` reduziert „npm/python/git Reihenfolge“

### 8.2 PR-Erstellung per CLI (optional)
Mit GitHub CLI (gh, Kommandozeile) kannst du PRs fast ohne UI klick erstellen:
```bash
gh pr create --title "..." --body-file templates-harness/AgenticSWE_KnowledgeOS_Template_PR_Report_20260217_V1.md
```

### 8.3 Später: CI aktivieren (Stop-&-Ask)
Sobald freigegeben:
- Workflow nach `.github/workflows/ci.yml`
- Dann laufen Gates automatisch pro PR.

## 9) Sicherheitszonen (damit du nicht aus Versehen eskalierst)
Stop-&-Ask (stop-&-ask, Freigabe nötig) gilt für:
- `.github/workflows/**`
- Deploy/Hosting
- Secrets (secret, Geheimnis)
- Kostenintensive Jobs

Rollback (rollback, rückgängig) Minimal:
- PR schließen statt mergen
- Revert-Merge Commit, falls gemerged
- Secrets rotieren (rotate, Schlüsselwechsel), falls kompromittiert

## 10) Nächster Schritt
Wenn du nach dem „Warum/Wie“ jetzt handeln willst:
- Nutze das How-to (how-to, Vorgehen) zur echten Umsetzung:
  - `handbook/howtos/AgenticSWE_KnowledgeOS_Portal_OptionB_HowTo_20260217_V2.md`
