---
project: AgenticSWE_KnowledgeOS
doc_type: template
version: V3
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Template für Diátaxis-How-to Guides (task recipe): konkretes Rezept inkl. Verifikation und Rollback."
tags:
  - layer/templates-harness
  - artifact/template
  - topic/diataxis
---

# Template: How-to

## Ziel-Pfad im Repo

- Intended path: `meta/templates/docs/AgenticSWE_DocsTemplate_HowTo_20260226_V3.md`

## Kontext (Scope und Erfolg)

> **🟦 Ziel:** TODO: Löse Problem X in Setup Y.

- In scope: TODO
- Out of scope: TODO
- Erfolg (Success criteria): TODO (messbar, prüfbar)

> **🟧 Achtung:** TODO: wichtigster Side-Effect / Risiko.

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
  - topic/<domain>
---
```

## Inputs / Outputs (kurz)

| Feld | Beschreibung |
| --- | --- |
| Inputs | TODO |
| Outputs | TODO |
| Constraints | TODO (z. B. keep diffs small) |
| Evidence | TODO |

## Rezept (Schritte)

1. TODO: Schritt.
1. TODO: Schritt.
1. TODO: Schritt.

## Verifikation

- **🟩 Check:** TODO: wie prüfst du Erfolg?
- Optional: Log-Ausschnitt.

## Rollback

- TODO: Rückgängig machen, falls etwas schief geht.

## Variationen

- TODO: Windows vs Linux.
- TODO: Alternative Tools.

## Failure Modes (kurz)

- TODO: häufigster Fehler + Fix.

## Glossar und Taxonomie

- Canonical terms (Glossar): TODO
- Tags geprüft (Taxonomie): 1× layer, 1× artifact.

## Visualisierung (max. 1)

- Default: Mermaid Flowchart oder Sequence (inline) für Rezept + Verifikation.
- Upgrade: D2 nur, wenn Interaktionsdiagramm sonst unklar bleibt.

- Toolbox (Instrumente + Matrix): `AgenticSWE_Docs_Instrumente_Toolbox_20260226_V3.md`
- Explanation (Tool-Trade-offs): `AgenticSWE_Diagramme_Varianten_Explanation_20260226_V1.md`

## See also

- Tutorial (learning-by-doing): TODO
- Reference (facts & API): TODO
- Explanation (why): TODO

## DoD (Quick)

- Task-Rezept ohne Konzepterklärung.
- Verifikation + Rollback vorhanden.
- markdownlint clean.
- cSpell: keine Tippfehler.
