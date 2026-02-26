---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V2
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Ich nutze Codex/Copilot in VS Code, um Diagramme (D2/Mermaid/draw.io/Excalidraw) samt Embed und Preflight-Evidence kontrolliert zu erzeugen (thin slice) und halte dabei die richtigen Extensions pro Variante aktiv."
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
  - 1 Diagramm (Mermaid oder D2 oder draw.io oder Excalidraw) + 1 Doc-Update (Embed).
  - Nur changed files linten/spellchecken.
- Out of scope:
  - Repo-weites Reformatting.
  - CI/GitHub Actions Anpassungen.

> **🟧 Achtung:** Codex darf nicht „am ganzen Repo aufräumen“. Wir steuern Scope und DoD.

## Voraussetzungen

- VS Code im Repo-Root geöffnet.
- Copilot/Codex verfügbar (Agent Mode optional).
- Baseline-Configs im Repo vorhanden: `.editorconfig`, `.markdownlint.jsonc`, `cspell.json`.

## VS Code Extensions – Links und Install-IDs

> **🟩 Check:** Du installierst Extensions über: Extensions View (Ctrl+Shift+X) → Suche → Install.

### Baseline (immer, unabhängig von Diagramm-Variante)

- EditorConfig
  - ID: `EditorConfig.EditorConfig`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig>

- markdownlint
  - ID: `DavidAnson.vscode-markdownlint`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint>

- Code Spell Checker (cSpell)
  - ID: `streetsidesoftware.code-spell-checker`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker>

- German Dictionary für cSpell
  - ID: `streetsidesoftware.code-spell-checker-german`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker-german>

Optional (hilfreich für Frontmatter/YAML):

- YAML (Red Hat)
  - ID: `redhat.vscode-yaml`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml>

### Variante A: Mermaid (inline im Markdown)

- Markdown Preview Mermaid Support
  - ID: `bierner.markdown-mermaid`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid>

Optional (nur wenn du Mermaid als Datei exportieren willst):

- Mermaid Lens (Preview + Export)
  - Hinweis: Suche im Marketplace nach „Mermaid Lens“ (Name kann sich ändern).
  - Repo: <https://github.com/benlau/mermaidlens>

### Variante B: D2 (diagram-as-code, render to SVG)

- D2 (VS Code Extension)
  - ID: `terrastruct.d2`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=terrastruct.d2>

> **🟧 Achtung:** D2-Extension benötigt i. d. R. D2 lokal installiert, um Preview/Render zu nutzen.

### Variante C: draw.io / diagrams.net (WYSIWYG)

- Draw.io Integration
  - ID: `hediet.vscode-drawio`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio>

### Variante D: Excalidraw (Whiteboard-Style)

- Excalidraw
  - ID: `pomdtr.excalidraw-editor`
  - Marketplace: <https://marketplace.visualstudio.com/items?itemName=pomdtr.excalidraw-editor>

## Inputs / Outputs

| Feld | Beschreibung |
| --- | --- |
| Inputs | Diagrammziel + 5–10 Bulletpoints Spec |
| Outputs | Diagramm-Source (oder Inline Mermaid) + optional gerenderte SVG + Doc-Embed |
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
- Variante: Mermaid / D2 / draw.io / Excalidraw
- Ziel-Dateien (konkret benennen)

Empfohlenes Layout bis Portal:

- D2: `diagrams/src/<name>.d2` und `diagrams/rendered/<name>.svg`
- draw.io: `diagrams/src/<name>.drawio` oder `.drawio.svg`
- Excalidraw: `diagrams/src/<name>.excalidraw`
- Mermaid: im Ziel-Dokument als ` ```mermaid ` Block

### 2) Codex Prompt (PLAN → CHANGE → VERIFY → DELIVER)

Nutze diesen Prompt als Copy/Paste und ersetze `<name>` und `<doc>.md`:

```text
PLAN
- Create a thin slice: 1 diagram + 1 doc update.
- Files (only these):
  - diagrams/src/<name>.<ext>
  - diagrams/rendered/<name>.svg (only if render is used)
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
- Implement the diagram source based on the spec (Mermaid/D2/draw.io/Excalidraw).
- Update <doc>.md with a relative embed link (or Mermaid block).
- If render is needed, add the render command as a comment (do not invent outputs you cannot render).

VERIFY
- List the changed files.
- Point out markdownlint/cSpell hotspots in the changed files.

DELIVER
- Provide a concise PR report body: summary, scope, gates, rollback.
```

> **🟩 Check:** Codex schlägt nur Änderungen in den benannten Dateien vor.

### 3) Render / Export (je nach Variante)

- Mermaid:
  - Kein Render nötig. Preview über `bierner.markdown-mermaid`.

- D2:
  - Render zu SVG (Beispiel):

    ```bash
    d2 diagrams/src/<name>.d2 diagrams/rendered/<name>.svg
    ```

- draw.io:
  - Empfehlung: `.drawio.svg` nutzen (diff-bar als Bild + editierbar).
  - Export passiert beim Speichern im draw.io Editor (Extension).

- Excalidraw:
  - Datei ist die Source (`*.excalidraw`).
  - Export zu PNG/SVG im Extension-UI (wenn gebraucht).

### 4) Preflight Gates (lokal, changed files)

1. VS Code Problems Panel:
   - markdownlint Findings in changed files fixen.
   - cSpell: Tippfehler fixen; stabiler Jargon ins Wörterbuch.
1. No-Secrets Quickscan (Diff):

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
