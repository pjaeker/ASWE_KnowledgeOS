---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Kompakte Referenz fuer die iterative Nachschaerfung des Closeout-Skills auf Basis des harmonisierten Session-Contracts und der Lehren aus der Init-Skill-Verfeinerung."
---

# Reference: Closeout Skill Refinement

## Ziel

Den Closeout-Skill so nachschaerfen, dass er nicht nur die kanonische Closeout-Reihenfolge kennt, sondern vor jeder Fortschreibung aktiv die neueste Repo-Evidence prueft und sauber zwischen neuestem Statusupdate und per Entry referenziertem Status unterscheidet.

## Ableitung aus den Init-Skill-Lehren

Aus dem Init-Skill werden uebernommen:

- GitHub-first Evidence als Default
- klare Quellenhierarchie
- explizite Freshness-Pruefung statt impliziter Annahmen
- Trennung von harten Fakten, Kandidaten und Unsicherheit
- Handoff als optionales Resume-Sidecar statt Standardvoraussetzung

## Delta fuer den Closeout-Skill

### 1. Fresh-Evidence-Preflight

Vor jedem Closeout muessen aktiv geprueft werden:

- neuestes RepoStatusUpdate
- Status, den `ENTRY_LATEST` aktuell referenziert
- betroffener Workstream und benachbarte frische Workstream-Artefakte
- relevante runbook- oder routing-nahe Artefakte
- commits oder Artefakte, die operative Wahrheit verschieben koennen

### 2. Dual-Status-Modell

Der Skill muss getrennt reporten:

- `latest status update found`
- `status referenced by entry`

Ein neuerer Status darf nicht stillschweigend mit dem kanonischen Entry-Anker gleichgesetzt werden.

### 3. Failure Modes

Explizit vermeiden:

- aelteren Status ungeprueft fortschreiben
- latest status und entry-referenced status vermischen
- Chat-Kontext ueber Repo-Evidence stellen
- Handoff implizit zur Pflicht machen

## Minimaler Iterationsumfang fuer V2

- SKILL.md nachziehen
- Closeout-Workflow-Referenz nachziehen
- Verification-Checklist erweitern
- Failure-Modes fuer Status-Verwechslung und stale evidence verankern
- skill-progression.md spiegeln
