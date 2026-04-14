---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Evaluationskriterien und Verbesserungslogik fuer die Entwicklung und Umsetzung der Operationalisierung des Evidence-Intake-Pfads."
tags:
  - layer/handbook
  - artifact/reference
  - topic/evidence
  - topic/operationalization
  - topic/eval
  - topic/gates
  - topic/codex
---

# ASWE Evidence Intake Operationalization Eval

## 0. Zweck

Dieses Dokument schliesst die Luecke zwischen:
- allgemeinem Methodenmodell,
- allgemeinem Role Contract,
- und der konkreten Operationalisierung der dort erlaubten Transformationen.

Es bewertet **nicht** einzelne Evidenzen an sich,
sondern die **Qualitaet der entwickelten Operationalisierung** des Evidence-Intake-Pfads.

## 1. Gegenstand

Bewertet werden insbesondere:
- Schemaqualitaet von `Observation Pack`, `Claim Pack`, `Conflict Cluster`, `Trigger Packet`
- Trennschaerfe der Ebenen Beobachtung / Claim / Regel
- Provenienz- und Frischeerfassung
- Konflikt- und Pattern-Bildung
- Trigger-Setzung
- Rueckgabe- und Resume-Faehigkeit
- Eignung fuer parallele und zeitversetzte Weiterarbeit

## 2. Nicht-Ziel

Dieses Dokument bewertet nicht:
- finale semantische oder architektonische Geltung
- finale SSOT-Umschreibung
- Produktivleistung eines spaeteren Harness
- fachliche Wahrheit einzelner Quellen ausserhalb des Intake-Prozesses

## 3. Grundsatz

Die bestehende Evidenzguete bewertet den **Inhalt** der aufgenommenen Evidenz.
Diese Operationalisierungs-Evaluation bewertet die **Guete des Intake-Verfahrens selbst**.

Beides ist getrennt zu halten.

## 4. Evaluationsachsen

### OE1 Schema-Vollstaendigkeit
Hat jedes Output-Artefakt die fuer seinen Zweck noetigen Felder?

### OE2 Ebenentrennung
Bleiben Beobachtung, Claim, Beleg, Konflikt und Trigger sauber getrennt?

### OE3 Provenienz- und Frischeerfassung
Sind Herkunft, Zeitbezug, Zugriffskontext und Frische belastbar erfasst?

### OE4 Konflikt- und Pattern-Disziplin
Werden Konflikte typisiert und Pattern nur unter hinreichender Rekurrenz/Korroboration gebildet?

### OE5 Trigger-Qualitaet
Sind Trigger weder zu frueh noch zu spaet gesetzt und sauber klassifiziert?

### OE6 Boundedness und Rueckgabefaehigkeit
Ist der Lauf eng genug geschnitten und mit explizitem Rueckgabeziel versehen?

### OE7 Resume- und Parallelfaehigkeit
Kann ein spaeterer Thread oder Lauf den Zustand ohne implizites Vorwissen fortsetzen?

### OE8 Auditierbarkeit
Kann ein Mensch oder Main Agent nachvollziehen, wie das Artefakt entstanden ist und warum es weitergereicht wurde?

### OE9 Verbesserungsfaehigkeit
Erzeugt die Operationalisierung selbst lesbare Signale, aus denen der naechste bessere Slice abgeleitet werden kann?

## 5. Mindestkriterien pro Artefaktklasse

### 5.1 Observation Pack
Mindestens:
- Quelle
- Beobachtung
- Zeit-/Frischebezug
- scope-fit
- keine Interpretation als Beobachtung getarnt

### 5.2 Claim Pack
Mindestens:
- expliziter Claim
- Reichweite
- zugeordnete Belege
- offener Unsicherheitsraum
- Trennung zu Regel/Generalisierung

### 5.3 Conflict Cluster
Mindestens:
- Konflikttyp
- beteiligte Claims/Beobachtungen
- vermutete Konfliktursache
- offene Aufloesungsfrage

### 5.4 Trigger Packet
Mindestens:
- Triggerklasse
- warum jetzt
- welche Evidenzguete den Trigger stuetzt
- welches Rueckgabeziel / Folgeziel gilt
- warum kein anderer Trigger vorrangig ist

## 6. Verbesserungsmetriken

Fuer langlaufende Selbstverbesserung sind mindestens diese Signale zu fuehren:
- Anteil unvollstaendiger Artefakte
- Anteil Rueckgaben wegen Ebenenvermischung
- Anteil Trigger, die spaeter von Umbrella/Gate als verfrueht verworfen werden
- Anteil Trigger, die zu spaet erkannt wurden
- Wiederholte Dead Ends pro Quelltyp
- Resume-Fehlschlaege durch fehlende Information
- manuelle Nacharbeit pro Artefaktklasse

## 7. Operationalisierungs-Gates

### OI-G0 Schema Draft Gate
Die erste Artefaktform ist lesbar und minimal vollstaendig.

### OI-G1 Separation Gate
Die Ebenentrennung Beobachtung / Claim / Regel ist hinreichend stabil.

### OI-G2 Trigger Gate
Die Trigger-Setzung ist konsistent genug, um dominant in Semantic Evolution zu fuehren.

### OI-G3 Resume Gate
Ein spaeterer Lauf kann dieselben Artefakte lesen und fortsetzen, ohne stillschweigend Zusatzwissen zu brauchen.

### OI-G4 Improvement Gate
Aus Fehlmustern lassen sich explizite Verbesserungsnaechstschritte ableiten.

## 8. Decision Outcomes

- `pass`: Operationalisierung ist fuer den aktuellen bounded Slice tragfaehig.
- `hold`: weiter im selben Pfad verbessern.
- `return`: an Umbrella/Main Agent zur Nachschaerfung des Scopes oder Schemas.
- `reject`: Operationalisierung derzeit unbrauchbar oder governance-widrig.

## 9. Langlaufregel

Der Evidence-Intake-Pfad gilt erst dann als langlaufstabil operationalisiert,
wenn nicht nur einzelne Artefakte erzeugt werden,
sondern Fehlmuster ueber mehrere Laeufe hinweg in bessere Schemas, klarere Trigger und robustere Rueckgabeformate uebersetzt werden koennen.

## 10. Selbstverbesserungsregel

Selbstverbesserung ist hier zulaessig als:
- Feld-/Schema-Nachschaerfung
- bessere Konflikttypisierung
- bessere Trigger-Schwellen
- bessere Resume-Felder
- bessere Auditierbarkeit

Nicht zulaessig ist:
- verdeckte Ausweitung des Pfads in semantische oder architektonische Geltung
- implizite Umschreibung von Gates oder Autoritaetsgrenzen

## 11. Folge fuer das Ausfuehrungssystem

Das Ausfuehrungssystem ist fuer die Entwicklung der Operationalisierung erst dann hinreichend evaluiert,
wenn neben Evidenzguete und Promotionslogik auch diese Operationalisierungs-Evaluation aktiv gefuehrt wird.

Ohne dieses Dokument besteht die Gefahr,
dass gute Einzel-Evidenz mit guter Prozess-Operationalisierung verwechselt wird.
