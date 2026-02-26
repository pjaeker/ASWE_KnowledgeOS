---
project: AgenticSWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Ich verstehe, warum es mehrere Diagramm-Varianten (Mermaid, D2, draw.io, Excalidraw) gibt, welche Trade-offs gelten und wie ich sie im Docs-as-Code Workflow bis zum CMS-Portal sinnvoll kombiniere."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/diataxis
  - topic/actionability
  - topic/governance
---

# Explanation: Diagramm-Varianten im Docs-as-Code Workflow

## Leitfrage

> **🟦 Ziel:** Welche Diagramm-Variante ist in welchem Kontext die beste, und warum?

## Kontext (bis CMS-Portal)

Bis das Portal/CMS steht, ist das Repo die SSOT.
Das heißt:

- Diagramme müssen reviewbar sein (Diff).
- Assets müssen relativ verlinkbar sein.
- Es darf keine „unsichtbare“ Tool-Magie geben, die Diffs aufbläht.

## Mentales Modell

Es gibt zwei Achsen:

1. Darstellung (Rendering): Inline im Markdown vs gerendertes Asset (SVG/PNG).
1. Erstellung (Authoring): Text-Source vs WYSIWYG vs Whiteboard.

Mermaid und D2 sind primär Text-Source.
draw.io ist primär WYSIWYG.
Excalidraw ist primär Whiteboard.

## Vergleich (Trade-offs)

| Variante | Hauptzweck | Versionierung (Diff) | Optik | Setup | Autonomie mit Codex | Typische Risiken |
| --- | --- | --- | --- | --- | --- | --- |
| Mermaid | schnelle Flows | gut (Text) | ok, „raw“ | sehr klein | sehr hoch | Rendering hängt vom Preview ab |
| D2 | „polished“ System/Maps | sehr gut (Text + SVG) | hoch | mittel (CLI) | hoch | Render-Schritt, CLI/PATH |
| draw.io | Hero-WYSIWYG | mittel (XML) | hoch | klein | niedrig–mittel | Merge-Konflikte, große Diffs |
| Excalidraw | Story/Didaktik | mittel (JSON) | skizzenhaft | klein | niedrig–mittel | Export-Assets, „zu frei“ |

> **🟧 Achtung:** WYSIWYG-Formate sind oft diff-noisy und konfliktanfällig.

## Entscheidungshilfe (Default-Stack)

> **🟩 Check:** Du nutzt eine Default-Regel und musst selten „nachdenken“.

Empfohlen bis Portal:

1. Mermaid für kleine Flows in Tutorials/How-tos.
1. D2 für zentrale Architektur-/Trust-Boundary-/Systemübersichten.
1. draw.io nur für 1–2 Hero-Diagramme, wenn nötig.
1. Excalidraw für Skizzen/Didaktik, nicht als SSOT für Architektur.

## Welche Variante passt zu welchem Diátaxis-Typ?

- Tutorial:
  - 1 Flowchart (Mermaid oder D2) + viele Checkpoints.
- How-to:
  - 1 Flowchart oder Sequence; Fokus auf Verifikation/Rollback.
- Reference:
  - selten Diagramme; eher Tabellen und Beispiele.
- Explanation:
  - 1 mentales Modell (causal flow) + Trade-off-Matrix.

## Konsequenzen für Repo-Struktur

Wenn D2 genutzt wird:

- Source nach `diagrams/src/`.
- Rendered nach `diagrams/rendered/`.
- Docs verlinken relativ auf `diagrams/rendered/*.svg`.

Wenn Mermaid genutzt wird:

- Inline im Markdown, keine Assets.

Wenn draw.io/Excalidraw genutzt wird:

- Source-Datei als Asset in `diagrams/src/`.
- Export-Asset (wenn notwendig) in `diagrams/rendered/`.

## Failure Modes (warum es schiefgeht)

- Diagramm-Inflation:
  - Zu viele Visualisierungen pro Dokument → Unruhe, Wartungsaufwand.
- Hidden rendering dependency:
  - Diagramm existiert nur als Preview → unklarer Review.
- Diff-noise:
  - WYSIWYG Formate erzeugen große Diffs → Review wird schwer.
- Tool drift:
  - Diagramme sehen je nach Setup anders aus → fehlende Reproduzierbarkeit.

## Konsequenzen für Governance (Gates/Policy)

- Max 1–2 Visuals pro Dokument (Policy/Toolbox).
- Preflight: markdownlint + cSpell für changed files.
- Render-Gate (wenn D2): Source geändert → SVG aktualisiert.

## See also

- Tutorial: Diagramme erstellen und einbetten: `AgenticSWE_Diagramme_Tutorial_20260226_V3.md`
- How-to: Codex Workflow inkl. Extension-Links/IDs: `AgenticSWE_Diagramme_Codex_HowTo_20260226_V2.md`
- Policy: Diátaxis-Stilregeln: `AgenticSWE_Docs_Diataxis_Policy_20260226_V2.md`
- Toolbox: Auswahlmatrix für Instrumente: `AgenticSWE_Docs_Instrumente_Toolbox_20260226_V2.md`

## DoD (Quick)

- Du kannst die Default-Regel erklären.
- Du weißt, warum WYSIWYG nur selten genutzt wird.
- Du kennst den Asset-Pfad bis Portal (src vs rendered).
