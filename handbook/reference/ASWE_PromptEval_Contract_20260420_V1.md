---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Eval-Vertrag fuer die Qualitaet von Prompt-Konstruktion und Prompt-Architektur."
tags:
  - layer/handbook
  - artifact/reference
  - topic/prompt-architecture
  - topic/eval
  - topic/contracts
---

# ASWE PromptEval Contract

## 0. Zweck
Bewertet wird nicht die Fachguete einer beliebigen Antwort,
sondern die Qualitaet der Prompt-Konstruktion und ihrer Architektureinbettung.

## 1. Gegenstand
Bewertet werden:
- Zielbildklarheit
- Gegenstandsschaerfe
- Geltungsbereich und Nicht-Geltung
- epistemische Statusklarheit
- Abstraktionsdisziplin
- Explizitheit vs. Vorfestlegung
- Auditierbarkeit
- Adapter-Portierbarkeit
- Driftresistenz

## 2. Nicht-Ziel
Nicht bewertet werden:
- versteckte Produktmechanik
- fachliche Wahrheit ausserhalb des Prompt-Gegenstands
- Framework- oder Target-Contract-Promotion

## 3. Evaluationsachsen
### PE1 Zielbildklarheit
Ist das eigentliche Ziel explizit und vom Mittel getrennt?

### PE2 Scope-Disziplin
Ist klar, wofuer der Prompt gilt und wofuer nicht?

### PE3 Ebenentrennung
Sind Beobachtung, Beleg, Hypothese, Massstab, Kriterium, Empfehlung und Implementierungsschritt getrennt?

### PE4 Explizitheit
Ist Implizites sichtbar gemacht?

### PE5 Vorfestlegungsdisziplin
Wird nur explizit gemacht, was nicht selbst Teil der Analyse ist?

### PE6 Operationalisierbarkeit
Ist der Prompt in bounded Arbeitsschritte uebersetzbar?

### PE7 Auditierbarkeit
Sind Annahmen, Blocker und Entscheidungen spaeter lesbar?

### PE8 Portierbarkeit
Ist klar, was project-wide, threadnah oder nur als Rendering gelten darf?

## 4. Gates
- `PP-G0`: Ziel/Gegenstand/Status/Abstraktionsniveau explizit
- `PP-G1`: Ebenentrennung stabil
- `PP-G2`: keine verdeckte Governance
- `PP-G3`: bounded operationalisierbar
- `PP-G4`: Rendering sicher ableitbar

## 5. Outcomes
- `pass`
- `hold`
- `return`
- `reject`

## 6. Langlaufregel
Der Unterbau gilt erst dann als selbstverbesserungsfaehig,
wenn Fehlmuster ueber mehrere Laeufe in bessere Preflight-Regeln,
Renderregeln und Nachzuege uebersetzt werden koennen.
