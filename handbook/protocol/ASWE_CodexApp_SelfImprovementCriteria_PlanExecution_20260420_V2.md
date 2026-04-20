---
project: ASWE_KnowledgeOS
doc_type: protocol
version: V2
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Schrittfolge fuer die spaetere bounded Ausfuehrung der Kriterienstrategie in der Codex App vom Bootstrap-Prompt bis zum ersten arbeitsnahen Endprodukt."
tags:
  - layer/handbook
  - artifact/protocol
  - topic/codex
  - topic/criteria
  - topic/self-improvement
  - topic/e2e
---

# ASWE Codex App - Self Improvement Criteria Plan Execution

## 0. Ziel

Dieses Protokoll beginnt beim initialen Codex-Prompt
und endet mit dem ersten bounded Endprodukt der Kriterienstrategie.

## 1. Vor der App

Lies in dieser Reihenfolge:
1. `AGENTS.md`
2. `ENTRY_LATEST`
3. `RepoStatusUpdate`
4. `ASWE_WS_ArchitectureEvolution`
5. `ASWE_WS_EvidenceIntake`
6. `ASWE_CodexApp_StartContract_20260415_V2.md`
7. `ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`
8. `ASWE_DocumentPlan_SelfImprovementCriteria_20260420_V2.md`
9. `ASWE_SelfImprovementCriteria_ArtifactModel_20260420_V2.md`
10. `ASWE_CodexApp_SelfImprovementCriteria_BootstrapPromptPack_20260420_V1.md`
11. `ASWE_CodexApp_SelfImprovementCriteria_E2E_Startability_Audit_20260420_V2.md`

## 2. Start in Codex

Nutze zuerst den Projekt-Kickoff-Prompt aus dem Bootstrap Prompt Pack.
Danach initialisiere den Umbrella-Thread.
Danach starte EvidenceIntake fuer den ersten bounded Kriterien-Slice.

## 3. Readiness-Pruefung

Vor produktiver Strategiearbeit pruefen:
- aktueller Sonderpfad ist noch `ArchitectureEvolution` mit `EvidenceIntake` als erstem Primaerpfad
- kein zweiter Writer-Pfad wird geoeffnet
- die neue Kriterienstrategie wird zunaechst als Planungs- und Arbeitsflaeche behandelt
- Pfad-/Dokumenttyp-Drift der bestehenden Startkette ist als Restrisiko explizit benannt
- keine neue `.codex`-Materialisierung wird fuer diesen ersten Slice vorausgesetzt

## 4. Threads

Pflichtthreads:
- `Architecture Evolution - Umbrella`
- `Evidence Intake`
- optional spaeter `Semantic Evolution`

Fuer den ersten Kriterien-Slice gilt:
- `Semantic Evolution` bleibt nur anschlussfaehig,
  aber nicht automatisch dominant.

## 5. Erster bounded Slice

Leiste in genau dieser Reihenfolge:
1. arbeitsnahen Strategie-Zielpfad festlegen
2. Architekturelement-Inventar anlegen
3. Architektur-Beobachtungsprotokoll anlegen
4. DeepResearch-Baseline-Cards anlegen
5. Kontrastmatrix vorbereiten
6. Kriterienkandidatenregister vorbereiten
7. Rueckgabe an Umbrella/Main Agent erzeugen

## 6. Endprodukt

Der erste bounded Lauf ist erst dann abgeschlossen,
wenn folgende Endprodukte vorliegen:
- Zielpfad fuer die Strategiearbeitsflaeche
- initiales Architekturelement-Inventar
- initiales Architektur-Beobachtungsprotokoll
- initiale DeepResearch-Baseline-Cards
- vorbereitete Kontrastmatrix
- vorbereitetes Kriterienkandidatenregister
- Rueckgabe an Umbrella/Main Agent

## 7. Rueckgabe an Umbrella

Pflicht-Rueckgabe:
- welches Strategieartefakt angelegt wurde
- welche offenen Voraussetzungen bestehen
- ob ein echter interner Beobachtungslauf schon moeglich ist
- ob ein kontrastiver DeepResearch-Lauf bereits bounded moeglich ist
- ob ein semantischer Folgescope schon gerechtfertigt ist

## 8. Stop-Bedingungen

Abbruch oder Rueckgabe zwingend, wenn:
- bestehende Start-/Gate-/Contract-Flaechen implizit als finale Zielarchitektur behandelt werden sollen
- eine neue Governancequelle entstuende
- ein zweiter Writer-Pfad implizit geoeffnet wuerde
- die Strategieartefakte vorschnell in normative Referenzflaechen promoted werden sollen
- die Codex-App-Ausfuehrung mehr Runtime-/Mirror-Materialisierung verlangen wuerde, als aktuell begruendet ist
