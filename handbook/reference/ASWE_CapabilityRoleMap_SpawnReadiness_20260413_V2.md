---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Capability-basierte Rollenkarte und Spawn-Readiness-Vertrag fuer bounded Rollen im ArchitectureEvolution-Sonderpfad, explizit harmonisiert mit dem Erkenntnisprozess-Rollenmodell."
tags:
  - layer/handbook
  - artifact/reference
  - topic/roles
  - topic/capabilities
  - topic/spawn-readiness
  - topic/codex
  - topic/epistemics
---

# ASWE Capability Role Map and Spawn Readiness

## 0. Zweck

Dieses Dokument beantwortet **L7**.
Es bewertet Rollen nicht primaer nach historischem Namen, sondern nach **epistemischer Funktion**, **pfadspezifischer Capability** und **Spawn-Readiness**.

Es harmonisiert dabei drei Ebenen:
- das generische Erkenntnisprozess-Rollenmodell,
- die pfadspezifischen Role Contracts von `EvidenceIntake` und `SemanticEvolution`,
- die shared bounded-governance fuer Main Agent, Handoff, Runtime und Materialisierung.

## 1. Fuehrender Schnitt

Das Erkenntnisprozess-Rollenmodell ist **pfadunabhaengig** und bestimmt Rollen zuerst epistemisch statt arbeitsorganisatorisch oder tool-seitig.
Daraus folgt fuer den ArchitectureEvolution-Sonderpfad:
- Rollenklassen werden zuerst nach Erkenntnisfunktion unterschieden.
- Workstreams und Role Contracts konkretisieren diese Klassen erst pfadspezifisch.
- Tool-/Runtime-Zuschneidung folgt erst danach.

Die Capability-Rollenkarte ist daher **keine Gegenontologie** zum Erkenntnisprozess-Rollenmodell,
sondern dessen repo-lokale Pfadabbildung fuer `ArchitectureEvolution`.

## 2. Primitive und Zustandsbegriffe

Fuehrende Primitive fuer dieses Dokument sind:
- Main Agent
- bounded role
- workstream
- contract
- handoff packet
- runtime mirror

Fuehrende Zustaende sind:
- `recommend-only`
- `spawn-ready`
- `materialized`

Hauptregel:
Der Main Agent bleibt:
- finale Syntheseinstanz
- finale Geltungsinstanz
- finale Schreibinstanz

## 3. Epistemische Rollenklassen als Oberbau

### R1 Beobachtung / Messung
Gegenstand:
- Rohsignal
- Zustand
- Messung
- Beobachtung

Grundoperationen:
- erfassen
- isolieren
- beschreiben
- provenance-beziehen

### R2 Analyse / Auswertung
Gegenstand:
- Struktur
- Muster
- Abweichung
- Relevanz
- Guete
- Konflikt

Grundoperationen:
- ordnen
- clustern
- vergleichen
- bewerten

### R3 Interpretation / Modellbildung
Gegenstand:
- Begriff
- Kategorie
- Relation
- Erklaerung
- Delta
- Modellkandidat

Grundoperationen:
- abgrenzen
- typisieren
- relationieren
- modellieren

### R4 Umsetzung / Intervention
Gegenstand:
- Artefaktaenderung
- Konfigurationsaenderung
- Modellmaterialisierung
- Implementationsaenderung

Grundoperationen:
- aendern
- erzeugen
- materialisieren
- operationalisieren

### R5 Test / Bestaetigung
Gegenstand:
- Hypothese
- Aenderung
- Modell
- Gate-Kandidat

Grundoperationen:
- pruefen
- bestaetigen
- falsifizieren
- begrenzen

### R6 Synthese / Governance
Gegenstand:
- Priorisierung
- Geltung
- Freigabe
- Kanonisierung
- Hauptfokus
- Schreibautoritaet

Grundoperationen:
- entscheiden
- priorisieren
- freigeben
- zurueckweisen

## 4. Typische epistemische Uebergaenge

Zulaessige generische Uebergaenge sind:
- `R1 -> R2`
- `R2 -> R3`
- `R3 -> R4`
- `R4 -> R5`
- `R5 -> R6`
- `R3 -> R6`
- `R2 -> R6`

Fuer den aktuellen Sonderpfad ist daraus abzuleiten:
- `EvidenceIntake` liegt primaer auf `R1 + R2`.
- `SemanticEvolution` liegt primaer auf `R3`.
- `ArchitectureCanonicalization` liegt strukturell an der Schwelle `R3 -> R6`, spaeter mit kontrollierter Rueckwirkung auf `R4` fuer repo-lokale Artefaktaenderung.
- `HarnessOperationalization` liegt erst spaeter auf `R4`, nie vor geklaerter Architektur- und Geltungsfrage.
- Verify-/Eval-Arbeit liegt primaer auf `R5`, nicht auf `R6`.
- Nur der Main Agent traegt `R6` vollumfaenglich.

## 5. Pfadspezifische Capability-Familien

### C1 Evidence Intake Capability
Epistemischer Fit:
- primaer `R1`
- sekundar `R2`

Pfadgegenstand:
- Quellenaufnahme
- Beobachtungsextraktion
- Claim-Bildung
- Evidenzgueteprofil
- Konfliktcluster
- Trigger-Bildung

### C2 Semantic Evolution Capability
Epistemischer Fit:
- primaer `R3`
- mit Rueckbindung an `R2`

Pfadgegenstand:
- Begriffsabgrenzung
- Definitionspruefung
- Klassifikationspruefung
- Relationspruefung
- Ebenenpruefung
- Delta-Typisierung
- SSOT-Impact-Beschreibung

### C3 Architecture Canonicalization Preparation Capability
Epistemischer Fit:
- vorbereitend `R3`
- uebergangsnah zu `R6`

Pfadgegenstand:
- Architekturkandidat strukturieren
- Policy-/Contract-/Gate-Wirkung explizieren
- Schicht- und Rollenwirkung benennen

### C4 Eval / Verify Capability
Epistemischer Fit:
- primaer `R5`

Pfadgegenstand:
- Gueteachsen anwenden
- Verify-Bedarf benennen
- Gate-Kandidaten pruefbar machen
- Falsifikations- und Bestaetigungsbedarf explizieren

### C5 Adapter / Environment Stewardship Capability
Epistemischer Fit:
- kein eigener primaerer Erkenntnispfad
- querschnittlich strukturwahrend

Pfadgegenstand:
- Thread-Topologie abbilden
- Environment-Grenzen wahren
- Mirror-Disziplin sichern
- Write-/Read-Modi explizieren

### C6 Langlauf- und Resume Capability
Epistemischer Fit:
- querschnittlich stabilisierend
- keine eigene Geltungsautoritaet

Pfadgegenstand:
- Progress Ledger fuehren
- Resume Sidecar stabil halten
- Dead Ends markieren
- Budget-Regeln ueberwachen

## 6. Rollenstatus-Matrix

### 6.1 Fuehrend und aktiv
- **Main Agent**
  - epistemischer Fit: `R6`
  - Rolle: finale Synthese-, Geltungs- und Schreibinstanz
  - Status: aktiv und fuehrend

### 6.2 Jetzt wiederverwendbar als bounded Hilfsrollen
- **issue_triager**
  - epistemischer Fit: ueberwiegend `R2`, teilweise `R5`
  - Rolle: Konflikt-/Priorisierungscluster
  - Status: situativ wiederverwendbar, nicht default

- **ws_mapper**
  - epistemischer Fit: ueberwiegend `R2 -> R3`
  - Rolle: SSOT-/Kopplungs- und Scope-Klaerung
  - Status: wiederverwendbar nach enger Slice-Bindung

- **bridge_doc_agent**
  - epistemischer Fit: nachgelagerte Strukturcodifizierung, keine primaere Erkenntnisrolle
  - Rolle: wording-nahe Dokumentationskodifizierung bestaetigter Struktur
  - Status: wiederverwendbar nur nach bestaetigter Lage und nie als Ersatz fuer `R6`

- **railway_observer**
  - epistemischer Fit: spezialisierte `R1`-Zulieferung fuer externe Runtime-Signale
  - Rolle: externer Runtime-Observer
  - Status: nur fuer echte externe Runtime-Evidenz wiederverwendbar

### 6.3 Capability-seitig tragfaehig, aber bewusst noch nicht als dedizierter Runtime Mirror
- `evidence_intake_agent`
  - epistemischer Fit: `R1 + R2`
  - Status: fachlich tragfaehig, aber nicht default materialisiert

- `semantic_evolution_agent`
  - epistemischer Fit: `R3`
  - Status: fachlich tragfaehig, aber nicht default materialisiert

Begruendung:
Die pfadspezifische Fachmethodik steht inzwischen ueber Methodenmodell und Role Contract. Der Start Contract haelt zugleich explizit fest, dass dedizierte Runtime Mirrors fuer diese Rollen noch nicht passgenau genug sind. Deshalb gilt: **capability-fit ja, default mirror nein**.

### 6.4 Explizite Role Gaps
- ArchitectureCanonicalization Preparer
  - epistemischer Fit: `R3 -> R6`
  - Grund: spaeterer Promotionspfad ist benannt, aber noch nicht als bounded Hilfsrolle geschnitten

- Eval/Verify Analyst
  - epistemischer Fit: `R5`
  - Grund: Verify Gates werden gebraucht, aber die Rolle ist noch nicht eigenstaendig ausformuliert

- Adapter/Environment Steward
  - epistemischer Fit: querschnittlich strukturwahrend
  - Grund: Codex-App-Fit und Mirror-Disziplin sind relevant, aber noch nicht rollenseitig stabilisiert

- Resume/Ledger Steward
  - epistemischer Fit: querschnittlich stabilisierend
  - Grund: Langlaufkontinuitaet ist Bedarf, aber noch nicht als bounded Hilfsrolle operationalisiert

## 7. Spawn-Readiness-Regeln

Eine Rolle ist nur spawn-ready, wenn:
1. der effektive Session-Contract explizit steht,
2. der aktive Workstream feststeht,
3. der Scope bounded ist,
4. die Inputflaeche bzw. Evidence-Oberflaeche bekannt ist,
5. Contract oder Methodenmodell anwendbar ist,
6. der Return-Punkt explizit ist,
7. kein zweiter Writer-Pfad entsteht.

Zusaetzlich gilt:
- kein Spawn fuer freie Synthese
- kein Spawn ohne Return-Punkt
- keine implizite Writer-Ausweitung
- keine Materialisierung ohne nachgewiesenen Mehrwert

## 8. Handoff-Minimum

Jeder Rolleneinsatz muss mindestens rueckgabefaehig machen:
- Scope
- Input
- Transformation
- Output
- Restunsicherheit
- naechstes Ziel
- Stop-/Return-Grund

Damit wird die Capability-Rollenkarte an Handoff-Disziplin statt an implizite Thread-Kommunikation gebunden.

## 9. Materialized vs. Spawn-Ready

- **recommend-only**: Rolle ist als moeglicher bounded Helfer sinnvoll, wird aber fuer den aktuellen Slice nicht aktiviert
- **spawn-ready**: aktuelle Aufgabe darf diese Rolle jetzt bounded einsetzen
- **materialized**: repo-lokaler Mirror oder `.codex`-Artefakt existiert

Eine Rolle kann also sein:
- `recommend-only`, aber noch nicht `spawn-ready`
- `spawn-ready`, aber nicht `materialized`
- `materialized`, aber nicht default `spawn-ready`

## 10. Nicht-Ziele

Dieses Dokument legt noch nicht fest:
- konkrete `.codex`-Materialisierung
- konkrete Skill-Dateien
- konkrete Modellzuordnung je Rolle
- finale Umbenennung historischer Rollenfamilien
- finale Ausformulierung spaeterer ArchitectureCanonicalization- und Harness-Rollen
