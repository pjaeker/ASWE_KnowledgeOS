---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V1
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Ich nutze Codex/Copilot in VS Code, um Diagramme (D2/Mermaid) samt Embed und Preflight-Evidence kontrolliert zu erzeugen (thin slice)."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/gate
  - topic/thin-slice
  - topic/human-approval
  - topic/actionability
---

# How-to: Diagramme mit Codex in VS Code erzeugen, rendern und einbetten

## Ziel

> **🟦 Ziel:** Du lässt Codex ein Diagramm + die Doku-Änderung als kleinen, reviewbaren Slice erzeugen und führst lokal die Preflight-Gates aus.

## Scope

- In scope:
  - 1 Diagramm (Mermaid oder D2) + 1 Doc-Update (Embed).
  - Nur changed files linten/spellchecken.
- Out of scope:
  - Repo-weites Reformatting.
  - CI/GitHub Actions Anpassungen.

> **🟧 Achtung:** Codex darf nicht „am ganzen Repo aufräumen“. Wir steuern Scope und DoD.

## Voraussetzungen

- VS Code im Repo-Root.
- Copilot/Codex verfügbar (Agent Mode optional).
- Extensions aktiv: markdownlint, cSpell, EditorConfig.
- Für D2-render: D2 CLI installiert.

## Inputs / Outputs

| Feld | Beschreibung |
| --- | --- |
| Inputs | Diagrammziel + 5–10 Bulletpoints Spec |
| Outputs | `diagrams/src/*.d2` oder Mermaid-Block + optional `diagrams/rendered/*.svg` + Doc-Embed |
| Constraints | keep diffs small; nur scope; keine secrets |
| Evidence | PR-Report Satz: Gates + Render geprüft |

## Rezept

### 1) Spec liefern (du → Codex)

Gib Codex diese Inputs:

- Diagrammzweck (1 Satz)
- Actors/Komponenten
- Datenobjekte
- Trust-Boundary (falls relevant)
- 1–2 Failure Modes
- Ziel-Dateien:
  - `diagrams/src/<name>.d2`
  - optional: `diagrams/rendered/<name>.svg`
  - `<doc>.md` (Embed-Stelle)

### 2) Codex Prompt (PLAN → CHANGE → VERIFY → DELIVER)

Nutze diesen Prompt als Copy/Paste:

```text
PLAN
- Create a thin slice: 1 diagram + 1 doc update.
- Files:
  - diagrams/src/<name>.d2 (or Mermaid block in <doc>.md)
  - diagrams/rendered/<name>.svg (if D2 render is used)
  - <doc>.md embed snippet
- Constraints:
  - keep diffs small
  - no repo-wide reformatting
  - do not touch .github/** or unrelated folders
  - do not introduce secrets
- DoD:
  - embed renders in Markdown preview
  - markdownlint clean for changed files
  - cSpell: no typos; add stable tokens to meta/dictionaries/project-words.txt if needed
  - provide short Evidence text for PR report

CHANGE
- Implement the diagram source (D2 or Mermaid) based on the spec.
- If D2: add the render command as a comment in the doc and update diagrams/rendered/<name>.svg (or leave as TODO if render cannot be run).
- Update <doc>.md with a relative embed link or Mermaid block.

VERIFY
- List the changed files.
- Point out any markdownlint/cSpell hotspots in the changed files.

DELIVER
- Provide a concise PR report body: summary, scope, gates, rollback.
```

> **🟩 Check:** Codex schlägt nur Änderungen in den benannten Dateien vor.

### 3) Render (nur bei D2)

Wenn Codex nur Source erzeugt hat:

```bash
d2 diagrams/src/<name>.d2 diagrams/rendered/<name>.svg
```

### 4) Preflight Gates (lokal, changed files)

1. VS Code Problems Panel:
   - markdownlint Findings in changed files fixen.
   - cSpell: Tippfehler fixen; stabiler Jargon ins Wörterbuch.
1. No-Secrets Quickscan:

```bash
git diff | findstr /i "api_key apikey secret token bearer authorization:"
```

> **🟩 Check:** Scope clean, keine Blocker.

## Verifikation

- Markdown Preview zeigt Diagramm.
- Rendered SVG (falls genutzt) ist vorhanden und verlinkt.
- `git diff --name-only` enthält nur die erwarteten Dateien.

## Rollback

- `git restore <file>` für einzelne Files.
- Oder: `git reset --hard` (nur wenn du sicher bist und nichts Wichtiges uncommitted ist).

## Variationen

- Mermaid-only: kein Render-Schritt, schneller, aber weniger „polished“.
- draw.io / Excalidraw: nur für „Hero“-Diagramme, wenn WYSIWYG nötig ist.

## Failure Modes (Top 3)

- Codex ändert zu viele Dateien:
  - Fix: Prompt härter (nur diese Pfade), Änderungen verwerfen und erneut.
- Diagramm ist zu komplex:
  - Fix: Spec reduzieren (weniger Nodes), 1 Diagramm pro Idee.
- cSpell Noise:
  - Fix: stabile Tokens ins Wörterbuch, Glossar-TODO statt Whitelist-Spam.

## See also

- Tutorial: Diagramm-Workflow: `AgenticSWE_Diagramme_Tutorial_20260226_V2.md`
- How-to: Write-via-PR mit Copilot & Codex: `AgenticSWE_WriteViaPR_CopilotCodex_HowTo_20260220_V1.md`
- Policy: Diátaxis-Stilregeln: `AgenticSWE_Docs_Diataxis_Policy_20260226_V2.md`

## DoD (Quick)

- Änderungen sind thin slice (diagram + doc embed).
- markdownlint clean für changed files.
- cSpell: keine Tippfehler.
- No-secrets quickscan clean.
- Evidence Text liegt bereit.
