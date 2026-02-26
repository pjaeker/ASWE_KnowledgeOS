---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V1
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Template für Diátaxis-Tutorials (learning-by-doing)."
tags:
  - layer/templates-harness
  - artifact/template
  - topic/diataxis
---

# Template: Tutorial

## Ziel-Pfad im Repo

- Intended path: `meta/templates/docs/AgenticSWE_DocsTemplate_Tutorial_20260226_V1.md`

## Verwendung

1. Datei kopieren.
1. Frontmatter ausfüllen.
1. Schritte konkretisieren.
1. Preflight Gates lokal: markdownlint + cSpell + Frontmatter/Tags.

## Frontmatter (Copy/Paste)

```yaml
---
project: AgenticSWE_KnowledgeOS
doc_type: tutorial
version: V1
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "TODO: Ein Satz, was am Ende funktioniert."
tags:
  - layer/handbook
  - artifact/tutorial
  - topic/diataxis
  - topic/gate
---
```

## Titel

`<Was du am Ende gebaut/erreicht hast>`

## Zielbild

> **🟦 Ziel:** TODO: Was ist das sichtbare Ergebnis?

## Voraussetzungen

- TODO: OS/Tools (VS Code, Extensions).
- TODO: Repo-Pfad(e) / Dateien.

## Schrittfolge

1. **Startzustand sicherstellen**
   - TODO: `git status --short`
   - **🟩 Check:** Working Tree clean oder erwartete Changes.

1. **Minimaler erster Erfolg**
   - TODO: Erstes Kommando / erstes UI-Ergebnis.
   - **🟩 Check:** Du siehst Ergebnis X.

1. **Ausbau in kleinen Schritten**
   - TODO: Schritt.
   - TODO: Schritt.
   - **🟩 Check:** Ergebnis Y.

1. **Validierung**
   - TODO: Preflight Gates (nur changed files).
   - **🟩 Check:** Keine Blocker im Problems Panel.

## Troubleshooting

- **Symptom:** TODO
  - **Ursache:** TODO
  - **Fix:** TODO

## See also

- How-to (task recipe) zu Varianten: `TODO`
- Reference (facts & API) zu Formaten/Keys: `TODO`
- Explanation (why) zu Trade-offs: `TODO`

## DoD (Quick)

- Frontmatter valide.
- Tags: 1× layer, 1× artifact.
- markdownlint clean.
- cSpell: keine Tippfehler.
- Tutorial endet mit sichtbarem Ergebnis.
