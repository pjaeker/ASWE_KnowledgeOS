---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V2
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Patch- und Angleichungsplan, damit die Kriterienstrategie sauber und prompt-to-end-product E2E-faehig an den bestehenden V2-Codex-Startsatz andocken kann."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/codex
  - topic/patch-planning
  - topic/criteria
  - topic/e2e
---

# ASWE Codex App - Self Improvement Criteria Startset Alignment Patch Plan

## 0. Zweck

Dieses Dokument beschreibt die kleinsten noetigen Angleichungsschritte,
damit die Kriterienstrategie sauber an den bestehenden V2-Codex-Startsatz angeschlossen werden kann,
vom initialen Codex-Prompt bis zum ersten bounded Endprodukt.

## 1. Fuehrender Zielzustand

Zielzustand ist nicht ein neuer paralleler Startsatz,
sondern eine additive Erweiterung des bestehenden V2-Satzes
um eine explizite Kriterien-Planungs- und Promptschicht.

## 2. Zu setzende neue Dokumente

### P0 - Planungs-, Prompt- und Readiness-Schicht
1. `ASWE_DocumentPlan_SelfImprovementCriteria_20260420_V2.md`
2. `ASWE_SelfImprovementCriteria_ArtifactModel_20260420_V2.md`
3. `ASWE_CodexApp_SelfImprovementCriteria_BootstrapPromptPack_20260420_V1.md`
4. `ASWE_CodexApp_SelfImprovementCriteria_PlanExecution_20260420_V2.md`
5. `ASWE_CodexApp_SelfImprovementCriteria_E2E_Startability_Audit_20260420_V2.md`
6. `ASWE_CodexApp_SelfImprovementCriteria_Startset_AlignmentPatchPlan_20260420_V2.md`

## 3. Zu patchende Anschlussstellen

### A. Bestehende Startkette
- bestehende Startkette nicht ersetzen
- neue Kriteriendokumente als additive Folge nach Start Contract und E2E Protocol anschliessen
- Bootstrap Prompt Pack als explizite strategy-spezifische Promptschicht anfuegen

### B. Umbrella- und Workstream-Anschluss
- `ASWE_WS_ArchitectureEvolution` spaeter um Verweis auf die Kriterienstrategie ergaenzen
- `ASWE_WS_EvidenceIntake` nur soweit erweitern,
  wie interne Architekturbeobachtung und externe kontrastive Baselines als zusaetzliche Gegenstaende sauber gebunden werden koennen

### C. Readiness- und Audit-Anker
- bestehende Audit-Pfaddrift im V2-Satz angleichen oder aliasieren
- die neue Kriterienstrategie nicht auf den inkonsistenten Altpfad binden

## 4. Nicht jetzt patchen

Noch nicht Teil dieses Pakets:
- neue `.codex`-Dateien
- neue Start- oder Bootstrap-Skripte
- neue threadnahe Systemprompts ausser dem strategy-spezifischen Prompt Pack
- neue Writer- oder Mirror-Governance

## 5. Patch-Reihenfolge

1. Dokumentplan setzen
2. Artefaktmodell setzen
3. Bootstrap Prompt Pack setzen
4. Ausfuehrungsprotokoll setzen
5. Kriterien-Audit setzen
6. Anschlussstellen in spaeterem bounded Slice angleichen
7. erst danach arbeitsnahe Strategieartefakte materialisieren

## 6. Erfolgskriterium

Die Angleichung ist erfolgreich,
wenn:
- die Kriterienstrategie als additive Planungs-, Prompt- und Arbeitsflaeche explizit ist
- die bestehende Startkette nicht verdeckt ueberschrieben wird
- keine neue Runtime- oder Governancequelle entsteht
- der spaetere Codex-Lauf klar weiss,
  welche Dokumente fuehrend,
  welche promptseitig initialisierend,
  welche vorbereitend
  und welche nur arbeitsnah sind
