# ASWE_Folgeebenen_Konsolidierung_und_Kandidatensiebung_20260423_V1

## 1. Voranalyse

### Zielbild
Ziel dieses Dokuments ist die **Konsolidierung und gezielte Kandidatensiebung des Folgeebenenraums** des aktuellen Axiomkandidatenraums. Gegenstand sind nicht neue Kernaxiome, sondern die aus Kernaxiomen abgeleiteten Elemente:

- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen.

Die Revision soll den Raum:
- **kleiner oder gleich gross** halten,
- aber **trennschaerfer, funktional klarer und rueckbindungsstaerker** machen,
- indirekte Rueckbindungen aufloesen,
- Fehlklassifikationen zwischen Folgeebenen korrigieren,
- hochplausible neue Folgekandidaten streng sieben,
- und Leistungs- sowie Geschwindigkeitsaspekte **explizit, aber nachgeordnet** einordnen.

### Gegenstand
Gegenstand sind sechs verschraenkte Revisionsaufgaben:

1. Konsolidierung des bestehenden Folgeebenenraums.
2. Aufloesung indirekter Rueckbindungen.
3. Typisierung von Mehrfachableitungen.
4. Nachzug von Nicht-Geltung, Grenzfaellen und Spannungen auf Folgeebene.
5. Pruefung hochplausibler neuer Folgekandidaten.
6. Einordnung von Leistungs- und Geschwindigkeitsaspekten ohne Zielbildverschiebung.

### Geltungsbereich
Dieses Dokument gilt fuer:
- die Revision des Folgeebenenraums im aktuellen Hauptdokument,
- die weitere Konsolidierung von Designprinzipien, Qualitaetsattributen und operativen Regeln,
- die Rekursion der bisherigen Analysestandards auf die Folgeebenen,
- die Vorbereitung weiterer Verbesserungsschleifen.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:
- neue breite Sammlung weiterer Kernaxiome,
- lokale Implementierung,
- UI- oder Betriebsoptimierung als Leitbildersatz,
- reine Benennungsvarianten ohne funktionalen Unterschied,
- implizite Aufwertung eines Folgeelements zu einem Kernaxiom ohne Kollapstest,
- Leistungs- oder Geschwindigkeitsziele als Vorrangkriterium vor Leitplanken, Rueckbindung, Konsistenz oder Trennschaerfe.

### Epistemischer Status

#### Beobachtung
Der bisherige Lauf hat gezeigt:
- der Kernaxiomenraum ist konsolidierungsreif,
- der Folgeebenenraum ist gross genug fuer einen belastbaren Auditlauf,
- der Engpass liegt nun in Trennschaerfe, funktionaler Definition, Rueckbindung, Ebenenangemessenheit, Mehrfachableitung und Vererbungslogik,
- Leistungs- und Geschwindigkeitsaspekte wurden bislang nicht als explizite, nachgeordnete Folgeebenenfrage ausmodelliert.

#### Aussage
Die naechste Schleife muss den Folgeebenenraum **konsolidieren**, nicht unkontrolliert vergroessern. Neue Folgekandidaten duerfen nur aufgenommen werden, wenn sie echten funktionalen Mehrwert besitzen und nicht nur Auditkriterium, Unterfall oder Nutzungseffekt sind.

#### Hypothese
Wenn grenzwertige Folgeelemente umklassifiziert oder enger gefasst, indirekte Rueckbindungen aufgeloest und nur wenige hochplausible neue Kandidaten zugelassen werden, wird der Folgeebenenraum:
- konsistenter,
- trennschaerfer,
- revisionsstabiler,
- und besser mit dem Kernaxiomenraum verschraenkt.

#### Kriterium
Diese Revision ist nur dann gelungen, wenn:
- keine zweite Regelquelle entsteht,
- Kernaxiome Kernaxiome bleiben,
- Folgeebenen klar gegeneinander abgegrenzt bleiben,
- Mehrfachableitungen typisiert werden,
- Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet eingefuehrt werden,
- und der Raum nach der Revision kleiner oder gleich gross, aber semantisch klarer ist.

#### Empfehlung
Die Folgeebenen sind ab jetzt **nicht mehr primaer zu erweitern, sondern zu konsolidieren**. Neue Kandidaten werden nur nach strenger Siebung zugelassen.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: systemisches Strukturmodell mit Revisionsentscheidungen
- noch nicht: lokale Implementierung

---

## 2. Geltungsordnung und Leitplanken

### Geltungsordnung
1. D2 – Zielbild, Sprachgovernance, Leitplanken  
2. D3 – Selbstanwendungsprämisse, Revisionspflichten  
3. D4 – Voranalyse-, Phasentrennungs- und Ausfuehrungslogik  
4. D1/V3 – aktueller Kernaxiomenraum  
5. D5 – Standardschaerfung und Metaqualitaetspruefung  
6. D6 – Folgeebenen-Audit  
7. dieses Dokument – Konsolidierung und Kandidatensiebung

### Bindende Leitplanken
1. Kernaxiome bleiben Kernaxiome.
2. Externe wissenschaftliche Quellen bleiben primaer.
3. A, B und Kopplung bleiben getrennt; Kopplungen sind explizit.
4. Governierte statt freie Selbstverbesserung bleibt bindend.
5. Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
6. Neue Folgeelemente duerfen den bestehenden Regelraum nur erweitern, wenn sie echten funktionalen Mehrwert besitzen.
7. Folgeelemente duerfen nicht implizit den Rang von Kernaxiomen erhalten.
8. Auditkriterien duerfen nicht ungeprueft als Folgeelemente in den Raum rutschen.
9. Leistungs- und Geschwindigkeitsaspekte duerfen den Zielbildkern nur **optimieren**, nicht **steuern**.

---

## 3. Bestehenden Folgeebenenraum konsolidieren

## 3.1 Revisionsentscheidungen zu starken Designprinzipien

| Element | Entscheidung | Begruendung |
|---|---|---|
| Explizitheit kritischer Annahmen | beibehalten, enger fassen | tragfaehig, aber zu nah an A1/A2; klar als Konstruktionsprinzip fuer explizite Voraussetzungen definieren |
| regelgebundene Selbstkritik | beibehalten | funktional eigenstaendig genug; an A3/A4 rueckgebunden |
| adversariale Pruefbarkeit | beibehalten | klarer, empirisch gestuetzter Untertyp von A5 |
| evaluator-kritische Testdisziplin | beibehalten, enger fassen | sinnvoll, aber noch zu breit; auf evaluator-bezogene Prueffehler beschraenken |
| Portierbarkeit | umklassifizieren oder streichen | derzeit zu unscharf; eher Nutzungseffekt oder abgeleitete Uebertragbarkeit als echtes Designprinzip |
| definitorische Priorisierung | beibehalten | trennscharf, funktional stark und klar rueckgebunden an B1 |
| Rollen- und Relationsreinheit | beibehalten | trennscharf und funktional eigenstaendig |
| kontrollierte Kopplung | beibehalten | zentral fuer B4/B5 |
| driftwachsame Revisionsdisziplin | beibehalten, enger fassen | sinnvoll, aber mehrfach rueckgebunden; auf driftbezogene Revisionspruefung zuspitzen |
| Verifikationsfaehigkeit | beibehalten | eigenstaendig genug; pruefbare Uebergaenge und Zustände |
| epistemische Staffelung | beibehalten | funktional klar; als Folge von K1/A2 stabil |
| keine Kurzschlussmaterialisierung | beibehalten | trennscharfes Designprinzip aus K2/B4 |
| keine konkurrierende Wahrheitsquelle | beibehalten | funktional klar; K3-Folge |

## 3.2 Revisionsentscheidungen zu sekundaeren Qualitaetsattributen

| Element | Entscheidung | Begruendung |
|---|---|---|
| Driftresistenz | beibehalten, enger fassen | sinnvolles Attribut, aber redundanzanfaellig; klar gegen B5 und A1/A3 begrenzen |
| Kontrollierbarkeit | enger fassen | Sammelbegriff; zu breit. Nur als evaluative Eigenschaft von Eingriffs- und Steuerbarkeit fuehren |
| Reproduzierbarkeit | beibehalten | klar evaluativ und hinreichend rueckgebunden |
| argumentative Nachvollziehbarkeit | beibehalten | trennscharf und evaluativ |
| Wiederauffindbarkeit | beibehalten | als Folge von B3/B4 explizit markieren |
| Persistenz | beibehalten, enger fassen | sinnvolles Attribut, aber nur fuer persistenzpflichtige Artefakte |
| Reparierbarkeit | beibehalten | eigenstaendiges Qualitaetsattribut |
| Wartbarkeit | beibehalten | eigenstaendig, wenn gegen Reparierbarkeit abgegrenzt |
| duale Lesbarkeit | beibehalten, enger fassen | wichtig, aber indirekt rueckgebunden und automationssensitiv |
| Evidenzdisziplin | umklassifizieren | funktional naeher an Designprinzip als an Qualitaetsattribut |
| Materialisierungsdisziplin | umklassifizieren | funktional naeher an Designprinzip als an Qualitaetsattribut |
| Wahrheitsquellenstabilitaet | beibehalten, enger fassen | als evaluatives Ergebnis von K3/B2/B3 sinnvoll, aber definitorisch schaerfen |

## 3.3 Revisionsentscheidungen zu operativen Regeln

| Element | Entscheidung | Begruendung |
|---|---|---|
| Zielbild vor Ausfuehrung explizieren | beibehalten | handlungsnah, klar rueckgebunden |
| Aussagearten trennen | beibehalten | stabile Regel aus A2/K1 |
| Unsicherheiten markieren | beibehalten | klare operative Regel aus A3 |
| kleinsten sicheren naechsten Schritt waehlen | beibehalten | zentral fuer A4 |
| Gegenbeispiele und Testfaelle anfuehren | beibehalten | klare A5-Regel |
| Begriff vor Benennung, Benennung vor Regelung | beibehalten | stabile B1-Regel |
| Herkunft und Referenzen mitfuehren | beibehalten | klare B3-Regel |
| Pfadwechsel nur ueber explizite Schnittstellen | beibehalten | klare B4-Regel |
| Aenderungen gegen Drift und Revisionsfaehigkeit pruefen | beibehalten, enger fassen | handlungsnah, aber auf revisionsrelevante Aenderungen begrenzen |
| Bewertung vor Materialisierung | beibehalten | klare K2-Regel |
| Spiegel und Adapter nicht als semantischen Ursprung behandeln | beibehalten | klare K3-Regel |
| Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen | beibehalten | handlungsnahe Kopplungsregel |

### Zwischenurteil
Der bestehende Folgeebenenraum wird **nicht** radikal vergroessert. Die primaeren Eingriffe sind:
- **Umklassifikation** von Evidenzdisziplin und Materialisierungsdisziplin,
- **Einengung** von Portierbarkeit, Kontrollierbarkeit, Persistenz, dualer Lesbarkeit und driftwachsamer Revisionsdisziplin,
- **Beibehaltung** aller klar handlungsnahen Regeln.

---

## 4. Indirekte Rueckbindungen explizit aufloesen

| Element | Bisherige Lage | Explizite Rueckbindung / Entscheidung |
|---|---|---|
| duale Lesbarkeit | indirekt, mehrfach | Folge von B3, B4 und K3; bleibt Qualitaetsattribut, gilt aber nur dort stark, wo maschinelle und menschliche Anschlussfaehigkeit gemeinsam relevant sind |
| Persistenz | indirekt aus B3 | Folge von B3 plus spaeterer Automationssensitivitaet; nur fuer persistenzpflichtige Artefakte, nicht fuer fluechtige Hilfsnotizen |
| Wiederauffindbarkeit | aus B3, teils B4 | primaer Folge von B3, sekundaer von B4; bleibt Qualitaetsattribut, kein Designprinzip |
| Portierbarkeit | indirekt, unscharf | keine stabile Rueckbindung als eigenstaendiges Designprinzip; vorlaeufig nicht als fixes Raumelement fuehren, sondern als pruefbeduerftige Uebertragbarkeit unter A1/A2/K3 |
| Materialisierungsdisziplin | mehrfach, bisher als Attribut | Rueckbindung an K2 und B4; Umklassifikation zu starkem Designprinzip |
| Wahrheitsquellenstabilitaet | mehrfach | evaluative Folge von K3 mit ontologischer Stuetzung durch B2/B3; bleibt Qualitaetsattribut, aber enger gefasst |
| driftwachsame Revisionsdisziplin | mehrfach | Folge von B5 unter Beteiligung von A3; bleibt Designprinzip, aber auf driftbezogene Revisionsfolgen zuspitzen |

### Ergebnis
Die problematischsten indirekten Rueckbindungen werden so behandelt:
- **Portierbarkeit** verliert vorlaeufig den Status eines festen starken Designprinzips,
- **Materialisierungsdisziplin** wird in die Designprinzipien umgeschichtet,
- **duale Lesbarkeit**, **Persistenz**, **Wiederauffindbarkeit** und **Wahrheitsquellenstabilitaet** bleiben Folgeattribute, aber mit klarerer Rueckbindung,
- **driftwachsame Revisionsdisziplin** bleibt, wird aber definitorisch verengt.

---

## 5. Mehrfachableitungen, Vererbungslogik und Leistungsgrenzen

## 5.1 Typisierung relevanter Mehrfachableitungen

| Element | Typ | Begruendung |
|---|---|---|
| Rueckgabepunkt-Disziplin aus A4/B4 | komplementaer | Begrenzung und Pfadlogik tragen unterschiedliche Anteile |
| Wiederauffindbarkeit aus B3/B4 | komplementaer | Provenienz liefert Anker, Pfadlogik erleichtert Zugriff |
| Driftresistenz aus A1/A3/B5 | teils redundant | mehrere Quellen tragen aehnliche Schutzfunktion; als Attribut eng halten |
| Materialisierungsdisziplin aus K2/B4 | komplementaer | K2 regelt Vorrang der Bewertung, B4 die Uebergangsform |
| duale Lesbarkeit aus B3/B4/K3 | konflikttraechtig | Attribut kann bei hoeherem Automationsgrad an Basalitaet gewinnen |
| Wahrheitsquellenstabilitaet aus K3/B2/B3 | komplementaer | ontologischer Unterbau und Provenienz staerken K3 |
| Evidenzdisziplin aus K1/K2/A2 | teils redundant | spricht eher fuer Umklassifikation zum Designprinzip |

## 5.2 Vererbungslogik fuer priorisierte Folgeelemente

| Folgeelement | Nicht-Geltung / Grenzfall | Vererbte Einschraenkung |
|---|---|---|
| duale Lesbarkeit | geringe Automationsdichte oder rein fluechtige Skizze | nur dort stark, wo Mensch und Maschine zugleich anschlussfaehig sein muessen |
| Persistenz | nicht jede Hilfsnotiz persistenzpflichtig | folgt der Nicht-Geltung von B3 fuer fluide Vorstufen |
| Wiederauffindbarkeit | fluechtige, bewusst kurzlebige Hilfsartefakte | folgt aus B3/B4 nur fuer adressier- und referenzierpflichtige Artefakte |
| Materialisierungsdisziplin | reversible Sandbox oder folgenarme Vorstufe | folgt der K2-Nicht-Geltung fuer rein reversible Entwurfszustaende |
| Wahrheitsquellenstabilitaet | rein technische Spiegelung ohne semantische Vorrangigkeit | folgt aus K3 |
| driftwachsame Revisionsdisziplin | reine Formalkorrektur ohne semantische Wirkung | folgt aus B5, aber nur fuer revisionsrelevante Aenderungen |
| Ausfuehrungseffizienz | darf nicht auf Kosten von Rueckbindung, Trennschaerfe oder Leitplanken gehen | nachgeordnetes Attribut, nie Vorrangregel |
| Prueftiefenangemessenheit | verringerte Tiefe nur bei geringer Tragweite und hoher Reversibilitaet | abgeleitet aus A4, K2 und Zielbildschutz |

## 5.3 Leistungs- und Geschwindigkeitsgrenzen

### Zulaessig
Beschleunigte Bearbeitung, verringerte Prueftiefe oder Effizienzsteigerung sind zulaessig, wenn:
- die Aufgabe **niedrige Tragweite** besitzt,
- die Ergebnisse **reversibel** sind,
- keine Kernaxiom- oder Ebenenentscheidung unmittelbar betroffen ist,
- keine konflikttraechtigen Mehrfachableitungen offen sind,
- der Zielbildkern unverletzt bleibt.

### Nicht zulaessig
Beschleunigte Bearbeitung oder verringerte Prueftiefe sind nicht zulaessig, wenn:
- Folgeelemente umklassifiziert werden sollen,
- indirekte Rueckbindungen aufgeloest werden,
- neue Raumkandidaten aufgenommen werden,
- Kernaxiom-Folgebeziehungen geaendert werden,
- Kopplungslogik oder Wahrheitsquellenfragen betroffen sind.

---

## 6. Weitere hochplausible Folgekandidaten pruefen

| Kandidat | Vorlaeufige Ebene | Entscheidung | Begruendung |
|---|---|---|---|
| Ausnahmebehandlungs-Explizitheit | starkes Designprinzip | aufnehmen | funktional eigenstaendig; behandelt explizite Gestaltung von Ausnahmen statt bloßer Nicht-Geltung |
| Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision | starkes Designprinzip | aufnehmen | systemisch relevant und bislang nur implizit vorhanden |
| Ableitungsnachvollziehbarkeit | sekundaeres Qualitaetsattribut | aufnehmen | eigenstaendige evaluative Guete des Folgeebenenraums |
| Vererbungskonsistenz | sekundaeres Qualitaetsattribut | aufnehmen | eigenstaendige Guete fuer Folge der Nicht-Geltung und Spannungen |
| Deprekationsdisziplin | operative Regel oder Designprinzip | unterordnen als operative Regel | relevant, aber handlungsnah; kein eigenstaendiges starkes Designprinzip noetig |
| Rueckrollbarkeit | sekundaeres Qualitaetsattribut | aufnehmen | von Reparierbarkeit unterscheidbar; Ruecknahmefaehigkeit explizit relevant |
| Ausfuehrungseffizienz | sekundaeres Qualitaetsattribut | aufnehmen, aber nachgeordnet | legitime Folgeguete, sofern Leitplanken Vorrang behalten |
| Prueftiefenangemessenheit | operative Regel | aufnehmen als operative Regel | handlungsnaher Proportionalitaetsgrundsatz, nicht primaer Attribut |
| leitplankenkonforme Leistungsoptimierung | starkes Designprinzip | als Auditkriterium statt Raumkandidat fuehren | eher Meta-Regel als stabiler Raumbegriff |
| Antwortzeitangemessenheit | sekundaeres Qualitaetsattribut | unterordnen | zu kontextnah; vorerst Unterfall von Ausfuehrungseffizienz |
| Leistungsstabilitaet | sekundaeres Qualitaetsattribut | verwerfen oder spaeter pruefen | derzeit zu spaetphasig und noch ohne zwingenden Mehrwert |

### Ergebnis
Neu aufgenommen werden sollen:
- **Ausnahmebehandlungs-Explizitheit** (Designprinzip)
- **Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision** (Designprinzip)
- **Ableitungsnachvollziehbarkeit** (Qualitaetsattribut)
- **Vererbungskonsistenz** (Qualitaetsattribut)
- **Rueckrollbarkeit** (Qualitaetsattribut)
- **Ausfuehrungseffizienz** (Qualitaetsattribut, nachgeordnet)
- **Prueftiefenangemessenheit** (operative Regel)

Nicht als echte Raumkandidaten fuehren:
- leitplankenkonforme Leistungsoptimierung
- Antwortzeitangemessenheit
- Leistungsstabilitaet

---

## 7. Keine Scheinkandidaten aufnehmen

| Begriff | Einstufung | Begruendung |
|---|---|---|
| Transformationsdisziplin zwischen Ebenen | Auditkriterium | beschreibt Pruef- und Ableitungslogik, nicht stabilen Raumbegriff |
| Konfliktpriorisierungsklarheit | Metaqualitaetsachse | eher Bewertungsachse als Folgeelement |
| Mindestkontextdisziplin | Unterfall | weitgehend Unterfall von Ziel- und Geltungsbindung |
| Begriffsversionsdisziplin | Unterfall | naehert sich Deprekations- und Registerlogik an |
| Umklassifizierungsrobustheit | Auditkriterium | prueft Stabilitaet von Umschichtungen, ist aber kein eigener Raumkandidat |
| Revisionskostenbeherrschbarkeit | Metaqualitaetsachse | Bewertungsperspektive, kein Raumbegriff |
| Nachzugskonsistenz | Auditkriterium oder Unterfall | von Nachzugsdisziplin und Vererbungskonsistenz abgedeckt |
| Ausnahmeprotokollierbarkeit | operative Unterregel | zu implementierungs- und verfahrensnah |
| Kontextsparsamkeit | verwerfbarer Restbegriff | derzeit zu unscharf und ohne klaren Funktionskern |

---

## 8. Revidierter Folgeebenenraum

## 8.1 Starke Designprinzipien
- Explizitheit kritischer Annahmen
- regelgebundene Selbstkritik
- adversariale Pruefbarkeit
- evaluator-kritische Testdisziplin
- definitorische Priorisierung
- Rollen- und Relationsreinheit
- kontrollierte Kopplung
- driftwachsame Revisionsdisziplin
- Verifikationsfaehigkeit
- epistemische Staffelung
- Materialisierungsdisziplin
- keine konkurrierende Wahrheitsquelle
- Ausnahmebehandlungs-Explizitheit
- Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision

### Nicht mehr als festes eigenstaendiges Designprinzip fuehren
- Portierbarkeit

## 8.2 Sekundaere Qualitaetsattribute
- Driftresistenz
- Kontrollierbarkeit in enger Fassung
- Reproduzierbarkeit
- argumentative Nachvollziehbarkeit
- Wiederauffindbarkeit
- Persistenz in enger Fassung
- Reparierbarkeit
- Wartbarkeit
- duale Lesbarkeit in enger Fassung
- Wahrheitsquellenstabilitaet in enger Fassung
- Ableitungsnachvollziehbarkeit
- Vererbungskonsistenz
- Rueckrollbarkeit
- Ausfuehrungseffizienz

### Nicht mehr als eigenstaendiges Qualitaetsattribut fuehren
- Evidenzdisziplin
- Materialisierungsdisziplin
- Antwortzeitangemessenheit
- Leistungsstabilitaet

## 8.3 Operative Regeln
- Zielbild vor Ausfuehrung explizieren
- Aussagearten trennen
- Unsicherheiten markieren
- kleinsten sicheren naechsten Schritt waehlen
- Gegenbeispiele und Testfaelle anfuehren
- Begriff vor Benennung, Benennung vor Regelung
- Herkunft und Referenzen mitfuehren
- Pfadwechsel nur ueber explizite Schnittstellen
- Aenderungen gegen Drift und Revisionsfaehigkeit pruefen
- Bewertung vor Materialisierung
- Spiegel und Adapter nicht als semantischen Ursprung behandeln
- Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen
- Deprekation statt stiller Entfernung markieren
- Prueftiefe an Tragweite und Reversibilitaet ausrichten

## 8.4 Kopplungsfolgen
- Scope-Bindung wirkt bis in Materialisierung und Operationalisierung
- epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal
- Auditierbarkeit braucht Provenienz und Referenzierbarkeit
- rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik
- Testbarkeit muss vor operative Uebernahme treten
- ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie
- governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik
- Axiomrevision erzwingt Folgeebenen-Nachzug

---

## 9. Selbstpruefung

### Ist keine zweite Regelquelle entstanden?
Ja.
Die Revision bleibt nachgeordnet zu D2-D6 und fuehrt keine neuen Leitplanken ein.

### Wurden Folgeelemente nicht implizit zu Kernaxiomen aufgewertet?
Ja.
Neue Kandidaten wurden nur auf Designprinzip-, Attribut- oder Regelebene aufgenommen. Kein Element wurde ohne Kollapstest zur Kernaxiomebene erhoben.

### Ist der Raum nach der Revision kleiner oder gleich gross, aber trennschaerfer?
Ja, im Ergebnis:
- **Portierbarkeit** verliert den Status eines festen starken Designprinzips.
- **Evidenzdisziplin** und **Materialisierungsdisziplin** werden nicht doppelt als Attribute gefuehrt.
- neue Elemente werden nur selektiv aufgenommen.
- der Raum wird semantisch klarer statt bloß groesser.

### Wurden Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet eingefuehrt?
Ja.
- **Ausfuehrungseffizienz** wird als sekundaeres Qualitaetsattribut aufgenommen.
- **Prueftiefenangemessenheit** wird als operative Regel aufgenommen.
- **Antwortzeitangemessenheit** und **Leistungsstabilitaet** erhalten keinen eigenstaendigen festen Status.
- **leitplankenkonforme Leistungsoptimierung** bleibt Auditkriterium statt Raumkandidat.

### Blieb der Zielbildkern unversehrt?
Ja.
- Kernaxiome bleiben Kernaxiome.
- Externe Quellen bleiben primaer.
- A, B und Kopplung bleiben getrennt.
- Governierte statt freie Selbstverbesserung bleibt bindend.
- Begriffe bleiben vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.

---

## 10. Quellen

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
- D6: ASWE_Folgeebenen_Audit_20260423_V2.md
