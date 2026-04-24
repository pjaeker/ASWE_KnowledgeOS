# ASWE_Folgeebenen_Audit_20260423_V2

## 1. Voranalyse

### Zielbild
Ziel dieses Dokuments ist die rekursive Pruefung der Folgeebenen des aktuellen Axiomkandidatenraums. Gegenstand sind nicht neue Kernaxiome, sondern die bereits aus Kernaxiomen abgeleiteten Elemente:

- starke Designprinzipien
- sekundaere Qualitaetsattribute
- operative Regeln
- Kopplungsfolgen

Die Pruefung soll zeigen, ob diese Folgeelemente:
- trennscharf genug definiert sind,
- funktional eigenstaendig oder nur Unterfaelle sind,
- sauber auf Kernaxiome rueckgebunden sind,
- ihre Nicht-Geltung, Spannungen und Evidenzstatus geerbt oder neu ausgebildet haben,
- auf der richtigen Ebene gefuehrt werden,
- und ob der Folgeebenenraum insgesamt konsistent und konsolidierungsreif ist.

### Gegenstand
Gegenstand ist die Pruefung des Folgeebenenraums des aktuellen Hauptdokuments V3 in Bezug auf:
- Rueckbindung
- funktionale Definition
- Trennschaerfe innerhalb der Ebene
- Trennschaerfe zu den anderen Ebenen
- Evidenzstatus
- Nicht-Geltung und Grenzfaelle
- Mehrfachableitung
- Konfliktlage
- Revisionsfolgen
- Ebenenangemessenheit

### Geltungsbereich
Dieses Dokument gilt fuer die Revision des Hauptdokuments zum Axiomkandidatenraum sowie fuer weitere Schleifen, die Folgeelemente klassifizieren, auditieren oder umschichten.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:
- neue breite Sammlung weiterer Kernaxiome,
- lokale Repo-Implementierung,
- UI- oder Betriebsoptimierung,
- reine Formulierungsvarianten ohne begrifflichen Unterschied,
- implizite Aufwertung eines Folgeelements zu einem Kernaxiom ohne expliziten Kollapstest.

### Epistemischer Status

#### Beobachtung
Der bisherige Revisionslauf hat die Kernaxiome deutlich staerker formalisiert als ihre Folgeebenen. Designprinzipien, Qualitaetsattribute und operative Regeln liegen bereits in hinreichender Zahl vor, sind aber in Trennschaerfe, funktionaler Definition, Rueckbindung und Evidenzstatus ungleichmaessig ausgearbeitet.

#### Aussage
Der Folgeebenenraum ist gross genug fuer einen belastbaren Auditlauf, aber noch nicht durchgehend trennscharf, funktional stabil und ebenenrein modelliert.

#### Hypothese
Wenn die bisherigen Analysestandards rekursiv auf Folgeebenen angewandt werden, lassen sich:
- verwaiste oder nur indirekt rueckgebundene Elemente,
- Fehlklassifikationen zwischen Designprinzip, Qualitaetsattribut und operativer Regel,
- redundante oder konflikttraechtige Mehrfachableitungen,
- sowie potenzielle Aufwertungskandidaten
sichtbar machen und systematisch korrigieren.

#### Kriterium
Der Audit ist nur dann gelungen, wenn:
- die drei Folgeebenen definitorisch klar getrennt bleiben,
- ihre Rueckbindung an Kernaxiome explizit ist,
- ihre funktionale Eigenstaendigkeit oder Unterordnung klar wird,
- ihre Nicht-Geltung und Konfliktlage markiert ist,
- keine zweite Regelquelle entsteht,
- und keine implizite Rangverschiebung zu Kernaxiomen ohne Kollapstest erfolgt.

#### Empfehlung
Die Folgeebenen sollen ab jetzt als eigene Auditobjekte behandelt werden; Konsolidierung und Umklassifikation haben Vorrang vor weiterer Expansion.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: systemisches Strukturmodell fuer Folgeebenen
- noch nicht: lokale Implementierung

### Geltungsordnung und Leitplanken
Die Pruefung bleibt an folgende Ordnung gebunden:
1. D2 – Zielbild, Sprachgovernance, Leitplanken
2. D3 – Selbstanwendungspraemisse, Revisionspflichten
3. D4 – Voranalyse-, Phasentrennungs- und Ausfuehrungslogik
4. D1/V3 – aktueller Kernaxiomenraum
5. D5 – Standardschaerfung und Metaqualitaetspruefung
6. dieses Dokument – Folgeebenen-Audit als nachgeordnete Erweiterung

Bindend bleiben:
- Kernaxiome bleiben Kernaxiome.
- Externe wissenschaftliche Quellen bleiben primaer.
- A, B und Kopplung bleiben getrennt; Kopplungen sind explizit.
- Governierte statt freie Selbstverbesserung bleibt bindend.
- Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
- Folgeelemente duerfen nicht implizit den Rang von Kernaxiomen erhalten.

---

## 2. Folgeebenen-Inventar

## 2.1 Starke Designprinzipien

### A – LLM-Verhaltenssteuerung
1. Explizitheit kritischer Annahmen
2. regelgebundene Selbstkritik
3. adversariale Pruefbarkeit
4. evaluator-kritische Testdisziplin
5. Portierbarkeit

### B – ASWE_KnowledgeOS-Architektur
6. definitorische Priorisierung
7. Rollen- und Relationsreinheit
8. kontrollierte Kopplung
9. driftwachsame Revisionsdisziplin
10. Verifikationsfaehigkeit

### K – Kopplung
11. epistemische Staffelung
12. keine Kurzschlussmaterialisierung
13. keine konkurrierende Wahrheitsquelle

## 2.2 Sekundaere Qualitaetsattribute

### A – LLM-Verhaltenssteuerung
1. Driftresistenz
2. Kontrollierbarkeit
3. Reproduzierbarkeit
4. argumentative Nachvollziehbarkeit

### B – ASWE_KnowledgeOS-Architektur
5. Wiederauffindbarkeit
6. Persistenz
7. Reparierbarkeit
8. Wartbarkeit
9. duale Lesbarkeit

### K – Kopplung
10. Evidenzdisziplin
11. Materialisierungsdisziplin
12. Wahrheitsquellenstabilitaet

## 2.3 Operative Regeln

### A – LLM-Verhaltenssteuerung
1. Zielbild vor Ausfuehrung explizieren
2. Aussagearten trennen
3. Unsicherheiten markieren
4. kleinsten sicheren naechsten Schritt waehlen
5. Gegenbeispiele und Testfaelle anfuehren

### B – ASWE_KnowledgeOS-Architektur
6. Begriff vor Benennung, Benennung vor Regelung
7. Herkunft und Referenzen mitfuehren
8. Pfadwechsel nur ueber explizite Schnittstellen
9. Aenderungen gegen Drift und Revisionsfaehigkeit pruefen

### K – Kopplung
10. Bewertung vor Materialisierung
11. Spiegel und Adapter nicht als semantischen Ursprung behandeln
12. Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen

## 2.4 Kopplungsfolgen
1. Scope-Bindung wirkt bis in Materialisierung und Operationalisierung
2. epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal
3. Auditierbarkeit braucht Provenienz und Referenzierbarkeit
4. rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik
5. Testbarkeit muss vor operative Uebernahme treten
6. ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie
7. governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik

### Urteil zur Menge
Die Menge ist fuer einen belastbaren Auditlauf ausreichend. Der Engpass liegt nicht in zu wenigen Kandidaten, sondern in:
- ungleicher definitorischer Schaerfe,
- unvollstaendiger Rueckbindung,
- fehlender Ebenenreinheit einzelner Begriffe,
- und zu schwacher funktionaler Definition mehrerer Folgeelemente.

---

## 3. Trnnschaerfe- und Funktionsaudit

### 3.1 Ebenendefinitionen als Pruefmaßstab

#### Kernaxiom
Konstitutive, nicht-derivative Grundaussage, ohne die die Grundordnung des Systems kollabiert.

#### Starkes Designprinzip
Abgeleitete, systemgestaltende Konstruktionsregel. Beschreibt, wie ein System aufgebaut oder ausgerichtet werden soll.

#### Sekundaeres Qualitaetsattribut
Abgeleitete, bewertende Gueteeigenschaft des Systems oder seiner Artefakte.

#### Operative Regel
Konkrete Handlungs-, Pruef- oder Entscheidungsanweisung fuer die Ausfuehrung.

### 3.2 Auditmatrix – starke Designprinzipien

| Element | Rueckbindung | Funktion | Trennschaerfe in Ebene | Trennschaerfe zu anderen Ebenen | Evidenzstatus | Nicht-Geltung / Grenzfall | Mehrfachableitung | Konfliktlage | Revisionsfolgen | Ebenenangemessenheit | Befund |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Explizitheit kritischer Annahmen | A1, A2 | Voraussetzungen sichtbar machen | mittel | mittel | standardsetzend abgeleitet | nicht jeder triviale Austausch | mehrfach | gering | mittel | eher Designprinzip | beibehalten, enger fassen |
| regelgebundene Selbstkritik | A3, A4 | Selbstkorrektur unter Regeln binden | mittel | mittel | empirisch + abgeleitet | nicht jede Kreativinteraktion | mehrfach | mittel | mittel | Designprinzip | beibehalten |
| adversariale Pruefbarkeit | A5 | feindliche Eingaben pruefbar machen | hoch | hoch | empirisch | nicht fuer jeden Erkundungsschritt | scheinbar mehrfach | gering | niedrig | Designprinzip | beibehalten |
| evaluator-kritische Testdisziplin | A5 | Evaluatoren selbst pruefen | mittel | mittel | empirisch + lokal | nicht jeder Test evaluator-zentriert | teilweise mehrfach | gering | mittel | Designprinzip | enger fassen |
| Portierbarkeit | A1, A2, K3 indirekt | Regeln ueber Kontexte hinweg stabil halten | niedrig bis mittel | niedrig bis mittel | lokal | scope- und artefaktabhaengig | unklar | mittel | mittel | fraglich | umklassifizieren oder enger fassen |
| definitorische Priorisierung | B1 | Definition vor Benennung/Regelung | hoch | hoch | standardsetzend | fuer informelle Platzhalter nur abgeschwaecht | eindeutig | gering | mittel | Designprinzip | beibehalten |
| Rollen- und Relationsreinheit | B2 | Kategorien und Relationen nicht vermischen | hoch | hoch | standardsetzend | informelle Kurznotizen nur begrenzt | eindeutig | gering | mittel | Designprinzip | beibehalten |
| kontrollierte Kopplung | B4, B5 | Kopplung explizit und begrenzt halten | hoch | mittel bis hoch | standardsetzend + theoretisch | lose Ideenskizzen vor Vorstufe | mehrfach | mittel | hoch | Designprinzip | beibehalten |
| driftwachsame Revisionsdisziplin | B5, A3 | Aenderungen gegen Drift pruefen | mittel | mittel | theoretisch + lokal | Kleinkorrekturen mit geringer Wirkung | mehrfach | mittel | hoch | Designprinzip | enger fassen |
| Verifikationsfaehigkeit | B4, A5, K2 | pruefbare Uebergaenge und Zustaende | mittel bis hoch | mittel | standardsetzend + empirisch | fruehe Vorerkundung nur eingeschraenkt | mehrfach | gering | mittel | Designprinzip | beibehalten |
| epistemische Staffelung | K1, A2 | Beobachtung/Aussage/Beleg staffeln | hoch | mittel | standardsetzend | alltaegliche Kurzkommunikation | eindeutig | gering | mittel | grenznah zu Axiomfolge | beibehalten |
| keine Kurzschlussmaterialisierung | K2, B4 | Bewertung vor Uebernahme erzwingen | hoch | hoch | standardsetzend + abgeleitet | reversible Sandbox-Prototypen | mehrfach | gering | hoch | Designprinzip | beibehalten |
| keine konkurrierende Wahrheitsquelle | K3, B2 | Spiegel/Adapter nicht semantisch aufwerten | hoch | mittel bis hoch | standardsetzend + lokal | rein technische Anzeige ohne Semantikverschiebung | mehrfach | mittel | hoch | Designprinzip | beibehalten |

### 3.3 Auditmatrix – sekundaere Qualitaetsattribute

| Element | Rueckbindung | Funktion | Trennschaerfe in Ebene | Trennschaerfe zu anderen Ebenen | Evidenzstatus | Nicht-Geltung / Grenzfall | Mehrfachableitung | Konfliktlage | Revisionsfolgen | Ebenenangemessenheit | Befund |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Driftresistenz | A1, A3, B5 | unerwuenschte Abweichung begrenzen | mittel | mittel | theoretisch + empirisch indirekt | Exploration darf lokal variieren | mehrfach | mittel | hoch | Qualitaetsattribut | beibehalten, enger fassen |
| Kontrollierbarkeit | A4, B4 | Eingriffe und Steuerung moeglich halten | mittel | niedrig bis mittel | standardsetzend abgeleitet | Niedrigrisikointeraktion | mehrfach | mittel | hoch | evtl. zu basal / Sammelbegriff | enger fassen |
| Reproduzierbarkeit | A5, K2 | Ergebnisse pruefbar wiederholen | hoch | mittel | empirisch + abgeleitet | heuristische Ideation | mehrfach | gering | mittel | Qualitaetsattribut | beibehalten |
| argumentative Nachvollziehbarkeit | A2, A3 | Begruendungsgaenge rekonstruierbar machen | hoch | mittel | standardsetzend + lokal | sehr knappe Alltagsantworten | mehrfach | gering | mittel | Qualitaetsattribut | beibehalten |
| Wiederauffindbarkeit | B3, B4 | Inhalte spaeter finden | mittel | hoch | standardsetzend abgeleitet | fluechtige Hilfsnotizen | mehrfach | gering | mittel | Qualitaetsattribut | beibehalten, klarer unter B3 |
| Persistenz | B3 indirekt | Inhalte ueber Zeit verfuegbar halten | mittel | mittel | theoretisch / lokal | nicht jede Hilfsnotiz persistenzpflichtig | teilweise mehrfach | gering | hoch | Qualitaetsattribut | enger fassen |
| Reparierbarkeit | B5, B4 | lokale Korrektur ohne Gesamtschaden | mittel | mittel | theoretisch | manche globale Aenderungen bleiben invasiv | mehrfach | gering | mittel | Qualitaetsattribut | beibehalten |
| Wartbarkeit | B4, B5 | fortlaufende Aenderung beherrschbar machen | mittel | mittel | theoretisch | Kleinstartefakte mit geringer Dauer | mehrfach | gering | mittel | Qualitaetsattribut | beibehalten |
| duale Lesbarkeit | B3, B4, K3 | fuer Mensch und Maschine anschlussfaehig | niedrig bis mittel | mittel | lokal + theoretisch | geringe Automationsdichte | mehrfach | mittel | hoch | Qualitaetsattribut, evtl. spaeter aufwertbar | enger fassen |
| Evidenzdisziplin | K1, K2, A2 | Evidenz sauber fuehren | mittel | niedrig bis mittel | standardsetzend | rein heuristische Vorstufen | mehrfach | gering | mittel | grenznah zu Designprinzip | umklassifizieren pruefen |
| Materialisierungsdisziplin | K2, B4 | unpruefte Uebernahme verhindern | niedrig | niedrig | abgeleitet | nur fuer operative Uebergaenge relevant | mehrfach | mittel | hoch | eher Designprinzip als Attribut | umklassifizieren |
| Wahrheitsquellenstabilitaet | K3, B2, B3 | semantischen Ursprung stabil halten | mittel | mittel | standardsetzend + lokal | temporaere Mirrors ohne Vorrang | mehrfach | mittel | hoch | Qualitaetsattribut oder Designprinzip | enger fassen |

### 3.4 Auditmatrix – operative Regeln

| Element | Rueckbindung | Funktion | Trennschaerfe in Ebene | Trennschaerfe zu anderen Ebenen | Evidenzstatus | Nicht-Geltung / Grenzfall | Mehrfachableitung | Konfliktlage | Revisionsfolgen | Ebenenangemessenheit | Befund |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Zielbild vor Ausfuehrung explizieren | A1 | Scope vorher binden | hoch | hoch | abgeleitet + lokal | triviale Kurzinteraktion | eindeutig | gering | mittel | operative Regel | beibehalten |
| Aussagearten trennen | A2, K1 | epistemische Rollen auseinanderhalten | hoch | mittel | standardsetzend abgeleitet | informelle Kleinantworten | mehrfach | gering | mittel | operative Regel | beibehalten |
| Unsicherheiten markieren | A3 | Unsicherheit explizit machen | hoch | hoch | empirisch + abgeleitet | Niedrigrisiko-Smalltalk | eindeutig | gering | niedrig | operative Regel | beibehalten |
| kleinsten sicheren naechsten Schritt waehlen | A4 | Entgrenzung vermeiden | hoch | hoch | theoretisch + lokal | Einmalantwort ohne Folgewirkung | eindeutig | gering | hoch | operative Regel | beibehalten |
| Gegenbeispiele und Testfaelle anfuehren | A5 | Verhalten pruefbar machen | hoch | hoch | empirisch | fruehe offene Ideation | eindeutig | gering | mittel | operative Regel | beibehalten |
| Begriff vor Benennung, Benennung vor Regelung | B1 | Terminologische Reihenfolge erzwingen | hoch | hoch | standardsetzend | Platzhalter in Skizzenphase | eindeutig | gering | mittel | operative Regel | beibehalten |
| Herkunft und Referenzen mitfuehren | B3 | Provenienz sichern | hoch | hoch | standardsetzend | fluechtige lokale Notiz | eindeutig | gering | mittel | operative Regel | beibehalten |
| Pfadwechsel nur ueber explizite Schnittstellen | B4 | Kurzschlussuebergaenge vermeiden | hoch | hoch | standardsetzend | fruehe ideelle Vorerkundung | eindeutig | gering | hoch | operative Regel | beibehalten |
| Aenderungen gegen Drift und Revisionsfaehigkeit pruefen | B5, A3 | Revision absichern | mittel | mittel | theoretisch + lokal | reine Formalkorrektur | mehrfach | mittel | hoch | operative Regel | beibehalten, enger fassen |
| Bewertung vor Materialisierung | K2 | Uebernahme erst nach Pruefung | hoch | hoch | standardsetzend | reversible Sandbox-Entwuerfe | eindeutig | gering | hoch | operative Regel | beibehalten |
| Spiegel und Adapter nicht als semantischen Ursprung behandeln | K3, B2 | Wahrheitsquelle stabil halten | hoch | hoch | standardsetzend + lokal | rein technische Anzeige | mehrfach | mittel | hoch | operative Regel | beibehalten |
| Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen | K2, K3, B4 | Kopplungslogik sichtbar machen | mittel bis hoch | hoch | abgeleitet | lose heuristische Analogie | mehrfach | mittel | hoch | operative Regel | beibehalten |

### 3.5 Auditmatrix – Kopplungsfolgen

| Element | Rueckbindung | Funktion | Trennschaerfe | Evidenzstatus | Grenzfall | Konfliktlage | Befund |
|---|---|---|---|---|---|---|---|
| Scope-Bindung wirkt bis in Materialisierung | A1 + K2 | Scope ueber Phasen forttragen | hoch | abgeleitet | fruehe reversible Skizze | gering | tragfaehig |
| epistemische Reinheit ist gemeinsam basal | A2 + K1 | gemeinsame Mindestordnung | hoch | standardsetzend | informelle Kurzkommunikation | gering | tragfaehig |
| Auditierbarkeit braucht Provenienz und Referenzierbarkeit | A3 + B3 | Audit an Herkunft koppeln | hoch | standardsetzend + abgeleitet | fluide Vorstufe | gering | tragfaehig |
| rueckgabefaehige Schrittlogik braucht Pfadlogik | A4 + B4 | Begrenzung mit Uebergangslogik koppeln | hoch | theoretisch + abgeleitet | Einmalantworten | mittel | tragfaehig |
| Testbarkeit muss vor operative Uebernahme treten | A5 + K2 | Testpflicht vor Uebernahme | hoch | empirisch + abgeleitet | reversible Sandbox | gering | tragfaehig |
| ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie | B2 + K3 | ontologischen Unterbau explizit machen | mittel bis hoch | standardsetzend + abgeleitet | flache Anzeige | mittel | tragfaehig |
| governierte Evolvierbarkeit verlangt begrenzte Rueckgabelogik | B5 + A4 | Lernfaehigkeit an Begrenzung koppeln | mittel bis hoch | theoretisch + abgeleitet | Kleinkorrektur ohne Lernanteil | mittel | tragfaehig |

---

## 4. Verwaisungs-, Mehrfachableitungs- und Umschichtungspruefung

## 4.1 Verwaiste Folgeelemente
Keine voll verwaisten Folgeelemente im strengen Sinn.
Aber mehrere sind nur indirekt oder schwach rueckgebunden:
- Portierbarkeit
- duale Lesbarkeit
- Persistenz
- Materialisierungsdisziplin
- Wahrheitsquellenstabilitaet
- driftwachsame Revisionsdisziplin

## 4.2 Indirekt rueckgebundene Elemente
- Portierbarkeit
- duale Lesbarkeit
- Persistenz
- Wahrheitsquellenstabilitaet
- Budget- und Schleifendisziplin
- asymmetrische Kopplungsfolgen

## 4.3 Komplementaere Mehrfachableitungen
- Rueckgabepunkt-Disziplin aus A4 und B4
- Wiederauffindbarkeit aus B3 und B4
- Auditierbarkeit aus A3 und B3
- governierte Evolvierbarkeit mit begrenzter Schrittlogik aus B5 und A4

## 4.4 Redundante Mehrfachableitungen
- Driftresistenz teils doppelt aus A1/A3 und B5
- Materialisierungsdisziplin teils doppelt als Qualitaetsattribut und bereits operativ in K2/B4 enthalten
- Evidenzdisziplin teils zu nah an epistemischer Staffelung und argumentativer Nachvollziehbarkeit

## 4.5 Konflikttraechtige Mehrfachableitungen
- duale Lesbarkeit: zwischen Qualitaetsattribut, spaeterem Designprinzip und moeglicher Automationsnotwendigkeit
- Materialisierungsdisziplin: Attribut oder Designprinzip?
- Kontrollierbarkeit: Sammelbegriff mit Risiko zu basaler oder zu diffuser Verwendung
- Wahrheitsquellenstabilitaet: Qualitaetsattribut oder Designprinzip nahe K3

## 4.6 Fehlklassifikationen zwischen den Folgeebenen

### Wahrscheinliche Umklassifikationen
- Materialisierungsdisziplin  
  derzeit eher Qualitaetsattribut, funktional aber besser als starkes Designprinzip oder direkt als Folge von K2 zu fuehren

- Evidenzdisziplin  
  derzeit Qualitaetsattribut, tatsaechlich grenznah zu starkem Designprinzip

- Portierbarkeit  
  derzeit Designprinzip, aber noch zu unscharf; entweder enger definieren oder zu einem abgeleiteten Qualitaetsattribut herabstufen

- Wahrheitsquellenstabilitaet  
  derzeit Qualitaetsattribut, funktional nahe an Designprinzip oder direktem K3-Folgeeffekt

### Keine plausible Fehlklassifikation
- adversariale Pruefbarkeit
- Rueckgabepunkt-Disziplin
- Wiederauffindbarkeit
- Begriff vor Benennung, Benennung vor Regelung
- Bewertung vor Materialisierung

## 4.7 Potenzielle Aufwertungskandidaten zur Kernaxiomebene
Derzeit keine zwingenden Aufwertungskandidaten.

Beobachtenswerte Grenzfaelle:
- duale Lesbarkeit bei stark steigendem Automationsgrad
- Kontrollierbarkeit, falls sie nicht nur evaluativ, sondern konstitutiv gefasst werden muesste

Urteil:
Noch kein Folgeelement erfuellt im aktuellen Raum hinreichend klar den Kollapstest fuer eine Aufwertung zu einem Kernaxiom.

---

## 5. Revisionsentscheidungen

| Folgeelement | Entscheidung | Begruendung |
|---|---|---|
| Explizitheit kritischer Annahmen | beibehalten, enger fassen | tragfaehig, aber zu nah an A1/A2; klar als Designprinzip formulieren |
| regelgebundene Selbstkritik | beibehalten | funktional eigenstaendig genug |
| adversariale Pruefbarkeit | beibehalten | klarer Untertyp von A5, aber eigenstaendiges Designprinzip |
| evaluator-kritische Testdisziplin | enger fassen | plausibel, aber noch nicht stabil genug definiert |
| Portierbarkeit | umklassifizieren oder enger fassen | derzeit zu unscharf fuer ein starkes Designprinzip |
| definitorische Priorisierung | beibehalten | trennscharf und funktional stark |
| Rollen- und Relationsreinheit | beibehalten | klar und eigenstaendig |
| kontrollierte Kopplung | beibehalten | tragfaehiges Designprinzip |
| driftwachsame Revisionsdisziplin | enger fassen | sinnvoll, aber diffus und mehrfach rueckgebunden |
| Verifikationsfaehigkeit | beibehalten | sinnvoll als Designprinzip |
| epistemische Staffelung | beibehalten | funktional klar |
| keine Kurzschlussmaterialisierung | beibehalten | trennscharf und systemrelevant |
| keine konkurrierende Wahrheitsquelle | beibehalten | funktional klar |
| Driftresistenz | beibehalten, enger fassen | als Attribut sinnvoll, aber redundanzanfaellig |
| Kontrollierbarkeit | enger fassen | Sammelbegriff, zu breit |
| Reproduzierbarkeit | beibehalten | trennscharf und evaluativ |
| argumentative Nachvollziehbarkeit | beibehalten | klar evaluativ |
| Wiederauffindbarkeit | beibehalten | klar als Folge von B3 markieren |
| Persistenz | enger fassen | funktional noch zu breit |
| Reparierbarkeit | beibehalten | stabil als Attribut |
| Wartbarkeit | beibehalten | stabil als Attribut |
| duale Lesbarkeit | beibehalten, enger fassen | wichtig, aber noch indirekt und automationssensitiv |
| Evidenzdisziplin | umklassifizieren pruefen | nahe an Designprinzip |
| Materialisierungsdisziplin | umklassifizieren | eher Designprinzip als Attribut |
| Wahrheitsquellenstabilitaet | enger fassen oder umklassifizieren | funktional zu nah an K3 |
| alle operativen Regeln mit klarem Handlungscharakter | beibehalten | insgesamt trennscharf genug |
| Kopplungsfolgen | beibehalten | insgesamt hinreichend trennscharf, aber asymmetrische Untertypen spaeter verfeinern |

---

## 6. Selbstpruefung

### Wurden die bisherigen Standards rekursiv auf Folgeebenen angewandt?
Ja.
Es wurden nun explizit auch fuer Folgeelemente geprueft:
- Rueckbindung
- funktionale Definition
- Trennschaerfe
- Nicht-Geltung und Grenzfaelle
- Mehrfachableitung
- Konfliktlage
- Revisionsfolgen
- Ebenenangemessenheit
- potenzielle Aufwertung

### Sind die Folgeebenen konsistenter und sauberer gegeneinander abgegrenzt?
Ja, zumindest auf Auditniveau.
Besonders klarer geworden sind:
- die Unterschiede zwischen Designprinzip, Qualitaetsattribut und operativer Regel,
- die Fehlklassifikationskandidaten,
- die indirekt rueckgebundenen und umklassifizierungsbeduerftigen Elemente.

### Ist keine zweite Regelquelle entstanden?
Ja.
Der Auditrahmen bleibt nachgeordnet zu D2-D5 und fuehrt keine neuen Leitplanken ein.

### Zentraler Befund
Die Folgeebenen sind gross genug, aber noch nicht voll trennscharf und funktional stabil. Der groesste Verbesserungsbedarf liegt bei:
- unscharfen Designprinzipien,
- indirekt rueckgebundenen Qualitaetsattributen,
- und falsch oder grenzwertig klassifizierten Folgeelementen.

---

## 7. Quellen

### Standards und normative Referenzen
- ISO 704:2022 – Terminology work — Principles and methods
- ISO/IEC/IEEE 42010:2022 – Software, systems and enterprise — Architecture description
- W3C SKOS Simple Knowledge Organization System Reference
- W3C PROV-O: The PROV Ontology
- W3C SOSA/SSN

### Peer-reviewte wissenschaftliche Primaerquellen
- Ribeiro et al. (2020) – Beyond Accuracy: Behavioral Testing of NLP Models with CheckList
- Weidinger et al. (2022) – Taxonomy of Risks posed by Language Models
- Sculley et al. (2015) – Hidden Technical Debt in Machine Learning Systems
- Cheng et al. (2009) – Software Engineering for Self-Adaptive Systems
- White et al. (2006) – Autonomic Computing: Architectural Approach and Prototype
- Zeng et al. (2024) – Evaluating Large Language Models at Evaluating Instruction Following
- Tang, Shen, Kejriwal (2026) – An evaluation of estimative uncertainty in large language models
- Duque-Ramos et al. (2013) – Evaluation of the OQuaRE framework for ontology quality
- Guarino & Welty (2002) – Evaluating Ontological Decisions with OntoClean

### Repo-interne Referenzen
- D1: ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V3.md
- D2: ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md
- D3: ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md
- D4: ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md
- D5: ASWE_Axiomkandidatenraum_Verbesserungsschleife_V3_Standardschaerfung_20260423_V3.md
