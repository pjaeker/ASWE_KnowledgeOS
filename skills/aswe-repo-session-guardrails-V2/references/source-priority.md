---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Quellenhierarchie, Definition hoeherwertiger Stand und Regressionsschutz fuer den Skill ASWE Repo Session Initialisierung & Guardrails."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/ssot
  - topic/github
  - topic/guardrails
---

# Reference: Source Priority

## Zweck

Diese Referenz definiert, welche Quellen fuer die Session-Initialisierung und fuer die Fortschreibung des Session-Stands als autoritativ gelten. Sie verhindert, dass spaetere Retrievals den bereits bestaetigten Stand auf aeltere oder schwaechere Evidenz zuruecksetzen.

## Grundregel

Nutze standardmaessig nur GitHub-nahe Primaerquellen. Andere Konnektoren oder externe Quellen sind nur zulaessig, wenn der Nutzer sie explizit anfordert.

## Standardmaessig zulaessige Quellen

- GitHub-Code / Repo-Dateien
- GitHub-Commits
- GitHub-Pull-Requests
- GitHub-Issues
- GitHub-App-/Konnektorzugriff, auch wenn kein sichtbares `@` erscheint
- Public-GitHub-Webzugriff als repo-naher Fallback, wenn das Repo oeffentlich ist und dies zur Verifikation des aktuellen Repo-Stands beitraegt

## Standardmaessig nicht zulaessige Quellen

Nicht verwenden, ausser der Nutzer fordert sie explizit an:

- Google Drive
- sonstige Apps/Konnektoren
- allgemeine Websuche ausserhalb repo-naher GitHub-Pruefung

## Rangfolge der Quellen

Verwende fuer Ueberschreibungen und fuer Konfliktaufloesung diese Prioritaet:

1. vom Nutzer explizit benannter aktueller Anker
2. live verifizierter GitHub-Stand
3. bereits in der Session bestaetigte Anker, sofern sie auf 1 oder 2 beruhen
4. direkt referenzierte aktuelle Repo-Artefakte
5. aeltere Planungs-, How-to- oder Kontextdokumente

## Definition: Hoeherwertiger Stand

Ein hoeherwertiger Stand ist der aktuell verlaesslichste, autoritativste und frischeste Session-Zustand. Er ist durch Primaerevidenz oder bereits bestaetigte Session-Anker gestuetzt und darf nicht durch schwaechere Quellen ueberschrieben werden.

Ein Stand ist insbesondere hoeherwertig, wenn er:

- vom Nutzer als aktueller Anker benannt wurde
- durch GitHub live verifiziert wurde
- bereits in der laufenden Session auf Basis starker Evidenz bestaetigt wurde
- mit aktuellen Status-/Workstream-Referenzen konsistent ist

## Ueberschreibungsregel

Ein niedrigerer Rang darf einen hoeheren Rang nicht ueberschreiben, ausser eine frischere Primaerquelle stuetzt die Revision.

Insbesondere gilt:

- ein aelteres Planungsdokument darf keinen bereits bestaetigten neueren Session-Stand verdraengen
- ein einzelner Dateiname mit `ENTRY_LATEST`-Charakter darf keinen bestaetigten Stand allein revidieren
- ein leicht auffindbarer, aber aelterer Fund ist kein legitimer Override
- frische GitHub-Primaerevidenz derselben Artefaktklasse loest eine Pflicht zur Re-Verifikation aus

## Regressionsschutz

Pruefe bei jedem spaeteren Fund:

- basiert der neue Fund auf schwaecherer Evidenz?
- ist der neue Fund aelter oder nur kontextuell?
- wuerde der neue Fund bereits bestaetigte harte Fakten umstossen?
- gibt es primaere, frischere Signale, die den neuen Fund stuetzen?

Wenn nein, halte den bestaetigten Stand bei.

Regression protection bedeutet nicht, frischere same-class Kandidaten zu ignorieren. Wenn fuer dieselbe Artefaktklasse ein plausibel frischerer GitHub-Kandidat auftaucht, muss die Verifikation neu geoeffnet werden, bevor der aeltere bestaetigte Anker gehalten werden darf.

### Empfohlene Formulierung

> Regressionsrisiko erkannt: Ein aelterer oder schwaecher belegter Fund wuerde einen bereits hoeherwertig bestaetigten Session-Stand ueberschreiben. Der bestaetigte Stand bleibt daher aktiv; der neue Fund wird nur als Kontext gewertet.

## Blocker-Regel

Wenn keine robuste Primaerverifikation moeglich ist, muss das offen benannt werden. In diesem Fall:

- keinen scheinbar aktuellen Stand behaupten
- den zuletzt hoeherwertig bestaetigten Stand nur vorlaeufig beibehalten
- neue Ableitungen als vorlaeufig markieren
- klar sagen, welche Verifikation fehlt
- keine hohe Confidence vergeben

### Empfohlene Formulierung

> Der aktuelle Repo-Stand konnte nicht robust aus GitHub-naher Primaerevidenz verifiziert werden. Ich halte daher den zuletzt hoeherwertig bestaetigten Session-Stand nur vorlaeufig bei und markiere neue Ableitungen als vorlaeufig.

## Umgang mit bereits bestaetigten Session-Ankern

Sobald folgende Elemente robust bestaetigt wurden, sind sie aktiv zu pinnen:

- kanonischer Entry-Point oder Kandidatenmenge
- relevantes Status-Dokument
- aktiver Workstream
- harte bestaetigte Fakten
- relevante Zusatzanker wie Snapshot, Manifest oder Meaning Map

Diese Anker bleiben aktiv, bis eine frischere Primaerquelle sie belastbar revidiert.

Ein aelterer bestaetigter Entry-Anker darf nur dann gehalten werden, wenn ein plausibel frischerer Entry-Kandidat aktiv geprueft und als schwaecher eingeordnet wurde. Fehlende Sichtbarkeit oder fehlender Ersttreffer reichen dafuer nicht aus.

## Nicht erlaubt

- keine stillschweigende State-Regression
- keine Nutzung von Google Drive oder anderen Konnektoren ohne expliziten Nutzerwunsch
- keine Behauptung von Aktualitaet aus schwacher Evidenz
- keine implizite Gleichsetzung von leichter Auffindbarkeit mit Autoritaet
- kein Festhalten an aelteren Ankern, obwohl frische same-class Primaersignale offen sind
