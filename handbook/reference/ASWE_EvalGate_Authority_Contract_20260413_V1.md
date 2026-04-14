---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Abstrakter, aber operativer Vertrag fuer Eval-/Gate-Logik, Promotionsschwellen und Autoritaetsgrenzen des Execution Systems."
tags:
  - layer/handbook
  - artifact/reference
  - topic/eval
  - topic/gates
  - topic/authority
  - topic/promotion
---

# ASWE Eval Gate and Authority - Contract

## 0. Zweck

Dieses Dokument beantwortet die Luecken **L3** und **L4**.
Es trennt:
- **Eval** als qualitative Bewertungslogik,
- **Gate** als normative Freigabe- oder Rueckgabeentscheidung,
- **Verify** als evidenzliefernde Pruefoperation.

## 1. Grundsatz

Keine Pfadpromotion ohne explizite Eval-Sicht.
Keine Gate-Entscheidung ohne benannte Autoritaet.
Keine Verify-Operation ersetzt ein Gate.

## 2. Eval-Gegenstand

Eval betrachtet mindestens:
1. Provenienz-/Evidenztragfaehigkeit
2. semantische Klarheit
3. Ebenenkorrektheit
4. SSOT-Impact-Klarheit
5. Boundedness des aktiven Slices
6. Governance-Kompatibilitaet
7. Resume-/Mirror-Faehigkeit

## 3. Gate-Familien

### G0 Anchor Gate
Prueft:
- stimmt der Session-Anker,
- ist der aktive Workstream korrekt,
- ist der Slice sauber gebunden,
- liegt Drift vor.

### G1 Intake Promotion Gate
Prueft:
- ist Evidence Intake mindestens **EI-P4**,
- ist das Trigger Packet hinreichend belastbar,
- ist der semantische Folgescope bounded.

### G2 Semantic Delta Gate
Prueft:
- ist Semantic Evolution mindestens **SE-P4**,
- ist das Delta typisiert,
- ist die Ebenenordnung korrekt,
- ist der SSOT-Impact benannt.

### G3 Architecture Review Gate
Prueft:
- liegt ein echter Architektur- oder SSOT-Kanonisierungskandidat vor,
- ist die Wirkung ueber den Einzelfall hinaus explizit,
- ist Rueckgabe an Main Agent erfolgt.

### G4 Writer Gate
Prueft:
- ist Mutation ueberhaupt noetig,
- ist Main Agent der einzige Writer,
- bleibt genau ein Writer-Worktree und genau ein Branch erhalten.

### G5 Mirror Gate
Prueft:
- ist eine repo-lokale oder `.codex`-Spiegelung gerechtfertigt,
- bleibt Spiegelung additiv,
- ersetzt sie keinen semantischen Ursprung.

## 4. Verify Gates

Verify Gates liefern Evidenz fuer Gates, entscheiden aber nicht selbst.
Mindestsatz:
- Provenienz-/Frischepruefung
- Packet-Vollstaendigkeit
- Scope-Boundedness
- SSOT-Betroffenheit
- Autoritaetsgrenze eingehalten
- Write-/Mirror-Sicherheit eingehalten

## 5. Zulaessige Gate-Entscheidungen

- `pass`
- `hold`
- `return`
- `reject`
- `defer`

### Bedeutungen
- `pass`: naechster Pfad oder Modus darf aktiviert werden
- `hold`: im selben Pfad weiterarbeiten
- `return`: an Main Agent / Umbrella zurueckgeben
- `reject`: aktueller Kandidat ist unzulaessig
- `defer`: Entscheidung benoetigt spaeteren Pfad oder weitere Evidenz

## 6. Autoritaetsmatrix

### 6.1 Main Agent
Darf:
- finale Synthese leisten
- Gate-Entscheidungen final setzen
- Writer Gate oeffnen
- Mirror Gate oeffnen

Darf nicht delegieren:
- finale Repo-Schreibautoritaet
- finale Hauptfokusverschiebung

### 6.2 Umbrella / ArchitectureEvolution
Darf:
- Rueckkopplung organisieren
- Pfadpromotion vorbereiten
- Gate-Kandidaten konsolidieren

Darf nicht:
- zweiten Writer-Pfad eroefnen
- finale SSOT-Umschreibung vornehmen

### 6.3 Evidence Intake
Darf:
- bis EI-P4 arbeiten
- Trigger setzen
- Rueckgabe an Main Agent oder Semantic Evolution vorbereiten

Darf nicht:
- semantische Endgueltigkeit setzen
- Architektur-Geltung ableiten

### 6.4 Semantic Evolution
Darf:
- bis SE-P4 arbeiten
- Deltas typisieren
- SSOT-Impact markieren
- Architecture Review Candidate vorbereiten

Darf nicht:
- finale Kanonisierung setzen
- finale Policy-/Gate-Setzung vornehmen

### 6.5 Spaetere ArchitectureCanonicalization
Darf:
- kanonisierungsreife Kandidaten strukturieren
- Architektur-/SSOT-Folgen explizieren

Darf nicht ohne Main Agent:
- finale Repo-Schreibentscheidung vollziehen

## 7. Meta-Evaluation

Die Gate-Logik ist selbst zu beobachten.
Pflichtfragen:
- Wurden Trigger zu frueh gesetzt?
- Wurden Deltas auf falscher Ebene gebildet?
- Gab es Role Drift?
- Gab es Mirror Drift?
- Wurde Budget verbrannt ohne Gate-Fortschritt?

## 8. Nicht-Ziele

Dieses Dokument liefert keine:
- projektfeine KPI-Operationalisierung
- konkrete Verify-Skripte
- konkrete CI-/Harness-Implementierung
