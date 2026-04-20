---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Bootstrap Prompt Pack fuer die bounded Codex-App-Ausfuehrung der Kriterienstrategie vom initialen Startprompt bis zur Rueckgabe des ersten arbeitsnahen Endprodukts."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/prompt-pack
  - topic/criteria
  - topic/bootstrap
---

# ASWE Codex App - Self Improvement Criteria Bootstrap Prompt Pack

## 0. Zweck

Dieses Dokument stellt die minimale Promptschicht bereit,
mit der die Kriterienstrategie in der Codex App vom initialen Startprompt
bis zum ersten bounded Endprodukt ausgefuehrt werden kann.

## 1. Projekt-Kickoff-Prompt

Nutze diesen Prompt fuer den initialen Codex-Start:

```text
Arbeite im Repo ASWE_KnowledgeOS. Ziel ist nicht sofortige Standardisierung,
sondern die bounded Vorbereitung der Strategie zur Gewinnung, Kontrastierung,
Validierung und spaeteren Standardisierung universeller, operationalisierbarer
Selbstverbesserungsqualitaetskriterien.

Fuehrende Kette:
AGENTS -> ENTRY_LATEST -> RepoStatusUpdate -> ASWE_WS_ArchitectureEvolution ->
ASWE_WS_EvidenceIntake -> ASWE_CodexApp_StartContract_20260415_V2 ->
ASWE_CodexApp_AutonomousStart_E2E_20260415_V2 ->
ASWE_DocumentPlan_SelfImprovementCriteria_20260420_V2 ->
ASWE_SelfImprovementCriteria_ArtifactModel_20260420_V2 ->
ASWE_CodexApp_SelfImprovementCriteria_E2E_Startability_Audit_20260420_V2 ->
ASWE_CodexApp_SelfImprovementCriteria_PlanExecution_20260420_V2.

Behandle bestehende Start-, Gate- und Contract-Flaechen als Anschlussanker,
aber nicht automatisch als finale Zielarchitektur.
Kein zweiter Writer-Pfad. Keine neue `.codex`-Materialisierung.
Rueckgabeziel ist ein erster arbeitsnaher Startsatz fuer die Kriterienstrategie.
```

## 2. Umbrella-Initialisierungsprompt

```text
Arbeite als Umbrella/Main Agent fuer ArchitectureEvolution.
Binde die Kriterienstrategie additiv an den bestehenden V2-Startsatz an.
Setze keinen neuen parallelen Startsatz.
Leite den ersten bounded Slice so, dass folgende Zielartefakte vorbereitet werden:
- Zielpfad fuer die Strategiearbeitsflaeche
- Architekturelement-Inventar
- Architektur-Beobachtungsprotokoll
- DeepResearch-Baseline-Cards
- Kontrastmatrix intern vs. extern
- Kriterienkandidatenregister
Rueckgabe an Main Agent mit offenem Restunsicherheitsraum.
```

## 3. Evidence-Intake-Startprompt

```text
Arbeite im bounded Pfad EvidenceIntake,
aber mit erweitertem Gegenstand: interne Architekturbeobachtungen und kontrastive externe Baselines.
Trenne strikt Beobachtung, Aussage, Regel, Vergleichsmassstab und Kriterium.
Erzeuge noch keine finale semantische oder architektonische Geltung.
Lege nur arbeitsnahe Strategieartefakte an oder bereite sie vor.
Rueckgabe an Umbrella ist zwingend.
```

## 4. Optionaler Semantic-Folgeschritt

```text
Starte Semantic Evolution nur,
wenn aus dem ersten bounded Kriterien-Slice ein expliziter,
eng begrenzter semantischer Folgescope hervorgeht.
Keine finale Kanonisierung.
Keine Policy- oder Gate-Setzung.
Nur Delta-, Impact- und Rueckgabevorbereitung.
```

## 5. Closeout-/Rueckgabeprompt

```text
Fasse den Lauf so zusammen,
dass fuer den Main Agent eindeutig sichtbar ist:
- welche Strategieartefakte angelegt oder vorbereitet wurden
- welche offenen Voraussetzungen bestehen
- ob DeepResearch kontrastiv bereits nutzbar ist
- ob ein semantischer Folgescope gerechtfertigt ist
- welcher naechste bounded Slice minimal noetig ist
Keine implizite Promotion in normative Referenzflaechen.
```

## 6. Endprodukt dieses Prompt Packs

Das Endprodukt des ersten bounded Laufs ist:
- ein expliziter arbeitsnaher Zielpfad
- ein initiales Inventar der zu pruefenden Architekturelemente
- ein initiales Beobachtungsprotokoll
- initiale Baseline-Cards
- eine vorbereitete Kontrastmatrix
- ein vorbereitetes Kriterienkandidatenregister
- eine Rueckgabe an Umbrella/Main Agent
