---
projekt: ASWE_KnowledgeOS
dokumenttyp: referenz
version: V1
datum: 2026-03-26
status: entwurf
sprache: de
zweck: "Kanonischer Router zur Wahl von Gegenstandsbereich, Wissensebene und Erstzugriffspfad für Fragen im ASWE-KnowledgeOS."
---

# Referenz: Abstraktions- und Ebenenrouter V1

## 1. Zweck

Diese Datei legt fest, **wie eine neue Frage zuerst eingeordnet wird**, bevor nach Glossar, Taxonomie, Richtlinien, Arbeitsabläufen, Werkzeugen oder Implementierung verzweigt wird.

Der Router soll drei Dinge leisten:

1. die **falsche Einstiegsebene** vermeiden,
2. die ontologische Basis **als Disziplinierungsrahmen** benutzen,
3. für einen Fragetyp den **richtigen Erstzugriffspfad** bestimmen.

Diese Datei ist **kein** Arbeitsablauf, **kein** Rollenvertrag und **keine** Implementierungsanweisung.  
Sie ist eine vorgelagerte **Orientierungs- und Auswahlregel**.

## 2. Stellung relativ zur Ontologie

Die Ontologie und der Router haben verschiedene Aufgaben.

- Die **Ontologische Basis V1** legt fest, welche primitiven Klassen und Grundunterscheidungen kanonisch sind.
- Die **Relationsmatrix V1** legt fest, welche Relationen zwischen diesen Klassen zulässig sind.
- Der **Abstraktions- und Ebenenrouter V1** legt fest, **auf welcher Ebene** eine Frage zuerst bearbeitet werden soll.

Daraus folgt:

- Die Ontologie entscheidet, **was etwas ist**.
- Der Router entscheidet, **wo eine Frage zuerst hingehört**.

Ohne Ontologie droht Begriffsdrift.  
Ohne Router droht Ebenendrift.

## 3. Externe Referenzbasis

Der Router stützt sich auf eine kleine, harte externe Basis.

### 3.1 Terminologie und Begriffsdisziplin

**ISO 704:2022** fordert, Terminologiearbeit über Beziehungen zwischen Gegenständen, Begriffen, Definitionen und Benennungen aufzubauen.  
Für den Router folgt daraus: Begriffsfragen müssen vor Klassifikation, Regelsetzung oder Implementierung geklärt werden.

**ISO 1087:2019** liefert das Grundvokabular der Terminologiearbeit.  
Für den Router folgt daraus: Frageeinordnung darf nicht auf bloße Wortähnlichkeit reduziert werden, sondern muss Bedeutung, Benennung und Definition auseinanderhalten.

### 3.2 Klassifikation, Ontologie und Relationen

**SKOS** beschreibt Taxonomien, Thesauri und andere Wissensorganisationssysteme als eigene Klasse von Strukturen.  
Für den Router folgt daraus: Eine Taxonomiefrage ist nicht automatisch eine volle Ontologiefrage.

**OWL 2** trennt Klassen, Individuen und Eigenschaften.  
Für den Router folgt daraus: Fragen nach Kategorien, Einzelfällen und Relationen müssen auseinandergehalten werden.

### 3.3 Beobachtung, Herkunft und Stützung

**PROV-O** liefert einen Rahmen für Herkunft und Nachvollziehbarkeit.  
**SSN/SOSA** trennt Beobachtungen, beobachtete Eigenschaften und Gegenstände.

Für den Router folgt daraus: Beobachtungsfragen, Aussagefragen und Belegfragen dürfen nicht zu einer einzigen „Informationsfrage“ kollabieren.

### 3.4 Sichtweisen und Anliegen

**ISO/IEC/IEEE 42010:2022** trennt Architektur, Architekturbeschreibung, Sichtweisen und Anliegen.  
Für den Router folgt daraus: Nicht jede Frage ist auf derselben Sichtweise sinnvoll. Ein und derselbe Gegenstand kann theoretisch, normativ, operativ, umgebungsbezogen oder implementativ betrachtet werden.

### 3.5 Disziplinen und Wissensgebiete

Als ergänzende, nicht normative, aber weithin anerkannte Orientierung dienen:

- **SEBoK** als strukturierte Sicht auf Wissensgebiete und Disziplinkontexte,
- **ACM Computing Classification System** als Beispiel für disziplinäre Gliederung technischer Themen.

Für den Router folgt daraus: Eine Frage kann primär einer **Fachdomäne** angehören, auch wenn sie später lokale Repo-Folgen hat.

## 4. Kanonische Router-These

Die kleinste tragfähige Router-Regel lautet:

> Eine Frage wird zuerst nach **Gegenstandsbereich**, dann nach **Wissensebene**, dann nach **Abstraktionsgrad** eingeordnet.  
> Erst danach wird ein konkretes Artefakt, eine Richtlinie, ein Werkzeug oder ein Arbeitsablauf gewählt.

Das ist die zentrale Abweichung gegen rein artefaktgetriebenes Routing.

## 5. Die drei Router-Achsen

## 5.1 Achse A: Gegenstandsbereich

Diese Achse beantwortet: **Worüber wird eigentlich gefragt?**

Es sind genau fünf Gegenstandsbereiche zugelassen.

### A1. Fachdomäne
Externe wissenschaftliche, mathematische, technische oder methodische Domäne.  
Beispiele: Optimierung, Optimierungstheorie, Regelung, Wissensrepräsentation.

### A2. System- oder Produktgegenstand
Das ASWE-KnowledgeOS oder ein anderes betrachtetes System als Gegenstand.  
Beispiele: Session-Vertrag, Ontologie, Portalkern, Writer-Modell.

### A3. Repo-lokale Ordnungs- und Governanceebene
Kanonische lokale Regeln, Begriffe, Taxonomien, Schreibgrenzen, Freigabelogik.  
Beispiele: Glossar, Taxonomie, Allowlist, Richtlinien, Gates.

### A4. Werkzeug- und Umgebungsgegenstand
Konkrete Arbeitsumgebung, Adapter, Laufumgebung oder Oberfläche.  
Beispiele: ChatGPT-GUI, ChatGPT-Desktop-App, Codex, Copilot, lokaler Runner.

### A5. Konkreter Fall oder Artefaktfall
Ein einzelnes Dokument, ein spezieller Befund, ein einzelner Workstream oder eine konkrete Änderung.  
Beispiele: ein bestimmtes Statusdokument, eine konkrete Datei, ein bestimmter Arbeitsschnitt.

## 5.2 Achse B: Wissensebene

Diese Achse beantwortet: **Welche Art von Wissen wird zuerst gebraucht?**

Es sind genau sechs Wissensebenen zugelassen.

### B1. Begriffs- und Definitionsniveau
Gefragt ist: Was bedeutet ein Ausdruck? Wie ist er abzugrenzen?  
Erstzugriff: Begriff, Benennung, Definition.

### B2. Theorie- und Modellniveau
Gefragt ist: Welche allgemeinen Modelle, Prinzipien oder Theorien tragen den Gegenstand?  
Erstzugriff: Fachdomäne, externe Referenzen, formale Struktur.

### B3. Beobachtungs- und Befundniveau
Gefragt ist: Was wurde tatsächlich festgestellt? Was ist der gegenwärtige Befund?  
Erstzugriff: Beobachtung, Messung, Zustand, Evidenz.

### B4. Normatives und regelgebundenes Niveau
Gefragt ist: Was gilt, was ist erlaubt, was ist verboten, was ist verpflichtend?  
Erstzugriff: Regel, Richtlinie, Gate, kanonische Quelle.

### B5. Operatives und arbeitsbezogenes Niveau
Gefragt ist: Wie wird im System praktisch vorgegangen?  
Erstzugriff: Status, Workstream, Arbeitsschnitt, Handlungsreihenfolge.

### B6. Implementatives und konkretes Ausführungsniveau
Gefragt ist: Wie wird etwas konkret gebaut, ausgeführt, integriert oder geprüft?  
Erstzugriff: Dateien, Schnittstellen, Skripte, Oberflächen, Code, konkrete Umgebungen.

## 5.3 Achse C: Abstraktionsgrad

Diese Achse beantwortet: **Auf welcher Verallgemeinerungsstufe wird gefragt?**

Es sind genau vier Stufen zugelassen.

### C1. Allgemeingültiger Grundsatz
Domänen- oder systemübergreifender Grundsatz.

### C2. Systemspezifisches Strukturmodell
Allgemein für das ASWE-KnowledgeOS, aber nicht nur für einen Einzelfall.

### C3. Kontextgebundene Arbeitsregel
Gültig für einen bestimmten Adapter, Pfad, Vertrag oder Arbeitsmodus.

### C4. Einzelfall
Gültig nur für eine konkrete Datei, eine konkrete Sitzung, einen bestimmten Befund oder einen spezifischen Änderungsschnitt.

## 6. Prioritätsregel

Die Priorität ist fest:

1. **Gegenstandsbereich**
2. **Wissensebene**
3. **Abstraktionsgrad**
4. **Erstzugriffspfad**

Nicht erlaubt ist die umgekehrte Reihenfolge, bei der zuerst ein vorhandenes Artefakt gewählt und daraus die Fragebedeutung rückgeschlossen wird.

## 7. Kanonische Erstzugriffsregeln

## 7.1 Fachdomäne zuerst, wenn die Frage theoretisch ist

Wenn der Gegenstandsbereich **Fachdomäne** ist und die Wissensebene **Begriffs- oder Theorieniveau**, dann ist der Erstzugriff **nicht** Glossar, Gate oder Richtlinie, sondern:

1. externe Fachreferenzen,
2. erst danach lokale Begriffsabbildung,
3. erst danach lokale Governance-Folgen.

**Beispiel:**  
„Was ist Optimierung und was ist Optimierungstheorie?“  
Erstzugriff: Fachdomäne und Theorieniveau.  
Nicht-Erstzugriff: Repo-Richtlinien.

## 7.2 Umgebung zuerst, wenn die Frage oberflächen- oder adapterbezogen ist

Wenn der Gegenstandsbereich **Werkzeug- und Umgebungsgegenstand** ist, dann ist der Erstzugriff die Umgebungs- oder Adapterbeschreibung.

**Beispiel:**  
„Was unterscheidet ChatGPT-GUI und Codex als Einstieg?“  
Erstzugriff: Adapter- und Umgebungsdokumente.  
Nicht-Erstzugriff: Taxonomie oder allgemeine Richtlinien.

## 7.3 Glossar zuerst, wenn die Frage begrifflich lokal-normativ ist

Wenn der Gegenstandsbereich **Repo-lokale Ordnungs- und Governanceebene** ist und die Wissensebene **Begriffs- und Definitionsniveau**, dann ist der Erstzugriff das Glossar.

**Beispiel:**  
„Was bedeutet ein lokaler kanonischer Begriff?“  
Erstzugriff: Glossar.

## 7.4 Taxonomie zuerst, wenn die Frage Klassifikation oder Routing betrifft

Wenn die Frage primär Kategorien, Tag-Ordnungen oder zulässige Klassifikationen betrifft, dann ist der Erstzugriff die Taxonomie und gegebenenfalls ihre maschinenlesbare Ergänzung.

**Beispiel:**  
„Wie wird ein Artefakt korrekt klassifiziert?“  
Erstzugriff: Taxonomie, dann Allowlist.

## 7.5 Richtlinie zuerst, wenn die Frage auf Geltung, Verbot oder Pflicht zielt

Wenn die Wissensebene **normativ** ist, dann ist der Erstzugriff die relevante Richtlinie, nicht das Glossar.

**Beispiel:**  
„Darf ein neuer Schreibpfad eröffnet werden?“  
Erstzugriff: Richtlinie oder Gate-Regel.

## 7.6 Status und Workstream zuerst, wenn die Frage operativ ist

Wenn die Wissensebene **operativ** ist, dann ist der Erstzugriff Status und Workstream.

**Beispiel:**  
„Welcher Arbeitsschnitt ist jetzt dran?“  
Erstzugriff: Statusdokument, dann Workstream.

## 7.7 Implementationspfad zuerst, wenn die Frage konkret auszuführen ist

Wenn die Wissensebene **implementativ** ist, dann ist der Erstzugriff die konkrete Ausführungsoberfläche: Dateien, Schnittstellen, Skripte oder Umgebungen.

**Beispiel:**  
„Wie integriere ich den Router in die vorhandenen Validierer?“  
Erstzugriff: konkrete Zielartefakte und Prüfpfade.

## 8. Router-Matrix

| Gegenstandsbereich | Wissensebene | Typischer Erstzugriff | Typische Fehlroute |
|---|---|---|---|
| Fachdomäne | Begriff / Theorie | externe Fachreferenzen, danach lokale Abbildung | sofort auf Richtlinien oder Tags springen |
| System- oder Produktgegenstand | Struktur / Modell | Ontologische Basis, Relationsmatrix, Architektur- oder Strukturreferenzen | direkt auf konkrete Dateien oder Gates springen |
| Repo-lokale Governanceebene | Begriff | Glossar | sofort auf Implementierung springen |
| Repo-lokale Governanceebene | Norm | Richtlinie, Gate, Allowlist | Begriffsdefinition mit Geltung verwechseln |
| Werkzeug- und Umgebungsgegenstand | operativ / implementativ | Adapter- und Umgebungsdokumente | auf allgemeine Systemtheorie oder Taxonomie ausweichen |
| Konkreter Fall | Beobachtung / operativ / implementativ | konkrete Artefakte, Status, Befunde | aus Einzelfall sofort allgemeine Theorie machen |

## 9. Harte Fehlerriegel

Der Router verbietet folgende Muster:

### 9.1 Artefaktgetriebene Vorentscheidung
Ein vorhandenes Dokument darf nicht allein deshalb Erstzugriff sein, weil es existiert.

### 9.2 Normative Übersteuerung
Eine Frage darf nicht vorschnell auf Richtlinien oder Gates gezogen werden, wenn sie primär fachlich oder umgebungsbezogen ist.

### 9.3 Werkzeugverkürzung
Eine Umgebungsfrage darf nicht auf reine Implementierungsdetails verkürzt werden, wenn zuerst Adapterlogik oder Oberflächenunterschiede relevant sind.

### 9.4 Begriffliche Unterbestimmung
Eine lokale Begriffsfrage darf nicht mit bloßen Beispielen beantwortet werden, wenn die Definition unklar bleibt.

### 9.5 Ebenensprung ohne Brücke
Ein Sprung von Fachtheorie direkt zu konkreten Repo-Regeln ist nur erlaubt, wenn die Zwischenstufe ausdrücklich benannt wird.

## 10. Anwendung auf die beiden Leitbeispiele

## 10.1 Beispiel: „Optimierung“ und „Optimierungstheorie“

Einordnung:

- Gegenstandsbereich: **Fachdomäne**
- Wissensebene: **Begriffs- und Theorieniveau**
- Abstraktionsgrad: in der Regel **allgemeingültiger Grundsatz** oder **systemspezifisches Strukturmodell**, je nach Frageform

Erstzugriff:

1. externe Fachreferenzen,
2. saubere Begriffsabgrenzung,
3. danach mögliche lokale Abbildung auf das ASWE-KnowledgeOS.

Nicht-Erstzugriff:

- Richtlinien,
- Gates,
- Allowlists,
- operative Workstreams.

Folge für das ASWE-KnowledgeOS:

Erst wenn klar ist, was „Optimierung“ im fachlichen Sinn meint, darf lokal entschieden werden,
ob der Begriff als Fachbegriff, Metapher, Systemziel, Bewertungsmaß oder Arbeitsheuristik verwendet wird.

## 10.2 Beispiel: „Codex-App versus ChatGPT-Desktop-App“

Einordnung:

- Gegenstandsbereich: **Werkzeug- und Umgebungsgegenstand**
- Wissensebene: meist **operativ** oder **implementativ**, teilweise **strukturell**
- Abstraktionsgrad: meist **kontextgebundene Arbeitsregel**

Erstzugriff:

1. Adapter- und Umgebungsdokumente,
2. konkrete Startpfade und Rollen des jeweiligen Einstiegs,
3. erst danach Governance-Folgen.

Lokale Anschlussregel im Repo:

- ChatGPT-GUI startet semantisch über `ENTRY_LATEST`.
- Codex/Copilot starten repo-lokal über `AGENTS.md`.
- Danach benutzen beide denselben Kernfluss.

Nicht-Erstzugriff:

- allgemeine Taxonomie,
- allgemeine Richtlinien,
- theoretische Fachbegriffe, sofern nicht ausdrücklich gefragt.

## 11. Lokale Einordnung der vorhandenen Repo-Artefakte

Diese Einordnung dient dem Erstzugriff, nicht der Vollcharakterisierung.

| Artefakt | Primäre Router-Rolle |
|---|---|
| Ontologische Basis V1 | System- oder Produktgegenstand / Begriff und Struktur |
| Relationsmatrix V1 | System- oder Produktgegenstand / Relation und Struktur |
| Glossar | repo-lokale Governanceebene / Begriff |
| Taxonomie | repo-lokale Governanceebene / Klassifikation |
| Allowlist | repo-lokale Governanceebene / Norm und Prüfungsvorbereitung |
| Richtlinien | repo-lokale Governanceebene / Norm |
| RepoStatusUpdate | operativer Erstzugriff |
| Workstream | operativer Erstzugriff für den konkreten Arbeitsschnitt |
| `ENTRY_LATEST` | Start-Pointer, kein Wissenscontainer |
| `AGENTS.md` | Codex-/Copilot-Adapterpfad |
| GUI-Adapter-Dokument | ChatGPT-GUI-Adapterpfad |

## 12. Minimale Entscheidungsprozedur für neue Fragen

Jede neue Frage wird in genau vier Schritten geprüft.

### Schritt 1
Was ist der primäre Gegenstandsbereich?

### Schritt 2
Welche Wissensebene ist zuerst nötig?

### Schritt 3
Auf welchem Abstraktionsgrad wird gefragt?

### Schritt 4
Welcher Erstzugriff folgt daraus?

Die Kurzform lautet:

**Worüber? – Welcher Wissensmodus? – Wie allgemein? – Wohin zuerst?**

## 13. Entscheidungsfragen als Kurztest

Vor jeder Antwort sind diese Fragen in genau dieser Reihenfolge zu prüfen:

1. Frage ich nach einem Begriff oder nach einer Regel?
2. Frage ich nach einer Theorie oder nach einem lokalen Arbeitsmodus?
3. Frage ich nach einem Befund oder nach einer Handlung?
4. Frage ich nach einem Systemprinzip oder nach einer konkreten Umgebung?
5. Frage ich nach dem ASWE-KnowledgeOS oder nach einer externen Fachdomäne?

Wenn die letzte Frage mit **externe Fachdomäne** beantwortet wird, darf nicht zuerst auf repo-lokale Governanceartefakte verzweigt werden.

## 14. Kanonische Kurzformel

Die Kurzformel des Routers lautet:

**Gegenstandsbereich vor Wissensebene vor Abstraktionsgrad vor Artefaktwahl.**

## 15. Offene Erweiterungen für V2

V1 setzt noch nicht explizit:

- Merkmalsrouter,
- Entscheidung unter Mehrfachgegenstand,
- Gewichtung konkurrierender Erstzugriffe,
- formale Prüfregeln für automatische Router,
- Kopplung an Validierer.

Die erste sinnvolle Erweiterung für V2 wäre eine **Entscheidungstabelle mit Mehrfachzuordnung und Vorrangregeln**.

## 16. Quellen

### 16.1 Externe Quellen

- [E1] ISO 704:2022, *Terminology work — Principles and methods*.  
  https://www.iso.org/standard/79077.html

- [E2] ISO 1087:2019, *Terminology work and terminology science — Vocabulary*.  
  https://www.iso.org/standard/62330.html

- [E3] W3C Recommendation, *SKOS Simple Knowledge Organization System Reference*.  
  https://www.w3.org/TR/skos-reference/

- [E4] W3C, *OWL 2 Web Ontology Language Primer*.  
  https://www.w3.org/2007/OWL/wiki/Primer

- [E5] W3C Recommendation, *PROV-O: The PROV Ontology*.  
  https://www.w3.org/TR/prov-o/

- [E6] W3C, *Semantic Sensor Network Ontology is a W3C Recommendation*.  
  https://www.w3.org/news/2017/semantic-sensor-network-ontology-is-a-w3c-recommendation/

- [E7] ISO/IEC/IEEE 42010:2022, *Software, systems and enterprise — Architecture description*.  
  https://www.iso.org/standard/74393.html

- [E8] SEBoK, *Guide to the Systems Engineering Body of Knowledge*.  
  https://sebokwiki.org/wiki/Guide_to_the_Systems_Engineering_Body_of_Knowledge_%28SEBoK%29

- [E9] ACM, *Computing Classification System*.  
  https://www.acm.org/publications/computing-classification-system/css

### 16.2 Interne Quellen

- [R1] `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
- [R2] `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260311_V2.md`
- [R3] `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260311_V2.md`
- [R4] `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`
- [R5] `AGENTS.md`
- [R6] `handbook/reference/AgenticSWE_GPTPro_Shared_Output_Contract_20260318_V1.md`

### 16.3 Vorarbeiten dieses Chats

- [V1] `/mnt/data/ASWE_KnowledgeOS_Ontologische_Basis_V1_20260326_V1.md`
- [V2] `/mnt/data/ASWE_KnowledgeOS_Relationsmatrix_V1_20260326_V1.md`
