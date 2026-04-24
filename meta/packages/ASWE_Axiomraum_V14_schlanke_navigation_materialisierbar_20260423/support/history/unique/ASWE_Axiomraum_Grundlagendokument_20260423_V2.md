---
document_id: ASWE_Axiomraum_Grundlagendokument_20260423_V2
document_role: repo_materialisierbares_grundlagendokument
status: foundation_candidate
scope: LLM-Verhaltenssteuerung und ASWE_KnowledgeOS-Architektur
language_policy: Deutsch als Primaersprache; englische Aliase nur begruendet
version_date: 2026-04-23
---

# ASWE_Axiomraum_Grundlagendokument_20260423_V2

## 1. Zielbild

Dieses Dokument begruendet einen rekursiv pruefbaren Axiomraum fuer zwei gekoppelte Gegenstandsbereiche:

- **A: LLM-Verhaltenssteuerung**
- **B: ASWE_KnowledgeOS-Architektur**
- **K: explizite Kopplungen zwischen A und B**

Es ist als alleinstehendes Grundlagendokument formuliert. Es ist kein Pruefbericht, keine Prozesschronik, kein Korrekturauftrag und kein Rohdatenmanifest.

## 2. Gegenstand

Gegenstand sind:

- Kernaxiome,
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen,
- rekursive Pruefachsen,
- und Routinen fuer Neuaufnahme, Umklassifizierung und Axiomrevision.

## 3. Geltungsbereich

Das Dokument gilt als fachlicher Grundlagenstand fuer spaetere Dokumentations-, Architektur-, Prompt-Governance- und Integrationsentscheidungen. Es kann in ein Repo integriert werden, erzwingt aber keine konkrete Pfad-, Commit- oder SSOT-Entscheidung.

## 4. Nicht-Geltung

Dieses Dokument ist nicht:

- eine abgeschlossene Pruefbewertung,
- eine Prozessdokumentation,
- ein Rohdatenkorpus,
- eine direkte Repo-Materialisierungsanweisung,
- eine Runtime-, Rollen- oder Tool-Spezifikation,
- ein Ersatz fuer spaetere repo-lokale Review- und Autorisationsregeln.

## 5. Epistemischer Status

Der Axiomraum ist ein konsolidierter, weiterentwickelbarer Grundlagenstand. Seine Elemente sind nach interner Konsistenz, rekursiver Pruefbarkeit, Trennschaerfe, Rueckbindung, Nicht-Geltung, Konfliktlage und Materialisierbarkeit strukturiert. Er beansprucht keine absolute Vollstaendigkeit, sondern einen belastbaren Ausgangspunkt fuer kontrollierte Weiterentwicklung.

## 6. Leitplanken

1. Kernaxiome bleiben Kernaxiome.
2. Designprinzipien, Qualitaetsattribute und operative Regeln bleiben abgeleitete Folgeebenen.
3. Externe wissenschaftliche Quellen und Standards bleiben primaere Begruendungsanker.
4. Repo-interne Referenzen dienen nur als Anwendungs-, Passungs- oder Materialisierungsbelege.
5. A, B und K bleiben getrennt; Kopplungen werden explizit gefuehrt.
6. Governierte Evolvierbarkeit hat Vorrang vor freier Selbstverbesserung.
7. Begriffe stehen vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
8. Leistungs- und Geschwindigkeitsaspekte sind nachgeordnet und duerfen Zielbild, Rueckbindung, Trennschaerfe oder Evidenzstatus nicht uebersteuern.
9. Auditkriterien, Unterfaelle und Nutzungseffekte werden nicht ungeprueft als kanonische Raumelemente gefuehrt.

## 7. Begriffssystem

### 7.1 Elementklassen

| Klasse | Funktion | Rang |
|---|---|---|
| Kernaxiom | Basale, nicht lokal abgeleitete Grundregel | basal |
| Starkes Designprinzip | Konstruktionsleitendes, aus Kernaxiomen abgeleitetes Prinzip | Folgeebene |
| Sekundaeres Qualitaetsattribut | Bewertbare Gueteeigenschaft | Folgeebene |
| Operative Regel | Handlungsnahe Ausfuehrungsregel | Folgeebene |
| Kopplungsfolge | Explizite Folge aus Verbindung von A-, B- oder K-Elementen | Kopplung |
| Auditkriterium | Pruefmassstab, nicht automatisch Raumelement | Metaebene |
| Reservebegriff | Bewusst nicht kanonisierter Begriff fuer spaetere Pruefung | Randbereich |

### 7.2 Konfliktlage

`Konfliktlage` ist der Oberbegriff fuer:

- einfache Spannungen,
- vererbte Spannungen,
- konflikttraechtige Mehrfachableitungen,
- Regelkollisionen,
- Ebenenkollisionen,
- Zielbildkollisionen.

`Spannungen` und `vererbte Spannungen` sind operationalisierte Unterformen der Konfliktlage.

## 8. Kernaxiome

### 8.1 A – LLM-Verhaltenssteuerung

#### A1 Ziel- und Geltungsbindung
Jede verhaltenssteuernde Instruktion bindet Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung vor Ausfuehrung.

#### A2 Epistemische Trennung
Beobachtung, Aussage, Beleg, Hypothese, Kriterium und Empfehlung duerfen nicht stillschweigend kollabieren.

#### A3 Auditierbarkeit und Unsicherheitsmarkierung
Pruefpflichtige Arbeit markiert Annahmen, Unsicherheiten, Belegbasis und Entscheidungsschritte.

#### A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht
Mehrstufige Arbeit wird nur in begrenzten, rueckgabefaehigen und uebersteuerbaren Schritten ausgefuehrt.

#### A5 Verhaltenstestbarkeit
Verhalten wird anhand expliziter, reproduzierbarer und verifizierbarer Tests bewertet.

### 8.2 B – ASWE_KnowledgeOS-Architektur

#### B1 Terminologische Primaerordnung
Begriff vor Benennung, Benennung vor Regelung, Regelung vor Prozess.

#### B2 Ontologische Trennschaerfe
Kategorie, Instanz, Beobachtung, Aussage, Beleg, Regel, Rolle und Adapterflaeche duerfen nicht kollabieren.

#### B3 Provenienz und Referenzierbarkeit
Wissen, Zustaende, Entscheidungen und Belege muessen adressierbar und herkunftsgebunden sein.

#### B4 Pfad- und Schnittstellenexplizitheit
Uebergaenge zwischen Erkenntnis-, Steuerungs- und Ausfuehrungspfaden duerfen nur explizit erfolgen.

#### B5 Governierte Evolvierbarkeit
Veraenderung bleibt moeglich, aber nur unter Drift-Sichtbarkeit, Pruefbarkeit und Revisionsfaehigkeit.

### 8.3 K – Kopplungsaxiome

#### K1 Beobachtung-Aussage-Beleg
Beobachtung ist nicht Aussage; Aussage ist nicht Beleg.

#### K2 Evaluation vor Operationalisierung
Vorpruefung und Bewertung gehen Materialisierung und Operationalisierung voraus.

#### K3 Spiegel-/Adapter-Asymmetrie
Spiegelungen und Adapter sind abgeleitete Flaechen, nicht semantischer Ursprung.

## 9. Folgeebenen

### 9.1 Starke Designprinzipien

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

### 9.2 Sekundaere Qualitaetsattribute

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

### 9.3 Operative Regeln

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

### 9.4 Kopplungsfolgen

- Scope-Bindung wirkt bis in Materialisierung und Operationalisierung.
- Epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal.
- Auditierbarkeit braucht Provenienz und Referenzierbarkeit.
- Rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik.
- Testbarkeit muss vor operative Uebernahme treten.
- Ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie.
- Governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik.
- Axiomrevision erzwingt Folgeebenen-Nachzug.

## 10. Rekursiver Pruefstandard

Jedes Raumelement wird bei Neuaufnahme, Umklassifizierung, Revision oder Materialisierung mindestens gegen folgende Achsen geprueft:

1. Funktion
2. Rueckbindung
3. Trennschaerfe
4. Ebenenangemessenheit
5. Evidenzstatus
6. Quellenrolle
7. Nicht-Geltung
8. vererbte Nicht-Geltung
9. Spannungen
10. vererbte Spannungen
11. Konfliktlage
12. Mehrfachableitung
13. Typ der Mehrfachableitung
14. Redundanzstatus
15. Orthogonalitaet
16. Verwaisungsstatus
17. Kollapstest / Aufwertung
18. Unterordnungstest
19. Leistungs- / Geschwindigkeitsgrenze
20. Revisionsfolgen
21. finale Entscheidung

## 11. Routinen

### 11.1 Neuaufnahme eines Folgeelements

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
16. Entscheidung: aufnehmen, unterordnen, umklassifizieren oder verwerfen

### 11.2 Umklassifizierung

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
15. Matrix und Grundlagendokument spiegeln

### 11.3 Axiomrevision -> Folgeebenen-Nachzug

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

## 12. Leistungs- und Geschwindigkeitslogik

Leistungs- und Geschwindigkeitsaspekte sind nicht basal.

Kanonisch zugelassen sind:

- **Ausfuehrungseffizienz** als sekundaeres Qualitaetsattribut.
- **Prueftiefenangemessenheit** als operative Regel.

Nicht kanonisiert sind:

- Antwortzeitangemessenheit
- Leistungsstabilitaet
- leitplankenkonforme Leistungsoptimierung

Beschleunigung, verringerte Prueftiefe oder Effizienzsteigerung sind unzulaessig, wenn sie Rueckbindung, Trennschaerfe, Leitplanken, Konfliktklaerung, Vererbungslogik oder Zielbildschutz unterlaufen.

## 13. Bewusst nicht kanonisierte Reserve- und Auditbegriffe

Nicht als feste Raumelemente gefuehrt werden:

- Portierbarkeit
- Evidenzdisziplin
- Antwortzeitangemessenheit
- Leistungsstabilitaet
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

## 14. Materialisierungsregel

Dieses Dokument ist repo-materialisierbar, weil es alleinstehend ist. Die konkrete Repo-Integration bleibt dennoch an eine separate Entscheidung gebunden:

1. Zielpfad bestimmen.
2. Artefaktrolle bestimmen.
3. Abgleich mit bestehender Repo-Governance.
4. Review- oder Commit-Verfahren festlegen.
5. Rueckrollmoeglichkeit definieren.

## 15. Minimaler Begruendungsrahmen

Die folgenden Referenzklassen bleiben fuer Weiterentwicklung primaer:

- Terminologie- und Begriffsarbeit: ISO 704
- Architektur- und Systembeschreibung: ISO/IEC/IEEE 42010
- Wissensorganisation und semantische Relationen: SKOS
- Provenienzmodellierung: PROV-O
- Beobachtungs- und Sensormodellierung: SOSA/SSN
- LLM-Verhaltenspruefung und Evaluationsmethodik: behaviorale Tests, adversariale Pruefung und evaluator-kritische Pruefansaetze
- Selbstadaptive Systeme und governierte Evolvierbarkeit: Arbeiten zu selbstadaptiven Systemen und autonomer Systemsteuerung

Dieses Dokument setzt diese Referenzen nicht als vollstaendigen Literaturapparat, sondern als stabile Begruendungsklassen fuer spaetere Ausarbeitung.

## 16. Revisionsregel

Eine spaetere Revision dieses Dokuments ist nur zulaessig, wenn sie:

- Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung erneut expliziert,
- A, B und K getrennt behandelt,
- Folgeebenen nicht implizit zu Kernaxiomen aufwertet,
- Axiomrevisionen bis in Folgeebenen nachzieht,
- Konfliktlagen sichtbar macht,
- Deprekation statt stiller Entfernung nutzt,
- und die Materialisierungsregel erhaelt.

## 17. Schlussstatus

Dieses Grundlagendokument ist ein repo-materialisierbarer, aber weiter entwickelbarer Ausgangspunkt. Es ist kein Abschlussbericht, sondern ein kanonischer Grundlagenstand fuer spaetere Integration, Anwendung und kontrollierte Revision.
