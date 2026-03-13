---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
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
- same-pattern Varianten mit Datums- oder Versionsunterschieden

### Entry-Freshness-Probes
Fuehre fuer Entry-Kandidaten bevorzugt diese Probes aus:

1. sweep des relevanten Entry-Pfads nach `ENTRY`, `ENTRY_LATEST` und nahen Varianten
2. Vergleich von Datums- und Versionssignalen in gleichartigen Dateinamen
3. Pruefung, ob Status- oder Workstream-Artefakte einen juengeren Entry referenzieren
4. Commit-Pruefung auf Entry-Pfaden, um juengere Aktivitaet zu erkennen
5. repo-naher Public-GitHub-Webabgleich, wenn das Repo public ist und der GitHub-Primärzugriff moegliche Luecken hat

Ein aelterer Entry-Kandidat darf nicht mit hoher Confidence finalisiert werden, solange diese Freshness-Probes offen sind.

### Commit-Pruefung
Pruefe letzte Commits auf relevanten Pfaden, um zu bewerten:

- ob eine Datei juenger bearbeitet wurde
- ob es staerkere Gegenkandidaten gibt
- ob ein Entry nur historisch, aber nicht mehr faktisch aktuell ist
- ob eine moegliche Indexluecke durch Commit-Aktivitaet sichtbar wird

### PR-/Issue-Nutzung
PRs und Issues sind standardmaessig **Kontextquellen**, nicht primaere Statusersatzquellen.

Sie duerfen genutzt werden, um:

- aktuelle Umbaukontexte zu verstehen
- Commit-/Dateisignale zu ergaenzen
- einen vermuteten Fokus zu plausibilisieren

Sie duerfen nicht genutzt werden, um ohne Datei-/Commit-Evidenz einen aktuellen kanonischen Entry-Point zu behaupten.

PR- oder Issue-Konsistenz darf die Entry-Confidence nicht aufwerten, wenn direkte Entry-Freshness-Pruefungen unvollstaendig bleiben.

## Public-GitHub-Web als Fallback

Wenn das Repo public ist, darf GitHub-Web genutzt werden fuer:

- Pfadvalidierung
- Dateiansicht
- Commit-Historie
- Abgleich mit Konnektorluecken

Dieser Web-Zugriff ist **repo-nah** und kein allgemeiner Web-Fallback.

Nutze diesen Fallback besonders dann, wenn GitHub-primary connector evidence nur einen aelteren Kandidaten liefert und ein frischerer same-pattern Kandidat nicht sicher ausgeschlossen werden kann.

## Umgang mit nicht-indexierten Dateien

Beruecksichtige stets die Moeglichkeit, dass relevante Dateien im Index oder im Connector-Zustand noch nicht vollstaendig sichtbar sind.

Daraus folgen diese Regeln:

- keine serielle Ersttreffer-Logik
- Commit-Signale aktiv einbeziehen
- Gegenkandidaten suchen
- Unsicherheit explizit machen
- public GitHub web nutzen, wenn das Repo public ist und dies die Luecke schliessen kann
- keinen aelteren Kandidaten mit hoher Confidence finalisieren, wenn eine frischere Variante plausibel offen ist

## Umgang mit unsichtbarem `@GitHub`

Nimm nicht an, dass GitHub nur dann verfuegbar ist, wenn ein sichtbares `@GitHub` oder eine explizite Repo-Auswahl genannt wird.

Stattdessen:

- pruefe, ob GitHub-nahe Evidenz in der Session verfuegbar ist
- nutze vorhandenen GitHub-Zugriff, wenn er faktisch greift
- benenne den Blocker nur dann, wenn GitHub-verifizierte Arbeit wirklich nicht moeglich ist

## Empfohlene GitHub-Fallback-Strategie

1. kanonischen Entry-Point direkt suchen
2. parallele Kandidaten ueber Entry-/Status-/Workstream-Pfade bilden
3. sibling sweep und Entry-Freshness-Probes ausfuehren
4. Commit-Signale auf relevanten Pfaden auswerten
5. Referenznetz zwischen Kandidaten pruefen
6. public GitHub web zur repo-nahen Validierung nutzen, wenn noetig
7. PRs/Issues nur zur Kontextvalidierung heranziehen

## Nicht tun

- GitHub-Zugriff an sichtbares `@GitHub` knuepfen
- PRs/Issues als primaere Wahrheit behandeln
- reine Dateinamenslogik als ausreichend ansehen
- andere Konnektoren ohne Nutzerwunsch hinzunehmen
- Public-Web-Zugriff als Ausrede fuer allgemeine Websuche missbrauchen
- hohe Confidence vergeben, obwohl newer-candidate- oder freshness-Probes offen sind
