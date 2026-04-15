---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Praeziser Prompt-Satz fuer den normierten bounded Evidence-Intake-Selbstevolutionsstart in der Codex App."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/prompts
  - topic/bootstrap
  - topic/evidence
---

# ASWE Codex App Bootstrap Prompt Pack

## 0. Projekt-Kickoff

Diesen Prompt nach Setzen der Projektinstruktion als erste aktive Projektanweisung verwenden.

```text
Arbeite im ASWE_KnowledgeOS-Sonderpfad ArchitectureEvolution mit Fokus auf die bounded Selbstevolution des EvidenceIntake-Pfads.

Fuehrende Kette:
ENTRY_LATEST -> RepoStatusUpdate -> ASWE_WS_ArchitectureEvolution -> ASWE_WS_EvidenceIntake -> PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt -> ASWE_CodexApp_StartContract_20260415_V2 -> ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.

Ziel:
Entwickle und pruefe ein operationalisierbares Evidence-Intake-Verfahren,
das Observation/Claim/Conflict/Trigger mit besserer Qualitaet, Resume-Faehigkeit und Trigger-Disziplin erzeugt.

Arbeitsmodus:
- approval_policy = never ist gegeben; Autonomie wird ueber K5-Artefakte, Auditierbarkeit und Main-Agent-Grenzen kontrolliert
- kein zweiter Writer-Pfad
- Main Agent bleibt finale Synthese- und Schreibinstanz
- Semantic Evolution nur nach G1 pass
- Routing-, Gate- und Resume-Wirkung nur ueber K5-Artefakte
- geeignete Personalisierungen aus dem ChatGPT-App-Kontext nur nutzen, wenn sie explizit materialisiert wurden
- hochgradig deterministische Setup-/Readiness-Schritte bevorzugt ueber Skripte oder Checks abwickeln
```

## 1. Umbrella-Thread

```text
Initialisiere den Umbrella fuer einen bounded Evidence-Intake-Selbstevolutionsstart.

Leiste in genau dieser Reihenfolge:
1. aktiven Anchor Overlay explizieren
2. operating mode festlegen: M1-isolated oder M2-shared-local
3. Bound Active Slice fuer den ersten Evidence-Intake-Lauf festlegen
4. ersten Progress Ledger Entry erzeugen
5. Startblocker pruefen
6. falls M2: gemeinsame Koordinationsflaechen und Bootstrap-Zustand benennen
7. G0 als pass, hold oder return ausweisen
```

## 2. Evidence-Intake-Thread

```text
Arbeite nur im bounded Evidence-Intake-Slice.

Pflichtinputs:
- Scope
- Quellflaeche
- Rueckgabeziel: Umbrella/Main Agent
- operating mode
- letzter Ledger-Stand
- G0 pass

Pflichtoutputs:
- Observation Pack
- Claim Pack
- Conflict Cluster oder no-conflict
- Trigger Packet
- Evidenzgueteprofil
- OI-G0/OI-G1-Einschaetzung
- Live-Handoff Packet an Umbrella
```

## 3. Semantic-Evolution-Thread

```text
Arbeite nur im bounded Semantic-Evolution-Slice.
Starte nur, wenn G1 pass vorliegt.
Nutze Trigger Packet, bounded semantischen Scope, betroffene SSOT-Flaeche und letzten Ledger-Stand.
Gib ausschliesslich ueber Semantic Delta Packet, SSOT-Impact Packet, Promotionsvorpruefnotiz und Live-Handoff Packet an Umbrella zurueck.
```

## 4. Bounded Folgeinstanz / Automation

```text
Arbeite als bounded Folgeinstanz.
Starte nur, wenn dein Start legitimiert ist durch:
- einen expliziten Zeitplan
oder
- einen expliziten Queue-/Ledger-/Gate-Zustand in benannten K5-Flaechen.

Du darfst vorbereiten, beobachten, verdichten und Run Records schreiben.
Du darfst keine finalen Gates setzen und keinen Writer-Pfad oeffnen.
```
