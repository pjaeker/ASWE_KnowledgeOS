---
project: AgenticSWE
doc_type: knowledge_os_architecture_review_checklist
version: V1
date: 2026-02-13
status: draft
audience: [human, llm]
intent: "Architecture sanity-check for a 4-layer Knowledge-OS (Library/Blackboard/Handbook/Templates & Harness)."
---

# Knowledge-OS Architecture Review Checklist (V1)

**Scope:** This document reviews the *architecture* of the 4-layer Knowledge-OS design, independent of content volume.  
**Layers:** **Library → Blackboard → Handbook → Templates & Harness**  
**How to use:** Run through the **8 criteria**. Mark **PASS / PARTIAL / FAIL** and capture fixes.

---

## 0) Quick Score Sheet (fill-in)
| Criterion | Status (PASS/PARTIAL/FAIL) | Key risk if FAIL | One concrete fix |
|---|---|---|---|
| C1 Zweck-Fit (Layer necessity) |  |  |  |
| C2 Orthogonalität (Separation) |  |  |  |
| C3 Informationsfluss (Lifecycle) |  |  |  |
| C4 Entscheidungsfähigkeit (Decision trace) |  |  |  |
| C5 Skalierung (10× growth) |  |  |  |
| C6 Konsistenzgarantie (Contradictions) |  |  |  |
| C7 Kostenmodell (Maintenance economics) |  |  |  |
| C8 Mensch-&-KI-Typklarheit (Schemas/IDs) |  |  |  |

---

## C1) Zweck-Fit: Hat jede Schicht einen unverwechselbaren Job?

**Prinzip:** Eine Schicht ist nur dann sinnvoll, wenn sie eine Funktion erfüllt, die keine andere Schicht sauber ersetzen kann.

### Prüffragen
- Was geht *kaputt*, wenn du **Library** entfernst? (Evidenz/Nachprüfbarkeit?)
- Was geht *kaputt*, wenn du **Blackboard** entfernst? (Entwurfsraum/Arbeitsfähigkeit?)
- Was geht *kaputt*, wenn du **Handbook** entfernst? (Schnellzugriff/Orientierung?)
- Was geht *kaputt*, wenn du **Templates & Harness** entfernst? (Operationalisierung/Reproduzierbarkeit?)

### PASS-Signale
- Für jede entfernte Schicht gibt es **klare, nicht-triviale Verluste**.
- Es ist **eindeutig**, welche Informationen *wo* hingehören.

### FAIL-Antipatterns
- „Alles kann überall liegen“.
- Handbook wird als Archiv missbraucht oder Blackboard als Endlager.

### Minimal Fix
- Pro Schicht: **1 Satz Mission**, **3 erlaubte Artefakttypen**, **3 verbotene Artefakttypen**.

---

## C2) Orthogonalität: Sind die Schichten wirklich getrennt (Separation of Concerns)?

**Prinzip:** Gute Architektur minimiert Vermischung (sonst entstehen Redundanz & Drift).

### Prüffragen
- Welche Regeln verhindern, dass **Blackboard** zur Dauerablage wird?
- Welche Regeln verhindern, dass **Handbook** zu Essays / Sammelordnern wird?
- Welche Regeln verhindern, dass **Templates** zu “Text mit Beispiel” werden statt ausführbar/prüfbar?

### PASS-Signale
- Es gibt klare **Grenzregeln** und ein **Promotion-Konzept**.
- Vermischungen werden als **Fehler** behandelt (nicht als Stilfrage).

### FAIL-Antipatterns
- “Handbook enthält alles” oder “Blackboard ist die Wahrheit”.
- Templates ohne Inputs/Outputs.

### Minimal Fix
- **Diátaxis-Regel** fürs Handbook + **Promotion Policy** (siehe C3) + “No-Template-without-IO”.

---

## C3) Informationsfluss: Gibt es einen kontrollierten Informations-Lebenszyklus?

**Prinzip:** Schichten sind ein **Lifecycle**, nicht nur Ordner: roh → verarbeitet → kuratiert → ausführbar.

### Prüffragen
- Gibt es definierte **Promotion-Wege** (z. B. Blackboard → Handbook; Handbook → Template)?
- Gibt es definierte **Rückflüsse** (Template-Bug → Blackboard Issue)?
- Ist Promotion **auditierbar** (warum ist das im Handbook)?

### PASS-Signale
- Jede Schicht hat einen **Ein- und Ausgang** (Input/Output).
- „Promotion“ ist ein bewusstes Ereignis mit minimaler Begründung.

### FAIL-Antipatterns
- Inhalte wandern “nach Gefühl”.
- Kein Unterschied zwischen “Draft” und “Stable”.

### Minimal Fix
- Ein **Promotion-Formular** (5 Felder): `artifact_id`, `from_layer`, `to_layer`, `reason`, `confidence/status`.

---

## C4) Entscheidungsfähigkeit: Macht das System Entscheidungen sichtbar (und revisitable)?

**Prinzip:** Ohne Decision Trace entstehen Widersprüche und wiederholte Diskussionen.

### Prüffragen
- Wo werden Architektur-/Workflow-Entscheidungen dokumentiert? (ADR / Decision Log)
- Wo steht, welche Option *verworfen* wurde und warum?
- Gibt es „Revisit-When“-Trigger (wann neu prüfen)?

### PASS-Signale
- Jede “größere” Entscheidung hat einen **ADR-Lite** Eintrag.
- Es gibt einen **Index** aller ADRs.

### FAIL-Antipatterns
- Entscheidungen stecken implizit in Fließtexten.
- Keine Revisit-Kriterien → Entscheidungen veralten still.

### Minimal Fix
- ADR-Lite Pflicht für: **Taxonomie-Änderungen, Promotion-Regeln, Template-Standards, Tooling-Standards**.

---

## C5) Skalierung: Bleibt das System bei 10× Inhalt navigierbar?

**Prinzip:** Architektur muss Wachstum *überleben*.

### Prüffragen
- Was passiert bei: **Library 1000 Quellen**, **Blackboard 500 Claims**, **Handbook 200 Seiten**, **Templates 50 Artefakte**?
- Gibt es Dedupe/Tagging/Archiving-Regeln?
- Gibt es harte Limits (z. B. Handbook bleibt klein)?

### PASS-Signale
- Es existiert ein **Indexing-Konzept** (Tags, Backlinks, IDs).
- Es existieren **Limits** (z. B. max. Handbook-Seiten pro Kategorie; max. Länge pro How-to).

### FAIL-Antipatterns
- Suche ist die einzige Navigation (“Ctrl+F” als System).
- Handbook wächst ungebremst.

### Minimal Fix
- 3 Navigationsebenen: **Entry Points → Kategorie → Seite** + definierte Längenlimits.

---

## C6) Konsistenzgarantie: Wie werden Widersprüche behandelt?

**Prinzip:** Widersprüche sind normal; das System muss sie managen.

### Prüffragen
- Wo landen widersprüchliche Quellen/Best Practices?
- Wie wird „aktueller Standard“ markiert?
- Wie werden veraltete Regeln erkannt („stale“)?

### PASS-Signale
- Es gibt einen **Konflikt-Ort** (Blackboard: conflict clusters).
- Handbook/Templates referenzieren **einen** aktuellen Standard (mit Version).

### FAIL-Antipatterns
- Zwei How-tos sagen gegensätzliches ohne Hinweis.
- “Stale knowledge” bleibt unmarkiert.

### Minimal Fix
- Status-Felder: `draft | stable | deprecated` + `last_reviewed` + Konflikt-Links.

---

## C7) Kostenmodell: Ist die Pflegeökonomie realistisch?

**Prinzip:** Jede Schicht ist ein Pflegevertrag. Nicht alles darf “teuer” sein.

### Prüffragen
- Welche Schicht darf **billig** (roh, schnell) sein?
- Welche Schicht muss **teuer** (kuratiert, streng) sein?
- Wer pflegt was, wie oft (Rhythmus)?

### PASS-Signale
- Library/Blackboard sind niedrigschwellig; Handbook/Templates sind kuratiert.
- Es gibt einen **Review-Rhythmus** (z. B. monatlich für Handbook, quartalsweise für Templates).

### FAIL-Antipatterns
- Alles wird kuratiert → Overhead.
- Nichts wird kuratiert → Chaos.

### Minimal Fix
- Pflege-SLA pro Schicht: z. B. `Library: add-only`, `Blackboard: weekly prune`, `Handbook: monthly review`, `Templates: release-based`.

---

## C8) Mensch-&-KI-Typklarheit: Sind Artefakte eindeutig typisiert (Schemas/IDs)?

**Prinzip:** Für Mensch & KI brauchst du klare Typen, IDs und maschinenlesbare Metadaten.

### Prüffragen
- Hat jede Datei/Seite einen **Typ** (z. B. source/claim/howto/template/adr)?
- Gibt es stabile **IDs** und konsequente Links/Referenzen?
- Gibt es minimale Schemas (JSON/YAML), wo sinnvoll?

### PASS-Signale
- Frontmatter oder Schema existiert und wird eingehalten.
- Ein Agent kann zuverlässig unterscheiden: Quelle vs Claim vs Regel vs Template.

### FAIL-Antipatterns
- „Titel sagt schon was es ist“ (nicht zuverlässig für Maschinen).
- Links brechen, IDs ändern sich.

### Minimal Fix
- YAML-Frontmatter Standard + ID-Konvention + Link-Checker (später CI).

---

# Appendix A) Layer-Removal Thought Experiment (Template)
**Goal:** Validate necessity (C1) and boundaries (C2/C3) quickly.

Fill this:
- Remove **Library** → Damage: ____ ; Unwanted compensations: ____ ; Fix: ____
- Remove **Blackboard** → Damage: ____ ; Unwanted compensations: ____ ; Fix: ____
- Remove **Handbook** → Damage: ____ ; Unwanted compensations: ____ ; Fix: ____
- Remove **Templates & Harness** → Damage: ____ ; Unwanted compensations: ____ ; Fix: ____

---

# Appendix B) Failure Mode Matrix (starter)
| Failure mode | Likely layer | Symptom | Prevention mechanism | Repair mechanism |
|---|---|---|---|---|
| Knowledge hoarding (too much raw info) | Library/Blackboard | Findability drops | limits + promotion rules | prune + index |
| Essay drift (Handbook becomes archive) | Handbook | slow reading | Diátaxis + length limits | split/move back to Blackboard |
| Template rot (not executable) | Templates | unusable artifacts | IO schema + smoke checks | revise + re-test |
| Contradictions untracked | Handbook/Blackboard | conflicting guidance | conflict clusters + status | ADR update + deprecate |
| Maintenance overload | all | stops updating | cost model + SLAs | reduce scope + automate checks |

---

# Appendix C) “Pass conditions” for first milestone (suggested)
You can declare the architecture “good enough” for V1 if:
- **≥ 6/8 criteria are PASS**, and none of C1/C3/C8 is FAIL.
- You have at least **one** example artifact per layer that complies with type/ID rules.
- You can explain the promotion flow in **≤ 60 seconds** without handwaving.

