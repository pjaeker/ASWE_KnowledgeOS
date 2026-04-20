---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-04-20
status: draft
audience: [human, llm]
intent: "Runbook fuer die bounded Codex-App-Materialisierung des Prompt-Architekturpakets inklusive Startprompt, Slice-Reihenfolge, integrierter Patchlogik und Endprodukt-Verifikation."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/runbook
  - topic/codex
  - topic/prompt-architecture
---

# ASWE CodexApp Prompt Architecture Implementation Runbook

## 0. Zweck
Dieses Runbook ist der fuehrende Ausfuehrungsanker fuer die bounded Codex-App-Materialisierung des Prompt-Architekturpakets.
Es integriert Startprompt, Slice-Reihenfolge, Patch-/Nachzugslogik und Endprodukt-Verifikation.

## 1. Codex-App-Startprompt

```text
Arbeite im Repo ASWE_KnowledgeOS an einem bounded Prompt-Architecture-Slice unter ArchitectureEvolution.

Ziel ist ein E2E-faehiger Slice von Prompt-Preflight ueber Prompt-Eval-Contract bis zum gerenderten Prompt-Pack-Endprodukt.

Arbeite in dieser Reihenfolge:
1. lies ENTRY_LATEST, RepoStatusUpdate, den aktiven ArchitectureEvolution-Umbrella, den aktuellen StartContract, das UI-Runbook und das BootstrapPromptPack,
2. pruefe die bekannte Audit-/Readiness-Pfaddrift und entscheide, ob sie als Vorlaufslice zuerst geschlossen werden muss,
3. materialisiere den bounded Child-Workstream `ASWE_WS_PromptArchitecture_20260420_V1.md`,
4. materialisiere danach in genau dieser Reihenfolge:
   - `ASWE_PromptEval_Contract_20260420_V1.md`
   - `ASWE_Prompt_Preflight_Operationalization_20260420_V1.md`
   - `ASWE_CodexApp_PromptPack_Rendering_Contract_20260420_V1.md`
5. ziehe danach diese Startartefakte auf V3 nach:
   - `ASWE_CodexApp_StartContract_20260420_V3.md`
   - `ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260420_V3.md`
   - `ASWE_CodexApp_BootstrapPromptPack_20260420_V3.md`
6. fuehre pro Slice Verifikation gegen dieses Runbook durch,
7. liefere zum Schluss einen bounded Change-Report plus Vorschlag fuer RepoStatusUpdate- und ENTRY_LATEST-Refresh.

Arbeitsregeln:
- Begriffe vor Strukturen vor Prozessen vor Implementierung.
- Eval-/Operationalisierungslogik vor Rendering.
- Keine zweite Governancequelle durch Prompt-Pack, Personalisierung oder Runtime-Spiegel erzeugen.
- Keine Framework- oder Target-Contract-Promotion in diesem Lauf.
- Wenn ein vorhandenes Artefakt dieselbe Funktion bereits stabil traegt, entscheide `update` oder `no-change` statt redundanter Neuanlage.
- Nach jedem Slice: geaenderte Dateien, Verifikation, offene Blocker, naechster Slice.
```

## 2. Vorbedingungen
- ENTRY_LATEST lesen
- RepoStatusUpdate lesen
- ArchitectureEvolution-Umbrella lesen
- StartContract, UI_Runbook, BootstrapPromptPack lesen
- PersonalizationPorting_Contract lesen
- Readiness-Drift um den Audit-Anker pruefen und als `blocking` oder `non-blocking` explizit ausweisen

## 3. Slice-Reihenfolge
1. PromptArchitecture-Workstream anlegen
2. PromptEval_Contract materialisieren
3. Prompt_Preflight_Operationalization materialisieren
4. PromptPack_Rendering_Contract materialisieren
5. StartContract auf V3 nachziehen
6. UI_Runbook auf V3 nachziehen
7. BootstrapPromptPack auf V3 nachziehen
8. Change-Report + State-Refresh-Vorschlag

## 4. Integrierte Patch- und Nachzugslogik
### StartContract V3
- neue Contracts in die fuehrende Kette aufnehmen
- Personalisierungsregel explizit auf Preflight + Rendering beziehen
- offenen Readiness-Restpunkt explizit tragen

### UI_Runbook V3
- Preflight-Schritt vor dem Posten aktiver Projektanweisungen
- Renderregel fuer Kickoff und Thread-Start explizieren
- Readiness-/Audit-Drift als blocking/non-blocking Entscheid fuehren

### BootstrapPromptPack V3
- Pack als Rendering aus Eval + Preflight markieren
- keine eigenen Regelinnovationen im Pack

## 5. Verifikation pro Slice
- Frontmatter vollstaendig
- 1x layer, 1x artifact
- keine zweite Governancequelle
- keine Framework-/Target-Contract-Promotion
- alle Anschlussstellen explizit
- keine redundante Parallel-Governance

## 6. Endprodukt-Checkliste
Das Endprodukt gilt nur dann als erreicht, wenn alle Punkte erfuellt sind:

### A. Architektur
- Prompt-Architektur ist als bounded Child-Workstream unter ArchitectureEvolution materialisiert.
- Kein neuer Primaerpfad wurde erzeugt.
- Keine Framework-/Target-Contract-Promotion ist erfolgt.

### B. Kernartefakte
- PromptEval_Contract vorhanden
- Prompt_Preflight_Operationalization vorhanden
- PromptPack_Rendering_Contract vorhanden

### C. Ableitungslogik
- Preflight ist explizit aus Eval ableitbar.
- Rendering ist explizit aus Eval + Preflight ableitbar.
- Prompt-Pack ist als Rendering markiert, nicht als semantischer Ursprung.

### D. Startschicht
- StartContract nachgezogen
- UI_Runbook nachgezogen
- BootstrapPromptPack nachgezogen

### E. Governance / Drift
- keine zweite Governancequelle
- keine redundante Parallel-Governance
- alle See-also-/Anschlussstellen explizit
- Readiness-/Audit-Drift als blocker, Vorlaufslice oder geschlossen ausgewiesen

### F. Abschluss
- bounded Change-Report vorhanden
- Vorschlag fuer RepoStatusUpdate-Refresh vorhanden
- Vorschlag fuer ENTRY_LATEST-Refresh vorhanden

## 7. Handoffs
Nach jedem Slice:
- geaenderte Dateien
- Verifikation
- offene Blocker
- naechster Slice

## 8. Stopregeln
- bestehendes Artefakt traegt Funktion bereits stabil
- Drift zwischen Contract und Rendering
- versteckte Governance durch Personalisierung
- Patchscope waechst ueber bounded Dokumentationsaenderung hinaus
