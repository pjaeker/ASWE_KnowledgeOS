---
project: AgenticSWE_KnowledgeOS
doc_type: runbook
version: V2
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Runbook zur Implementierung der Option B PR-Automatisierung (Pull Request Automation, Backend/CI) für das Portal/Keystatic + Chat schreibt per PR."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/knowledge-os
  - topic/ssot
  - topic/governance
  - topic/gate
  - topic/hardgates
  - topic/pr
  - risk/stop-ask
---

# Runbook: Option B – PR-Automatisierung (V2)

## 0) Zielbild
- Portal-App hostet:
  - `/keystatic` (Keystatic GitHub mode, erzeugt PRs statt Direkt-Commits)
  - `/chat` (Chat UI)
  - `/api/chat` (Read-only Assistenz)
  - `/api/pr` (Write-via-PR Endpoint)
- **Schreiben nur via PR (Pull Request, Review-Flow)**:
  - Chat erzeugt Patch/Diff → Server prüft Write-Gates → Branch/Commit → PR → CI-Gates → Merge durch Mensch.

## 1) SSOT-Inputs (normativ)
- Blueprint (Leitplanke): `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
- Glossar (normativ): `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
- Taxonomie (normativ): `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md`
- Tag-Allowlist (maschinenlesbar): `meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json`
- PR-Report Template: `templates-harness/AgenticSWE_KnowledgeOS_Template_PR_Report_20260217_V1.md`
- PR-Report JSON-Schema: `templates-harness/AgenticSWE_KnowledgeOS_Schema_PR_Report_20260217_V1.json`
- Chat Prompt Contract: `meta/AgenticSWE_KnowledgeOS_Portal_ChatPromptContract_20260217_V1.md`
- Tool Policy: `meta/AgenticSWE_KnowledgeOS_Portal_ToolPolicy_20260217_V1.json`

## 2) Outputs (Artefakte)
- Portal-Code: `apps/portal/**`
- Write-Gates: `apps/portal/src/lib/writeGates.ts`
- PR-Backend: `apps/portal/src/app/api/pr/route.ts`
- CI-Gates (Scripts): `scripts/*`
- CI-Workflow Draft (nicht aktiv): `meta/AgenticSWE_KnowledgeOS_CI_Gates_Workflow_Draft_20260217_V1.yml`

## 3) Risiko & Stop-&-Ask (hart)
**Riskant (STOP-&-ASK, explizite Freigabe nötig):**
- Änderungen an `.github/workflows/**`
- Deployment/Infra/Secrets (z. B. Vercel/GH Secrets, GitHub App Keys)
- Migrations / produktive Datenänderungen

**Nicht riskant (erlaubt):**
- Read-only Checks (Lint/Link/Validation)
- Local Dev / Dry-runs ohne Secrets (Mock-Mode)

## 4) Preflight Checks (Pflicht vor Aktivierung)
### 4.1 Lokale Gates müssen grün sein
```bash
python scripts/validate_taxonomy_glossary_mapping.py --glossary meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md --taxonomy meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
python scripts/validate_frontmatter_tags.py --repo-root .
python scripts/check_links.py --repo-root .
python scripts/lint_repo.py --repo-root .
```

### 4.2 Write-Gates dry-run (Policy-Test)
- Prüfe, dass `writeGates.ts`:
  - Allowlist-Pfade: `meta/**`, `handbook/**`, `templates-harness/**`, `decisions-adr/**`
  - Blocklist-Pfade: `.github/workflows/**`, `infra/**`, `secrets/**`, `**/.env*`
  - Limits: `max_files`, `max_diff_lines`, `max_bytes`
  - verbietet Delete/Overwrite in riskanten Bereichen

## 5) Implementierung in Slices (0–3)

### Slice 0 — Gates & Policies (lokal/CI-ready)
**Ziel:** Sicherheitsnetz als harte Regeln (hard gates, harte Regeln) etablieren.

**Steps**
- `scripts/*` sind vorhanden und laufen grün (siehe 4.1).
- Allowlist JSON wird aus Taxonomie generiert (oder geprüft, wenn schon vorhanden).

**Gates**
- Mapping: kein `TBD`, jeder Tag mappt auf genau 1 Glossar-Term (canonical).
- Frontmatter: genau 1× `layer/*` und 1× `artifact/*`.
- Tags: ausschließlich Allowlist.

**DoD**
- Ein lokaler Gate-Run ist als Log im PR-Report dokumentiert (Command + Ergebnis).

---

### Slice 1 — Keystatic GitHub mode (PR via UI)
**Ziel:** Content-Editing im Portal erzeugt PRs statt Direkt-Commits.

**Assumption (best-effort):**
- Keystatic wird im GitHub mode betrieben und benötigt passende GitHub Credentials/Integration.

**Steps (human)**
- Portal lokal starten:
```bash
cd apps/portal
npm i
npm run dev
```
- `/keystatic` öffnen und prüfen:
  - Neue Einträge/Änderungen führen zu einem PR (oder Branch + PR) statt Direkt-Commit.

**Gates**
- Keystatic darf nur in Allowlist-Pfaden schreiben (durch Repo-Policy + Review).

**DoD**
- 1 Test-PR aus Keystatic existiert (nicht gemerged), inkl. PR-Report.

---

### Slice 2 — Chat read-only
**Ziel:** Chat liest Repo-Kontext (SSOT) und antwortet, ohne zu schreiben.

**Steps**
- `/chat` laden.
- `/api/chat` nutzt ausschließlich Read-Tools (keine PR-Erstellung).
- Optional: Dokumentiere in PR-Report: Beispiel-Query und Ergebnis.

**Gates**
- Tool-Policy: Read-only.
- Kein Write-Endpunkt wird vom Chat aufgerufen.

**DoD**
- Reproduzierbarer Prompt + Antwort sind im PR-Report referenziert.

---

### Slice 3 — Chat write via PR (Backend/Automation)
**Ziel:** Chat erzeugt PRs mit harter Policy und PR-Report.

#### 3.1 GitHub App (oder Token) – Setup (STOP-&-ASK Bereich)
**Stop-&-Ask:** Das Einrichten einer GitHub App + Secrets ist riskant.

**Best-effort Permissions (prüfen im GitHub UI):**
- Repository permissions:
  - Contents: Read & Write
  - Pull requests: Read & Write
  - Metadata: Read
- Optional: Checks/Actions read, wenn CI-Status gelesen werden soll.

**Secrets/ENV (Beispiel, im Portal Hosting setzen)**
- `GITHUB_APP_ID`
- `GITHUB_APP_PRIVATE_KEY` (PEM)
- `GITHUB_INSTALLATION_ID`
- `GITHUB_REPO` (z. B. `owner/repo`)
- `OPENAI_API_KEY`
- `OPENAI_VECTOR_STORE_ID` (falls `file_search` via Vector Store genutzt wird)

> **Wichtig:** `.env` Dateien gehören zur Blocklist und dürfen nie per Chat/PR geschrieben werden.

#### 3.2 /api/pr – Behavior (Write-Gates)
- Request enthält:
  - `target_branch` (Default z. B. `main`)
  - `changes[]` (Pfad + new content oder unified diff)
  - `pr_title`, `pr_body` (muss PR-Report enthalten)
- Server prüft:
  - Pfade: Allowlist/Blocklist
  - Limits: Größe/Dateien/Diff-Lines
  - PR-Body: PR-Report Pflichtfelder (Risk Class, Files touched, Rollback)

#### 3.3 Aktivierung CI (STOP-&-ASK Bereich)
- Workflow Draft liegt in `meta/…Workflow_Draft…yml`.
- Aktivierung heißt: nach `.github/workflows/ci.yml` übernehmen.

**DoD**
- Chat erzeugt 1 PR, der:
  - nur Allowlist-Pfade anfasst
  - PR-Report enthält
  - lokale Gates bestehen (oder CI, falls aktiviert)
  - nicht automatisch gemerged wird

## 6) PR-Report (Pflichtstruktur)
Im PR-Body muss mindestens enthalten sein:
- Risk Class: A/B/C
- Files touched (Liste)
- Gates executed + Ergebnis
- Rollback Plan (wie revert/close/rotate)
- SSOT references (Blueprint/Glossary/Taxonomy)

Nutze als Basis:
- `templates-harness/AgenticSWE_KnowledgeOS_Template_PR_Report_20260217_V1.md`

## 7) Failure Modes & Rollback
### 7.1 Policy-Verletzung (Write-Gates)
- Erwartet: Request wird abgelehnt (HTTP 4xx) + Reason wird geloggt.
- Rollback: keiner nötig (keine PR erstellt).

### 7.2 PR erstellt, Gates rot
- PR offen lassen, Fix-Commit per PR (kein Force-Push).
- Alternativ Rollback: PR schließen.

### 7.3 Secret Leak Verdacht (kritisch)
- Sofort:
  - PR schließen
  - betroffene Secrets rotieren
  - Audit: wer/was hat Zugriff, wann wurde gepusht?

## 8) Abnahme (Definition of Done)
- [ ] Slice 0: alle lokalen Gates grün
- [ ] Slice 1: Keystatic erzeugt PR statt Direkt-Commit
- [ ] Slice 2: Chat read-only funktioniert
- [ ] Slice 3: Chat write-via-PR erzeugt PR mit PR-Report, Write-Gates greifen
- [ ] Glossar↔Taxonomie Kohärenz ist nachweislich (Gate-Run) erfüllt

## 9) Evidence (Audit Trail)
- PR Links (Keystatic Test-PR, Chat Test-PR)
- Gate Logs (Commands + Output)
- (optional) CI Run URLs, wenn CI aktiviert

