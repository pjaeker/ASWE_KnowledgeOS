---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Robuste Bestimmung des kanonischen Entry-Points fuer ASWE-artige Repos mit Schutz gegen Fehlgriffe durch alte oder nicht-indexierte Dateien."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/router
  - topic/entrypoint
  - topic/github
---

# Reference: Entry Resolution

## Zweck

Diese Referenz beschreibt, wie der kanonische Einstiegspunkt eines ASWE-artigen Repos robust bestimmt oder eingegrenzt wird.

## Kernproblem

Die naive Suche nach Dateinamen wie `ENTRY_LATEST` ist unzuverlaessig, weil:

- noch nicht alle Dateien indexiert sein koennen
- aeltere Entry-Dateien gefunden werden koennen
- `LATEST` im Dateinamen nicht garantiert, dass die Datei faktisch aktuell ist
- Metadaten, Dateinamen und Inhaltsstand auseinanderlaufen koennen
- ein Repo mehrere plausible Entry-Kandidaten parallel enthalten kann

Deshalb darf der Entry-Point nicht ueber ein erstes Namensmatch bestimmt werden.

## Grundprinzip

Arbeite **parallel-kandidatenbasiert**, nicht seriell-naiv.

Das bedeutet:

- mehrere Kandidatenkanaele parallel aufbauen
- Kandidaten gegeneinander abgleichen
- Commit-Signale, Pfadsignale und Inhaltsverweise zusammen bewerten
- am Ende einen kanonischen Kandidaten oder eine geordnete Kandidatenmenge ausgeben

## Kandidatenkanaele

Baue parallel mindestens diese Mengen auf:

### 1. Entry-Kandidaten
Suche nach typischen Dateinamen und Pfaden wie:

- `entry/`
- `ENTRY`
- `ENTRY_LATEST`
- `LATEST`
- `Single Entry Point`
- `start here`

### 2. Status-Kandidaten
Suche nach Dateien wie:

- `RepoStatusUpdate`
- `StatusUpdate`
- `CurrentStatus`
- `SessionStatus`

### 3. Workstream-Kandidaten
Suche nach:

- `WS_`
- `workstream`
- aktuellen Ausfuehrungs- oder Handoff-Dokumenten

### 4. Commit-Signalen
Pruefe letzte relevante Commits auf:

- Entry-Pfaden
- Status-Pfaden
- State-/Meta-Pfaden
- Workstream-Pfaden

### 5. Referenzsignalen
Suche nach Dateien, die:

- sich selbst als kanonisch bezeichnen
- auf Status-/Workstream-Dateien verweisen
- von anderen aktuellen Dateien referenziert werden

### 6. Public-GitHub-Web-Signalen
Nur wenn noetig und das Repo public ist:

- Pfad-Existenz
- Dateiansichten
- Commit-Historie
- Standard-Branch-Kontext

## Definition: Gefunden

Ein Entry-Point gilt nicht schon dann als gefunden, wenn nur eine passende Datei existiert.

Ein Kandidat gilt erst als brauchbar gefunden, wenn mehrere dieser Kriterien erfuellt sind:

- der Pfad passt zum Repo-Muster
- die Datei bezeichnet sich inhaltlich als Einstiegspunkt
- sie verweist auf Status-/Workstream-Dateien
- sie wird durch juengere relevante Commits gestuetzt
- sie ist mit anderen Kandidaten konsistent
- es gibt keinen klar staerkeren Gegenkandidaten

## Definition: Starker Kandidat

Ein starker Kandidat ist ein Fund mit hoher Gesamtplausibilitaet aus:

- Pfadstruktur
- inhaltlicher Kanonizitaet
- Referenznetz
- Commit-Naehe
- Konsistenz mit bestaetigten Session-Fakten

## Definition: Unsicher

Ein Fund ist unsicher, wenn mindestens einer dieser Faelle vorliegt:

- mehrere plausible Entry-Kandidaten widersprechen sich
- nur ein Namensmatch existiert, aber keine starke inhaltliche Stuetzung
- Commit-Signale deuten auf juengere relevante Dateien
- der Fund wirkt wie aelterer Planungs- oder Archivstand
- der Konnektor- oder Indexzustand koennte aktuelle Dateien verbergen
- der Skill kann nicht belastbar sagen, welcher Kandidat kanonisch und aktuell ist

## Auswahlregel

Der Gewinner ist nicht der zuerst gefundene Kandidat, sondern der mit der besten Gesamtlage aus:

- inhaltlicher Kanonizitaet
- struktureller Plausibilitaet
- Netzwerk aus Referenzen
- Commit-Naehe
- Konsistenz mit bereits bestaetigten Session-Fakten

## Harte Guardrails

- ein aelteres Planungsdokument gewinnt nicht, nur weil es leichter auffindbar ist
- ein Dateiname mit `LATEST` reicht nicht als alleinige Evidenz
- ein spaeter gefundener schwacher Kandidat darf keinen hoeherwertigen Stand verdrängen
- Unsicherheit muss explizit benannt werden

## Verhalten bei mehreren Kandidaten

Wenn keine eindeutige Aufloesung moeglich ist:

- benenne die Top-Kandidaten
- erklaere kurz, worin sie sich unterscheiden
- nenne die fehlende Evidenz zur Aufloesung
- halte den zuletzt hoeherwertig bestaetigten Stand bei

### Empfohlene Formulierung

> Mehrere plausible Entry-Kandidaten gefunden. Eine robuste Eindeutigkeit ist derzeit nicht moeglich, da Commit- und Referenzsignale nicht vollstaendig zusammenlaufen. Ich halte den zuletzt hoeherwertig bestaetigten Stand bei und fuehre die Kandidaten als geordnete Menge.

## Empfohlene Pruefreihenfolge innerhalb des parallelen Modells

1. Kandidaten einsammeln
2. Commit-Signale auf relevanten Pfaden pruefen
3. Inhaltsverweise und Selbstbeschreibung pruefen
4. Gegenkandidaten und Widersprueche pruefen
5. Session-Fakten-Konsistenz pruefen
6. kanonischen Kandidaten oder Kandidatenmenge ausgeben
