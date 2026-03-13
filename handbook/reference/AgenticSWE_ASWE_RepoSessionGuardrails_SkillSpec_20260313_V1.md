---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Spezifikation fuer den Skill 'ASWE Repo Session Initialisierung & Guardrails' als Zwischenstand vor dem konkreten SKILL.md-Geruest."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/router
  - topic/ssot
  - topic/github
  - topic/workstreams
---

# Skill-Spezifikation: ASWE Repo Session Initialisierung & Guardrails

## Empfohlener Repo-Zielpfad

`handbook/reference/AgenticSWE_ASWE_RepoSessionGuardrails_SkillSpec_20260313_V1.md`

## Zweck des Skills

Der Skill initialisiert Sessions fuer ASWE-artige Repos mit Entry-/Status-/Workstream-Muster robust und verhindert, dass der Session-Stand durch aeltere oder schwaechere Quellen regressiert.

Der Skill soll insbesondere:

- den kanonischen Einstiegspunkt eines Repos robust bestimmen oder eingrenzen
- nicht-indexierte Dateien beruecksichtigen
- GitHub als Primaerquelle nutzen
- keine anderen Konnektoren wie Google Drive verwenden, ausser wenn der Nutzer das explizit verlangt
- einen Session-Checkpoint mit Quellenlage, Ankern, harten Fakten, Guardrails und naechstem Fokus liefern
- State-Regression verhindern
- Blocker explizit benennen
- den hoeherwertigen Stand beibehalten, bis eine frischere Primaerquelle ihn belastbar revidiert

## Wann der Skill triggern soll

Der Skill soll automatisch greifen bei Anfragen wie:

- "Initialisiere die Session"
- "Boote das Repo"
- "Pruefe den aktuellen Repo-Stand"
- "Finde den aktuellen Entry-Point"
- "Liefere einen Session-Checkpoint"
- "Welcher Workstream ist aktuell?"
- "Was ist der naechste Arbeitsfokus?"
- "Pruefe, ob wir auf einem alten Stand gelandet sind"

Ausserdem bei impliziten Varianten, wenn klar ist, dass es um aktuellen Repo-/Session-Stand und nicht nur um allgemeine Repo-Erklaerung geht.

## Zulaessige Quellen

### Standardmaessig erlaubt
Nur GitHub-bezogene Quellen:

- GitHub-Code / Repo-Dateien
- GitHub-Commits
- GitHub-PRs
- GitHub-Issues
- GitHub-App-/Konnektorzugriff, auch wenn kein sichtbares `@` erscheint
- oeffentliches Repo auch ueber Web, falls das Repo public ist und dies als zusaetzlicher GitHub-naher Suchpfad nuetzlich ist

### Standardmaessig nicht erlaubt
Ohne explizite Aufforderung des Nutzers nicht verwenden:

- Google Drive
- andere Apps/Konnektoren
- allgemeine Websuche ausserhalb repo-naher GitHub-/Public-Repo-Pruefung

### Einordnung des Web-Zugriffs
Der Web-Zugriff ist kein generischer Fallback, sondern nur ein repo-naher Public-GitHub-Fallback, falls:

- der GitHub-Konnektor in der Session nicht sauber greift
- ein Repo public ist
- Dateisuche / Index / Auswahlzustand des Konnektors unklar ist
- Commit-/Pfad-Signale aus der oeffentlichen Repoansicht schneller belastbar sind als indexierte Treffer

## Kernproblem der Entry-Point-Suche

Die reine Suche nach `ENTRY_LATEST` oder aehnlichen Dateinamen ist gefaehrlich, weil:

- noch nicht alle Dateien indexiert sein koennen
- aeltere Entry-Dateien gefunden werden koennen
- eine Datei zwar `LATEST` heisst, aber nicht mehr der faktisch aktuelle Einstieg ist
- Metadaten und Inhalt zeitlich auseinanderlaufen koennen

Darum soll der Skill nicht seriell-naiv arbeiten (`erste passende Datei = aktueller Entry`), sondern parallel-kandidatenbasiert.

## Robustes Suchmodell: parallel statt naiv seriell

### Grundprinzip
Der Skill erzeugt parallel mehrere Kandidatenmengen fuer moegliche Session-Anker und gleicht diese am Ende gegeneinander ab.

### Kandidatenkanaele
Der Skill soll parallel nach folgenden Signalen suchen:

1. Entry-Kandidaten
   - typische Dateinamen und Pfade wie `entry/`, `ENTRY`, `ENTRY_LATEST`, `LATEST`
2. Status-Kandidaten
   - `RepoStatusUpdate`, `StatusUpdate`, `CurrentStatus`, `SessionStatus`
3. Workstream-Kandidaten
   - `WS_`, `workstream`, `current workstream`, aktive Ausfuehrungsdokumente
4. Commit-Signale
   - letzte Commits auf relevanten Status-/Entry-/State-Pfaden
5. Referenzsignale
   - Dateien, die sich gegenseitig als kanonisch referenzieren
6. Public-Repo-Web-Signale
   - nur wenn nuetzlich und repo-public: Pfad- und Commit-Pruefung ueber GitHub-Web

## Definition von "gefunden"

Ein Entry-Point gilt nicht schon dann als gefunden, wenn nur eine Datei mit passendem Namen existiert.

Ein Kandidat gilt erst als brauchbar gefunden, wenn mehrere der folgenden Kriterien erfuellt sind:

- der Pfad passt zum bekannten Repo-Muster
- die Datei bezeichnet sich inhaltlich selbst als Einstiegspunkt
- sie verweist auf aktuelle Status-/Workstream-Dokumente
- sie wird durch neuere relevante Commits gestuetzt
- sie ist konsistent mit anderen Kandidaten
- es gibt keine klar staerkeren, juengeren Gegenkandidaten

## Definition von "unsicher"

Ein Fund ist unsicher, wenn mindestens einer dieser Faelle vorliegt:

- mehrere plausible Entry-Kandidaten widersprechen sich
- nur ein Namensmatch existiert, aber keine inhaltliche Stuetzung
- Commit-Signale deuten auf juengere Status-/Entry-Dateien als die gefundene Datei
- die Datei ist erkennbar aelterer Planungsstand
- der Konnektor-/Indexzustand koennte aktuelle Dateien auslassen
- der Skill kann nicht belastbar sagen, welche Datei den aktuellsten kanonischen Einstieg repraesentiert

### Konsequenz bei Unsicherheit
Dann darf der Skill keinen falschen Eindeutigkeitsanspruch erzeugen. Er muss:

- Unsicherheit benennen
- die Top-Kandidaten knapp darstellen
- den aktuell hoeherwertig bestaetigten Stand beibehalten
- klar sagen, welche Pruefung zur Aufloesung noch fehlt

## Auswahlregel fuer den kanonischen Einstiegspunkt

Statt `erstes Match gewinnt` soll der Skill eine Kandidatenauswahl nach Evidenz machen.

### Auswahlkriterien
Ein Kandidat gewinnt durch die beste Gesamtlage aus:

- inhaltlicher Kanonizitaet
- struktureller Plausibilitaet
- Netzwerk aus Referenzen
- Commit-Naehe
- Konsistenz mit Session-Fakten

### Harte Guardrail-Regel
Eine aeltere Planungsdatei darf nie allein deshalb gewinnen, weil sie leichter gefunden wurde.

## Definition "hoeherwertiger Stand"

Der Skill soll diesen Rang verwenden:

1. vom Nutzer explizit genannter aktueller Anker
2. live verifizierter GitHub-Stand
3. bereits in der Session bestaetigte Anker, sofern sie auf 1 oder 2 beruhen
4. direkt referenzierte aktuelle Repo-Artefakte
5. aeltere Planungs-/How-to-Dokumente nur als Kontext

### Guardrail
Ein niedrigerer Rang darf einen hoeheren nicht ueberschreiben, ausser durch frischere Primaerevidenz.

## Verhalten bei State-Regression

Der Skill soll aktiv pruefen:

- widerspricht ein neu gefundener Kandidat bereits bestaetigten harten Fakten?
- basiert der neue Kandidat auf schwaecherer oder aelterer Evidenz?
- wird gerade implizit ein neuerer Stand durch aeltere Dokumente verdraengt?

Wenn ja, dann muss der Skill explizit melden:

> Regressionsrisiko erkannt: Ein aelterer oder schwaecher belegter Stand wuerde einen bereits hoeherwertig bestaetigten Session-Stand ueberschreiben. Ich halte daher den bestaetigten Stand bei.

## Standardausgabe des Skills

Der Skill soll standardmaessig in diesem Raster antworten:

### Session-Checkpoint
- aktueller Arbeitsstand in 2-4 Saetzen

### Quellenlage / Freshness
- welche GitHub-Signale wurden benutzt
- ob Commit-/Pfad-/Datei-Evidenz konsistent ist
- ob noch Unsicherheit wegen nicht indexierter Dateien besteht

### Aktive Anker
- kanonischer Entry-Point oder Kandidatenmenge
- relevantes Status-Dokument
- aktiver Workstream
- weitere pinned Anker

### Harte bestaetigte Fakten
- nur belastbare Fakten, getrennt von Hypothesen

### Guardrail-Bewertung
- Regressionsrisiko ja/nein
- Blocker ja/nein
- Confidence knapp

### Naechster empfohlener Arbeitsfokus
- welcher Workstream / welches naechste operative Ziel jetzt sinnvoll ist

## Blocker-Regel

Wenn Live-Verifikation oder robuste Kandidatenaufloesung nicht gelingt, soll der Skill das offen benennen, zum Beispiel so:

> Der aktuelle kanonische Einstiegspunkt konnte nicht eindeutig live verifiziert werden. Ich halte deshalb den zuletzt hoeherwertig bestaetigten Session-Stand bei und markiere neue Ableitungen als vorlaeufig.

## Nicht erlaubt

Der Skill soll nicht:

- Google Drive oder andere Konnektoren ohne expliziten Nutzerwunsch einbeziehen
- alte Planungsdokumente als SSOT behandeln
- einen scheinbar aktuellen Stand behaupten, wenn nur schwache Evidenz vorliegt
- eine einzelne Datei mit gut klingendem Namen automatisch als aktuellen Entry deklarieren
- bereits bestaetigte neuere Session-Fakten stillschweigend verdraengen

## Empfohlene Skill-Struktur

- `SKILL.md`
  - kurze Kernlogik, Trigger, Guardrails, Ausgabeformat
- `references/source-priority.md`
  - Quellenhierarchie, Definition hoeherwertiger Stand, Regressionsregeln
- `references/entry-resolution.md`
  - Kandidatenmodell, Definition von "gefunden" und "unsicher"
- `references/output-template.md`
  - Session-Checkpoint-Template
- optional `references/github-patterns.md`
  - typische Pfade, Suchheuristiken, Commit-basierte Fallbacks
