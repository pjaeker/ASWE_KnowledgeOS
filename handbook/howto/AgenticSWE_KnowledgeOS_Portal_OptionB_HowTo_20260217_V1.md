---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Detaillierte Schritt-für-Schritt Umsetzung der Option B: Portal/Keystatic + Chat schreibt ausschließlich per PR ins Repo (Docs-as-Code, auditierbar)."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/ssot
  - topic/gate
  - topic/secrets
  - risk/risk-class/c
  - risk/stop-ask
---

# How-to: Option B – PR-Automatisierung im Portal/Keystatic umsetzen

## Ziel
Du setzt **Option B** so um, dass:
- Inhalte im Portal über **Keystatic (Keystatic, Git-CMS)** bearbeitet werden können.
- Der Chat Änderungen **nur** als **PR (pull request, Review-Änderung)** ins Repo bringt.
- **SSOT (single source of truth, Repo-Wahrheit)** gilt: keine „Chat-only“ Wahrheit.
- **Gates (gate, harte Prüfung)** erzwingen Glossar↔Taxonomie‑Kohärenz und Tag-Regeln.

## Output (was am Ende existiert)
- Portal-App (z. B. **Next.js (Next.js, React-Framework)**) mit Routen:
  - `/keystatic` (Keystatic Admin UI)
  - `/chat` (Chat UI)
  - `/api/chat` (Read-only Backend)
  - `/api/pr` (Write-via-PR Backend)
- Repo-Gates als Scripts + optional aktivierte **CI (continuous integration, Checks)**.
- Write-Gates serverseitig: Allowlist/Blocklist/Limits + PR-Report Pflicht.

## Inputs (SSOT)
- Blueprint: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V1.md`
- Glossar: `meta/AgenticSWE_KnowledgeOS_Glossary_*_V*.md` (höchste Vx)
- Taxonomie: `meta/AgenticSWE_KnowledgeOS_Taxonomy_*_V*.md` (höchste Vx)

> Wenn einzelne Dateien noch nicht im Repo liegen (z. B. aus dem Deliverables-ZIP), kopiere sie zuerst in die passenden Pfade und erstelle dafür einen PR.

---

## Schritt 0 — Preflight: Normen & Tags in Ordnung bringen (Pflicht)

### 0.1 Neueste Glossar/Taxonomie Versionen bestimmen
**Regel:** höchste Versionsnummer `Vx`, bei Gleichstand neuestes Datum im Dateinamen.

**Pragmatischer Ablauf**
1. Liste Kandidaten:
   ```bash
   ls -1 meta/AgenticSWE_KnowledgeOS_Glossary_*_V*.md 2>/dev/null || true
   ls -1 meta/AgenticSWE_KnowledgeOS_Taxonomy_*_V*.md 2>/dev/null || true
   ```
2. Wähle jeweils die neueste Datei nach der Regel (ggf. manuell).

**Optional (maschinenlesbar):** Auswahl-Snippet
```bash
python - <<'PY'
import re, glob, os, datetime
def pick(pattern):
  best=None
  for p in glob.glob(pattern):
    m=re.search(r'_(\d{8})_V(\d+)\.', os.path.basename(p))
    if not m: 
      continue
    d=int(m.group(1)); v=int(m.group(2))
    key=(v,d,p)
    if best is None or key>best[0]: best=(key,p)
  return best[1] if best else None
print("GLOSSARY:", pick("meta/AgenticSWE_KnowledgeOS_Glossary_*_V*.md"))
print("TAXONOMY:", pick("meta/AgenticSWE_KnowledgeOS_Taxonomy_*_V*.md"))
PY
```

### 0.2 Taxonomie-Allowlist prüfen (kein „Phantom-Tagging“)
**Stop-Condition (stop-condition, Abbruchregel):** Wenn du bereits Dokumente hast, deren `tags:` nicht in der Taxonomie-Liste vorkommen → erst Fix‑PR, dann Feature‑PR.

Prüfe exemplarisch:
- Blueprint Frontmatter `tags:` gegen Taxonomie `Allowed values`/Tag‑Liste.
- Runbook/ADR Frontmatter `tags:` gegen Taxonomie.

> Hinweis: In frühen Stubs ist es normal, dass einzelne Tags noch nicht existieren. Entscheide dann: Tag entfernen **oder** Taxonomie erweitern **mit Glossar‑Mapping**.

### 0.3 Kohärenz-Fix: `layer/templates-harness` Mapping schließen (empfohlen)
In Taxonomie V1 ist `layer/templates-harness` noch `TBD`. Für harte Gates ist das langfristig ein Problem.

**Fix als kleiner PR (Risk A):**
1. Glossar erweitern um canonical term „Templates & Harness“ (1 Satz, refs).
2. Taxonomie: `layer/templates-harness -> Templates & Harness` mappen.
3. (Optional) Coverage-Beispiele aktualisieren.

---

## Schritt 1 — Slice 0: Repo-Gates lokal lauffähig machen

> Ziel: Du kannst **vor** Portal/Chat jeden PR mit Gates validieren.

### 1.1 Gate-Scripts hinzufügen
Lege (oder kopiere aus dem Deliverables‑Bundle) nach `scripts/` mindestens an:
- `validate_frontmatter_tags.py` (Frontmatter-Regeln)
- `validate_taxonomy_glossary_mapping.py` (Mapping‑Regeln)
- `check_links.py` (relative Links)
- `lint_repo.py` (Basis‑Lint)

### 1.2 Gates lokal ausführen
```bash
python scripts/validate_frontmatter_tags.py --repo-root .
python scripts/validate_taxonomy_glossary_mapping.py --repo-root .
python scripts/check_links.py --repo-root .
python scripts/lint_repo.py --repo-root .
```

**Erwartung**
- Alle Checks laufen „grün“ (Exit-Code 0).

**Wenn rot**
- Fix-PR (klein): nur die minimal notwendigen Dateien anpassen.
- Erst danach mit Slice 1 weitermachen.

---

## Schritt 2 — Slice 1: Keystatic GitHub mode (PR via UI)

### 2.1 Portal-App hinzufügen (Next.js)
Erzeuge oder kopiere `apps/portal/**` in dein Repo.

Minimaler lokaler Start:
```bash
cd apps/portal
npm i
npm run dev
```

### 2.2 Keystatic auf GitHub mode stellen
In `keystatic.config.ts`:
- `storage.kind = 'github'`
- `storage.repo = 'OWNER/REPO'`
- optional `branchPrefix = 'keystatic/'` (Branch-Scope)

### 2.3 GitHub App Setup über Keystatic UI
1. Öffne `http://localhost:3000/keystatic`
2. Klicke „Sign in with GitHub“ / „Create GitHub App“
3. Installiere die App für das Repo (write access)

Keystatic erzeugt dabei ENV-Variablen (Beispiele):
- `KEYSTATIC_GITHUB_CLIENT_ID`
- `KEYSTATIC_GITHUB_CLIENT_SECRET`
- `KEYSTATIC_SECRET`
- `NEXT_PUBLIC_KEYSTATIC_GITHUB_APP_SLUG`

**Gate**
- Keystatic darf nur in Allowlist‑Pfaden schreiben (z. B. `meta/**`, `handbook/**`, `templates-harness/**`, `decisions-adr/**`).

**DoD**
- Eine Änderung über Keystatic erzeugt einen Branch/PR (oder Branch, aus dem du PR erstellst), kein Direkt‑Commit auf `main`.

---

## Schritt 3 — Slice 2: Chat read-only (ohne PR-Erstellung)

### 3.1 OpenAI Backend vorbereiten
Der Chat ruft die **Responses API (Responses API, Modellaufruf)** auf und nutzt Retrieval (z. B. `file_search`).

**Secrets (credential, Zugangsdaten)**
- `OPENAI_API_KEY` **nur** serverseitig (Hosting‑Secrets), niemals im Repo.
- Optional: `OPENAI_VECTOR_STORE_ID` (vector store, Suchindex).

### 3.2 Read-only Policy erzwingen
- `/api/chat` darf **keinen** PR-Endpunkt aufrufen.
- Tool-Policy: nur `repo_read`/`file_search`‑artige Tools, keine Writes.

**DoD**
- Chat beantwortet Repo-Fragen korrekt (mit SSOT‑Bezug) und kann nichts schreiben.

---

## Schritt 4 — Slice 3: Chat write via PR (Backend)

> **STOP-&-ASK (stop-&-ask, explizite Freigabe):** GitHub App/Secrets/Workflow-Aktivierung sind riskant.

### 4.1 GitHub App für PR‑Writes
Lege eine **GitHub App (GitHub App, Bot-Identität)** an, die PRs erstellen darf.

**Minimal-Permissions (best-effort)**
- Contents: Read & Write
- Pull requests: Read & Write
- Metadata: Read

Du brauchst typischerweise:
- `GITHUB_APP_ID`
- `GITHUB_APP_PRIVATE_KEY` (PEM)
- `GITHUB_INSTALLATION_ID`
- `GITHUB_REPO` (z. B. `owner/repo`)

### 4.2 /api/pr implementieren (Write-via-PR)
Backend-Verhalten (Pflicht):
1. Validiert Request gegen **Write-Gates**:
   - Allowlist‑Pfade (z. B. `meta/**`, `handbook/**`, `templates-harness/**`, `decisions-adr/**`)
   - Blocklist‑Pfade (z. B. `.github/workflows/**`, `infra/**`, `secrets/**`, `**/.env*`)
   - Limits: max Dateien / max Diff‑Lines / max Bytes
   - kein Delete/Force‑Overwrite in riskanten Bereichen
2. Erst danach:
   - Branch anlegen
   - Commit(s) schreiben
   - PR öffnen

### 4.3 PR-Report Pflicht (auditierbar)
Jeder PR muss im Body einen **PR-Report (pr report, Audit-Text)** enthalten:
- Risk Class (A/B/C)
- Files touched
- Gates executed + Ergebnis
- Rollback Plan (revert/close/rotate)
- SSOT-Refs (Blueprint/Glossar/Taxonomie)

### 4.4 CI aktivieren (optional, riskant)
> **STOP-&-ASK:** Änderungen an `.github/workflows/**` nur nach expliziter Freigabe.

Ablauf:
1. Workflow als Draft unter `meta/**` vorbereiten.
2. Nach Freigabe: Kopie nach `.github/workflows/ci.yml`.
3. PR erstellen, Gates laufen lassen, erst dann mergen.

**DoD**
- Chat erzeugt 1 PR, der:
  - nur Allowlist‑Pfad anfasst
  - PR‑Report enthält
  - Gates bestehen (lokal oder CI)
  - nicht automatisch gemerged wird

---

## Troubleshooting (häufige Fehlerbilder)

### Keystatic OAuth / Redirect
- Symptome: `redirect_uri` Fehler oder 401 nach Login.
- Fix: Callback URLs in GitHub App ergänzen; ENV in Deployment exakt setzen.

### Write-Gates blocken unerwartet
- Ursache: Pfad-Mismatch (z. B. `meta/...` vs `Meta/...`), Limits zu klein, PR‑Body ohne PR‑Report.
- Fix: Regel präzisieren; zuerst Fix‑PR, dann weiter.

### Taxonomie/Glossar Gate rot
- Ursache: Tag ohne Mapping, Mapping auf nicht existierenden canonical term, doppeltes `layer/*` oder `artifact/*`.
- Fix: **Glossar zuerst** korrigieren, dann Taxonomie, dann Dokumente.

---

## Abnahme (Definition of Done)
- [ ] Slice 0: lokale Gates grün
- [ ] Slice 1: Keystatic GitHub mode erzeugt PR/Branch statt Direktwrites
- [ ] Slice 2: Chat read-only funktioniert (SSOT-konform)
- [ ] Slice 3: Chat write-via-PR erzeugt PR mit PR-Report und Write-Gates greifen
- [ ] Glossar↔Taxonomie Kohärenz ist nachweislich (Gate-Run) erfüllt

---

## Refs (nur für Implementierung)
```text
Keystatic GitHub mode: https://keystatic.com/docs/github-mode
Keystatic Next.js install: https://keystatic.com/docs/installation-next-js
OpenAI Responses API: https://platform.openai.com/docs/api-reference/responses/create
```
