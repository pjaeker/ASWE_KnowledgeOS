---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "GitHub-spezifische Suchmuster, Fallbacks und Guardrails fuer die Session-Initialisierung in ASWE-artigen Repos."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/github
  - topic/patterns
  - topic/fallbacks
---

# Reference: GitHub Patterns

## Zweck

Diese Referenz buendelt GitHub-spezifische Suchheuristiken und Fallbacks fuer Repos mit Entry-/Status-/Workstream-Muster.

## Grundregel

Behandle GitHub als Primaerumgebung fuer die Session-Initialisierung. Das gilt auch dann, wenn der Zugriff ueber einen App-/Konnektorpfad erfolgt, der in der aktuellen Oberflaeche nicht sichtbar mit `@GitHub` markiert ist.

## Typische Pfadmuster

Beruecksichtige je nach Repo-Struktur unter anderem:

- `meta/state/entry/`
- `meta/state/`
- `blackboard/workstreams/`
- `handbook/howto/`
- `handbook/reference/`
- `docs/`
- `state/`
- `entry/`

Das sind Muster, keine harten Pflichpfade.

## Typische Dateisignale

Achte auf Dateinamen oder Titelteile wie:

- `ENTRY`
- `ENTRY_LATEST`
- `Single Entry Point`
- `RepoStatusUpdate`
- `StatusUpdate`
- `Workstream`
- `WS_`
- `Handoff`
- `MeaningMap`
- `Manifest`
- `Snapshot`

## GitHub-nahe Suchheuristiken

### Datei-/Pfadsuche
Nutze gezielt:

- Pfadsignale
- Namenssignale
- Referenzsignale in aktuellen Status-/Entry-Dateien
- Nachbarschaft von Entry-, Status- und Workstream-Dateien

### Commit-Pruefung
Pruefe letzte Commits auf relevanten Pfaden, um zu bewerten:

- ob eine Datei juenger bearbeitet wurde
- ob es staerkere Gegenkandidaten gibt
- ob ein Entry nur historisch, aber nicht mehr faktisch aktuell ist

### PR-/Issue-Nutzung
PRs und Issues sind standardmaessig **Kontextquellen**, nicht primaere Statusersatzquellen.

Sie duerfen genutzt werden, um:

- aktuelle Umbaukontexte zu verstehen
- Commit-/Dateisignale zu ergaenzen
- einen vermuteten Fokus zu plausibilisieren

Sie duerfen nicht genutzt werden, um ohne Datei-/Commit-Evidenz einen aktuellen kanonischen Entry-Point zu behaupten.

## Public-GitHub-Web als Fallback

Wenn das Repo public ist, darf GitHub-Web genutzt werden fuer:

- Pfadvalidierung
- Dateiansicht
- Commit-Historie
- Abgleich mit Konnektorluecken

Dieser Web-Zugriff ist **repo-nah** und kein allgemeiner Web-Fallback.

## Umgang mit nicht-indexierten Dateien

Beruecksichtige stets die Moeglichkeit, dass relevante Dateien im Index oder im Connector-Zustand noch nicht vollstaendig sichtbar sind.

Daraus folgen diese Regeln:

- keine serielle Ersttreffer-Logik
- Commit-Signale aktiv einbeziehen
- Gegenkandidaten suchen
- Unsicherheit explizit machen
- public GitHub web nutzen, wenn das Repo public ist und dies die Luecke schliessen kann

## Umgang mit unsichtbarem `@GitHub`

Nimm nicht an, dass GitHub nur dann verfuegbar ist, wenn ein sichtbares `@GitHub` oder eine explizite Repo-Auswahl genannt wird.

Stattdessen:

- pruefe, ob GitHub-nahe Evidenz in der Session verfuegbar ist
- nutze vorhandenen GitHub-Zugriff, wenn er faktisch greift
- benenne den Blocker nur dann, wenn GitHub-verifizierte Arbeit wirklich nicht moeglich ist

## Empfohlene GitHub-Fallback-Strategie

1. kanonischen Entry-Point direkt suchen
2. parallele Kandidaten ueber Entry-/Status-/Workstream-Pfade bilden
3. Commit-Signale auf relevanten Pfaden auswerten
4. Referenznetz zwischen Kandidaten pruefen
5. public GitHub web zur repo-nahen Validierung nutzen, wenn noetig
6. PRs/Issues nur zur Kontextvalidierung heranziehen

## Nicht tun

- GitHub-Zugriff an sichtbares `@GitHub` knuepfen
- PRs/Issues als primaere Wahrheit behandeln
- reine Dateinamenslogik als ausreichend ansehen
- andere Konnektoren ohne Nutzerwunsch hinzunehmen
- Public-Web-Zugriff als Ausrede fuer allgemeine Websuche missbrauchen
