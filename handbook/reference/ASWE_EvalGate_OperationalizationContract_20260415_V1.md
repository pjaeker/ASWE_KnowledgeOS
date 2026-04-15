---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-15
status: draft
intent: "Verdichtung des Eval-/Gate- und Operationalisierungskerns fuer bounded Evidence-Intake-Selbstevolution."
---

# ASWE Eval Gate Operationalization Contract

## 0. Zweck

Dieses Dokument verdichtet:
- qualitative,
- quantitative,
- hybride

Kriterien fuer die Selbstevolution des Evidence-Intake-Pfads zu einem operativen Vertrag.

Es bewertet die Prozessguete des Intake-Verfahrens, nicht die finale fachliche Wahrheit spaeterer semantischer oder architektonischer Aussagen.

## 1. Fuehrende Trennung

### E1 Inhaltsguete
Bewertet die Belastbarkeit einzelner Evidenzen.

### E2 Prozessguete
Bewertet die Guete der entwickelten Operationalisierung.

Regel:
Gute Einzelbeobachtung ist nicht gleich gute Operationalisierung.

## 2. Kriterienfamilien

### KQ - qualitative Kriterien
- Ebenentrennung Beobachtung / Claim / Regel
- Triggerbegruendung
- Konflikttypisierung
- Rueckgabeziel-Klarheit
- Auditierbarkeit

### KN - quantitative Kriterien
- Anteil unvollstaendiger Artefakte
- Anteil Rueckgaben wegen Ebenenvermischung
- Anteil zu frueher Trigger
- Anteil zu spaeter Trigger
- wiederholte Dead Ends pro Quelltyp
- Resume-Fehlschlaege
- manuelle Nacharbeit pro Artefaktklasse

### KH - hybride Kriterien
- Triggerreife = qualitative Begruendung + quantitative Fehlerrate
- Resume-Reife = qualitative Lesbarkeit + quantitative Wiederaufnahmeerfolgsrate
- Boundedness = qualitative Scope-Klarheit + quantitative Rueckgabe-/Abbruchhaeufigkeit

## 3. Gate-Familien

### OI-G0 Schema Draft
Artefakte sind lesbar und minimal vollstaendig.

### OI-G1 Separation
Ebenentrennung ist hinreichend stabil.

### OI-G2 Trigger
Triggersetzung ist fuer bounded Uebergabe an Semantic tragfaehig.

### OI-G3 Resume
Spaeterer Lauf kann ohne implizites Zusatzwissen fortsetzen.

### OI-G4 Improvement
Fehlmuster lassen explizite Verbesserungsslices ableiten.

## 4. Decision Outcomes

- `pass`: aktueller Slice tragfaehig
- `hold`: im selben Pfad weiter verbessern
- `return`: Scope, Schema oder Rueckgabe neu schneiden
- `reject`: governance-widrig oder derzeit unbrauchbar

## 5. Stop- und Abbruchregeln

Ein Verbesserungszyklus ist zu stoppen oder zurueckzugeben, wenn mindestens eines gilt:
- wiederholtes `hold` ohne neue Fehlmusterinformation
- wiederholtes `defer` ohne klaerbare Abhaengigkeit
- steigende Trigger-Fehlrate ohne erkennbaren Lernfortschritt
- Resume bleibt trotz Nachschaerfung nicht lesbar
- Scope driftet in semantische oder architektonische Geltung
- Budgetverbrauch steigt ohne Gate-Fortschritt

## 6. Meta-Evaluation

Nach jedem Lauf ist mindestens zu pruefen:
- wurde die Operationalisierung besser oder nur umfangreicher?
- wurden Fehlmuster expliziter oder nur verschoben?
- ist Triggerdisziplin gestiegen?
- ist Rueckgabe an Umbrella klarer geworden?
- ist Resume robuster geworden?

## 7. Mindestoutput pro echten Selbstevolutionslauf

- Observation Pack
- Claim Pack
- Conflict Cluster oder `no-conflict`
- Trigger Packet
- OI-G0/OI-G1-Einschaetzung
- Verbesserungsnaechstschritt

## 8. Nicht-Ziele

Dieses Dokument setzt noch nicht:
- finale semantische Promotionsentscheidungen
- finale Architekturpromotion
- konkrete KPI-Grenzwerte je Datentyp
- fachliche Wahrheitsentscheidung einzelner Quellen
