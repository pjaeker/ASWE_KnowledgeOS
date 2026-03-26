---
projekt: ASWE_KnowledgeOS
dokumenttyp: referenz
version: V1
datum: 2026-03-26
status: entwurf
sprache: de
zweck: "Kanonische ontologische Basisschicht fuer das ASWE-KnowledgeOS."
---

# Referenz: Ontologische Basis V1

## 1. Zweck und Geltungsbereich

Diese Datei legt die kleinste tragfaehige ontologische Grundmenge fuer das ASWE-KnowledgeOS fest.  
Sie liegt vor Rollen, Arbeitsablaeufen, Architektur und Implementierung.

Ziel ist nicht Vollstaendigkeit, sondern semantische Stabilitaet.  
Die Basisschicht soll:

- Begriffe sauber von Benennungen trennen
- Klassifikation von Einzelfaellen trennen
- Beobachtung, Aussage und Beleg sauber staffeln
- lokale Repo-Begriffe moeglichst eng an externe Fachstandards anbinden

## 2. Externe Pruefbasis

Diese Basisschicht ist an folgende externe Referenzrahmen angelehnt:

1. **ISO 704:2022**  
   Terminologiearbeit wird ueber Beziehungen zwischen Gegenstaenden, Begriffen, Definitionen und Benennungen aufgebaut.  
   Daraus folgt fuer diese Basis: Begriff, Benennung und Definition duerfen nicht vermischt werden.

2. **ISO 1087:2019**  
   Liefert das Grundvokabular fuer Terminologiearbeit und Terminologiewissenschaft.  
   Daraus folgt fuer diese Basis: terminologische Grundbegriffe haben Vorrang vor spontanen Projektbegriffen.

3. **SKOS (W3C Recommendation, 18.08.2009)**  
   Modelliert kontrollierte Begriffssysteme leichtgewichtig und trennt hierarchische von assoziativen Beziehungen.  
   Daraus folgt fuer diese Basis: Taxonomie ist primär ein Klassifikations- und Ordnungssystem, keine volle Ontologie.

4. **OWL 2 Primer (W3C Recommendation, 27.10.2009; zweite Ausgabe 2012)**  
   Trennt Klassen, Eigenschaften und Individuen.  
   Daraus folgt fuer diese Basis: Kategorie, Relation und Instanz duerfen nicht kollabieren.

5. **PROV-O (W3C Recommendation, 30.04.2013)**  
   Liefert einen Rahmen fuer Herkunft, Nachvollziehbarkeit und Stuetzzusammenhaenge.  
   Daraus folgt fuer diese Basis: Aussage und Beleg sind nicht identisch; Beleg braucht Herkunft.

6. **SSN/SOSA (W3C Recommendation, 19.10.2017 fuer SSN)**  
   Trennt Beobachtungen, beobachtete Eigenschaften, Gegenstaende und Verfahren.  
   Daraus folgt fuer diese Basis: Beobachtung ist eine eigene Klasse und nicht nur ein rhetorischer Vorspann.

## 3. Interne Anschlussbasis im Repo

Die Repo-Lage stuetzt die Basisschicht an mehreren Stellen:

- Das Glossar ist bereits als **normatives** Artefakt fuer kanonische Begriffe und Synonympolitik beschrieben.
- Die Taxonomie haengt vom Glossar ab und wird zusammen mit einer maschinenlesbaren Allowlist als vorgelagerter Referenzblock gefuehrt.
- Der gemeinsame Ausgabevertrag trennt bereits **Kernaussagen**, **Beleganker** und **Konfidenz**.
- `ENTRY_LATEST` wird im neueren Session-Vertrag ausdruecklich als **duenner Pointer-Bund** und nicht als operativer Sammelpunkt gefuehrt.

Diese vier Beobachtungen machen eine explizite Trennung von Terminologie, Klassifikation, epistemischer Stuetzung und operativer Navigation sinnvoll.

## 4. Primitive Grundbegriffe

Fuer V1 werden genau zehn primitive Grundbegriffe gesetzt.

### 4.1 Begriff
Eine Bedeutungseinheit, auf die sich Definitionen, Benennungen und Relationen beziehen.

### 4.2 Benennung
Die sprachliche Bezeichnung eines Begriffs.

### 4.3 Definition
Die explizite begriffliche Abgrenzung eines Begriffs.

### 4.4 Kategorie
Eine Klasse, in die Instanzen eingeordnet werden.

### 4.5 Instanz
Ein einzelnes Vorkommnis oder Exemplar.

### 4.6 Relation
Eine typisierte Verknuepfung zwischen Einheiten.

### 4.7 Artefakt
Ein materieller oder dateibasierter Traeger von Wissen, Regeln, Beobachtungen oder Aussagen.

### 4.8 Beobachtung
Eine quellennahe Feststellung ohne weitergehende Deutung.

### 4.9 Aussage
Eine interpretierte, entscheidungsrelevante Behauptung.

### 4.10 Beleg
Ein Artefakt oder Artefaktausschnitt, der eine Aussage stuetzt.

## 5. Kanonische Nicht-Gleichsetzungen

Folgende Gleichsetzungen sind verboten:

- Begriff ≠ Benennung
- Begriff ≠ Definition
- Kategorie ≠ Instanz
- Beobachtung ≠ Aussage
- Aussage ≠ Beleg
- Taxonomie ≠ Ontologie
- Regel ≠ Pruefung
- Rolle ≠ primitiver Grundbegriff
- SSOT ≠ Dingklasse

## 6. Abgeleitete Gebilde

Die folgenden Einheiten sind **nicht** primitiv, sondern aus der Grundmenge abgeleitet:

### 6.1 Glossar
Artefakt, das Begriffe, Benennungen und Definitionen normiert.

### 6.2 Taxonomie
Artefakt, das Kategorien und ihre zulässigen Ordnungen festlegt.

### 6.3 Allowlist
Maschinenlesbare Regelmenge ueber zulaessige Eintraege oder Schreibflaechen.

### 6.4 Regel
Normative Aussage ueber Erlaubtes, Verbotenes oder Erforderliches.

### 6.5 Pruefung
Operationale Kontrolle gegen Regeln.

### 6.6 Rollenvertrag
Operatives Artefakt zur Begrenzung von Zweck, Reichweite und Uebergaben einer Rolle.

### 6.7 Arbeitsablauf
Geordnete Folge regelgebundener Uebergaenge.

### 6.8 Kanonische Quelle
Keine eigene Dingklasse, sondern eine Autoritaetsrelation:
**„Artefakt A ist kanonische Quelle fuer X.“**

## 7. Kanonische Modellentscheidungen

### 7.1 Terminologie vor Klassifikation
Erst wird festgelegt, was ein Begriff bedeutet, dann wie er benannt wird, erst danach wie er klassifiziert oder operationalisiert wird.

### 7.2 Taxonomie ist keine volle Ontologie
Eine Taxonomie ordnet und klassifiziert.  
Eine Ontologie fuegt darueber hinaus typisierte Relationen, Gueltigkeitsbereiche und zusaetzliche Einschraenkungen hinzu.

### 7.3 Beobachtung → Aussage → Beleg
Die epistemische Minimalstaffel lautet:

1. Beobachtung
2. Aussage
3. Beleg

Optional kommt danach noch die Herkunftsebene hinzu:
4. Herkunft des Belegs oder der Aussage

### 7.4 SSOT als Relation
Im Repo wird „SSOT“ teils als Sammelueberschrift fuer Glossar, Taxonomie und Allowlist verwendet.  
Ontologisch sauberer ist die Form:
- Glossar ist kanonische Quelle fuer Begriffe
- Taxonomie ist kanonische Quelle fuer Kategorien
- Allowlist ist kanonische Quelle fuer maschinenlesbar erlaubte Eintraege

### 7.5 Rollen nicht in der Grundschicht
Rollen sind fuer das System wichtig, gehoeren aber in die operative Schicht.  
Sie sind keine Bedeutungsprimitive.

## 8. Lokale Abweichungen gegenueber allgemeiner Fachsprache

### 8.1 „SSOT“
Im Repo erscheint „SSOT“ teils als Sammelbegriff fuer mehrere Artefakte.  
Diese Basis behandelt das nicht als Objektart, sondern als Autoritaetsrelation.  
Das ist eine bewusste lokale Korrektur zur Driftreduktion.

### 8.2 „Taxonomie“
Im Repo dient die Taxonomie zugleich Routing- und Tag-Zwecken.  
Das ist praktisch sinnvoll, aber ontologisch enger als eine volle Ontologie.

### 8.3 „Beleganker“
Der Repo-Begriff „Beleganker“ ist brauchbar, aber nicht basal.  
Basal ist: **Beleg**.  
„Beleganker“ ist die lokalisierte oder referenzierte Form eines Belegs.

## 9. Minimaler Anschluss an die bestehenden Repo-Artefakte

| Repo-Artefakt | Ontologische Einordnung |
|---|---|
| Glossar | normierendes Artefakt fuer Begriff, Benennung, Definition |
| Taxonomie | klassifizierendes Artefakt fuer Kategorien |
| Taxonomie-Allowlist | regeltragendes Artefakt fuer zulaessige Eintraege |
| Shared Output Contract | operativ-epistemischer Strukturvertrag |
| ENTRY_LATEST | weiterleitendes Artefakt |
| RepoStatusUpdate | operatives Zustandsartefakt |
| Workstream | fokussierendes Arbeitsartefakt |

## 10. Offene Erweiterungen, bewusst noch nicht in V1

Die folgenden Begriffe sind wahrscheinlich spaeter noetig, werden aber in V1 noch nicht als primitiv gesetzt:

- Merkmal
- Herkunft
- Regel
- Pruefung
- Rollenvertrag
- Arbeitsablauf
- Zustand
- Ereignis

Grund: Sie sind wichtig, aber fuer die kleinste tragfaehige Basis noch nicht zwingend.

## 11. Kanonische Kurzformel

Die Basisschicht des ASWE-KnowledgeOS lautet:

**Begriff – Benennung – Definition**  
**Kategorie – Instanz – Relation**  
**Beobachtung – Aussage – Beleg**  
**Artefakt als Traegerform**

Alles Weitere ist abgeleitet.

## 12. Quellen

### 12.1 Externe Quellen

- [E1] ISO 704:2022, *Terminology work — Principles and methods*, offizielle ISO-Abstract-Seite.
- [E2] ISO 1087:2019, *Terminology work and terminology science — Vocabulary*, offizielle ISO-Abstract-Seite.
- [E3] W3C, *SKOS Simple Knowledge Organization System Reference*, Recommendation vom 18.08.2009.
- [E4] W3C, *OWL 2 Web Ontology Language Primer*, Recommendation vom 27.10.2009; Publikationshistorie der zweiten Ausgabe von 2012.
- [E5] W3C, *PROV-O: The PROV Ontology*, Recommendation vom 30.04.2013.
- [E6] W3C, *Semantic Sensor Network Ontology is a W3C Recommendation*, 19.10.2017.

### 12.2 Interne Quellen

- [R1] `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`  
  Normatives Glossar fuer kanonische Begriffe, Synonympolitik und Bedeutungsgrenzen.

- [R2] `handbook/reference/AgenticSWE_GPTPro_Shared_Output_Contract_20260318_V1.md`  
  Gemeinsamer Ausgabevertrag mit getrennten Feldern fuer Kernaussagen, Beleganker und Konfidenz.

- [R3] `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md` sowie die zugehoerigen Session-Vertragsdokumente vom 11.03.2026  
  Beschreiben `ENTRY_LATEST` als duennen Pointer-Bund und den kanonischen Kernfluss.

- [R4] `scripts/validate_taxonomy_glossary_mapping.py`  
  Erzwingt, dass Taxonomieeintraege auf vorhandene kanonische Glossarbegriffe abbilden.

- [R5] `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V1.md`  
  Fuehrt Glossar, Taxonomie und Allowlist als vorgelagerte Eingaben und harte Governance-Anker.
