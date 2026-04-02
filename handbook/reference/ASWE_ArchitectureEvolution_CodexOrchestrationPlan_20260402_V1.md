# ASWE Architecture Evolution - Codex Orchestration Plan

## Leitentscheidung

Kein eigener neuer Codex-/Autonomie-Infrastruktur-Workstream.
Die bestehende Enabler-Linie `WS_Codex_Subagent_Orchestration` bleibt die einzige querliegende Codex-Orchestrierungs-Workstream-Datei.
Die aus dem ArchitekturEvolutionFramework abgeleiteten Fach-Workstreams werden daran angebunden, nicht daneben verdoppelt.

## Abgeleitete Workstream-Dateien

### Jetzt anlegen
1. `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260402_V1.md`
   - Umbrella-Workstream
   - haelt Zielbild, Pfadreihenfolge, aktive Teil-Workstreams, Gate-Lage

2. `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260402_V1.md`
   - priorisierter Erstpfad
   - deckt Evidence-Quellen, Beobachtung/Claim/Beleg-Trennung, Intake-Artefakte, Konfliktcluster ab

3. `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260402_V1.md`
   - parallel priorisierter Pfad
   - deckt Begriff, Definition, Kategorie, Relation, Drift- und Promotionsfragen ab

### Spaeter anlegen, nicht jetzt voll ausarbeiten
4. `blackboard/workstreams/ASWE_WS_ArchitectureCanonicalization_20260402_V1.md`
   - anlegen erst wenn Evidence- und Semantikpfad erste stabile Outputs liefern

5. `blackboard/workstreams/ASWE_WS_HarnessOperationalization_20260402_V1.md`
   - anlegen erst wenn Architektur-Kanonisierung erste stabile Regeln fuer Layer 4 liefert

6. `blackboard/workstreams/ASWE_WS_SecurityEvolution_20260402_V1.md`
   - anlegen erst wenn Security, Trust & Permission Control Plane und konkrete Adapter-/Umgebungsrisiken ausdetailliert werden

### Nicht als eigene Workstreams anlegen
Diese Punkte bleiben vorerst Slices oder Deliverables innerhalb der obigen Workstreams:
- semantische Promotionsmatrix
- Layer-4-Untergliederung
- Detailmodell des Referenzharness
- technische Materialisierung der Querpfade
- konkrete Codex-App-Orchestrierung je Pfad
- Kopplung Security-Evolution-Pfad <-> Control Plane

## Zuordnung der offenen Punkte aus Framework 7 und 8

### Sofortphase
- Evidence-Intakepfad -> `ASWE_WS_EvidenceIntake_20260402_V1.md`
- Semantischer Evolutionspfad -> `ASWE_WS_SemanticEvolution_20260402_V1.md`

### Zweitphase
- Architektur-Kanonisierungspfad -> `ASWE_WS_ArchitectureCanonicalization_20260402_V1.md`
- Harness-Operationalisierungspfad -> `ASWE_WS_HarnessOperationalization_20260402_V1.md`

### Mitlaufende, spaeter ausdetaillierte Linien
- Security-Evolution -> `ASWE_WS_SecurityEvolution_20260402_V1.md`
- Codex-Orchestrierungs-Enabler -> bestehender `WS_Codex_Subagent_Orchestration`

## Codex-App-Orchestrierung

### Grundmodell
- Codex App = zentrale Orchestrierungsoberflaeche
- Main Agent = ein Thread pro aktivem Workstream oder Child-Workstream
- Worktrees = nur fuer mutierende oder pruefende Slices mit echter Repo-Aenderung
- Skills = fuer Routing, Recherche, Dokumentstruktur, spaetere Harness-Helfer
- Shared Contracts bleiben fuehrend; `.codex` bleibt additive Spiegelung

### Projektstruktur in der Codex App
Empfohlene Threads / Projekte:
1. `Architecture Evolution - Umbrella`
2. `Evidence Intake`
3. `Semantic Evolution`
4. `Architecture Canonicalization` (spaeter)
5. `Harness Operationalization` (spaeter)
6. `Codex Subagent Orchestration` (bestehender Enabler)
7. `Security Evolution` (spaeter)

## Rollenbindung je Workstream

### Umbrella
- kein eigener bounded Spawn als Default
- Aufgabe: Priorisierung, Gate-Entscheidung, Rueckkopplung zwischen Workstreams

### Evidence Intake
- Main Agent
- `railway_observer` nur fuer externe Status-/Runtime-/Logs-nahe Evidenz
- `issue_triager` fuer Konflikt- und Pattern-Cluster
- `bridge_doc_agent` fuer Source-Card- und Claim-Pack-Codifizierung

### Semantic Evolution
- Main Agent fuehrend
- `aswe-question-router` Skill immer aktiv
- `ws_mapper` nur fuer SSOT-/Hidden-Coupling-/Repo-Anker-Fragen
- `bridge_doc_agent` fuer Glossar-/Taxonomie-/Referenzformulierungen
- kein eigener dedizierter Ontologie-Subagent vorhanden -> bewusste Luecke

### Architecture Canonicalization
- Main Agent
- `ws_mapper` fuer Pfade, Coupling, betroffene SSOTs
- `bridge_test_agent` fuer Gate-/Verify-Design
- `issue_triager` bei konkurrierenden Architekturspuren
- `bridge_doc_agent` fuer Policy/ADR/Reference-Ausformulierung

### Harness Operationalization
- Main Agent
- `ws_mapper` fuer Layer-4-Zielpfade und Kopplungen
- `bridge_test_agent` fuer Smoke-/Verify-/Fixture-Design
- `railway_observer` nur wenn Runtime-/Deploy-/Service-Signale wirklich noetig sind
- `bridge_doc_agent` fuer Runbooks und Nutzerpfade

### Security Evolution
- Main Agent
- `issue_triager` fuer Bedrohungscluster und Priorisierung
- `bridge_test_agent` fuer Security-/Verify-/Gate-Vorschlaege
- `ws_mapper` fuer betroffene Pfade, Policies, Control-Plane-Kopplungen
- spaeter moeglicher dedizierter Security-Observer, heute noch nicht vorhanden

## Spawn-Regeln

Spawn nur, wenn:
- Scope unklar -> `ws_mapper`
- Verify/Gate fehlt -> `bridge_test_agent`
- konkurrierende Hypothesen / Dead Ends / Priorisierungsengpass -> `issue_triager`
- wording-nahe Folgearbeit auf bestaetigter technischer oder semantischer Basis -> `bridge_doc_agent`
- Runtime-/Log-/Deployment-Signal read-only noetig -> `railway_observer`

Nicht spawnen:
- fuer reine Synthese
- fuer unscharfe „denk mal mit“-Auftraege
- wenn kein klarer Rueckgabezeitpunkt existiert
- wenn dadurch ein zweiter Writer-Pfad simuliert wuerde

## Empfohlene Anlagereihenfolge der Dateien

1. `ASWE_WS_ArchitectureEvolution_20260402_V1.md`
2. `ASWE_WS_EvidenceIntake_20260402_V1.md`
3. `ASWE_WS_SemanticEvolution_20260402_V1.md`
4. bestehenden `WS_Codex_Subagent_Orchestration` als Enabler anbinden
5. erst danach, bei reifen Outputs:
   - `ASWE_WS_ArchitectureCanonicalization_20260402_V1.md`
   - `ASWE_WS_HarnessOperationalization_20260402_V1.md`
   - `ASWE_WS_SecurityEvolution_20260402_V1.md`

## Kritische Luecken

- kein dedizierter semantischer / ontologischer bounded Codex-Subagent
- Security-Evolution noch nicht als eigener Workstream materialisiert
- konkrete Codex-App-Orchestrierungsregeln je Pfad noch nicht repo-lokal als Referenz dokumentiert
- Progress Ledger / Supervisor Routing / Verify Gates / Resume Sidecar / Dead-End Registry laufen noch ueber den bestehenden Enabler und muessen dort weiter materialisiert werden

## Naechste sinnvolle Datei

Als naechstes zuerst:
`blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260402_V1.md`

Dann:
`blackboard/workstreams/ASWE_WS_EvidenceIntake_20260402_V1.md`
und
`blackboard/workstreams/ASWE_WS_SemanticEvolution_20260402_V1.md`
