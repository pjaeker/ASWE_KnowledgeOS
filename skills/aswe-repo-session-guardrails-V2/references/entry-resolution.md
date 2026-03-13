---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
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
- vor der Finalisierung eine negative Verifikation gegen frischere Gegenkandidaten ausfuehren
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

Suche dabei nicht nur nach einem einzelnen Treffer, sondern sweep-e das relevante Entry-Umfeld nach gleichartigen Varianten. Besonders wichtig sind sibling candidates mit gleichem Basismuster und anderem Datums- oder Versionssignal.

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
- die negative Verifikation gegen plausibel frischere same-pattern Kandidaten ist abgeschlossen

## Definition: Starker Kandidat

Ein starker Kandidat ist ein Fund mit hoher Gesamtplausibilitaet aus:

- Pfadstruktur
- inhaltlicher Kanonizitaet
- Referenznetz
- Commit-Naehe
- Konsistenz mit bestaetigten Session-Fakten
- erfolgreich absolvierter Freshness-Challenge

## Definition: Unsicher

Ein Fund ist unsicher, wenn mindestens einer dieser Faelle vorliegt:

- mehrere plausible Entry-Kandidaten widersprechen sich
- nur ein Namensmatch existiert, aber keine starke inhaltliche Stuetzung
- Commit-Signale deuten auf juengere relevante Dateien
- der Fund wirkt wie aelterer Planungs- oder Archivstand
- der Konnektor- oder Indexzustand koennte aktuelle Dateien verbergen
- ein neuerer same-pattern Kandidat ist sichtbar, aber nicht belastbar aufgeloest
- der Skill kann nicht belastbar sagen, welcher Kandidat kanonisch und aktuell ist

## Freshness-Challenge vor Finalisierung

Bevor ein einzelner kanonischer Entry-Point ausgegeben wird, muss dieser Challenge-Block aktiv abgearbeitet werden:

1. sibling sweep: gleichartige Entry-Kandidaten im relevanten Pfad suchen
2. Datums-/Versionssignale vergleichen
3. Commit-Probe: juengste Aktivitaet auf Entry-Pfaden pruefen
4. Referenz-Probe: pruefen, ob Status-, Workstream- oder andere State-Artefakte auf einen frischeren Entry zeigen
5. Fallback-Probe: bei moeglicher Indexluecke repo-nahen Public-GitHub-Webabgleich nutzen, wenn das Repo public ist
6. Abschlussentscheidung: kanonischen Kandidaten ausgeben oder Kandidatenmenge offen lassen

## Auswahlregel

Der Gewinner ist nicht der zuerst gefundene Kandidat, sondern der mit der besten Gesamtlage aus:

- inhaltlicher Kanonizitaet
- struktureller Plausibilitaet
- Netzwerk aus Referenzen
- Commit-Naehe
- Konsistenz mit bereits bestaetigten Session-Fakten
- erfolgreich bestandener negativer Verifikation gegen frischere Kandidaten

## Newer-candidate-Veto

Ein neuerer same-pattern Entry-Kandidat blockiert die Finalisierung eines aelteren Kandidaten, bis mindestens einer der folgenden Faelle eintritt:

- der neuere Kandidat wird inhaltlich als nicht-kanonisch widerlegt
- Commit- und Referenzsignale stuetzen den aelteren Kandidaten klar staerker
- der neuere Kandidat wird als Archiv-, Test- oder Schattenartefakt identifiziert

Solange das nicht geklaert ist, darf kein aelterer Kandidat mit hoher Confidence als kanonisch ausgegeben werden.

## Harte Guardrails

- ein aelteres Planungsdokument gewinnt nicht, nur weil es leichter auffindbar ist
- ein Dateiname mit `LATEST` reicht nicht als alleinige Evidenz
- ein spaeter gefundener schwacher Kandidat darf keinen hoeherwertigen Stand verdraengen
- ein aelterer Kandidat darf nicht finalisiert werden, solange ein neuerer same-pattern Kandidat nicht aktiv aufgeloest wurde
- Unsicherheit muss explizit benannt werden

## Verhalten bei mehreren Kandidaten

Wenn keine eindeutige Aufloesung moeglich ist:

- benenne die Top-Kandidaten
- erklaere kurz, worin sie sich unterscheiden
- nenne die fehlende Evidenz zur Aufloesung
- halte den zuletzt hoeherwertig bestaetigten Stand nur vorlaeufig bei
- markiere die Confidence als niedrig oder mittel, nicht als hoch

### Empfohlene Formulierung

> Mehrere plausible Entry-Kandidaten gefunden. Eine robuste Eindeutigkeit ist derzeit nicht moeglich, da Commit-, Referenz- oder Freshness-Signale nicht vollstaendig zusammenlaufen. Ich halte den zuletzt hoeherwertig bestaetigten Stand nur vorlaeufig bei und fuehre die Kandidaten als geordnete Menge.

## Empfohlene Pruefreihenfolge innerhalb des parallelen Modells

1. Kandidaten einsammeln
2. sibling sweep fuer same-pattern Entry-Kandidaten ausfuehren
3. Commit-Signale auf relevanten Pfaden pruefen
4. Inhaltsverweise und Selbstbeschreibung pruefen
5. Gegenkandidaten und Widersprueche pruefen
6. Session-Fakten-Konsistenz pruefen
7. negative Verifikation dokumentieren
8. kanonischen Kandidaten oder Kandidatenmenge ausgeben

## Nicht finalisieren, wenn

- der juengste plausible Entry-Kandidat nicht aktiv geprueft wurde
- Commit-Signale auf einen frischeren Kandidaten deuten
- der Connector- oder Indexzustand einen neuen Kandidaten plausibel verbergen koennte
- nur indirekte Kontextsignale vorliegen, aber keine ausreichende Entry-Verifikation
