---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Explizite Anti-Patterns und Fehlmodi fuer die Session-Initialisierung in ASWE-artigen Repos."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/failure-mode
  - topic/guardrails
---

# Reference: Failure Modes

## Zweck

Diese Referenz verankert typische Fehlmodi, die trotz plausibler Teiltreffer zu falscher Session-Initialisierung fuehren koennen.

## Kritischer Fehlmodus 1

### Muster
Ein aelterer, aber plausibler Entry-Kandidat wird frueh stabilisiert. Ein frischerer same-pattern Kandidat wird nicht aktiv gefunden, nicht aktiv geprueft oder nicht als Veto behandelt. Trotzdem wird ein robuster Checkpoint mit hoher Confidence ausgegeben.

### Warum das gefaehrlich ist

- der Skill wirkt sicherer als die Evidenzlage traegt
- nachgelagerte Status- und Workstream-Ableitungen koennen an einem veralteten Entry haengen
- Regression protection kann irrtuemlich als Rechtfertigung fuer das Halten des aelteren Standes missverstanden werden

### Gegenmittel

- sibling sweep verpflichtend machen
- newer-candidate veto anwenden
- Confidence-Gate hart koppeln an Freshness-Verifikation
- Blocker offen benennen, wenn ein juengerer Kandidat nicht sicher ausgeschlossen werden kann

## Kritischer Fehlmodus 2

### Muster
PRs, Issues oder andere Kontextsignale wirken konsistent mit einem Kandidaten und erzeugen scheinbare Sicherheit, obwohl die direkte Entry-Verifikation unvollstaendig bleibt.

### Gegenmittel

- PRs und Issues nur als Kontext behandeln
- direkte Entry-, Commit- und Referenzsignale priorisieren
- keine Confidence-Aufwertung nur wegen indirekter Konsistenz

## Kritischer Fehlmodus 3

### Muster
Eine moegliche Index- oder Connector-Luecke wird zwar abstrakt erwaehnt, aber der Skill finalisiert trotzdem einen einzelnen aktuellen Entry-Point.

### Gegenmittel

- moegliche Sichtbarkeitsluecke als echten Blocker behandeln
- repo-nahen Public-GitHub-Fallback nutzen, wenn zulaessig
- Kandidatenmenge statt Scheingenauigkeit ausgeben
