---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V1
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Template für Diátaxis-How-to Guides (task recipe)."
tags:
  - layer/templates-harness
  - artifact/template
  - topic/diataxis
---

# Template: How-to

## Ziel-Pfad im Repo

- Intended path: `meta/templates/docs/AgenticSWE_DocsTemplate_HowTo_20260226_V1.md`

## Frontmatter (Copy/Paste)

```yaml
---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V1
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "TODO: Löse Problem X in Setup Y."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/diataxis
  - topic/gate
---
```

## Titel

`How to <konkrete Aufgabe>`

## Kontext

> **🟦 Ziel:** TODO: Welches Problem wird gelöst?
>
> **🟧 Achtung:** TODO: Wichtigster Side-Effect / Risiko.

## Voraussetzungen

- TODO: Was wird vorausgesetzt (nicht erklären).
- TODO: Pfade/Dateien/Tools.

## Schritte (Rezept)

1. TODO: Schritt.
1. TODO: Schritt.
1. TODO: Schritt.

## Verifikation

- **🟩 Check:** TODO: Wie prüfst du Erfolg?
- Optional: Log-Auszug / Screenshot.

## Rollback

- TODO: Wie mache ich es rückgängig?

## Variationen

- TODO: Alternative für anderes OS/Tooling.
- TODO: Alternative für anderes Repo-Layout.

## See also

- Tutorial (learning-by-doing): `TODO`
- Reference (facts & API): `TODO`
- Explanation (why): `TODO`

## DoD (Quick)

- Rezept ist task-oriented, ohne Konzepterklärungen.
- Verifikation + Rollback vorhanden.
- markdownlint clean.
- cSpell: keine Tippfehler.
