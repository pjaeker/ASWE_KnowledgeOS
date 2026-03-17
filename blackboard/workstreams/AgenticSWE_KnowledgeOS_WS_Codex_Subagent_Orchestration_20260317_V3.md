---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V3
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Repo-weite Workstream-Kapsel fuer Codex-Subagent-Orchestrierung. Trennt explizit zwischen neuestem Statusupdate und dem Status, auf den der kanonische Entry aktuell noch zeigt."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/codex
  - topic/subagents
  - topic/orchestration
  - topic/closeout
  - topic/evidence
  - topic/workstreams
---

# Workstream Capsule - WS-CODEX-SUBAGENT-ORCHESTRATION

## 1) Ziel

Ein repo-weites, wiederverwendbares Betriebsmodell fuer Codex-Subagent-Orchestrierung etablieren, das auf dem bestehenden Session-Contract aufsetzt, die Writer-Governance unveraendert laesst und aktive technische Workstreams gezielt unterstuetzt statt zu verdraengen.

## 2) Warum dieser Workstream jetzt gerechtfertigt ist

- Im Repo existiert bereits ein harmonisierter Session-Contract mit gemeinsamem Kernfluss fuer GUI und Codex.
- Das Bridge-Runbook beschreibt bereits einen Hauptagenten plus optionale Nebenagenten fuer Tests und Doku.
- Der Orchestrierungsansatz ist damit nicht mehr nur eine lokale Idee, sondern bereits implizite Betriebslogik.
- Gleichzeitig hat die Statusfortschreibung vom 2026-03-16 gezeigt, dass neuer Status und kanonischer Entry-Anker auseinanderlaufen koennen, ohne dass die Routing-Wahrheit sofort umspringt.

## 3) Aktuell bestaetigter Kontext

### Latest status update found
- `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260316_V1.md`

### Status referenced by canonical entry / routing truth
- `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260313_V1.md`

### Bedeutungsregel fuer diesen Workstream
- Das neueste Statusupdate vom 2026-03-16 ist **neuere operative Evidence**.
- Es sagt aber selbst, dass der kanonische Arbeitsstand und die uebergeordnete Repo-Routing-Wahrheit auf dem 2026-03-13-Anker bleiben.
- Genau diese Trennung macht einen repo-weiten Orchestrierungs- und Closeout-Hardening-Workstream jetzt sinnvoll.

## 4) In Scope

- repo-weites Operating Model fuer Codex-Subagent-Orchestrierung
- begrenzte Rollenklassen wie Mapper, Test-Agent, Doku-Agent, Observer, Triager
- Fresh-Evidence-Preflight fuer den Closeout
- Dokumente, Runbooks und spaetere repo-lokale Artefakte, die dieses Modell belastbar machen

## 5) Out of Scope

- zweiter PR-Pfad neben dem Writer
- autonome Writer-Subagents als Default
- globale User-Settings als primaerer Steuerungspfad
- repo-weite Refactors ohne direkte Evidenz
- `.github/workflows/**`, Secrets, produktive GitHub-App-Permissions oder Governance-Aufweichungen

## 6) Betriebsmodell

- Main Agent = Orchestrator, Synthese, finaler Writer
- Subagents = schmale, evidence-orientierte Nebenrollen
- Default = one-writer-many-readers
- Read-first bei Unsicherheit
- Kein paralleler Schreibzugriff auf dieselben Dateien
- Repo-lokale Artefakte vor Prompt-only-Konventionen

## 7) Erste Rollenklassen

- Mapper
- Test-Agent
- Doku-Agent
- Observer
- Triager

## 8) Warum Closeout hier direkt mitgedacht werden muss

Der 2026-03-16-Status zeigt das Kernproblem:
- Das **neueste Statusupdate** kann juenger sein als der Status, auf den der Entry aktuell zeigt.
- Gleichzeitig kann der neuere Status ausdruecklich sagen, dass die uebergeordnete Routing-Wahrheit noch nicht umgestellt wird.

Darum muss Closeout kuenftig immer getrennt ermitteln und berichten:
1. latest status update found
2. status referenced by entry
3. aktiver Workstream
4. fuehrende operative Konsequenz

## 9) Slice-Plan

### Slice A - Workstream + Operating Model
Diese Kapsel und die zugehoerige Explanation schaffen den repo-weiten Rahmen.

### Slice B - Closeout hardening
Ein Runbook ergaenzt den Fresh-Evidence-Preflight und die Pflicht, latest status und entry-referenced status getrennt auszuweisen.

### Slice C - Role binding to active workstreams
Bestehende technische Runbooks werden nur dort ergaenzt, wo bounded Nebenrollen echten Mehrwert liefern.

### Slice D - Executable repo-local artifacts
Erst wenn ein technischer Slice sie direkt braucht, werden `.codex`-Artefakte fuer konkrete Rollen nachgezogen.

## 10) Definition of Done fuer diesen Foundations-Slice

- ein eigener repo-weiten Workstream ist materialisiert
- das Operating Model ist als Explanation dokumentiert
- der Closeout-Fresh-Evidence-Preflight ist als Runbook dokumentiert
- latest status update found und status referenced by entry sind explizit getrennt
- weder `RepoStatusUpdate` noch `ENTRY_LATEST` wurden ohne neue operative Wahrheit geaendert

## 11) Nächster empfohlener Fokus

1. Den Fresh-Evidence-Preflight als Pflicht vor jedem Closeout operationalisieren.
2. Danach bounded Nebenrollen zuerst an den aktuell fuehrenden technischen Workstream anbinden.
3. Erst danach pruefen, ob repo-lokale `.codex`-Artefakte sofort noetig sind.
