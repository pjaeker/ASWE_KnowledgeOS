---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Dokumentenplan fuer die bounded Codex-App-Materialisierung des Prompt-Architekturpakets inklusive Zielpfaden, Integrationsentscheidungen und Startschicht-Nachzuegen."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/prompt-architecture
  - topic/documentation
  - topic/codex
---

# ASWE Document Plan - Prompt Architecture

## 0. Zweck
Dieses Dokument plant das bounded Prompt-Architekturpaket fuer die spaetere Codex-App-Materialisierung.
Es fuehrt nur Artefakte mit Repo-Zielpfaden.
Externe Paket-Hilfsdateien werden nicht als eigenstaendige Repo-Artefakte uebernommen,
sondern gezielt integriert oder weggelassen.

## 1. Reduktionsentscheidung
Die Dateimenge wird gegenueber dem frueheren Paket reduziert,
indem der separate `AlignmentPatchPlan` in dieses Dokument und in das Implementierungs-Runbook integriert wird.
Die eigenstaendige Datei `handbook/explanation/ASWE_CodexApp_PromptArchitecture_AlignmentPatchPlan_20260420_V1.md` entfaellt.

## 2. Kernartefakte
### create
- `blackboard/workstreams/ASWE_WS_PromptArchitecture_20260420_V1.md`
- `handbook/reference/ASWE_PromptEval_Contract_20260420_V1.md`
- `handbook/reference/ASWE_Prompt_Preflight_Operationalization_20260420_V1.md`
- `handbook/reference/ASWE_CodexApp_PromptPack_Rendering_Contract_20260420_V1.md`
- `handbook/runbooks/ASWE_CodexApp_PromptArchitecture_Implementation_Runbook_20260420_V1.md`

### update
- `handbook/reference/ASWE_CodexApp_StartContract_20260420_V3.md`
- `handbook/reference/ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260420_V3.md`
- `handbook/reference/ASWE_CodexApp_BootstrapPromptPack_20260420_V3.md`

### follow-up
- RepoStatusUpdate refresh
- ENTRY_LATEST refresh

## 3. Deduktive Reihenfolge
1. Startkette und Readiness-Drift pruefen
2. Eval-Vertrag schneiden
3. Preflight aus Eval ableiten
4. Rendering aus Eval + Preflight ableiten
5. Startschicht nachziehen
6. State-Refresh vorbereiten

## 4. Architekturregel
- kein neuer Primaerpfad
- kein zweiter Governancepfad
- keine vorschnelle Promotion
- Rendering bleibt ableitend, nicht fuehrend

## 5. Integrierte Patch- und Nachzugslogik
### StartContract V3
- neue Contracts in die fuehrende Kette aufnehmen
- expliziten Readiness-Restpunkt tragen
- Personalisierungsregel auf Preflight + Rendering beziehen

### UI_Runbook V3
- Preflight-Schritt vor dem Posten aktiver Projektanweisungen
- Renderregel fuer Kickoff und Thread-Start explizieren
- Readiness-/Audit-Drift als blocking/non-blocking Entscheid vor aktiver Materialisierung fuehren

### BootstrapPromptPack V3
- Pack als Rendering aus Eval + Preflight markieren
- keine eigenen Regelinnovationen im Pack

### Offener Vorlaufschnitt
Die bekannte Audit-/Readiness-Pfaddrift ist vor streng deterministic-readiness-gepruefter Materialisierung zu behandeln oder explizit als `blocking` bzw. `non-blocking` zu markieren.

## 6. Paketentscheidungen
### integrieren
- frueherer `CODEX_APP_START_PROMPT.txt` -> in das Implementierungs-Runbook als Startprompt-Sektion integrieren
- fruehere `EXECUTION_SEQUENCE.md` -> in das Implementierungs-Runbook als Slice-Reihenfolge integrieren
- fruehere `END_PRODUCT_CHECKLIST.md` -> in das Implementierungs-Runbook als Endprodukt- und Verifikationssektion integrieren
- frueherer `AlignmentPatchPlan` -> in dieses Dokument und in das Implementierungs-Runbook integrieren

### weglassen
- paketinterne `README.md`
- separate Hilfsdateien ohne Repo-Zielpfad
- vorgezogene `ENTRY_LATEST`-/`RepoStatusUpdate`-Dateien im Paket

## 7. Erfolgskriterien
- Eval vor Rendering explizit
- Preflight operationalisiert
- Prompt-Pack als Rendering markiert
- Startschicht anschlussfaehig
- keine externen Hilfsdateien ohne Repo-Zielpfad verbleiben
- Readiness-/Audit-Drift nicht verdeckt, sondern explizit gefuehrt
