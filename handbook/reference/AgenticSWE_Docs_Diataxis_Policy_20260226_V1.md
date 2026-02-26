---
project: AgenticSWE_KnowledgeOS
doc_type: policy
version: V1
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Standardisiert Dokumentations-Typen nach Diátaxis und legt Templates, Abgrenzungen, Layout-Konventionen sowie Glossar/Taxonomie-Integration fest."
tags:
  - layer/handbook
  - artifact/policy
  - topic/diataxis
  - topic/governance
---

# Diátaxis-Doku-Policy und Template-Regeln

## Ziel-Pfad im Repo

- Intended path: `handbook/reference/AgenticSWE_Docs_Diataxis_Policy_20260226_V1.md`

## Warum Diátaxis

Diátaxis trennt Dokumentation nach dem Bedürfnis der Lesenden, nicht nach Themen.
Die vier Typen sind bewusst verschieden und sollen nicht vermischt werden.

- **Tutorial (tutorial; learning-by-doing):** Lernen durch geführte Schritte.
- **How-to (how-to; task recipe):** Rezept für ein konkretes Problem.
- **Reference (reference; facts & API):** Präzises Nachschlagen, konsistent und vollständig.
- **Explanation (explanation; why & mental model):** Verständnis, Hintergründe, Trade-offs.

## Abgrenzung der Dokumententypen

### Tutorial

- Verantwortet die Reihenfolge der Schritte und führt zu einem sichtbaren Ergebnis.
- Minimale Erklärung; Links auf Explanation/Reference statt Ausuferungen.

Nicht als Tutorial schreiben:

- Aufgaben-Rezepte für Profis (das ist How-to).
- Parameterlisten (das ist Reference).

### How-to

- Startet und endet dort, wo es für die Aufgabe sinnvoll ist.
- Setzt Grundwissen voraus, erlaubt leichte Variationen.

Nicht als How-to schreiben:

- Lernpfad für Anfänger (das ist Tutorial).
- Konzeptdiskussion (das ist Explanation).

### Reference

- Beschreibt, ohne zu instruieren oder zu diskutieren.
- Nutzt standardisierte Muster, spiegelt die Struktur des „Systems“ (Code/Artefakte).

Nicht als Reference schreiben:

- Schrittfolgen zur Zielerreichung (das ist How-to oder Tutorial).
- „Warum“-Text (das ist Explanation).

### Explanation

- Kontext, Gründe, Alternativen und Meinungen.
- Keine Rezepte und keine Parameterlisten.

Nicht als Explanation schreiben:

- Checklisten / konkrete Anweisungen (How-to/Runbook).
- API-/Formatdetails (Reference).

## Routing-Regel: Wie ich den Dokumententyp aus Kontext wähle

Wenn es nicht explizit gefordert ist, entscheide ich nach dem „primären Nutzer-Intent“:

1. **„Bring mich von 0 zu Ergebnis, Schritt für Schritt“** → Tutorial.
1. **„Wie mache ich X in meinem Setup?“** → How-to.
1. **„Welche Felder/Parameter/Defaults gibt es?“** → Reference.
1. **„Warum ist das so / welche Trade-offs?“** → Explanation.

Wenn ein Text mehrere Intents mischt:

- Hauptintent wählen.
- Rest als kurze Links oder „See also“ auslagern.

## Layout-Konventionen (menschenfreundlich)

Markdown ist renderer-abhängig. Wir nutzen deshalb eine „portable“ Basis und optional erweiterbare Callouts.

### Portable Fokus-Blöcke

Verwende Blockquotes mit Icon + Titel.

> **🟦 Ziel:** Ein Satz, worauf es hinausläuft.
>
> **🟧 Achtung:** Risiko, Stolperstein, Side-Effect.
>
> **🟩 Check:** So erkennst du, dass es stimmt.
>
> **🟥 Stop:** Abbruchbedingung (Stop-&-Ask).

### Optional: Callouts mit Farbe, wenn der Renderer es unterstützt

Einige Renderer unterstützen Callout-Syntax wie `> [!NOTE] ...`.
Wenn ein Renderer das nicht unterstützt, bleiben Callouts als normale Blockquotes lesbar.

- Vorteil: farbige Hervorhebung, Icon je Typ.
- Nachteil: kann als normales Quote degradiert werden.

TODO (Blackboard):

- Festlegen, ob euer Portal/Renderer Callouts nativ unterstützt.

## Glossar- und Taxonomie-Integration (normativ)

### Frontmatter-Pflicht

Jedes Dokument nutzt YAML Frontmatter (config format) mit:

- `project`, `doc_type`, `version`, `date`, `status`
- `intent`
- `tags`

Tag-Regeln (Taxonomie):

- genau **1×** `layer/*`
- genau **1×** `artifact/*`
- zusätzlich **0–3×** `topic/*`
- optional `risk/*` falls relevant

### Terminologie-Regel

- Glossar ist normativ: Canonical Terms verwenden.
- Synonyme nur, wenn Glossar-Policy sie erlaubt.

### cSpell-Regel (Governance)

- Tippfehler korrigieren.
- Stabile Projektbegriffe in `meta/dictionaries/project-words.txt`.
- Wenn ein Begriff „eigentlich ins Glossar“ gehört: Glossar-TODO statt Whitelist.

### Option: automatisierte Kopplung Glossar → cSpell (später)

- Script (planned): `scripts/sync_cspell_from_glossary.py`
- Input: neueste Glossar-Datei
- Output: `meta/dictionaries/glossary-words.txt` (generated)
- cSpell referenziert:
  - `project-words.txt` (hand-curated)
  - `glossary-words.txt` (generated)

## Phasenweise Durchsetzung (Repo-Checks)

1. **Phase 0:** Templates + Baseline-Configs einführen, targeted clean nur in kleinem Scope.
1. **Phase 1:** Strenge nur auf „changed files“ (keine Legacy-Pflicht).
1. **Phase 2:** Strenge zusätzlich auf kuratierte Zonen (z. B. `handbook/**`, `meta/**`).
1. **Phase 3:** Legacy-Reduktion als eigener Workstream (ordnerweise, mit DoD).

## Definition of Done (DoD) für neue Doku-Dateien

- Frontmatter vorhanden und gültig.
- Taxonomie-Regeln eingehalten (1× layer, 1× artifact, topic tags allowlisted).
- markdownlint clean (mindestens MD022, MD032, MD029).
- cSpell: keine echten Tippfehler; Projektwörter korrekt gepflegt.
- Dokument enthält Links zu passenden anderen Diátaxis-Typen (See also).

## Template-SSOT

- Intended path: `meta/templates/docs/`
- Dateien:
  - `AgenticSWE_DocsTemplate_Tutorial_20260226_V1.md`
  - `AgenticSWE_DocsTemplate_HowTo_20260226_V1.md`
  - `AgenticSWE_DocsTemplate_Reference_20260226_V1.md`
  - `AgenticSWE_DocsTemplate_Explanation_20260226_V1.md`
