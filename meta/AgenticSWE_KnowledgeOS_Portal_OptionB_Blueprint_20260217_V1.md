---
project: AgenticSWE_KnowledgeOS
doc_type: portal_blueprint
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Blueprint + Runbook zur prinzipiellen Umsetzung von Option B: ChatGPT im Portal/Keystatic schreibt per PR – mit normativer Nutzung von Glossar & Taxonomie."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/knowledge-os
  - topic/ssot
  - topic/governance
  - topic/gate
  - topic/secrets
---

# Option B Blueprint: ChatGPT im Portal/Keystatic, schreibt per PR

## 0) Zielbild (SSOT)
**Ziel:** Ein schreibfähiges Doku-Portal, in dem du (und später ggf. weitere Editor:innen) Inhalte über **Keystatic** pflegst und eine eingebettete **ChatGPT-Assistenz** Änderungen **nur als PR (Pull Request)** ins Repo schreibt.

**Warum passt das zum Knowledge-OS?**
- **Docs-as-Code** (Doku wie Code: PRs, Reviews, CI-Gates) minimiert Drift und erhöht Verifizierbarkeit.
- **Glossar + Taxonomie** sind normativ und werden als **Harzgates** (hard gates) in UI + CI durchgesetzt.

**Single Source of Truth (SSOT):** Repo-Dateien; kein “Chat-only Wissen”.

---

## 1) Ausgangsbasis (aus Repo / Anhang)
Diese Blueprint baut explizit auf:
- `meta/AgenticSWE_KnowledgeOS_Glossary_20260213_V6.md` (normative Begriffe)
- `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260213_V1.md` (normative Tags + Regeln)
- `AgenticSWE_KnowledgeOS_ArchiveSynthesis_20260213_V1.md` (Layer-Modell + Templates/Harness-Idee)
- `README.md` (Repo-Struktur / Einstieg)

---

## 2) Minimal-Entscheidung (ADR-Lite, embedded)
> Du kannst das später als eigene Datei in `/decisions-adr/` auslagern (artifact/adr-lite).

**ADR-ID:** ADR-PORTAL-OPTION-B  
**Status:** draft  
**Kontext:** Knowledge-OS braucht eine schreibfähige Oberfläche, die konsistente Metadaten (Tags/Refs/Status) erzwingt und Änderungen auditierbar macht.  
**Optionen:**
- A) Nur github.dev + manuell ChatGPT copy/paste
- B) Keystatic + Portal + eingebettetes ChatGPT, das per PR schreibt (diese Option)
- C) Voll-CMS ohne Repo-PRs (wird verworfen)
**Entscheidung:** B  
**Konsequenzen:**
- Secrets/Token-Handling (Credentials) wird zum Kernrisiko → strikte Gates + Allowlist.
- “Write” erfolgt ausschließlich über PR-Flows, nie direkt auf `main`.
**Revisit-When:** Wenn der PR-Flow zu langsam wird oder die UI nicht genug Struktur erzwingt.

---

## 3) Architektur (Komponenten & Datenflüsse)

### 3.1 Komponenten
1) **Portal-App** (z. B. Next.js)  
   - rendert Doku (SSG (Static Site Generator) oder SSR (Server-Side Rendering))
   - hostet `/keystatic` (Keystatic Admin UI)
   - hostet `/chat` (Chat UI)

2) **Keystatic (GitHub mode)**  
   - schreibt/liest Inhalte aus dem GitHub-Repo
   - erzwingt Felder/Schemas in Collections

3) **Chat-Service (Backend-Route)**
   - ruft **OpenAI Responses API** auf (Tool-Calling)
   - nutzt **file_search** gegen einen Vektor-Speicher (vector store) für Retrieval
   - ruft **GitHub App**-APIs auf, um PRs zu erstellen

4) **GitHub App (Installation Token)**
   - minimal notwendige Repo-Permissions
   - erstellt Branch/Commit/PR, optional PR-Kommentare (PR Report)

5) **CI (GitHub Actions)**
   - prüft: Frontmatter/Tags, Glossar↔Taxonomie Konsistenz, Link-Check, Build

### 3.2 High-Level Flow (Mermaid)
```mermaid
flowchart LR
  U[User in Portal] --> K[Keystatic UI (/keystatic)]
  U --> C[Chat UI (/chat)]
  K -->|read/write content| GH[(GitHub Repo)]
  C -->|request| API[Portal Backend /api/chat]
  API -->|Responses API| OAI[(OpenAI)]
  OAI -->|file_search| VS[(Vector Store)]
  API -->|create branch/commit/pr| GHA[GitHub App Token]
  GHA --> GH
  GH --> CI[CI Gates]
  CI -->|pass| MERGE[Merge]
  CI -->|fail| PRFIX[Fix via Chat/Keystatic]
```

---

## 4) Glossar & Taxonomie: harte Kohärenzregeln (in UI + CI)

### 4.1 Sofortiger Konsistenz-Fix (Taxonomie ↔ Glossar)
In der Taxonomie ist `layer/templates-harness` aktuell `maps_to_canonical_term = TBD`, obwohl das Glossar bereits den canonical term **Templates & Harness** enthält.
- **Patch:** setze `maps_to_canonical_term = Templates & Harness` und entferne den zugehörigen TODO.

### 4.2 Regeln, die das Portal erzwingen muss
Aus Taxonomie V1 folgen diese **UI-Guards** (drift-guards):
- Jede Seite/Eintrag hat **genau 1** `layer/*` und **genau 1** `artifact/*`.
- Keine nicht-erlaubten Tags (Allowlist).
- Keine “a|b|c” ohne Disambiguation (nur via `risk/risk-class/*` oder `topic/research-tier/*`).

### 4.3 Minimale Erweiterungs-Policy (für neue Tags/Begriffe)
**Default:** Keine neuen `topic/*`-Tags für Tools nötig.  
Wenn Findability leidet, dann **kontrollierte Erweiterung**:

**Gate “NEW_TAG”:**
1) Neuer Tag vorgeschlagen → muss in Taxonomie-Liste ergänzt werden.  
2) Tag muss auf **genau einen** Glossar canonical term mappen.  
3) Coverage-Test (15–20 Archetypen) darf nicht brechen.  
4) CI muss grün sein.

**Gate “NEW_TERM”:**
1) Neuer canonical term (1-Satz Definition) im Glossar.  
2) See-also / Refs setzen (mind. source_ref oder decision_ref).  
3) Wenn Tag dazu nötig: NEW_TAG Gate oben.

---

## 5) Option-B MVP in 4 Thin Slices (klein, prüfbar)

### Slice 0 — Repo-Gates (ohne Portal)
**Ziel:** Du kannst schon jetzt per PR validieren, ob Glossar/Taxonomie sauber bleiben.

**Implement:**
- `scripts/validate_frontmatter_tags.(js|py)`  
  - prüft: genau 1 layer + 1 artifact, nur erlaubte Tags
- `scripts/validate_taxonomy_glossary_mapping.(js|py)`  
  - prüft: jedes Tag `maps_to_canonical_term` existiert im Glossar
  - erlaubt nur explizit `TBD` + TODO-Flag (temporär)

**CI Job:** `docs-gates.yml` (GitHub Actions)
- runs: lint + tag validation + build (optional)

**Gate:** merge nur bei grünem CI.

---

### Slice 1 — Keystatic GitHub mode (schreibfähig, aber ohne Chat)
**Ziel:** Strukturierte Pflege der Kernartefakte (Glossar/Taxonomie/Handbook).

**Implement:**
- Keystatic config:
  - Collections: `glossary_terms`, `taxonomy_tags`, `handbook_pages`, `decisions_adr`
  - Feldtypen: select/multiselect für `tags` basierend auf Taxonomie-Allowlist
  - Pflichtfelder: `status`, `intent`, `audience`, `refs`

**Gate:** Keystatic darf nur definierte Pfade schreiben (Allowlist).

---

### Slice 2 — ChatGPT Lesen (read-only) mit file_search
**Ziel:** Chat im Portal kann Fragen zum Repo beantworten, ohne zu schreiben.

**Implement:**
- Ingestion: lade ausgewählte Pfade in OpenAI Vector Store:
  - `meta/**`, `handbook/**`, `templates-harness/**`, `decisions-adr/**`
  - optional: `blackboard/**` nur wenn du Drafts bewusst suchbar machen willst
- Responses API mit Tool `file_search` + `include=["file_search_call.results"]` für Debug.

**Stop-Condition:** Wenn der Chat Inhalte “erfindet” oder falsche Normen ausgibt → Index/Prompt/Gates nachschärfen.

---

### Slice 3 — ChatGPT Schreiben als PR (write via GitHub App)
**Ziel:** Chat kann **nur** PRs erzeugen, keine Direktwrites.

**Implement (Backend):**
- Custom Tools (function calling):
  - `repo_get_file(path, ref)` (read)
  - `repo_put_files(changes[])` (write staged)
  - `repo_create_pr(title, body, base, head)` (PR)
- Branch-Policy:
  - Branchname: `chat/<run_id>/<short_slug>`
  - Commitmessage: `chat: <summary> (run_id=<...>)`

**Write-Gates (serverseitig):**
- Allowlist Pfade: `meta/**`, `handbook/**`, `templates-harness/**`, `decisions-adr/**`
- Blocklist: `.github/workflows/**`, `secrets/**`, `infra/**` (riskant)
- Max changed files: z. B. 10
- Max diff size: z. B. 3000 lines
- Require “PR Report” Template in PR body

**Human Approval:** Merge bleibt manuell.

---

## 6) Sicherheits- und Risiko-Design (Stop-&-Ask)
**Risikoquellen:** Tokens/Keys, PR-Write, Workflow-Dateien, kostenintensive API-Calls.

**Policy:**
- Secrets nie im Repo, nie in Logs.
- GitHub App Token: minimal scopes, kurzlebig (installation token).
- OpenAI API Key: nur serverseitig; Rate-Limits + Budget-Caps.
- “Stop-&-Ask”: Wenn Chat eine Änderung außerhalb Allowlist vorschlägt, muss er stoppen und nur einen Plan liefern.

---

## 7) Prompt-Contract (für die eingebettete Assistenz)
**System-Regeln (aus Sicht des Portals):**
1) **SSOT:** Repo-Dateien sind Wahrheit; nutze file_search/Repo-Reads statt Raten.  
2) **Glossar normativ:** Bei Begriffs-Konflikt → Glossar gewinnt; sonst TODO/Disambiguation.  
3) **Taxonomie normativ:** Tags nur aus Allowlist; genau 1 layer + 1 artifact.  
4) **Output:** Bei Schreibwunsch → (a) Diff/Patch, (b) PR-Titel, (c) PR Report, (d) betroffene Tags.  
5) **Stop-&-Ask:** Bei Secrets/Workflows/Deployment/externen Systemen → nur Plan + Frage nach Freigabe.

---

## 8) Checklisten (Gates) – direkt operational

### Gate: “Doc-Write via Chat” (serverseitig, hart)
- [ ] Alle Dateien innerhalb Allowlist-Pfade
- [ ] Keine `.github/workflows/**` betroffen
- [ ] Keine Secrets im Diff (simple regex + GitHub Secret Scanning ergänzen)
- [ ] Frontmatter: 1× layer + 1× artifact, Tags in Allowlist
- [ ] Taxonomie↔Glossar Mapping ok (kein neues TBD ohne TODO)
- [ ] PR Report vorhanden (Risk Class, Files touched, Rollback)

### Gate: “Taxonomie-Change”
- [ ] Jeder neue Tag hat Glossar-Mapping
- [ ] Coverage-Test (Archetypen) passt
- [ ] Keine Disambiguation-Regel verletzt (A/B/C)

---

## 9) Konkrete Datei-/Ordner-Planung (für dein Repo)
> Dateinamen im Repo dürfen gern SemVer/ADR-IDs nutzen; wenn du strikt bei `Projektname_YYYYMMDD_Vx` bleiben willst, nutze die Varianten in Klammern.

**P0 (Sofort):**
- `meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md` (Patch: templates-harness mapping fix)
- `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V1.md` (dieses Dokument)

**P1 (Entscheidungslog):**
- `decisions-adr/ADR-PORTAL-OPTION-B_20260217_V1.md`

**P2 (CI Gates):**
- `.github/workflows/docs-gates.yml`
- `scripts/validate_frontmatter_tags.js`
- `scripts/validate_taxonomy_glossary_mapping.js`

**P3 (Portal):**
- `apps/portal/` (Next.js o. ä.)
- `apps/portal/keystatic.config.ts`
- `apps/portal/app/keystatic/route.ts` (oder äquivalent)
- `apps/portal/app/api/chat/route.ts`

---

## 10) Referenzen (URLs als Code, damit copy/paste-freundlich)
```text
Keystatic GitHub mode: https://keystatic.com/docs/github-mode
Keystatic Cloud pricing: https://keystatic.com/docs/cloud
OpenAI Responses API: https://platform.openai.com/docs/api-reference/responses/tutorials-and-guides
OpenAI File search tool: https://platform.openai.com/docs/guides/tools-file-search
OpenAI “how we use your data” (API): https://platform.openai.com/docs/models/how-we-use-your-data
GitHub REST PR endpoints: https://docs.github.com/rest/pulls/pulls
GitHub App auth (installation token): https://docs.github.com/en/apps/creating-github-apps/authenticating-with-a-github-app/authenticating-as-a-github-app-installation
```

---

## 11) Definition of Done (DoD) für “Option B – prinzipiell umgesetzt”
- [ ] Keystatic GitHub mode läuft und kann definierte Collections schreiben.
- [ ] Chat im Portal kann Repo-Kontext via file_search beantworten (read-only).
- [ ] Chat kann eine Änderung als PR erstellen; CI-Gates blocken invaliden Output.
- [ ] Glossar+Taxonomie Gates sind aktiv (UI + CI).
- [ ] Dokumentierte Stop-&-Ask Regeln für riskante Bereiche (Secrets/Workflows/Deploy).
