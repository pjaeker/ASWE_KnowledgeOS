---
name: aswe-question-router
description: routet neue fragen zuerst nach gegenstandsbereich, wissensebene und abstraktionsgrad und waehlt daraus den passenden erstzugriffspfad. verwenden, wenn eine frage mehrdeutig ist, zu schnell auf glossar, taxonomie, richtlinien, gates oder workflows gezogen werden koennte oder wenn zwischen fachdomaene, systemstruktur, governance, umgebung und einzelfall sauber unterschieden werden muss.
---

# Aswe Question Router

## Overview

Nutze diesen Skill, um neue Fragen vor jeder tieferen Bearbeitung knapp und diszipliniert einzuordnen.
Fuehre zuerst einen Routing-Schritt aus und beantworte die eigentliche Sache erst danach.

## Workflow

1. Bestimme den primaeren Gegenstandsbereich.
2. Bestimme die primaere Wissensebene.
3. Bestimme den Abstraktionsgrad.
4. Waehle daraus den passenden Erstzugriffspfad.
5. Nenne danach sekundaere Pfade und eine Stoppregel.

## Zugelassene Einordnungen

### Gegenstandsbereich
- Fachdomaene
- Systemgegenstand
- repo-lokale Governance
- Werkzeug oder Umgebung
- konkreter Fall

### Wissensebene
- Begriff oder Definition
- Theorie oder Modell
- Beobachtung oder Befund
- Norm oder Regel
- operatives Vorgehen
- Implementierung

### Abstraktionsgrad
- Grundsatz
- systemisches Strukturmodell
- kontextgebundene Arbeitsregel
- Einzelfall

## Pflichtausgabe

Gib immer genau diese Bloecke aus:

### Einordnung
- Gegenstandsbereich
- Wissensebene
- Abstraktionsgrad

### Begruendung
- warum diese Einordnung primaer ist
- welche Fehlroute dadurch vermieden wird

### Erstzugriffspfad
- welches Referenz- oder Artefaktformat zuerst zu nutzen ist

### Sekundaere Pfade
- was erst danach heranzuziehen ist

### Stoppregel
- worauf noch nicht verzweigt werden darf

## Harte Regeln

- Nicht direkt loesen, wenn die Frage zuerst geroutet werden muss.
- Nicht vorschnell auf Glossar, Taxonomie, Richtlinien, Gates oder Workflows springen.
- Externe Fachfragen zuerst fachlich einordnen und erst danach lokal abbilden.
- Umgebungsfragen zuerst als Adapter- oder Oberflaechenfragen behandeln.
- Beobachtung, Aussage und Beleg sauber trennen.
- Bei Mehrdeutigkeit primaere und sekundaere Route explizit nennen.
- Wenn keine sichere Einordnung moeglich ist, die kleinste plausible Arbeitshypothese markieren.
- Nutze die Referenzen aus `references/` nur soweit noetig.

## Erstzugriffsregeln

- Bei Fachdomaene plus Begriff oder Theorie: zuerst externe fachliche Einordnung, dann lokale Abbildung.
- Bei Systemgegenstand plus Struktur: zuerst ontologische Basis, Relationsmatrix oder Router-Referenz.
- Bei repo-lokaler Governance plus Begriff: zuerst Glossar.
- Bei repo-lokaler Governance plus Norm: zuerst Richtlinie, Gate oder Allowlist.
- Bei Werkzeug oder Umgebung: zuerst Adapter- oder Umgebungsbeschreibung.
- Bei konkretem Fall plus operativ oder Implementierung: zuerst Status, Workstream oder konkrete Artefakte.

## Referenzen

- `references/router-v1.md` fuer den kanonischen Router.
- `references/ontology-baseline.md` fuer primitive Klassen und Nicht-Gleichsetzungen.
- `references/relations-matrix.md` fuer erlaubte Relationen.
- `references/repo-anchors.md` fuer lokale Erstzugriffspfade.
- `references/worked-examples.md` fuer typische Einordnungen.

## Beispielprompts

- Ordne diese Frage zuerst sauber ein.
- Welche Ebene ist hier die richtige?
- Bevor du antwortest, route diese Frage.
- Ist das Theorie, Governance oder Implementierung?
- Ist das eine Fachfrage oder eine Repo-Frage?
- Wie sollte ich diese Frage im KnowledgeOS zuerst anfassen?
