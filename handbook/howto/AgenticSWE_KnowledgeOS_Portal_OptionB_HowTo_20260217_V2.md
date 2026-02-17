---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V2
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Kleinschrittige Schritt-für-Schritt Anleitung zur Umsetzung von Option B (Chat schreibt ausschließlich per PR), mit Automation-first und harten Gates."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/knowledge-os
  - topic/ssot
  - topic/gate
  - topic/secrets
  - topic/stop-condition
  - risk/risk-class/c
  - risk/stop-ask
---

# How-to: Option B – PR-Automatisierung umsetzen (kleinschrittig, automation-first)

## TL;DR (einmal kopieren, dann nur noch ausführen)
```bash
# 1) Branch anlegen
git checkout -b optionb/slice0-gates

# 2) (Falls du das Deliverables-ZIP nutzt) entpacken und Pfade beibehalten
# unzip AgenticSWE_KnowledgeOS_OptionB_Deliverables_20260217_V1.zip -d .

# 3) Gates ausführen (ein Kommando)
bash scripts/optionb/run_gates.sh

# 4) Portal lokal starten
bash scripts/optionb/bootstrap_local.sh
```

> **Stop-&-Ask (stop-&-ask, Freigabe nötig):** `.github/workflows/**`, Deploy, Secrets im Hosting, produktive Migrationen. Diese Anleitung schreibt dort **nicht automatisch** hin.

---

## 0) Voraussetzungen (nur 1×)

### 0.1 Tools prüfen (automatisiert)
Kopiere/committe zuerst die Scripts aus diesem How-to (siehe Abschnitt 2). Danach:

```bash
bash scripts/optionb/preflight.sh
```

**Muss vorhanden sein**
- `git`
- `python` (>=3.10 empfohlen)
- `node` + `npm`
- optional: `gh` (GitHub CLI (gh, Kommandozeile)) für PR/Secrets

**Stop-Condition (stop-condition, Abbruchregel):**
- Wenn `preflight.sh` rot ist → erst Tooling fixen, dann weiter.

### 0.2 Repo-SSOT prüfen
```bash
git status
git rev-parse --show-toplevel
```

Erwartung:
- Du bist im Repo-Root.
- Keine uncommitted riskanten Änderungen.

---

## 1) Normen wählen: neuestes Glossar & Taxonomie (Pflicht)

> Regel: höchste Versionsnummer `Vx`, bei Gleichstand neuestes Datum.

### 1.1 Neueste Dateien automatisch ermitteln
```bash
python scripts/optionb/pick_latest_norms.py
```

Erwartung:
- Ausgabe zeigt `GLOSSARY=...` und `TAXONOMY=...`.

### 1.2 Wenn die Auswahl nicht stimmt
- Datei-Naming prüfen (Datum/`Vx`).
- Im Zweifel: Fix-PR (klein) erstellen, der nur die Normdateien richtig versioniert/ablegt.

---

## 2) Slice 0: Gates lokal lauffähig machen (automation-first)

### 2.1 Einmalig: Helper-Scripts hinzufügen
Lege folgende Dateien an (oder kopiere sie, falls sie bereits existieren):

- `scripts/optionb/preflight.sh`
- `scripts/optionb/run_gates.sh`
- `scripts/optionb/pick_latest_norms.py`
- `scripts/optionb/bootstrap_local.sh`

> Diese Scripts reduzieren Tipparbeit und standardisieren die Schritte.

### 2.2 Gates in 1 Kommando ausführen
```bash
bash scripts/optionb/run_gates.sh
```

Was passiert:
- Glossar↔Taxonomie Mapping wird validiert.
- Frontmatter: genau 1× `layer/*` und 1× `artifact/*` pro Datei.
- Tags müssen aus der Taxonomie-Tag-Liste kommen.
- Links werden geprüft (relativ, repo-intern).
- Basis-Lint läuft.

**Stop-Condition (stop-condition, Abbruchregel):**
- Wenn ein Gate rot ist: **nur** Fix-PR (klein) erstellen, danach erst Slice 1.

### 2.3 Fix-PR (klein) möglichst ohne Tippen erstellen
Wenn du `gh` installiert hast:

```bash
git add -A
git commit -m "Fix: gates"
gh pr create --title "Fix: gates" --body-file templates-harness/AgenticSWE_KnowledgeOS_Template_PR_Report_20260217_V1.md
```

Ohne `gh`:
- Push + PR im GitHub Web UI (so wenig Klicks wie möglich; 1 PR pro Fix).

---

## 3) Slice 1: Keystatic (Keystatic, Git-CMS) im GitHub mode

### 3.1 Portal lokal starten (automatisiert)
```bash
bash scripts/optionb/bootstrap_local.sh
```

Erwartung:
- `http://localhost:3000/keystatic` erreichbar.

### 3.2 Minimale Click-Liste (nur das, was nicht automatisierbar ist)
> Ziel: Keystatic soll **Branch/PR** erzeugen, nicht direkt in `main` schreiben.

1. Öffne `/keystatic`.
2. Login via GitHub.
3. Keystatic‑GitHub‑Mode aktivieren (Repo auswählen).
4. App installieren (nur dieses Repo).
5. Test: ändere eine Kleinigkeit (z. B. Runbook-Titel) → **Branch/PR** entsteht.

**Stop-Condition:**
- Wenn Keystatic direkt in `main` committet → abbrechen, Konfiguration korrigieren.

### 3.3 Keystatic Collections/Schemas prüfen
Erwartung:
- Collections existieren für: Glossar, Taxonomie, ADR, Runbook.
- Pflichtfelder sind enforced (Schema (schema, Pflichtfelder)).

---

## 4) Slice 2: Chat read-only (SSOT-Query, kein Write)

### 4.1 ENV minimal setzen (lokal)
In `apps/portal/.env.local` (Environment Variable (ENV, Umgebungsvariable)):
- `OPENAI_API_KEY=...`
- optional: `OPENAI_VECTOR_STORE_ID=...`

**Automation-Tipp**
```bash
cp apps/portal/.env.example apps/portal/.env.local
# dann nur OPENAI_API_KEY eintragen
```

### 4.2 Read-only verifizieren
1. Öffne `/chat`.
2. Frage nach einer Repo-Regel (z. B. Tagging-Konvention).
3. Erwartung: Antwort stützt sich auf Repo-Dateien, keine „Spekulation“.

**Stop-Condition:**
- Wenn der Chat versucht zu schreiben/PRs zu erzeugen → Policy/Route fixen.

---

## 5) Slice 3: Chat write-via-PR (nur über /api/pr)

> **Stop-&-Ask:** GitHub App + Installation Token + Secrets im Hosting sind riskant.

### 5.1 GitHub App (GitHub App, Bot-Identität) vorbereiten
Minimal benötigt (als Secrets im Deployment, nicht im Repo):
- `GITHUB_APP_ID`
- `GITHUB_APP_PRIVATE_KEY` (PEM)
- `GITHUB_INSTALLATION_ID`
- `GITHUB_REPO=owner/repo`

**Minimale Permissions (best-effort):**
- Contents: Read/Write
- Pull requests: Read/Write
- Metadata: Read

### 5.2 Write-Gates aktiv testen (ohne PR)
1. Sende an `/api/pr` einen Patch gegen einen **blockierten** Pfad (z. B. `.github/workflows/x`).
2. Erwartung: 4xx + Erklärung „blocked path“.
3. Sende einen Patch gegen einen **allowlisted** Pfad (z. B. `handbook/**`).
4. Erwartung: Pass oder PR-Erstellung (je nach Mode).

**Stop-Condition:**
- Wenn `.github/workflows/**` durchgeht → sofort Gate-Fix (kleiner PR).

### 5.3 PR-Report Pflicht prüfen
- PR-Body muss enthalten:
  - Risk Class (A/B/C)
  - Files touched
  - Gates executed + Ergebnis
  - Rollback Plan

Wenn fehlt → Request ablehnen.

---

## 6) CI aktivieren (optional, riskant)

**Der Workflow liegt als Draft unter `meta/**`.**

> **Stop-&-Ask:** Übernahme nach `.github/workflows/**` nur mit expliziter Freigabe.

Wenn freigegeben:
1. Draft kopieren nach `.github/workflows/ci.yml`.
2. PR öffnen.
3. CI muss grün sein.
4. Merge manuell.

---

## Definition of Done (DoD)
- [ ] Slice 0: `bash scripts/optionb/run_gates.sh` ist grün
- [ ] Slice 1: Keystatic erzeugt Branch/PR (kein Direktwrite auf `main`)
- [ ] Slice 2: Chat ist read-only
- [ ] Slice 3: Chat erzeugt PRs nur innerhalb Allowlist + PR-Report Pflicht
- [ ] Glossar↔Taxonomie Mapping ist gate-validiert

---

## Minimaler Rollback (rollback, Rückgängig)
- Schließe PRs statt zu mergen.
- Revert-Merge Commit, falls gemerged.
- Rotieren (rotate, Schlüsselwechsel) von kompromittierten Secrets.

