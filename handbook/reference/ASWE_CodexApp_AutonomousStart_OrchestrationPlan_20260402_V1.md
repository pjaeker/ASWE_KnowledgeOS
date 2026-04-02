# ASWE CodexApp Autonomous Start Orchestration Plan

## 0. Zweck

Dieses Dokument beschreibt einen Planungsrahmen, der direkt oder ueber wenige klar abgeleitete Repo-Dokumente dazu fuehrt, dass die Arbeit an der Architekturevolution des ASWE-KnowledgeOS in der Codex App bounded-autonom starten kann.

Es ist kein allgemeiner Zukunftsentwurf, sondern eine Startarchitektur fuer:
- aktive Arbeit in der Codex App,
- bounded Multi-Agent-Orchestrierung,
- Priorisierung der Pfade `EvidenceIntake` und `SemanticEvolution`,
- spaetere Rueckkopplung in `ArchitectureCanonicalization`, `HarnessOperationalization` und `SecurityEvolution`.

## 1. Leitentscheidung

### 1.1 Kein neuer Enabler-Workstream
Es wird kein separater neuer Codex-/Autonomie-Enabler-Workstream angelegt.

Die bestehende repo-weite Enabler-Linie fuer bounded Codex-Subagent-Orchestrierung bleibt fuehrend:
- bestehender Orchestrierungs-Enabler-Workstream
- Shared Role / Output / Handoff / Failure Contracts
- Runtime-Policy fuer spawn-readiness vs. materialization

### 1.2 Fachliche Child-Workstreams darunter
Die Architekturevolution startet in der Codex App nicht als ein einziger monolithischer Task, sondern als Umbrella plus priorisierte Child-Workstreams.

## 2. Kanonische Startstruktur

### 2.1 Sofort zu fuehrende Workstreams
1. `ASWE_WS_ArchitectureEvolution_20260402_V1.md`
2. `ASWE_WS_EvidenceIntake_20260402_V1.md`
3. `ASWE_WS_SemanticEvolution_20260402_V1.md`

### 2.2 Nachgelagerte Workstreams
4. `ASWE_WS_ArchitectureCanonicalization_20260402_V1.md`
5. `ASWE_WS_HarnessOperationalization_20260402_V1.md`
6. `ASWE_WS_SecurityEvolution_20260402_V1.md`

### 2.3 Warum diese Struktur
- `ArchitectureEvolution` ist der Umbrella fuer Priorisierung, Rueckkopplung und Promotionsentscheidungen.
- `EvidenceIntake` und `SemanticEvolution` sind die zwei zuerst aktiv zu bearbeitenden Fachpfade.
- die spaeteren Pfade werden erst operationalisiert, wenn die ersten beiden reife Outputs liefern.

## 3. Zusetzlich noetige Startdokumente fuer bounded Autonomie

### 3.1 Pflichtdokumente vor dem autonomen Codex-Start
Neben dem bestehenden Enabler-Workstream werden diese Dokumente benoetigt:

#### A. Plan- und Startdokument
- `handbook/reference/ASWE_CodexApp_AutonomousStart_OrchestrationPlan_20260402_V1.md`
  - dieses Dokument bzw. seine repo-lokale Fassung

#### B. Umbrella-Workstream
- `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260402_V1.md`

#### C. Priorisierte Child-Workstreams
- `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260402_V1.md`
- `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260402_V1.md`

#### D. Neue Rollenvertraege
- `handbook/reference/ASWE_EvidenceIntake_RoleContract_20260402_V1.md`
- `handbook/reference/ASWE_SemanticEvolution_RoleContract_20260402_V1.md`

#### E. Codex-App-Startvertrag
- `handbook/reference/ASWE_CodexApp_StartContract_20260402_V1.md`

#### F. Optional spaeter
- `.codex/agents/evidence_intake_agent.toml`
- `.codex/agents/semantic_evolution_agent.toml`

### 3.2 Wichtige Regel
Die neuen `.codex`-Artefakte sind nicht Voraussetzung fuer den Start.
Startfaehigkeit wird zuerst ueber:
- Workstream-Dateien
- Role Contracts
- Start Contract
- bestehenden Enabler

erreicht.

## 4. Rollen- und Faehigkeitslage

## 4.1 Bestehende Rollen mit passablem Fit
- `ws_mapper`
- `issue_triager`
- `bridge_doc_agent`
- spaeter `bridge_test_agent`
- nur selektiv `railway_observer`

## 4.2 Bestehende Rollen mit fehlender Passgenauigkeit
Die aktuellen materialisierten Rollen sind deutlich auf `active technical workstream` und `active technical slice` ausgerichtet.
Fuer `EvidenceIntake` und besonders `SemanticEvolution` sind sie nur teilweise passend.

## 4.3 Explizite Rollengaps
### evidence_intake_agent
Pflichtfaehigkeiten:
- Quellenaufnahme
- Beobachtung / Claim / Beleg-Trennung
- Provenienz- und Frischepruefung
- Konflikt- und Pattern-Kandidatenbildung
- Intake-Normalisierung

### semantic_evolution_agent
Pflichtfaehigkeiten:
- Begriff / Benennung / Definition
- Kategorie / Relation / Nicht-Gleichsetzung
- Glossar-/Taxonomie-/Router-Abgleich
- externe Fachbegriffsanbindung
- semantische Promotionslogik
- Driftpruefung

## 4.4 Vertragskorrektur
Mittelfristig soll die Shared-Contract-Sprache generalisiert werden von:
- `active technical workstream`
- `active technical slice`

zu:
- `active bounded workstream`
- `active bounded slice`

Sonst bleiben Evidence- und Semantic-Workstreams systemisch technisch nachrangig modelliert.

## 5. Informationsfluss fuer den autonomen Start

## 5.1 Globaler Startfluss
1. Main Agent in Codex App startet im Projekt `Architecture Evolution`.
2. Startdokumente und Umbrella-Workstream werden gelesen.
3. Router-first-Einordnung wird fuer den konkreten Startauftrag ausgefuehrt.
4. Entscheidung: `EvidenceIntake` oder `SemanticEvolution` zuerst aktiv.
5. bounded Helfer werden nur spawned, wenn Trigger und Rueckgabegrenzen explizit sind.
6. Rueckgabe an Main Agent.
7. Main Agent aktualisiert nur die vorgesehenen Arbeitsartefakte oder erzeugt PR-vorbereitende Diffs entlang der bestehenden Governance.

## 5.2 EvidenceIntake-Fluss
Input:
- Hands-off-Erfahrungen
- Agentic News Intake
- DeepResearch-Artefakte
- repo-interne Befunde

Transformation:
- Aufnahme
- Normalisierung
- Beobachtung / Claim / Beleg-Trennung
- Konfliktcluster
- Pattern-Kandidaten

Output:
- strukturierte Intake-Artefakte in Library / Blackboard
- Rueckgabe an Main Agent
- nur bei klarer Begriffs- oder Kategorienwirkung Uebergabe an `SemanticEvolution`

## 5.3 SemanticEvolution-Fluss
Input:
- Intake-Artefakte
- Glossar
- Taxonomie
- Ontologische Basis
- Router
- betroffene Referenzen

Transformation:
- Begriffspruefung
- Relations- und Kategorienpruefung
- externe Fachabgleichung
- Delta-Vorschlaege fuer semantische SSOTs

Output:
- semantische Delta-Kandidaten
- Rueckgabe an Main Agent
- nur bei stabiler normativer Wirkung Uebergabe an `ArchitectureCanonicalization`

## 5.4 Authority- und Handoff-Regeln
- Beobachtungen treten im Intake ein.
- Claims werden im Intake geformt oder geordnet.
- Bedeutungs- und Kategorienentscheidungen entstehen im semantischen Pfad.
- Geltung entsteht erst spaeter in der Architektur-Kanonisierung.
- finale Synthese bleibt beim Main Agent.
- kein bounded Helfer darf finale Schreib- oder Geltungsautoritaet uebernehmen.

## 6. Codex-App-Topologie

## 6.1 Projekte / Threads
Empfohlene Threads oder Projekte in der Codex App:
1. `Architecture Evolution - Umbrella`
2. `Evidence Intake`
3. `Semantic Evolution`
4. spaeter `Architecture Canonicalization`
5. spaeter `Harness Operationalization`
6. bestehender Enabler `Codex Subagent Orchestration`
7. spaeter `Security Evolution`

## 6.2 Worktree-Regel
Worktrees nur fuer:
- konkrete Doku-/Referenzaenderungen
- diff-faehige Workstream- oder Reference-Aktualisierung
- spaetere `.codex`-Materialisierung
- Verify-/Smoke-Artefakte

Keine Worktrees noetig fuer:
- reine Planungs- oder Analyse-Threads ohne Dateioperationen

## 6.3 Spawn-Regeln
Spawn nur, wenn:
- Scope oder SSOT unklar -> `ws_mapper`
- konkurrierende Hypothesen / Dead Ends / Priorisierung -> `issue_triager`
- bestaetigte Evidence wording-nah codifizieren -> `bridge_doc_agent`
- Verify-/Gate-Design spaeter noetig -> `bridge_test_agent`
- live runtime evidence wirklich noetig -> `railway_observer`

Nicht spawnen:
- fuer freie Synthese
- fuer semantische Grundentscheidung ohne passenden Rollenvertrag
- wenn kein klarer Rueckgabezeitpunkt existiert
- wenn ein zweiter Writer-Pfad auch nur implizit entstuende

## 7. Security, Trust & Permission im Startmodell

### 7.1 Fixe Schutzgrenze
Die Security, Trust & Permission Control Plane bleibt oberhalb der Codex-App-Orchestrierung.

### 7.2 Startrelevante Sicherheitsregeln
- kein zweiter Writer-Pfad
- keine Workflow- oder Permission-Aufweichung
- kein Secret-Handling ausserhalb bestehender Policies
- keine autonome Erweiterung von Allowlists
- keine autonomen Aenderungen an kritischen Governance-Pfaden

### 7.3 Security-Evolution nicht blockierend
Der spaetere Workstream `SecurityEvolution` muss nicht fertig sein, damit die Arbeit in der Codex App startet.
Aber der autonome Start darf nur innerhalb der bestehenden Schutzgrenzen erfolgen.

## 8. Definition von autonom startfaehig

Die Arbeit gilt als bounded-autonom startfaehig, wenn:

1. der bestehende Enabler-Workstream unveraendert als fuehrende Orchestrierungs-Enabler-Linie gesetzt ist
2. das Umbrella-Dokument existiert
3. `EvidenceIntake` und `SemanticEvolution` als Workstreams existieren
4. beide neuen Rollenvertraege als Referenzen existieren
5. ein `CodexApp Start Contract` existiert
6. Codex App Threads / Projekte entsprechend vorbereitet sind
7. klar ist, dass der Main Agent finale Synthese- und Schreibautoritaet behaelt

## 9. Minimaler Inhalt des CodexApp Start Contract

Der Start Contract soll mindestens enthalten:
- Startreihenfolge der zu lesenden Dokumente
- welchen Workstream der Main Agent zuerst aktiviert
- wann `EvidenceIntake` priorisiert wird
- wann `SemanticEvolution` priorisiert wird
- welche bounded Rollen jetzt zulaessig sind
- welche bounded Rollen noch fehlen
- wann Rueckgabe an den Main Agent zwingend ist
- welche Dateien in-scope sind
- welche Pfade tabu sind
- welche Outputs der erste Lauf liefern soll

## 10. Reihenfolge der konkreten Erstellung

### Phase 1 - Startfaehigkeit herstellen
1. `ASWE_WS_ArchitectureEvolution_20260402_V1.md`
2. `ASWE_WS_EvidenceIntake_20260402_V1.md`
3. `ASWE_WS_SemanticEvolution_20260402_V1.md`
4. `ASWE_EvidenceIntake_RoleContract_20260402_V1.md`
5. `ASWE_SemanticEvolution_RoleContract_20260402_V1.md`
6. `ASWE_CodexApp_StartContract_20260402_V1.md`

### Phase 2 - Codex App bounded-autonom starten
7. Projekte / Threads in Codex App anlegen
8. Umbrella-Thread mit Start Contract und Workstreams initialisieren
9. Main Agent startet mit Router-first und priorisiert `EvidenceIntake`
10. `SemanticEvolution` wird zugeschaltet, sobald Intake-Artefakte stabil genug sind

### Phase 3 - erst danach
11. `ArchitectureCanonicalization`
12. `HarnessOperationalization`
13. `SecurityEvolution`
14. optionale `.codex`-Materialisierung neuer Rollen

## 11. Kritische Risiken

- bestehende technische Rollen werden ueberdehnt
- semantische Entscheidungen werden wording- oder mapping-lastig verkleidet
- Codex App Parallelitaet erzeugt scheinbare statt echte Arbeitsteilung
- fehlende Role Contracts erzwingen unsaubere Main-Agent-Improvisation
- Security-/Permission-Grenzen werden als implizit statt explizit behandelt

## 12. Zielzustand

Der Zielzustand dieses Plans ist nicht nur ein besserer OrchestrationPlan.

Der Zielzustand ist:
- eine kleine, repo-passende Dokumentenmenge,
- die den bestehenden Codex-Enabler respektiert,
- neue fachlich passende Workstreams und Rollenvertraege einfuehrt,
- und damit die bounded-autonome Arbeit an der Architekturevolution in der Codex App direkt startfaehig macht.
