---
project: AgenticSWE_KnowledgeOS
doc_type: policy
version: V2
date: 2026-02-26
status: draft
audience:
  - human
  - llm
intent: "Standardisiert Dokumentations-Typen nach Diátaxis und legt Abgrenzung, Stilregeln (evidence-based), Layout-Konventionen sowie Glossar/Taxonomie-Integration fest."
tags:
  - layer/handbook
  - artifact/policy
  - topic/diataxis
  - topic/governance
---

# Diátaxis-Doku-Policy

## Ziel-Pfad im Repo

- Intended path: `handbook/reference/AgenticSWE_Docs_Diataxis_Policy_20260226_V2.md`

## Warum Diátaxis

Diátaxis trennt Dokumentation nach dem Bedürfnis der Lesenden (Nutzer-Intent), nicht nach Themen.
Die vier Typen sind bewusst verschieden und sollen nicht vermischt werden.

- **Tutorial (tutorial; learning-by-doing):** Lernen durch geführte Schritte.
- **How-to (how-to; task recipe):** Rezept für eine konkrete Aufgabe.
- **Reference (reference; facts):** Präzises Nachschlagen, konsistent und vollständig.
- **Explanation (explanation; why):** Verständnis, Hintergründe, Trade-offs.

## Abgrenzung der Dokumententypen

### Tutorial

- Lernorientiert: „Wir machen das gemeinsam.“
- End-to-end und vollständig für den Lernpfad.
- Frühe, sichtbare Ergebnisse und viele Checkpoints.

Nicht als Tutorial schreiben:

- Rezepte für „ich will nur schnell X“ (How-to).
- Parameter-/Key-Listen (Reference).
- Tiefe Begründungen (Explanation).

### How-to

- Arbeitsorientiert: „Wenn du X willst, tue Y.“
- Startet und endet an sinnvollen Punkten, ist nicht zwangsläufig end-to-end.
- Fokus auf reibungsfreie Durchführung, Verifikation und Rollback.

Nicht als How-to schreiben:

- Lernpfad für Anfänger:innen (Tutorial).
- Konzept-/Trade-off-Diskussion (Explanation).
- Vollständige Schlüssel-Referenzen (Reference).

### Reference

- Informationsorientiert: neutrales Beschreiben.
- Konsultierbar statt „lesbar“: standardisierte Struktur, keine Narrative.
- Spiegel der „Maschine“ (System-/Artefaktstruktur).

Nicht als Reference schreiben:

- Schrittfolgen zur Zielerreichung (Tutorial/How-to).
- „Warum“-Text (Explanation).

### Explanation

- Verständnisorientiert: „Warum ist das so, und was bedeutet das?“
- Diskursiv, reflektiv, darf Alternativen abwägen.
- Keine Anleitungen, keine Parameterlisten.

Nicht als Explanation schreiben:

- Checklisten / konkrete Schritte (How-to/Runbook).
- API-/Formatdetails (Reference).

## Routing-Regel: Wie ich den Dokumententyp aus Kontext wähle

Wenn es nicht explizit gefordert ist, entscheide ich nach dem primären Intent:

1. „Bring mich von 0 zu Ergebnis, Schritt für Schritt.“ → Tutorial.
1. „Wie mache ich X in meinem Setup?“ → How-to.
1. „Welche Felder/Parameter/Defaults gibt es?“ → Reference.
1. „Warum ist das so / welche Trade-offs gelten?“ → Explanation.

Wenn ein Text mehrere Intents mischt:

1. Hauptintent wählen.
1. Rest als kurze Links unter „See also“ auslagern.

---

# Stilregeln pro Dokumenttyp

Diese Stilregeln sind „purpose-first“ und orientieren sich an Diátaxis plus evidenzbasierten Lernprinzipien
(z. B. Cognitive Load Theory (CLT; working memory), Worked Examples (worked examples; step demos),
Self-Explanation (self-explanation; explain-to-self), Multimedia-Prinzipien (multimedia principles; Mayer)).

> **🟦 Ziel:** Stil dient dem Dokumenttyp.
>
> **🟧 Achtung:** „Mehr Inhalt“ ist nicht automatisch „besser“. Extraneous load vermeiden.

## Tutorial-Stil (learning-by-doing)

### Übergeordneter Zweck

Skill- und Wissensaufbau durch „guided experience“.

### Konsequenzen für Text und Struktur

- Kurze Absätze, einfache Sprache, eindeutige Imperative.
- „Wir“-Stimme ist erlaubt und hilfreich („Wir machen jetzt …“).
- Schrittfolge in kleinen Portionen mit häufigen Checks.

### Default-Instrumente (Toolbox)

1. Reader Contract (Start-/Endzustand).
1. Flowchart (flowchart; Mermaid) als 15-Sekunden-Überblick.
1. Worked Example + Mini-Übung (example-problem pair).
1. Checkpoints + Troubleshooting (Top 3).

### Evidence-based Leitlinien (kurz)

- Segmentieren: kleine, kontrollierbare Schritte (segmenting; break down).
- Frühe Erfolge: „results early and often“.
- Worked Examples: zuerst vormachen, dann sehr ähnliche Übung.
- Self-Explanation Prompts: „Warum war dieser Schritt nötig?“ (1 Satz).

### Verbotene Elemente (Anti-Mix)

- Lange Hintergrundkapitel.
- Vollständige Referenzlisten.
- Breite Alternativen-Debatten.

## How-to-Stil (task recipe)

### Übergeordneter Zweck

Reibungsfreie Durchführung und Integration in reale Arbeit.

### Konsequenzen für Text und Struktur

- Kurze, handlungsorientierte Sätze.
- Minimaler Kontext: nur so viel, dass Entscheidungen möglich sind.
- Fokus auf: Voraussetzungen → Schritte → Verifikation → Rollback.

### Default-Instrumente (Toolbox)

1. Scope + Success Criteria (messbar).
1. Inputs/Outputs Tabelle.
1. Schrittfolge mit Entscheidungspunkten (falls nötig).
1. Verifikation + Rollback.
1. Failure Modes (Top 1–3).

### Evidence-based Leitlinien (kurz)

- Coherence: unnötige Erklärungen raus, stattdessen verlinken.
- Signaling: Warnungen/Checks klar hervorheben.
- Split-Attention vermeiden: wichtige Infos direkt dort, wo sie gebraucht werden.

### Verbotene Elemente (Anti-Mix)

- „Warum“-Kapitel (→ Explanation).
- Vollständige Parameteraufzählungen (→ Reference).
- Lernübungen (→ Tutorial).

## Reference-Stil (facts)

### Übergeordneter Zweck

„Truth & certainty“: präzise, konsistente Faktenbasis für Arbeit.

### Konsequenzen für Text und Struktur

- Neutral, knapp, „austere“ Sprache.
- Vorhersehbare Muster (Tabellen, Listen, Schema).
- Struktur spiegelt System/Artefakte.

### Default-Instrumente (Toolbox)

1. Parameter-/Key-Tabelle.
1. Normativ vs informativ markieren (must vs nice).
1. Minimal- und Vollbeispiel.
1. Fehlerbilder (kurz, deterministisch).

### Evidence-based Leitlinien (kurz)

- Konsistenz reduziert Suchkosten (patterning).
- Redundanz vermeiden (keine doppelte Wahrheit an 5 Stellen).
- Beispiele sind „ground truth“: klein, korrekt, kopierbar.

### Verbotene Elemente (Anti-Mix)

- Schrittfolgen mit Ziel (→ How-to/Tutorial).
- Meinungen/Trade-offs (→ Explanation).

## Explanation-Stil (why)

### Übergeordneter Zweck

Verständnisaufbau: mentale Modelle, Ursachen, Trade-offs.

### Konsequenzen für Text und Struktur

- Diskursiv, aber „chunked“: kurze Sektionen mit klaren Überschriften.
- Explizite Annahmen und Grenzen.
- Alternativen abwägen, ohne zu missionieren.

### Default-Instrumente (Toolbox)

1. Leitfrage („Warum …?“) + Kurzfassung.
1. Mentales Modell (causal flow; Mermaid).
1. Trade-off-Matrix.
1. Failure Modes (warum es schiefgeht).
1. Konsequenzen für Governance (welche Regeln folgen daraus).

### Evidence-based Leitlinien (kurz)

- Coherence: nur Inhalte, die das Modell stützen.
- Signaling: Kernaussagen sichtbar machen (Ziel/Check/Stop).
- Dual Coding (words+diagram): ein Diagramm statt Textwand.

### Verbotene Elemente (Anti-Mix)

- Konkrete Schritt-Rezepte (→ How-to).
- Vollständige Key-Listen (→ Reference).

---

# Layout-Konventionen (menschenfreundlich)

Markdown ist renderer-abhängig. Wir nutzen eine portable Basis und optional erweiterbare Callouts.

## Portable Fokus-Blöcke

Verwende Blockquotes mit Icon + Titel:

> **🟦 Ziel:** Ergebnis/Outcome.
>
> **🟧 Achtung:** Risiko/Stolperstein/Side-Effect.
>
> **🟩 Check:** Verifikation/Success-Kriterium.
>
> **🟥 Stop:** Abbruch/Stop-&-Ask.

## Optional: Callouts mit Farbe

Wenn euer Renderer Callouts unterstützt (z. B. `> [!NOTE]`), dürft ihr sie nutzen.
Wenn nicht, bleiben Blockquotes lesbar.

TODO (Blackboard):

- Festlegen, ob euer Portal/Renderer Callouts nativ unterstützt.

---

# Glossar- und Taxonomie-Integration (normativ)

## Frontmatter-Pflicht

Jedes Dokument nutzt YAML Frontmatter (config format) mit:

- `project`, `doc_type`, `version`, `date`, `status`
- `intent`
- `tags`

Tag-Regeln (Taxonomie):

- genau **1×** `layer/*`
- genau **1×** `artifact/*`
- zusätzlich **0–3×** `topic/*`
- optional `risk/*` falls relevant

## Terminologie-Regel

- Glossar ist normativ: Canonical Terms verwenden.
- Synonyme nur, wenn Glossar-Policy sie erlaubt.

## cSpell-Regel (Governance)

- Tippfehler korrigieren.
- Stabile Projektbegriffe in `meta/dictionaries/project-words.txt`.
- Wenn ein Begriff „eigentlich ins Glossar“ gehört: Glossar-TODO statt Whitelist.

## Option: automatisierte Kopplung Glossar → cSpell (später)

- Script (planned): `scripts/sync_cspell_from_glossary.py`
- Input: neueste Glossar-Datei
- Output: `meta/dictionaries/glossary-words.txt` (generated)
- cSpell referenziert:
  - `project-words.txt` (hand-curated)
  - `glossary-words.txt` (generated)

---

# Phasenweise Durchsetzung (Repo-Checks)

1. **Phase 0:** Templates + Baseline-Configs einführen, targeted clean nur in kleinem Scope.
1. **Phase 1:** Strenge nur auf „changed files“ (keine Legacy-Pflicht).
1. **Phase 2:** Strenge zusätzlich auf kuratierte Zonen (z. B. `handbook/**`, `meta/**`).
1. **Phase 3:** Legacy-Reduktion als eigener Workstream (ordnerweise, mit DoD).

---

# Definition of Done (DoD) für neue Doku-Dateien

- Frontmatter vorhanden und gültig.
- Taxonomie-Regeln eingehalten (1× layer, 1× artifact, topic tags allowlisted).
- markdownlint clean (mindestens MD022, MD032, MD029).
- cSpell: keine echten Tippfehler; Projektwörter korrekt gepflegt.
- „See also“ Link auf mindestens 1 passenden anderen Diátaxis-Typ.

---

# Quellen (für Nachschlagen)

```text
Diataxis:
- https://diataxis.fr/
- https://diataxis.fr/tutorials/
- https://diataxis.fr/how-to-guides/
- https://diataxis.fr/reference/
- https://diataxis.fr/explanation/

Evidence-based Writing / Learning:
- Cognitive Load Theory overview: https://www.instructionaldesign.org/theories/cognitive-load/
- Multimedia principles (Mayer): https://elearning.adobe.com/2019/12/12-principles-of-multimedia-learning-relevant-to-video-from-richard-e-mayers-work/
- Worked examples / CLT research (Springer): https://link.springer.com/article/10.1007/s10648-010-9145-4
- Self-explanation & worked examples (Springer): https://link.springer.com/article/10.1007/s11251-022-09579-4
```
