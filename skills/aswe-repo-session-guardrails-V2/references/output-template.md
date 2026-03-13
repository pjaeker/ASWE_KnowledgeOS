---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Standard-Ausgabeformat fuer den Skill ASWE Repo Session Initialisierung & Guardrails."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/output
  - topic/checkpoint
---

# Reference: Output Template

## Zweck

Diese Referenz stabilisiert das Standard-Outputformat des Skills. Ziel ist, dass Session-Initialisierung und Guardrail-Berichte konsistent, knapp und nachvollziehbar ausgegeben werden.

## Grundprinzip

Trenne strikt zwischen:

- harten bestaetigten Fakten
- plausiblen Kandidaten
- Hypothesen / vorlaeufigen Ableitungen
- Blockern / Unsicherheiten

Behaupte keine Aktualitaet, wenn sie nicht robust belegt ist.

## Standardstruktur

### 1. Session-Checkpoint
Beschreibe den aktuellen Arbeitsstand in 2 bis 4 Saetzen.

Enthalten sein sollen:

- was derzeit als aktueller Stand gilt
- worauf dieser Stand basiert
- ob der Stand robust oder vorlaeufig ist
- ob ein einzelner Entry vorliegt oder eine Kandidatenmenge

### 2. Quellenlage / Freshness
Nenne kurz:

- welche GitHub-Signale verwendet wurden
- ob Datei-, Pfad- und Commit-Evidenz konsistent sind
- ob sibling entry candidates geprueft wurden
- ob Unsicherheit durch Indexierung oder Verifikation bleibt
- ob repo-naher Fallback genutzt wurde oder noch offen ist

### 3. Aktive Anker
Liste die aktuell gepinnten Anker auf:

- kanonischer Entry-Point oder Kandidatenmenge
- relevantes Status-Dokument
- aktiver Workstream
- weitere relevante State-Anker

### 4. Harte bestaetigte Fakten
Fuehre nur Fakten auf, die stark gestuetzt sind.

Beispiele:

- ein Workstream ist aktiv
- ein Statusdokument wird vom Entry referenziert
- ein bestimmter Stand wurde in der Session bereits bestaetigt
- relevante Commits stuetzen einen bestimmten Anker

### 5. Guardrail-Bewertung
Nenne knapp:

- Regressionsrisiko: ja/nein
- Blocker vorhanden: ja/nein
- Confidence: niedrig / mittel / hoch
- Ein-Satz-Begruendung

`Confidence: hoch` ist nur zulaessig, wenn die Entry-Freshness-Pruefung abgeschlossen ist und kein plausibler frischerer same-pattern Kandidat offen bleibt.

### 6. Naechster empfohlener Arbeitsfokus
Benenne den naechsten sinnvollen Fokus, z. B.:

- aktiver Workstream
- naechste zu verifizierende Datei
- sinnvoller E2E-Schritt
- gezielte Aufloesung eines Blockers

Wenn die Freshness-Verifikation des Entry noch offen ist, soll der naechste empfohlene Fokus bevorzugt die Aufloesung genau dieser Verifikationsluecke benennen.

## Beispielgeruest

## Session-Checkpoint
Der aktuell fuehrende Session-Stand wird ueber [Anker X] getragen und durch [Signalgruppe Y] gestuetzt. Der Stand ist [robust/vorlaeufig], weil [kurze Begruendung].

## Quellenlage / Freshness
Verwendet wurden [Datei/Pfad/Commit/PR]-Signale aus GitHub. Die Evidenz ist [konsistent/teilweise widerspruechlich]. Sibling-Entry-Kandidaten wurden [vollstaendig/teilweise/nicht] geprueft. [Unsicherheitsgrund, falls vorhanden].

## Aktive Anker
- Entry: ...
- Status: ...
- Workstream: ...
- Weitere Anker: ...

## Harte bestaetigte Fakten
- ...
- ...
- ...

## Guardrail-Bewertung
- Regressionsrisiko: ...
- Blocker: ...
- Confidence: ... — ...

## Naechster empfohlener Arbeitsfokus
...

## Formulierungsregeln

- keine langen Zitate
- keine Vermischung von Fakt und Hypothese
- Unsicherheit aktiv benennen
- bei Kandidaten immer kenntlich machen, dass es Kandidaten sind
- wenn kein eindeutiger Entry-Point existiert, eine geordnete Kandidatenmenge statt falscher Eindeutigkeit ausgeben
- keinen Checkpoint als robust oder hochkonfident labeln, wenn Freshness-Verifikation offen bleibt

## Nicht tun

- nicht mehrere widerspruechliche Staende unmarkiert vermischen
- nicht aus einem schwachen Signal harte Fakten machen
- nicht Blocker oder Verifikationsluecken verstecken
- nicht alte Planungsdokumente stillschweigend als aktuelle Wahrheit darstellen
