---
document_id: ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4
status: finaler_korrekturabschluss
materialization_status: repo_materialisierbar_als_einzelnes_markdown_artefakt
scope: LLM-Verhaltenssteuerung und ASWE_KnowledgeOS-Architektur
version_date: 2026-04-23
---

# ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4

## 0. Materialisierungsstatus

Dieses Dokument ist der alleinstehende, repo-materialisierbare Abschlussstand des Kernaxiomen- und Folgeebenenraums.

Repo-materialisierbar bedeutet hier:
- Das Dokument ist als einzelnes Markdown-Artefakt verstaendlich.
- Es enthaelt Zielbild, Geltungsbereich, Kernaxiome, Folgeebenen, Matrixstandard, Routinen, Checkliste, Deprekationslog, Leistungslogik und Abschlusskriterien.
- Es benoetigt keine nicht beigelegten Zwischendokumente zur Auslegung.
- Die konkrete Repo-Pfad- und Commitentscheidung bleibt ein bewusster separater Materialisierungsakt.

## 0.1 Finaler Korrekturauftrag

# ASWE_Finaler_Korrekturauftrag_20260423_V1

## 1. Zweck
Dieses Dokument leitet aus `ASWE_Abschlusspruefung_ProModel_20260423_V2.md` alle final umzusetzenden Massnahmen ab und markiert ihre Umsetzung im materialisierbaren Paket V4.

## 2. Massnahmenableitung

| ID | Abschlussmangel | Umsetzung im finalen Paket |
|---|---|---|
| M1 | Terminologische Harmonisierung von `Konfliktlage` vs. `Spannungen` | `Konfliktlage` wird als Oberbegriff definiert: Konfliktlage umfasst einfache Spannungen, vererbte Spannungen, konflikttraechtige Mehrfachableitungen, Regelkollisionen, Ebenenkollisionen und Zielbildkollisionen. Matrixspalten `Spannungen` und `vererbte Spannungen` bleiben die operationalisierten Unterformen. |
| M2 | Neuaufnahmeroutine um `Kollapstest / Aufwertung`, `Unterordnungstest`, `Revisionsfolgen` erweitern | Routinenblatt V3 erweitert die Neuaufnahmeroutine um diese drei Punkte und spiegelt damit die Matrixachsen voll. |
| M3 | Nachzugsroutine um Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze erweitern | Routinenblatt V3 erweitert die Routine `Axiomrevision -> Folgeebenen-Nachzug` um diese Punkte. |

## 3. Umsetzungstyp
Die Korrektur ist eine minimale Abschlusskorrektur:
- kein neues Kernaxiom,
- keine neue Folgeebene,
- keine neue offene Verbesserungskaskade,
- keine direkte Repo-Materialisierung ohne bewussten Commit-/Pfadentscheid,
- aber ein vollstaendig eigenstaendiges, repo-materialisierbares Dokument.

## 4. Abschlusskriterium
Das Paket ist abschlusstauglich, wenn:
- M1 bis M3 in den Zielartefakten sichtbar umgesetzt sind,
- der kanonische Materialisierungsstand ohne externe Dokumente verstehbar ist,
- der Prozessverlauf nachvollziehbar dokumentiert ist,
- und keine direkte inhaltliche Abhaengigkeit von nicht beigelegten Zwischendokumenten besteht.


## 0.2 Terminologische Harmonisierung: Konfliktlage

`Konfliktlage` ist der Oberbegriff fuer:
- einfache Spannungen,
- vererbte Spannungen,
- konflikttraechtige Mehrfachableitungen,
- Regelkollisionen,
- Ebenenkollisionen,
- Zielbildkollisionen.

Die Matrixspalten `Spannungen` und `vererbte Spannungen` sind die operationalisierten Unterformen. Wo `Konfliktlage` gefordert wird, muessen diese Unterformen und konflikttraechtige Mehrfachableitungen mindestens mitgeprueft werden.

---

# ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3

## 1. Voranalyse

### Zielbild
Dieses Dokument fixiert den kanonischen Endstand des bisherigen Revisions- und Verbesserungslaufs fuer den gesamten Kernaxiomen- und Folgeebenenraum.

Der Raum bleibt:
- begrifflich diszipliniert,
- extern primaer gestuetzt,
- rekursiv geprueft,
- auf Konsolidierung statt Expansion ausgerichtet,
- und gegen unkontrollierte Leistungs- oder Geschwindigkeitsdominanz abgesichert.

### Gegenstand
Gegenstand sind:
- Kernaxiome,
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen,
- sowie ihre finale Trennung, Rueckbindung, Konfliktlage, Vererbungslogik und nachgeordnete Leistungslogik.

### Geltungsbereich
Dieses Dokument gilt als kanonischer Abschlussstand fuer den bisherigen Diskursraum. Es ist kein Repo-Write, keine SSOT-Umschreibung und keine direkte Materialisierungsanweisung.

### Nicht-Geltung
Nicht Gegenstand sind:
- neue breite Kernaxiomensammlung,
- lokale Implementierung,
- Runtime- oder Writer-Materialisierung,
- Betriebsoptimierung als Leitbildersatz.

## 2. Leitplanken des Endstands
1. Kernaxiome bleiben Kernaxiome.
2. Externe wissenschaftliche Quellen bleiben primaer.
3. A, B und Kopplung bleiben getrennt.
4. Governierte statt freie Selbstverbesserung bleibt bindend.
5. Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
6. Leistungs- und Geschwindigkeitsaspekte optimieren nur nachgeordnet; sie steuern nicht den Zielbildkern.
7. Auditkriterien, Unterfaelle und Nutzungseffekte werden nicht ungeprueft als kanonische Folgeelemente gefuehrt.

## 3. Finaler Kernaxiomenraum

### A. Kernaxiome fuer LLM-Verhaltenssteuerung
- A1 Ziel- und Geltungsbindung
- A2 Epistemische Trennung
- A3 Auditierbarkeit und Unsicherheitsmarkierung
- A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht
- A5 Verhaltenstestbarkeit

### B. Kernaxiome fuer ASWE_KnowledgeOS-Architektur
- B1 Terminologische Primaerordnung
- B2 Ontologische Trennschaerfe
- B3 Provenienz und Referenzierbarkeit
- B4 Pfad- und Schnittstellenexplizitheit
- B5 Governierte Evolvierbarkeit

### K. Kopplungsaxiome
- K1 Beobachtung-Aussage-Beleg
- K2 Evaluation vor Operationalisierung
- K3 Spiegel-/Adapter-Asymmetrie

## 4. Finaler Folgeebenenraum

### 4.1 Starke Designprinzipien
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

### 4.2 Sekundaere Qualitaetsattribute
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

### 4.3 Operative Regeln
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

### 4.4 Kopplungsfolgen
- Scope-Bindung wirkt bis in Materialisierung und Operationalisierung
- epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal
- Auditierbarkeit braucht Provenienz und Referenzierbarkeit
- rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik
- Testbarkeit muss vor operative Uebernahme treten
- ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie
- governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik
- Axiomrevision erzwingt Folgeebenen-Nachzug

## 5. Leistungs- und Geschwindigkeitsaspekte
Leistungs- und Geschwindigkeitsaspekte bleiben nachgeordnet.

### Kanonisch zugelassen
- Ausfuehrungseffizienz als sekundaeres Qualitaetsattribut
- Prueftiefenangemessenheit als operative Regel

### Bewusst nicht kanonisiert
- Antwortzeitangemessenheit
- Leistungsstabilitaet
- leitplankenkonforme Leistungsoptimierung

### Harte Grenze
Beschleunigung, verringerte Prueftiefe oder Effizienzsteigerung sind unzulaessig, wenn sie Rueckbindung, Trennschaerfe, Leitplanken, Konfliktklaerung, Vererbungslogik oder Zielbildschutz unterlaufen.

## 6. Offene Restrisiken
- duale Lesbarkeit kann unter hoeherem Automationsgrad spaeter an Rang gewinnen.
- Kontrollierbarkeit bleibt bewusst eng und nicht als Sammelbegriff stabilisiert.
- evaluator-kritische Testdisziplin braucht spaeter moeglicherweise feinere Unterdefinition.
- Repo-Integration und Materialisierung sind absichtlich noch nicht entschieden.

## 7. Abschlussurteil
Der Raum ist mit diesem Dokument konsolidiert, rekursiv geprueft, trennschaerfer als im Vorlauf und als selbststaendiges Abschlusspaket belastbar.


---

# Rekursiver Matrixstandard und Vollmatrix

# ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3

## Zweck
Diese Matrix liefert den vollstaendigen rekursiven Pruefstand fuer alle Elemente vom Kernaxiom bis zur operativen Regel und Kopplungsfolge.

## Pflichtparameter
Alle Elemente werden explizit geprueft auf:
- Rueckbindung
- Funktion
- Ebenenangemessenheit
- Trennschaerfe in Ebene
- Trennschaerfe zu anderen Ebenen
- Evidenzstatus
- Quellenrolle
- Nicht-Geltung / Grenzfall
- Vererbte Nicht-Geltung
- Spannungen
- Vererbte Spannungen
- Mehrfachableitung
- Typ Mehrfachableitung
- Redundanzstatus
- Orthogonalitaet
- Verwaisungsstatus
- Kollapstest / Aufwertung
- Unterordnungstest
- Leistungs- / Geschwindigkeitsgrenze
- Revisionsfolgen
- Finale Entscheidung

| Element | Ebene | Bereich | Rueckbindung | Funktion | Ebenenangemessenheit | Trennschaerfe in Ebene | Trennschaerfe zu anderen Ebenen | Evidenzstatus | Quellenrolle | Nicht-Geltung / Grenzfall | Vererbte Nicht-Geltung | Spannungen | Vererbte Spannungen | Mehrfachableitung | Typ Mehrfachableitung | Redundanzstatus | Orthogonalitaet | Verwaisungsstatus | Kollapstest / Aufwertung | Unterordnungstest | Leistungs- / Geschwindigkeitsgrenze | Revisionsfolgen | Finale Entscheidung |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| A1 Ziel- und Geltungsbindung | Kernaxiom | A | — | Grundordnung fuer Scope-Bindung | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | triviale Kurzinteraktion nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | zu enge Scope-Bindung kann Exploration verfruehen | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Beschleunigung bei Scope-Entscheidungen | trifft Scope- und Kontextfolgeelemente | beibehalten |
| A2 Epistemische Trennung | Kernaxiom | A | — | Grundordnung fuer Rollenreinheit | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | informelle Kleinantworten nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Strenge kann Nutzbarkeit verdichten | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Prueftiefenverkuerzung bei Rollen- oder Evidenzkollaps | trifft Staffelung, Nachvollziehbarkeit, Aussagenregeln | beibehalten |
| A3 Auditierbarkeit und Unsicherheitsmarkierung | Kernaxiom | A | — | Grundordnung fuer pruefbare Revision | hoch | hoch | hoch | mittel bis hoch | definitorisch/standardsetzend/empirisch | Niedrigrisiko-Kommunikation nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Auditaufwand vs. Fluessigkeit | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Effizienzvorrangregel bei pruefpflichtiger Arbeit | trifft Selbstkritik, Drift- und Unsicherheitsregeln | beibehalten |
| A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht | Kernaxiom | A | — | Grundordnung fuer begrenzte Delegation | hoch | hoch | hoch | mittel | definitorisch/standardsetzend/theoretisch | Einmalantworten ohne Folgewirkung | primaer nicht vererbt, sondern Quelle | Begrenzung vs. Bearbeitungstempo | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | Prueftiefe nur bei niedriger Tragweite verringern | trifft Schrittlogik, Kontrollierbarkeit, Prueftiefe | beibehalten |
| A5 Verhaltenstestbarkeit | Kernaxiom | A | — | Grundordnung fuer explizite Bewertung | hoch | hoch | hoch | hoch | empirisch/standardsetzend | fruehe heuristische Ideation nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Testdichte vs. Offenheit | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Beschleunigung vor Testpflicht bei Uebernahme | trifft Testdisziplin, Reproduzierbarkeit, Testregeln | beibehalten |
| B1 Terminologische Primaerordnung | Kernaxiom | B | — | Grundordnung fuer Begriff vor Benennung | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | informelle Platzhalter nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Arbeitsgeschwindigkeit vs. definitorische Vorordnung | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Beschleunigung zulasten definitorischer Klaerung | trifft Priorisierung und Benennungsregeln | beibehalten |
| B2 Ontologische Trennschaerfe | Kernaxiom | B | — | Grundordnung gegen Klassenkollaps | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | informelle Kurznotizen nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Pragmatik vs. Modellreinheit | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Effizienzvorrangregel bei Kategorienkollaps | trifft Rollenreinheit, K3-Folgen, Wahrheitsquellenlogik | beibehalten |
| B3 Provenienz und Referenzierbarkeit | Kernaxiom | B | — | Grundordnung fuer Anker und Herkunft | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | fluechtige Hilfsnotiz nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Ankerdichte vs. Aufwand | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Verkuerzung bei herkunftspflichtigen Artefakten | trifft Wiederauffindbarkeit, Persistenz, Auditkopplung | beibehalten |
| B4 Pfad- und Schnittstellenexplizitheit | Kernaxiom | B | — | Grundordnung fuer explizite Uebergaenge | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | fruehe Vorerkundung nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Explizitheit vs. Fluiditaet | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Abkuerzung bei operativen Uebergaengen | trifft Kopplung, Materialisierung, Pfadregeln | beibehalten |
| B5 Governierte Evolvierbarkeit | Kernaxiom | B | — | Grundordnung fuer veraenderbare, pruefbare Architektur | hoch | hoch | hoch | mittel bis hoch | definitorisch/standardsetzend/theoretisch | reine Formalkorrektur nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Lernfaehigkeit vs. Driftkontrolle | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Leistungsoptimierung ueber Drift- und Revisionsschutz | trifft Revisionsdisziplin, Rueckrollbarkeit, Nachzugslogik | beibehalten |
| K1 Beobachtung-Aussage-Beleg | Kernaxiom | K | — | gemeinsame epistemische Mindestordnung | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | Kurzkommunikation nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Knappe Kommunikation vs. Rollenreinheit | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Beschleunigung bei epistemischem Kollaps | trifft epistemische Staffelung und Evidenzfolgen | beibehalten |
| K2 Evaluation vor Operationalisierung | Kernaxiom | K | — | Vorrang von Bewertung vor Uebernahme | hoch | hoch | hoch | hoch | standardsetzend/empirisch | reversible Sandbox nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Tempo vs. Bewertungsprioritaet | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Effizienzvorrangregel vor Uebernahmeentscheidungen | trifft Materialisierungslogik und Testpflicht | beibehalten |
| K3 Spiegel-/Adapter-Asymmetrie | Kernaxiom | K | — | Schutz des semantischen Ursprungs | hoch | hoch | hoch | hoch | definitorisch/standardsetzend | rein technische Anzeige nur abgeschwaecht | primaer nicht vererbt, sondern Quelle | Ergonomie vs. Ursprungsordnung | Quelle fuer Folgeebenen | — | — | nicht redundant | hoch | nicht verwaist | bereits basal | nicht unterordnen | keine Beschleunigung bei Ursprungsfragen | trifft Wahrheitsquellen- und Spiegelregeln | beibehalten |
| Explizitheit kritischer Annahmen | Designprinzip | A | A1,A2 | Voraussetzungen sichtbar machen | hoch | mittel | mittel | standardsetzend abgeleitet | abgeleitet | nicht jeder triviale Austausch | aus A1/A2 vererbt | nahe an Scope- und Rollenlogik | A1/A2-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Verkuerzung bei tragenden Annahmen | Aenderung trifft Scope- und Begruendungsdarstellung | beibehalten, enger fassen |
| regelgebundene Selbstkritik | Designprinzip | A | A3,A4 | Selbstkorrektur an Regeln binden | hoch | mittel | mittel | empirisch+abgeleitet | abgeleitet/empirisch | nicht jede Kreativinteraktion | aus A3/A4 vererbt | Aufwand vs. Selbstkorrektur | A3/A4-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei pruefpflichtiger Selbstkorrektur | Aenderung trifft Drift- und Auditlogik | beibehalten |
| adversariale Pruefbarkeit | Designprinzip | A | A5 | feindliche Eingaben pruefbar machen | hoch | hoch | hoch | empirisch | empirisch | nicht fuer jeden Erkundungsschritt | aus A5 vererbt | Testdichte vs. Offenheit | A5-Spannung wirkt mit | scheinbar mehrfach | nur scheinbar mehrfach | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Zeitverkürzung vor kritischen Tests | Aenderung trifft Testfaelle und Gegenbeispiele | beibehalten |
| evaluator-kritische Testdisziplin | Designprinzip | A | A5 | Evaluatoren selbst pruefen | hoch | mittel | mittel | empirisch+lokal | empirisch/abgeleitet | nicht jeder Test evaluator-zentriert | aus A5 vererbt | Tiefe der Evaluatorpruefung vs. Aufwand | A5-Spannung wirkt mit | teilweise mehrfach | komplementaer | gering redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei evaluator-abhaengiger Freigabe | Aenderung trifft Testdisziplin und Evidenzanforderung | beibehalten, enger fassen |
| definitorische Priorisierung | Designprinzip | B | B1 | Definition vor Benennung/Regelung | hoch | hoch | hoch | standardsetzend | standardsetzend | informelle Platzhalter abgeschwaecht | aus B1 vererbt | Arbeitsgeschwindigkeit vs. Definitorik | B1-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung zulasten Begriffsordnung | Aenderung trifft Benennungs- und Registerregeln | beibehalten |
| Rollen- und Relationsreinheit | Designprinzip | B | B2 | Kategorien und Relationen sauber trennen | hoch | hoch | hoch | standardsetzend | standardsetzend | informelle Kurznotizen abgeschwaecht | aus B2 vererbt | Pragmatik vs. Modellreinheit | B2-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Effizienzvorrangregel bei Kategorienkollaps | Aenderung trifft ontologische Ableitungen | beibehalten |
| kontrollierte Kopplung | Designprinzip | B | B4,B5 | Kopplung explizit und begrenzt halten | hoch | hoch | mittel bis hoch | standardsetzend+theoretisch | abgeleitet | lose Ideenskizzen vor Vorstufe | aus B4/B5 vererbt | Explizitheit vs. Fluiditaet | B4/B5-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine beschleunigte Kopplung ohne Gate | Aenderung trifft Kopplungsfolgen und Pfadregeln | beibehalten |
| driftwachsame Revisionsdisziplin | Designprinzip | B | B5,A3 | Aenderungen gegen Drift pruefen | hoch | mittel | mittel | theoretisch+lokal | abgeleitet | Kleinkorrekturen mit geringer Wirkung | aus B5/A3 vererbt | Lernfaehigkeit vs. Pruefaufwand | B5/A3-Spannungen wirken mit | mehrfach | komplementaer | gering redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Zeitersparnis bei driftrelevanter Revision | Aenderung trifft Revisions- und Nachzugslogik | beibehalten, enger fassen |
| Verifikationsfaehigkeit | Designprinzip | B | B4,A5,K2 | pruefbare Uebergaenge und Zustaende | hoch | mittel bis hoch | mittel | standardsetzend+empirisch | abgeleitet/empirisch | fruehe Vorerkundung abgeschwaecht | aus B4/A5/K2 vererbt | Pruefaufwand vs. Vorankommen | mehrere Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung vor kritischer Verifikation | Aenderung trifft Pfade, Tests und Freigabe | beibehalten |
| epistemische Staffelung | Designprinzip | K | K1,A2 | Rollen epistemisch staffeln | hoch | hoch | mittel | standardsetzend | abgeleitet | alltaegliche Kurzkommunikation | aus K1/A2 vererbt | Knappe Kommunikation vs. Staffellogik | K1/A2-Spannungen wirken mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei epistemischer Verwechslung | Aenderung trifft Evidenz- und Aussagenregeln | beibehalten |
| Materialisierungsdisziplin | Designprinzip | K | K2,B4 | unpruefte Uebernahme verhindern | hoch | hoch | hoch | standardsetzend+abgeleitet | abgeleitet | reversible Sandbox-Vorstufe | aus K2/B4 vererbt | Tempo vs. Bewertungsprioritaet | K2/B4-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung vor Uebernahme | Aenderung trifft Materialisierungsregeln und K2-Folgen | beibehalten |
| keine konkurrierende Wahrheitsquelle | Designprinzip | K | K3,B2 | Spiegel nicht semantisch aufwerten | hoch | hoch | mittel bis hoch | standardsetzend+lokal | abgeleitet | rein technische Anzeige | aus K3/B2 vererbt | Ergonomie vs. Ursprungsschutz | K3/B2-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Effizienzabkuerzung bei Wahrheitsquellenfragen | Aenderung trifft Spiegelregeln und Herkunftslogik | beibehalten |
| Ausnahmebehandlungs-Explizitheit | Designprinzip | K | A1,A2,K2 indirekt | Ausnahmen sichtbar und regelgebunden gestalten | hoch | mittel bis hoch | mittel | abgeleitet | abgeleitet | folgenarme Einzelfaelle abgeschwaecht | aus Scope- und Bewertungslogik vererbt | Ausnahmeklarheit vs. Ueberformalisierung | A1/A2/K2-Spannungen wirken mit | teilweise mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Zeitersparnis bei ausnahmekritischen Entscheidungen | Aenderung trifft Nicht-Geltung und Grenzfallmodell | neu aufnehmen |
| Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision | Designprinzip | K | B5 + Kopplungslogik | Axiomrevision zwingt Folgeebenen-Nachzug | hoch | hoch | mittel bis hoch | abgeleitet | abgeleitet | keine semantische Aenderung | aus Revisionslogik vererbt | Abschlusssauberkeit vs. Aufwand | B5-Spannung wirkt mit | teilweise mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei revisionsrelevanter Fortpflanzung | Aenderung trifft Deprekationslog und Matrixpflege | neu aufnehmen |
| Driftresistenz | Qualitaetsattribut | A/B | A1,A3,B5 | unerwuenschte Abweichung begrenzen | hoch | mittel | mittel | theoretisch+empirisch indirekt | evaluativ | lokale Exploration darf variieren | aus A1/A3/B5 vererbt | Adaptivitaet vs. Stabilitaet | B5-Spannung wirkt mit | mehrfach | teils redundant | gering redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Geschwindigkeitsvorrangregel gegen Driftkontrolle | Aenderung trifft Revisionsschutz und Folgequalitaet | beibehalten, enger fassen |
| Kontrollierbarkeit (enge Fassung) | Qualitaetsattribut | A/B | A4,B4 | Eingriffe und Steuerung moeglich halten | mittel bis hoch | mittel | niedrig bis mittel | standardsetzend abgeleitet | evaluativ | Niedrigrisikointeraktion | aus A4/B4 vererbt | Kontrolle vs. Offenheit | A4/B4-Spannungen wirken mit | mehrfach | komplementaer | Sammelbegriff verengt | mittel | nicht verwaist | Aufwertung nur bei starker Basalisierung | untergeordnet bleiben | keine Beschleunigung auf Kosten der Eingriffsfaehigkeit | Aenderung trifft Schrittlogik und Pfadkontrolle | beibehalten, enger fassen |
| Reproduzierbarkeit | Qualitaetsattribut | A/K | A5,K2 | Ergebnisse pruefbar wiederholen | hoch | hoch | mittel | empirisch+abgeleitet | evaluativ | heuristische Ideation | aus A5/K2 vererbt | Offenheit vs. Wiederholbarkeit | A5/K2-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung vor Reproduzierbarkeitsanforderung | Aenderung trifft Test- und Uebernahmelogik | beibehalten |
| argumentative Nachvollziehbarkeit | Qualitaetsattribut | A | A2,A3 | Begruendungsgaenge rekonstruierbar machen | hoch | hoch | mittel | standardsetzend+lokal | evaluativ | sehr knappe Alltagsantworten | aus A2/A3 vererbt | Lesbarkeit vs. Detailtiefe | A2/A3-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei tragender Begruendungsarbeit | Aenderung trifft Argumentations- und Evidenzdarstellung | beibehalten |
| Wiederauffindbarkeit | Qualitaetsattribut | B | B3,B4 | Inhalte spaeter finden | hoch | mittel bis hoch | hoch | standardsetzend abgeleitet | evaluativ | fluechtige Hilfsnotizen | aus B3/B4 vererbt | Ankerdichte vs. Aufwand | B3/B4-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Abkuerzung bei referenzpflichtigen Artefakten | Aenderung trifft Provenienz- und Zugriffsguete | beibehalten |
| Persistenz (enge Fassung) | Qualitaetsattribut | B | B3 indirekt | Inhalte ueber Zeit verfuegbar halten | hoch | mittel | mittel | theoretisch/lokal | evaluativ | nicht jede Hilfsnotiz persistenzpflichtig | aus B3 vererbt | Aufwand vs. Langzeitnutzen | B3-Spannung wirkt mit | teilweise mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Persistenzpflicht aus Geschwindigkeitsgruenden senken | Aenderung trifft Artefaktpflichten und Langzeitfuehrung | beibehalten, enger fassen |
| Reparierbarkeit | Qualitaetsattribut | B | B5,B4 | lokale Korrektur ohne Gesamtschaden | hoch | mittel | mittel | theoretisch | evaluativ | manche globale Aenderungen bleiben invasiv | aus B5/B4 vererbt | Lokaler Eingriff vs. globale Konsistenz | B5/B4-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung auf Kosten reparierbarer Zustandsgrenzen | Aenderung trifft Rueckroll- und Aenderungslogik | beibehalten |
| Wartbarkeit | Qualitaetsattribut | B | B4,B5 | fortlaufende Aenderung beherrschbar machen | hoch | mittel | mittel | theoretisch | evaluativ | Kleinstartefakte mit geringer Dauer | aus B4/B5 vererbt | Wartungsaufwand vs. Flexibilitaet | B4/B5-Spannungen wirken mit | mehrfach | komplementaer | gering redundant zu Reparierbarkeit | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei wartungsrelevanter Umstrukturierung | Aenderung trifft Pfad- und Evolvierbarkeitsfolgen | beibehalten |
| duale Lesbarkeit (enge Fassung) | Qualitaetsattribut | B/K | B3,B4,K3 | fuer Mensch und Maschine anschlussfaehig | hoch | niedrig bis mittel | mittel | lokal+theoretisch | evaluativ | geringe Automationsdichte | aus B3/B4/K3 vererbt | Lesbarkeit vs. Formalisierung | Automationssensitivitaet wirkt mit | mehrfach | konflikttraechtig | nicht redundant | mittel | nicht verwaist | Aufwertung spaeter moeglich, jetzt nein | nicht unterordnen | keine Effizienzoptimierung zulasten Lesbarkeitsdoppelanschluss | Aenderung trifft automationsnahe Artefakte | beibehalten, enger fassen |
| Wahrheitsquellenstabilitaet (enge Fassung) | Qualitaetsattribut | K/B | K3,B2,B3 | semantischen Ursprung stabil halten | hoch | mittel | mittel | standardsetzend+lokal | evaluativ | temporaere Mirrors ohne Vorrang | aus K3/B2/B3 vererbt | Ergonomie vs. Ursprungsordnung | K3-Spannung wirkt mit | mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung auf Kosten der Ursprungsstabilitaet | Aenderung trifft Spiegel-/Adapterfolgen | beibehalten, enger fassen |
| Ableitungsnachvollziehbarkeit | Qualitaetsattribut | K | Ableitungsgeschlossenheit indirekt | Ableitung von Folgeelementen nachvollziehbar halten | hoch | mittel bis hoch | mittel | abgeleitet | evaluativ | geringe Komplexitaet reduziert Bedarf | aus Closure-Logik vererbt | Nachvollzug vs. Dokumentationsaufwand | Closure-Spannung wirkt mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung ohne Ableitungsspur | Aenderung trifft Matrix- und Registerqualitaet | neu aufnehmen |
| Vererbungskonsistenz | Qualitaetsattribut | K | Vererbungslogik indirekt | Nicht-Geltung und Spannungen konsistent vererben | hoch | mittel bis hoch | mittel | abgeleitet | evaluativ | einmalige Sonderfaelle | aus Vererbungslogik vererbt | Konsistenz vs. Ausnahmen | Ausnahmebehandlung wirkt mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei Vererbungsentscheidungen | Aenderung trifft Grenzfall- und Spannungsmodell | neu aufnehmen |
| Rueckrollbarkeit | Qualitaetsattribut | B | B5,B4 indirekt | Ruecknahme faehig halten | hoch | mittel | mittel | theoretisch | evaluativ | irreversible externe Wirkungen | aus Revisionslogik vererbt | Ruecknahme vs. Vorwaertsdrang | B5-Spannung wirkt mit | — | — | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung ohne Rueckrollpfad bei relevanten Aenderungen | Aenderung trifft Reparierbarkeit und Aenderungsablauf | neu aufnehmen |
| Ausfuehrungseffizienz | Qualitaetsattribut | K | nachgeordnet aus operativer Ordnung | ressourcenangemessene Ausfuehrung | hoch | mittel | mittel | lokal/abgeleitet | evaluativ | nie Vorrang vor Leitplanken | nicht aus Kernaxiom vererbt, sondern nachgeordnet | Effizienz vs. Sorgfalt | Leitplankenkonflikte moeglich | — | — | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | nur nachgeordnet; nie gegen Rueckbindung oder Trennschaerfe | Aenderung trifft Leistungsgrenzen und Prueftieferegel | neu aufnehmen |
| Zielbild vor Ausfuehrung explizieren | Operative Regel | A | A1 | Scope vorher binden | hoch | hoch | hoch | abgeleitet+lokal | operativ | triviale Kurzinteraktion | aus A1 vererbt | Tempo vs. Vorabklaerung | A1-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei scope-kritischer Arbeit | Aenderung trifft Startlogik | beibehalten |
| Aussagearten trennen | Operative Regel | A/K | A2,K1 | epistemische Rollen auseinanderhalten | hoch | hoch | mittel | standardsetzend abgeleitet | operativ | informelle Kleinantworten | aus A2/K1 vererbt | Knappheit vs. Rollenreinheit | A2/K1-Spannung wirkt mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei epistemischem Kollaps | Aenderung trifft Argumentationspraxis | beibehalten |
| Unsicherheiten markieren | Operative Regel | A | A3 | Unsicherheit explizit machen | hoch | hoch | hoch | empirisch+abgeleitet | operativ | Niedrigrisiko-Smalltalk | aus A3 vererbt | Fluessigkeit vs. Auditierbarkeit | A3-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei begruendungssensitiver Arbeit | Aenderung trifft Auditpraxis | beibehalten |
| kleinsten sicheren naechsten Schritt waehlen | Operative Regel | A | A4 | Entgrenzung vermeiden | hoch | hoch | hoch | theoretisch+lokal | operativ | Einmalantwort ohne Folgewirkung | aus A4 vererbt | Tempo vs. Begrenzung | A4-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | Prueftiefe nur bei niedriger Tragweite verringern | Aenderung trifft Ausfuehrungsroutine | beibehalten |
| Gegenbeispiele und Testfaelle anfuehren | Operative Regel | A | A5 | Verhalten pruefbar machen | hoch | hoch | hoch | empirisch | operativ | fruehe offene Ideation | aus A5 vererbt | Offenheit vs. Testpflicht | A5-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung vor kritischen Tests | Aenderung trifft Testpraxis | beibehalten |
| Begriff vor Benennung, Benennung vor Regelung | Operative Regel | B | B1 | terminologische Reihenfolge erzwingen | hoch | hoch | hoch | standardsetzend | operativ | Platzhalter in Skizzenphase | aus B1 vererbt | Tempo vs. Begriffsklaerung | B1-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung zulasten Begriffsordnung | Aenderung trifft Dokumentationsreihenfolge | beibehalten |
| Herkunft und Referenzen mitfuehren | Operative Regel | B | B3 | Provenienz sichern | hoch | hoch | hoch | standardsetzend | operativ | fluechtige lokale Notiz | aus B3 vererbt | Aufwand vs. Ankerdichte | B3-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei herkunftspflichtigen Artefakten | Aenderung trifft Provenienzpraxis | beibehalten |
| Pfadwechsel nur ueber explizite Schnittstellen | Operative Regel | B | B4 | Kurzschlussuebergaenge vermeiden | hoch | hoch | hoch | standardsetzend | operativ | fruehe Vorerkundung | aus B4 vererbt | Fluiditaet vs. Pfaddisziplin | B4-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei operativen Uebergaengen | Aenderung trifft Pfadpraxis | beibehalten |
| Aenderungen gegen Drift und Revisionsfaehigkeit pruefen | Operative Regel | B | B5,A3 | Revision absichern | hoch | mittel | mittel | theoretisch+lokal | operativ | reine Formalkorrektur | aus B5/A3 vererbt | Revisionsaufwand vs. Tempo | B5/A3-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei driftrelevanten Aenderungen | Aenderung trifft Revisionsablauf | beibehalten, enger fassen |
| Bewertung vor Materialisierung | Operative Regel | K | K2 | Uebernahme erst nach Pruefung | hoch | hoch | hoch | standardsetzend | operativ | reversible Sandbox | aus K2 vererbt | Tempo vs. Bewertungsprioritaet | K2-Spannung wirkt mit | eindeutig | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung vor Uebernahme | Aenderung trifft Freigabeabfolge | beibehalten |
| Spiegel und Adapter nicht als semantischen Ursprung behandeln | Operative Regel | K | K3,B2 | Wahrheitsquelle stabil halten | hoch | hoch | hoch | standardsetzend+lokal | operativ | rein technische Anzeige | aus K3/B2 vererbt | Ergonomie vs. Ursprungsschutz | K3/B2-Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei Ursprungsfragen | Aenderung trifft Spiegelpraxis | beibehalten |
| Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen | Operative Regel | K | K2,K3,B4 | Kopplungslogik sichtbar machen | hoch | mittel bis hoch | hoch | abgeleitet | operativ | lose heuristische Analogie | aus K2/K3/B4 vererbt | Kuerze vs. Explizitheit | mehrere Spannungen wirken mit | mehrfach | komplementaer | nicht redundant | mittel | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei Kopplungsentscheidungen | Aenderung trifft Kopplungsdokumentation | beibehalten |
| Deprekation statt stiller Entfernung markieren | Operative Regel | K | Revisionsfolgen indirekt | Aenderungsprovenienz sichern | hoch | hoch | hoch | abgeleitet | operativ | rein lokale Arbeitsnotiz | aus Nachzugs- und Revisionslogik vererbt | Sauberkeit vs. Aufwand | Revisionsspannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung durch stille Entfernung | Aenderung trifft Logpflege | neu aufnehmen |
| Prueftiefe an Tragweite und Reversibilitaet ausrichten | Operative Regel | K | A4,K2 | Prueftiefe proportional steuern | hoch | hoch | hoch | abgeleitet | operativ | geringe Tragweite und hohe Reversibilitaet | aus A4/K2 vererbt | Effizienz vs. Sorgfalt | Leistungsgrenzen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | ist selbst Leistungsgrenze; nie gegen Leitplanken anwenden | Aenderung trifft Bearbeitungsproportionalitaet | neu aufnehmen |
| Scope-Bindung wirkt bis in Materialisierung | Kopplungsfolge | K | A1+K2 | Scope ueber Phasen forttragen | hoch | hoch | hoch | abgeleitet | kopplend | fruehe reversible Skizze | aus A1/K2 vererbt | Tempo vs. Scope-Konsistenz | A1/K2-Spannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei materialisierungsrelevanter Scope-Aenderung | Aenderung trifft K2-Folgen | beibehalten |
| epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal | Kopplungsfolge | K | A2+K1 | gemeinsame Mindestordnung | hoch | hoch | hoch | standardsetzend | kopplend | informelle Kurzkommunikation | aus A2/K1 vererbt | Knappe Kommunikation vs. Reinheit | A2/K1-Spannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei epistemischer Kopplung | Aenderung trifft gemeinsame Mindestordnung | beibehalten |
| Auditierbarkeit braucht Provenienz und Referenzierbarkeit | Kopplungsfolge | K | A3+B3 | Audit an Herkunft koppeln | hoch | hoch | hoch | standardsetzend+abgeleitet | kopplend | fluide Vorstufe | aus A3/B3 vererbt | Aufwand vs. Auditierbarkeit | A3/B3-Spannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei herkunftspflichtigem Audit | Aenderung trifft Auditkopplung | beibehalten |
| rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik | Kopplungsfolge | K | A4+B4 | Begrenzung mit Uebergangslogik koppeln | hoch | hoch | hoch | theoretisch+abgeleitet | kopplend | Einmalantworten | aus A4/B4 vererbt | Tempo vs. Begrenzung | A4/B4-Spannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei delegierter Mehrschrittarbeit | Aenderung trifft Rueckgabe- und Pfadkopplung | beibehalten |
| Testbarkeit muss vor operative Uebernahme treten | Kopplungsfolge | K | A5+K2 | Testpflicht vor Uebernahme | hoch | hoch | hoch | empirisch+abgeleitet | kopplend | reversible Sandbox | aus A5/K2 vererbt | Tempo vs. Testpflicht | A5/K2-Spannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung vor testrelevanter Uebernahme | Aenderung trifft Freigabelogik | beibehalten |
| ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie | Kopplungsfolge | K | B2+K3 | ontologischen Unterbau explizit machen | hoch | mittel bis hoch | hoch | standardsetzend+abgeleitet | kopplend | flache Anzeige | aus B2/K3 vererbt | Pragmatik vs. Unterbau | B2/K3-Spannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei Ursprungsunterbau | Aenderung trifft Spiegelasymmetrie | beibehalten |
| governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik | Kopplungsfolge | K | B5+A4 | Lernfaehigkeit an Begrenzung koppeln | hoch | mittel bis hoch | hoch | theoretisch+abgeleitet | kopplend | Kleinkorrektur ohne Lernanteil | aus B5/A4 vererbt | Lernfaehigkeit vs. Begrenzung | B5/A4-Spannungen wirken mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei evolvierbarer Ausfuehrung | Aenderung trifft Lern-/Begrenzungskopplung | beibehalten |
| Axiomrevision erzwingt Folgeebenen-Nachzug | Kopplungsfolge | K | B5+Nachzugsdisziplin | Aenderung propagiert in Folgeebenen | hoch | hoch | hoch | abgeleitet | kopplend | rein sprachliche Korrektur | aus Revisionslogik vererbt | Abschlusssauberkeit vs. Aufwand | B5-Spannung wirkt mit | — | — | nicht redundant | hoch | nicht verwaist | kein Aufwertungskandidat | nicht unterordnen | keine Beschleunigung bei semantischer Revision | Aenderung trifft alle Folgeebenenpfade | neu aufnehmen |

## Gesamtbefund
- Der Kernaxiomenraum ist stabil und wird nicht weiter expandiert.
- Der Folgeebenenraum wird primaer ueber Verengung, Umklassifikation, selektive Neuaufnahme und explizite Rekursionspruefung verbessert.
- Leistungs- und Geschwindigkeitsaspekte erscheinen nur nachgeordnet als Ausfuehrungseffizienz und Prueftiefenangemessenheit.
- Keine direkte Repo-Materialisierung folgt aus dieser Matrix.

---

# Deprekations- und Umschichtungslog

# ASWE_Deprekations_Umschichtungslog_20260423_V3

## 1. Zweck
Dieses Dokument protokolliert:
- Umklassifizierungen,
- Verengungen,
- Entfernungen aus dem festen Raum,
- Neuaufnahmen,
- sowie Reserve- und Auditbegriffe.

## 2. Umklassifizierungen

### Materialisierungsdisziplin
- Bisher: sekundaeres Qualitaetsattribut oder grenzwertiger Begriff
- Final: starkes Designprinzip
- Grund: beschreibt Konstruktions- und Uebernahmelogik, nicht primaer eine Gueteeigenschaft

### Deprekationsdisziplin
- Bisher: moegliches Designprinzip
- Final: operative Regel in der Form "Deprekation statt stiller Entfernung markieren"
- Grund: handlungsnaher als strukturleitender Begriff

## 3. Verengungen

### Kontrollierbarkeit
- Finalstatus: sekundaeres Qualitaetsattribut in enger Fassung
- Verengung: nur evaluative Eigenschaft von Eingriffs- und Steuerbarkeit

### Persistenz
- Finalstatus: sekundaeres Qualitaetsattribut in enger Fassung
- Verengung: nur fuer persistenzpflichtige Artefakte

### duale Lesbarkeit
- Finalstatus: sekundaeres Qualitaetsattribut in enger Fassung
- Verengung: stark automationssensitiv; nicht basal

### Wahrheitsquellenstabilitaet
- Finalstatus: sekundaeres Qualitaetsattribut in enger Fassung
- Verengung: evaluatives Ergebnis aus K3/B2/B3

### driftwachsame Revisionsdisziplin
- Finalstatus: starkes Designprinzip in enger Fassung
- Verengung: driftbezogene Revisionspruefung

### evaluator-kritische Testdisziplin
- Finalstatus: starkes Designprinzip in enger Fassung
- Verengung: evaluator-bezogene Prueffehler

## 4. Entfernung aus dem festen Raum

### Portierbarkeit
- Bisher: starkes Designprinzip
- Final: nicht mehr als festes eigenstaendiges Raumelement
- Grund: zu unscharf; eher Nutzungseffekt oder abgeleitete Uebertragbarkeit

### Evidenzdisziplin
- Bisher: sekundaeres Qualitaetsattribut
- Final: nicht mehr als eigenstaendiges festes Attribut
- Grund: funktional von epistemischer Staffelung, argumentativer Nachvollziehbarkeit, K1/K2 und Regeln absorbiert

### Antwortzeitangemessenheit
- Bisher: moeglicher neuer Kandidat
- Final: nicht als eigenstaendiger Raumkandidat
- Grund: zu kontextnah; Unterfall von Ausfuehrungseffizienz

### Leistungsstabilitaet
- Bisher: moeglicher neuer Kandidat
- Final: nicht aufgenommen
- Grund: zu spaetphasig und derzeit ohne zwingenden Mehrwert

## 5. Aufnahme neuer finaler Raumkandidaten

### Starke Designprinzipien
- Ausnahmebehandlungs-Explizitheit
- Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision

### Sekundaere Qualitaetsattribute
- Ableitungsnachvollziehbarkeit
- Vererbungskonsistenz
- Rueckrollbarkeit
- Ausfuehrungseffizienz

### Operative Regeln
- Deprekation statt stiller Entfernung markieren
- Prueftiefe an Tragweite und Reversibilitaet ausrichten

### Kopplungsfolgen
- Axiomrevision erzwingt Folgeebenen-Nachzug

## 6. Begriffe, die bewusst nur Audit- oder Reservebegriffe bleiben
- leitplankenkonforme Leistungsoptimierung
- Transformationsdisziplin zwischen Ebenen
- Konfliktpriorisierungsklarheit
- Mindestkontextdisziplin
- Begriffsversionsdisziplin
- Umklassifizierungsrobustheit
- Revisionskostenbeherrschbarkeit
- Nachzugskonsistenz
- Ausnahmeprotokollierbarkeit
- Kontextsparsamkeit


---

# ASWE_Routinenblatt_Axiomraum_20260423_V3

## Zweck
Dieses Dokument standardisiert die Routinen des finalen, repo-materialisierbaren Korrekturabschlusspakets auf dem Niveau des rekursiven Matrixstandards.

## 0. Begriffsregel: Konfliktlage
`Konfliktlage` ist der Oberbegriff fuer:
- einfache Spannungen,
- vererbte Spannungen,
- konflikttraechtige Mehrfachableitungen,
- Regelkollisionen,
- Ebenenkollisionen,
- Zielbildkollisionen.

Die Matrixspalten `Spannungen` und `vererbte Spannungen` sind die operationalisierten Unterformen der Konfliktlage. Wo der Prompt oder die Checkliste `Konfliktlage` verlangt, sind mindestens diese beiden Unterformen sowie konflikttraechtige Mehrfachableitungen mitzudenken.

## 1. Routine Neuaufnahme eines Folgeelements
1. Ebenentest
2. Funktionsdefinition
3. Rueckbindungstest
4. Evidenzstatus bestimmen
5. Quellenrolle bestimmen
6. Nicht-Geltung und Spannungen bestimmen
7. vererbte Nicht-Geltung pruefen
8. vererbte Spannungen pruefen
9. Mehrfachableitungspruefung
10. Orthogonalitaets- und Redundanzpruefung
11. Verwaisungsstatus pruefen
12. Kollapstest / Aufwertung pruefen
13. Unterordnungstest pruefen
14. Leistungs- und Geschwindigkeitsgrenze pruefen
15. Revisionsfolgen bestimmen
16. Entscheidung:
   - aufnehmen
   - unterordnen
   - umklassifizieren
   - verwerfen

## 2. Routine Umklassifizierung
1. Aktuelle Ebene markieren
2. Ziel-Ebene markieren
3. Begruenden, warum aktuelle Ebene unpassend ist
4. Kollapstest pruefen
5. Unterordnungstest pruefen
6. Rueckbindung nachziehen
7. Evidenzstatus und Quellenrolle aktualisieren
8. Nicht-Geltung und Spannungen nachziehen
9. vererbte Nicht-Geltung und vererbte Spannungen nachziehen
10. Verwaisungsstatus erneut pruefen
11. Orthogonalitaet und Redundanz erneut pruefen
12. Leistungs- und Geschwindigkeitsgrenze erneut pruefen
13. Revisionsfolgen aktualisieren
14. Deprekationslog aktualisieren
15. Matrix und Abschlussdokument spiegeln

## 3. Routine Axiomrevision -> Folgeebenen-Nachzug
1. Geaendertes Axiom markieren
2. Direkt abgeleitete Folgeelemente identifizieren
3. Indirekt betroffene Folgeelemente identifizieren
4. vererbte Nicht-Geltung und vererbte Spannungen neu pruefen
5. Evidenzstatus und Quellenrolle erneut pruefen, falls betroffen
6. Verwaisungsstatus erneut pruefen
7. Orthogonalitaet und Redundanz erneut pruefen, falls Axiomnaehe oder Funktionsverteilung betroffen ist
8. Leistungs- und Geschwindigkeitsgrenze erneut pruefen, falls Regeln, Attribute oder Ausfuehrungsfolgen betroffen sind
9. Mehrfachableitungen neu klassifizieren
10. Revisionsfolgen aktualisieren
11. Matrix aktualisieren
12. Deprekationslog aktualisieren
13. Abschlusscheckliste erneut anwenden

## 4. Routine Abschlussfreigabe
1. Abschlussdokument ist intern konsistent
2. Matrix enthaelt alle Pflichtparameter
3. Deprekationslog spiegelt alle Aenderungen
4. Routinen- und Ablaufblatt wurden eingehalten
5. Abschlusscheckliste ist ohne harte Restverletzung durchlaufen
6. Repo-Materialisierung ist nur als bewusster, separater Commit-/Pfadentscheid zulaessig
7. Pro-Model-Schleife ergibt:
   - abschlusstauglich ohne weitere Aenderung
   - oder abschlusstauglich mit minimalem Korrekturpaket
8. Erst dann gilt das Paket als freigabereif

## 5. Routine Minimaler Korrekturabschluss
1. Nur echte Abschlussmaengel zulassen
2. Keine neue Expansion
3. Nur kleinstmoegliche Korrekturen an:
   - materialisierbarem Abschlussdokument
   - Matrixabschnitt
   - Deprekationslog
   - Routinen oder Promptdeckung
4. Abschlusscheckliste erneut durchlaufen
5. Pro-Model-Schleife erneut ausfuehren


---

# Ablaufsteuerung

# ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2

## 1. Zweck
Dieses Dokument schliesst die paketinternen Ablaeufe auf dem Niveau des Korrekturabschlusspakets.

## 2. Ablauf paketinterne Abschlusspruefung
1. Kritikableitung und Paketdelta lesen.
2. Abschlussdokument lesen.
3. Rekursive Pruefmatrix gegen Abschlussdokument spiegeln.
4. Deprekations- und Umschichtungslog gegen beide Dokumente spiegeln.
5. Pruefen, ob der Pro-Model-Direktprompt alle bindenden Matrixachsen explizit abdeckt.
6. Abschlusscheckliste vollstaendig durchlaufen.
7. Adapterkonzept gegen implizite Materialisierungsdrift pruefen.
8. Pro-Model-Schleife ausfuehren.
9. Entscheiden:
   - freigabereif
   - minimaler Korrekturabschluss noetig
   - noch nicht freigabereif

## 3. Ablauf Aenderungsreihenfolge
Bei jeder Aenderung gilt diese Reihenfolge:
1. Kritikableitung und Paketdelta aktualisieren, falls sich der Mangeltyp aendert.
2. Abschlussdokument
3. Rekursive Pruefmatrix
4. Deprekations- und Umschichtungslog
5. Routinenblatt, falls der Matrixstandard betroffen ist
6. Abschlusscheckliste
7. Pro-Model-Schleife erneut

## 4. Ablauf Materialisierungsvorpruefung
1. Zielobjekt bestimmen
2. Aequivalenz pruefen
3. Transformationsmodus waehlen
4. Autorisation pruefen
5. Rueckrollmoeglichkeit definieren
6. Nur dann separates Integrations-Adapterdokument erzeugen

## 5. Stoppregeln
Sofort stoppen, wenn:
- neue Kernaxiome ungeprueft eingefuehrt werden
- Folgeelemente implizit aufgewertet werden
- Leistungslogik Leitplanken uebersteuert
- direkte Repo-Materialisierung aus dem Paket heraus abgeleitet wird
- Matrix und Abschlussdokument divergieren
- Direktprompt und Matrixpflichtachsen auseinanderlaufen


---

# ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V3

## Zweck
Diese Checkliste schliesst die globalen Metaqualitaetsachsen des finalen, repo-materialisierbaren Pakets.

## 0. Begriffsregel: Konfliktlage
`Konfliktlage` ist der Oberbegriff fuer:
- Spannungen,
- vererbte Spannungen,
- konflikttraechtige Mehrfachableitungen,
- Regelkollisionen,
- Ebenenkollisionen,
- Zielbildkollisionen.

## 1. Vollstaendigkeit
- Sind alle Kernaxiome explizit gelistet?
- Sind alle final zugelassenen Folgeelemente gelistet?
- Sind Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet enthalten?
- Sind offene Reserve- und Auditbegriffe explizit ausgelagert?
- Sind die finalen Korrekturmassnahmen M1 bis M3 umgesetzt?

## 2. Saettigung
- Wurde weitere breite Expansion gestoppt?
- Werden neue Kandidaten nur noch ueber die Routine Neuaufnahme zugelassen?
- Entsteht keine neue offene Verbesserungskaskade?

## 3. Redundanzarmut / Minimalitaet
- Gibt es doppelte Folgeelemente?
- Wurden absorbierte Begriffe entfernt oder deklassiert?
- Sind Sammelbegriffe verengt worden?

## 4. Widerspruchsfreiheit / Konsistenz
- Widersprechen Abschlussdokument, Matrix und Deprekationslog einander?
- Wurden konflikttraechtige Mehrfachableitungen markiert?
- Ist `Konfliktlage` mit `Spannungen` und `vererbten Spannungen` harmonisiert?

## 5. Orthogonalitaet
- Sind Designprinzipien, Qualitaetsattribute und Regeln funktional unterscheidbar?
- Sind Reservebegriffe nicht ungeprueft in den Raum gerutscht?

## 6. Ableitungsgeschlossenheit
- Hat jedes Folgeelement eine explizite Rueckbindung?
- Sind indirekte Rueckbindungen expliziert oder entschieden?
- Erzwingt Axiomrevision einen Folgeebenen-Nachzug?

## 7. Verwaisung
- Gibt es verwaiste Begriffe?
- Gibt es Elemente ohne klare finale Entscheidung?
- Werden Verwaisungspruefungen in Neuaufnahme, Umklassifizierung und Axiomrevision explizit ausgefuehrt?

## 8. Rekursive Standardeinhaltung
- Wurden die Standards von Kernaxiom bis operative Regel angewandt?
- Sind Ebenenangemessenheit, Konfliktlage, Revisionsfolgen und Leistungsgrenzen enthalten?
- Deckt der Pro-Model-Direktprompt die bindenden Matrixachsen explizit ab?
- Decken die Routinen Neuaufnahme, Umklassifizierung und Axiomrevision die Matrixachsen hinreichend ab?

## 9. Repo- und Materialisierungsschutz
- Ist das finale Dokument als einzelnes Markdown-Artefakt materialisierbar?
- Ist eine konkrete Repo-Materialisierung dennoch an einen bewussten Pfad-/Commitentscheid gebunden?
- Werden keine nicht beigelegten Zwischendokumente zur Auslegung benoetigt?

## 10. Abschlussentscheidung
- abschlusstauglich ohne weitere Aenderung
- abschlusstauglich mit minimalem Korrekturpaket
- noch nicht abschlusstauglich


---

# Materialisierungsregel

Dieses Dokument ist materialisierbar, weil es alleinstehend ist. Die konkrete Repo-Integration bleibt an folgende Mindestfragen gebunden:
- Zielpfad?
- Artefaktrolle?
- Commit-/Review-Verfahren?
- Rueckrollmoeglichkeit?
- Abgleich mit bestehender Repo-Governance?

# ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3

## 1. Ausgangspunkt
Die direkte Repo-Integrationslogik wird in diesem Paket nicht verfolgt. Repo-Integration ist daher ein separates Adapterproblem mit eigenem Vertrag.

## 2. Grundsatz
Erst konzeptionelle Schliessung als selbststaendiges Paket, dann explizite Adapter- und Materialisierungsentscheidung.

## 3. Was nicht getan wird
Aus diesem Paket heraus werden nicht vorgenommen:
- direkte SSOT-Umschreibung
- direkte Writer-, Runtime- oder Rollenmaterialisierung
- direkte `.codex`-Materialisierung
- direkte Einspeisung in Repo-Pfade ohne Adaptervertrag

## 4. Fuenf Adapterfragen
### A. Zielobjektfrage
In welches konkrete Repo-Artefakt oder welche Artefaktfamilie soll integriert werden?

### B. Aequivalenzfrage
Welcher Teil des Pakets ist kanonischer Inhalt, Auditbeleg, Aenderungslog, Reservebegriff oder Integrationsanweisung?

### C. Transformationsfrage
Welche Umformung ist zulaessig?
- 1:1 Uebernahme
- Verdichtung
- Zerlegung
- Mapping in Payload oder Schema
- vorlaeufige Nicht-Integration

### D. Autorisationsfrage
Wer oder welches Verfahren darf den Uebergang freigeben?

### E. Rueckrollfrage
Wie wird fehlerhafte Materialisierung dokumentiert und ruecknehmbar gemacht?

## 5. Minimal notwendige Zusatzartefakte
Vor spaeterer Integration muessen existieren:
1. Integrations-Mapping
2. Materialisierungs-Allowlist
3. Rueckroll- und Deprekationsprotokoll
4. Abnahmekriterien

## 6. Ergebnis
Die naechste sinnvolle Arbeit ist kein Repo-Write, sondern nur dann ein separates Integrations-Adapterdokument, wenn konkrete Materialisierung wirklich erforderlich wird.


---

# Abschlussurteil

Das Dokument ist nach Umsetzung der letzten Korrekturmassnahmen M1 bis M3 als einzelnes Markdown-Artefakt materialisierbar. Es enthaelt:
- kanonischen Kern- und Folgeebenenraum,
- rekursive Matrixachsen,
- vollstaendig nachgeruestete Routinen,
- terminologische Harmonisierung der Konfliktlage,
- Deprekations- und Umschichtungsprovenienz,
- Metaqualitaetscheckliste,
- Materialisierungsgrenzen und Materialisierbarkeitsstatus.
