---
project: ASWE_KnowledgeOS
doc_type: reference
version: V4
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Fortschreibbarer Verlauf der Skill-Entwicklung fuer Session-Init und Session-Closeout. Ergaenzt den Closeout-Skill um einen optionalen bounded-role-Empfehlungsblock und dokumentiert die Ausrichtung von Rollenklasse, Skill-Vertrag und `.codex`-Materialisierung."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/codex
  - topic/subagents
  - topic/session
---

# Skill Progression Log

## Zweck

Dieses Dokument dient als dauerhafte Verdichtung der Skill-Progression. Neue Iterationen sollen hier eingetragen werden, damit spaetere Aenderungen nicht erneut aus Chat-Verlaeufen extrahiert werden muessen.

## Eintragsregel

Jeder neue Skill-Stand soll mindestens festhalten:
- Datum
- Skill
- Version
- Ausloeser / beobachteter Fehlmodus
- Kernverbesserung
- betroffene Referenzen oder Repo-Dokumente

## Verlauf

### Init-Skill

#### V1
- Grundlegende Session-Initialisierung fuer ASWE-artige Repos
- Fokus auf Entry, Status, Workstream und GitHub-first Evidence

#### V2
- Freshness-Challenge deutlich geschaerft
- Newer-candidate veto, Verification Checklist und Failure Modes expliziter verankert

#### V3
- symmetrischen Session-Contract aufgenommen
- Canonical Entry und Latest Status Update bewusst getrennt
- `Status Referenced by Entry` explizit gemacht
- `NextChat-Handoff` als Resume-Sidecar formalisiert
- duale Freshness-Pruefung fuer Entry und Latest Status eingefuehrt

### Closeout-Skill

#### V1
- neuer Skill als Gegenstueck zum Init-Skill
- standardisierte Closeout-Reihenfolge
- `ENTRY_LATEST` zuletzt refreshen
- Handoff-Entscheidung explizit statt implizit
- Next-Start-Paket als Output eingefuehrt

#### V2
- Fresh-Evidence-Preflight vor jedem Closeout als Pflicht aufgenommen
- `latest status update found` und `status referenced by entry` explizit getrennt
- GitHub-first Quellenhierarchie fuer Closeout-Urteile geschaerft
- aeltere Status-, Entry- oder Workstream-Anker duerfen nicht stillschweigend fortgeschrieben werden
- Closeout-Report muss fuehrende Repo-Evidence, Konflikte und bewusst nicht geaenderte Anker benennen

#### V3
- narrativen Closeout-Checkpoint und artefaktentscheidenden Closeout-Writingslice explizit getrennt
- jede Artefaktklasse muss jetzt aktiv als `create`, `update` oder `no-change` entschieden werden
- Skill soll konkrete Dokumentaenderungen bzw. -erzeugungen fuer Status, Workstream, Strukturdocs, Entry und Handoff vorschlagen oder materialisieren
- `ENTRY_LATEST` darf nicht als blosser Alt-Anker stehenbleiben, wenn neue operative Wahrheit stabil materialisiert ist

#### V4
- optionalen Block `Recommended bounded roles for next slice` aufgenommen
- bounded Rollen werden nur noch evidenzbasiert und nur bei klarem technischem Slice empfohlen
- Rollenempfehlung darf den Closeout-Kern nicht ersetzen und keinen zweiten Writer-Pfad implizieren
- Closeout-Runbook, Workstream und Skill-Vertrag wurden auf dieselbe Regel gespiegelt

## bounded role / skill alignment

### 2026-03-18 - Mapper
- Rolle oder Skill: Mapper / `aswe-mapper`
- Ausloeser / beobachteter Fehlmodus: unklare Scope-Grenzen und versteckte Dateikopplung vor Verify oder Wording
- Kernverbesserung: Scope-/Anker-/Hidden-Coupling-Rolle klar vom Verify- und Doku-Pfad getrennt
- betroffene Repo-Dokumente: `WS_Codex_Subagent_Orchestration_20260318_V5`, `Closeout_FreshEvidence_Preflight_Runbook_20260318_V5`
- betroffene Skill-Artefakte: `skills/aswe-mapper/`, `skills/aswe-session-closeout-guardrails-V4/`
- Folgeeffekt fuer Closeout oder Role Binding: im Closeout nur optional empfehlen; in Role Binding als materialisierte `.codex`-Nebenrolle fuehren

### 2026-03-18 - Test-Agent
- Rolle oder Skill: Test-Agent / `aswe-test-agent`
- Ausloeser / beobachteter Fehlmodus: Verify-/Smoke-/Negative-Test-Bedarf wurde bisher teils mit Mapper oder Main Agent vermischt
- Kernverbesserung: Verify-Frage als eigene bounded Rolle mit changed-files-first Outputvertrag stabilisiert
- betroffene Repo-Dokumente: `WS_Codex_Subagent_Orchestration_20260318_V5`, `Closeout_FreshEvidence_Preflight_Runbook_20260318_V5`
- betroffene Skill-Artefakte: `skills/aswe-test-agent/`, `skills/aswe-session-closeout-guardrails-V4/`
- Folgeeffekt fuer Closeout oder Role Binding: im naechsten technischen Slice bevorzugt fuer Railway-/Bridge-Verify empfehlen

### 2026-03-18 - Doku-Agent
- Rolle oder Skill: Doku-Agent / `aswe-doc-agent`
- Ausloeser / beobachteter Fehlmodus: bestaetigte Evidence und Wording wurden nicht sauber von Verify oder Scope getrennt
- Kernverbesserung: kompakten Wording-/Strukturvertrag fuer README, Runbooks und PR-Reports klar abgegrenzt
- betroffene Repo-Dokumente: `WS_Codex_Subagent_Orchestration_20260318_V5`
- betroffene Skill-Artefakte: `skills/aswe-doc-agent/`, `skills/aswe-session-closeout-guardrails-V4/`
- Folgeeffekt fuer Closeout oder Role Binding: nur dann empfehlen, wenn der naechste Slice explizit Doku- oder Runbook-Nachzuege enthaelt

### 2026-03-18 - Observer
- Rolle oder Skill: Observer / `aswe-observer`
- Ausloeser / beobachteter Fehlmodus: Runtime-/Log-/Health-Signale brauchen einen engeren read-only Vertrag als der Main Agent
- Kernverbesserung: externe Status- und Log-Evidence als eigene bounded Beobachterrolle gekapselt
- betroffene Repo-Dokumente: `WS_Codex_Subagent_Orchestration_20260318_V5`, `Closeout_FreshEvidence_Preflight_Runbook_20260318_V5`
- betroffene Skill-Artefakte: `skills/aswe-observer/`, `skills/aswe-session-closeout-guardrails-V4/`
- Folgeeffekt fuer Closeout oder Role Binding: bei Railway-/Host-/Live-Health-Slices bevorzugt empfehlen

### 2026-03-18 - Triager
- Rolle oder Skill: Triager / `aswe-triager`
- Ausloeser / beobachteter Fehlmodus: technische Threads mit konkurrierenden Hypothesen, Fehlversuchen und Dead Ends brauchen eine eigene Kondensationsrolle
- Kernverbesserung: Problemcluster, Hypothesenpriorisierung und Dead-End-Verdichtung von Mapper/Observer/Test-Agent abgegrenzt
- betroffene Repo-Dokumente: `WS_Codex_Subagent_Orchestration_20260318_V5`, `Closeout_FreshEvidence_Preflight_Runbook_20260318_V5`
- betroffene Skill-Artefakte: `skills/aswe-triager/`, `skills/aswe-session-closeout-guardrails-V4/`
- Folgeeffekt fuer Closeout oder Role Binding: im Workstream als `optional-later` kennzeichnen, bis ein klarer `.codex`-Materialisierungsbedarf belegt ist

## Pflegehinweis

Dieses Dokument soll idealerweise im Repo und gespiegelt in den Skill-Referenzen vorliegen. So bleibt die Entwicklung sowohl auf Repo- als auch auf Skill-Ebene nachvollziehbar.
