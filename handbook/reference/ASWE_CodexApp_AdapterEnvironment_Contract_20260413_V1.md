---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Adapter- und Environment-Vertrag fuer die Abbildung der kanonischen Repo-Logik in der Codex App ohne zweiten Ursprungspfad."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/adapter
  - topic/environment
  - topic/runtime
---

# ASWE Codex App Adapter and Environment - Contract

## 0. Zweck

Dieses Dokument beantwortet **L6**.
Es beschreibt die Codex App als **Adapter/Oberflaeche**, nicht als semantischen Ursprung.

## 1. Grundsatz

- Repo-Governance bleibt fuehrend
- Codex App bildet kanonische Pfade nur ab
- `.codex` bleibt Spiegelung, nicht Ursprung
- kein implizites Thread-Sharing
- kein zweiter Writer-Pfad

## 2. Thread-Topologie

### Sofort aktiv
- `Architecture Evolution - Umbrella`
- `Evidence Intake`

### Parallel eingerichtet, aber nicht dominant
- `Semantic Evolution`

### Spaeter optional
- `Architecture Canonicalization`
- `Harness Operationalization`
- `Codex Subagent Orchestration` nur als Enabler, nicht als fachlicher Hauptanker

## 3. Thread-Kommunikation

Direkte Thread-zu-Thread-Kommunikation gilt nicht als implizit gegeben.
Kanonisch zulaessig sind nur:
- Rueckgabe an Main Agent
- Rueckkopplung ueber Umbrella
- explizite Handoff-Huellen mit Payload

## 4. Environment-Schnitt

### E0 Kanonische Wissensflaeche
- Entry
- Status
- Workstreams
- Methodenmodelle
- Role Contracts
- Shared Governance

### E1 Adapter-Arbeitsflaeche
- Codex-App-Projekt
- Threads
- thread-lokale Guidance

### E2 Writer-Flaeche
- genau 1 Main-Agent-Writer-Worktree
- genau 1 zugehoeriger Branch
- erst nach Writer Gate

### E3 Mirror-/Operationalisierungsflaeche
- `.codex`
- spaetere Harness- oder Skill-Mirrors
- nur nach Mirror Gate

### E4 Externe Beobachtungsflaeche
- Logs
- Deploy-/Service-Signale
- andere read-only Runtime-Oberflaechen

## 5. Adapter-Regeln

### 5.1 Thread-lokale Guidance
Ist runtime-naher Adapter.
Sie ersetzt nicht:
- Workstream
- Methodenmodell
- Role Contract
- Shared Governance

### 5.2 Aktivierungslogik
- Evidence Intake startet zuerst produktiv
- Semantic Evolution erst dominant nach Trigger oder explizitem semantischem Scope
- spaetere Pfade nur nach Gate-Entscheidung

### 5.3 Mutationslogik
- zu Startbeginn: 0 zusaetzliche Worktrees, 0 zusaetzliche Branches
- Mutation erst nach Writer Gate

## 6. Mirror-Disziplin

- `handbook/reference/**` bleibt semantischer Ursprung
- `blackboard/workstreams/**` fuehrt aktive Arbeit
- `.codex/**` darf nur congruente, additive Spiegelung sein
- Konflikte werden nie zugunsten des Mirrors entschieden

## 7. Environment-Risiken

Zu vermeiden sind:
- Oberflaechenlogik als Architektur auszugeben
- thread-lokale Hinweise als Governancequelle zu behandeln
- Materialisierung mit Spawn-Readiness gleichzusetzen
- Workstream, Role Contract und Mirror zu verschmelzen

## 8. Nicht-Ziele

Dieses Dokument definiert keine:
- konkrete `.codex`-Datei
- konkrete GUI-Aktion
- konkrete Toolwahl pro Modellklasse
