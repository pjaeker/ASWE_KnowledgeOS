# ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V1

## Zweck
Diese Matrix liefert den vollstaendigen rekursiven Pruefstand fuer alle Elemente vom Kernaxiom bis zur operativen Regel und Kopplungsfolge.

## Legende
- Trennschaerfe: niedrig / mittel / hoch
- Evidenzstatus: primaere grobe Einordnung, nicht Vollzitierapparat
- Finale Entscheidung: beibehalten / enger fassen / umklassifizieren / neu aufnehmen / nicht fest fuehren

| Element | Ebene | Rueckbindung | Funktion | Trennschaerfe | Evidenzstatus | Nicht-Geltung / Grenzfall | Mehrfachableitung | Finale Entscheidung |
|---|---|---|---|---|---|---|---|---|
| A1 Ziel- und Geltungsbindung | Kernaxiom | — | Grundordnung fuer Scope-Bindung | hoch | hoch | triviale Kurzinteraktion abgeschwaecht | — | beibehalten |
| A2 Epistemische Trennung | Kernaxiom | — | Grundordnung fuer Rollenreinheit | hoch | hoch | informelle Kleinantworten abgeschwaecht | — | beibehalten |
| A3 Auditierbarkeit und Unsicherheitsmarkierung | Kernaxiom | — | Grundordnung fuer pruefbare Revision | hoch | mittel bis hoch | Niedrigrisiko-Kommunikation abgeschwaecht | — | beibehalten |
| A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht | Kernaxiom | — | Grundordnung fuer begrenzte Delegation | hoch | mittel | Einmalantworten ohne Folgewirkung | — | beibehalten |
| A5 Verhaltenstestbarkeit | Kernaxiom | — | Grundordnung fuer explizite Bewertung | hoch | hoch | fruehe heuristische Ideation abgeschwaecht | — | beibehalten |
| B1 Terminologische Primaerordnung | Kernaxiom | — | Grundordnung fuer Begriff vor Benennung | hoch | hoch | informelle Platzhalter abgeschwaecht | — | beibehalten |
| B2 Ontologische Trennschaerfe | Kernaxiom | — | Grundordnung gegen Klassenkollaps | hoch | hoch | informelle Kurznotizen abgeschwaecht | — | beibehalten |
| B3 Provenienz und Referenzierbarkeit | Kernaxiom | — | Grundordnung fuer Anker und Herkunft | hoch | hoch | fluechtige Hilfsnotiz abgeschwaecht | — | beibehalten |
| B4 Pfad- und Schnittstellenexplizitheit | Kernaxiom | — | Grundordnung fuer explizite Uebergaenge | hoch | hoch | fruehe Vorerkundung abgeschwaecht | — | beibehalten |
| B5 Governierte Evolvierbarkeit | Kernaxiom | — | Grundordnung fuer veraenderbare, pruefbare Architektur | hoch | mittel bis hoch | reine Formalkorrektur abgeschwaecht | — | beibehalten |
| K1 Beobachtung-Aussage-Beleg | Kernaxiom | — | gemeinsame epistemische Mindestordnung | hoch | hoch | Kurzkommunikation abgeschwaecht | — | beibehalten |
| K2 Evaluation vor Operationalisierung | Kernaxiom | — | Vorrang von Bewertung vor Uebernahme | hoch | hoch | reversible Sandbox abgeschwaecht | — | beibehalten |
| K3 Spiegel-/Adapter-Asymmetrie | Kernaxiom | — | Schutz des semantischen Ursprungs | hoch | hoch | rein technische Anzeige abgeschwaecht | — | beibehalten |
| Explizitheit kritischer Annahmen | Designprinzip | A1,A2 | Voraussetzungen sichtbar machen | mittel | standardsetzend abgeleitet | nicht jeder triviale Austausch | mehrfach | beibehalten, enger fassen |
| regelgebundene Selbstkritik | Designprinzip | A3,A4 | Selbstkorrektur an Regeln binden | mittel | empirisch+abgeleitet | nicht jede Kreativinteraktion | mehrfach | beibehalten |
| adversariale Pruefbarkeit | Designprinzip | A5 | feindliche Eingaben pruefbar machen | hoch | empirisch | nicht fuer jeden Erkundungsschritt | scheinbar mehrfach | beibehalten |
| evaluator-kritische Testdisziplin | Designprinzip | A5 | Evaluatoren selbst pruefen | mittel | empirisch+lokal | nicht jeder Test evaluator-zentriert | teilweise mehrfach | beibehalten, enger fassen |
| definitorische Priorisierung | Designprinzip | B1 | Definition vor Benennung/Regelung | hoch | standardsetzend | informelle Platzhalter abgeschwaecht | eindeutig | beibehalten |
| Rollen- und Relationsreinheit | Designprinzip | B2 | Kategorien und Relationen sauber trennen | hoch | standardsetzend | informelle Kurznotizen abgeschwaecht | eindeutig | beibehalten |
| kontrollierte Kopplung | Designprinzip | B4,B5 | Kopplung explizit und begrenzt halten | hoch | standardsetzend+theoretisch | lose Ideenskizzen vor Vorstufe | mehrfach | beibehalten |
| driftwachsame Revisionsdisziplin | Designprinzip | B5,A3 | Aenderungen gegen Drift pruefen | mittel | theoretisch+lokal | Kleinkorrekturen mit geringer Wirkung | mehrfach | beibehalten, enger fassen |
| Verifikationsfaehigkeit | Designprinzip | B4,A5,K2 | pruefbare Uebergaenge und Zustaende | mittel bis hoch | standardsetzend+empirisch | fruehe Vorerkundung abgeschwaecht | mehrfach | beibehalten |
| epistemische Staffelung | Designprinzip | K1,A2 | Rollen epistemisch staffeln | hoch | standardsetzend | alltaegliche Kurzkommunikation | eindeutig | beibehalten |
| Materialisierungsdisziplin | Designprinzip | K2,B4 | unpruefte Uebernahme verhindern | hoch | standardsetzend+abgeleitet | reversible Sandbox-Vorstufe | komplementaer | beibehalten |
| keine konkurrierende Wahrheitsquelle | Designprinzip | K3,B2 | Spiegel nicht semantisch aufwerten | hoch | standardsetzend+lokal | rein technische Anzeige | mehrfach | beibehalten |
| Ausnahmebehandlungs-Explizitheit | Designprinzip | A1,A2,K2 indirekt | Ausnahmen sichtbar und regelgebunden gestalten | mittel bis hoch | abgeleitet | folgenarme Einzelfaelle abgeschwaecht | teilweise mehrfach | neu aufnehmen |
| Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision | Designprinzip | B5,Kopplungsfolgen | Axiomrevision zwingt Folgeebenen-Nachzug | hoch | abgeleitet | keine semantische Aenderung | teilweise mehrfach | neu aufnehmen |
| Driftresistenz | Qualitaetsattribut | A1,A3,B5 | unerwuenschte Abweichung begrenzen | mittel | theoretisch+empirisch indirekt | lokale Exploration darf variieren | teils redundant | beibehalten, enger fassen |
| Kontrollierbarkeit (enge Fassung) | Qualitaetsattribut | A4,B4 | Eingriffe und Steuerung moeglich halten | mittel | standardsetzend abgeleitet | Niedrigrisikointeraktion | mehrfach | beibehalten, enger fassen |
| Reproduzierbarkeit | Qualitaetsattribut | A5,K2 | Ergebnisse pruefbar wiederholen | hoch | empirisch+abgeleitet | heuristische Ideation | mehrfach | beibehalten |
| argumentative Nachvollziehbarkeit | Qualitaetsattribut | A2,A3 | Begruendungsgaenge rekonstruierbar machen | hoch | standardsetzend+lokal | sehr knappe Alltagsantworten | mehrfach | beibehalten |
| Wiederauffindbarkeit | Qualitaetsattribut | B3,B4 | Inhalte spaeter finden | mittel bis hoch | standardsetzend abgeleitet | fluechtige Hilfsnotizen | komplementaer | beibehalten |
| Persistenz (enge Fassung) | Qualitaetsattribut | B3 indirekt | Inhalte ueber Zeit verfuegbar halten | mittel | theoretisch/lokal | nicht jede Hilfsnotiz persistenzpflichtig | teilweise mehrfach | beibehalten, enger fassen |
| Reparierbarkeit | Qualitaetsattribut | B5,B4 | lokale Korrektur ohne Gesamtschaden | mittel | theoretisch | manche globale Aenderungen invasiv | mehrfach | beibehalten |
| Wartbarkeit | Qualitaetsattribut | B4,B5 | fortlaufende Aenderung beherrschbar machen | mittel | theoretisch | Kleinstartefakte mit geringer Dauer | mehrfach | beibehalten |
| duale Lesbarkeit (enge Fassung) | Qualitaetsattribut | B3,B4,K3 | fuer Mensch und Maschine anschlussfaehig | niedrig bis mittel | lokal+theoretisch | geringe Automationsdichte | konflikttraechtig | beibehalten, enger fassen |
| Wahrheitsquellenstabilitaet (enge Fassung) | Qualitaetsattribut | K3,B2,B3 | semantischen Ursprung stabil halten | mittel | standardsetzend+lokal | temporaere Mirrors ohne Vorrang | komplementaer | beibehalten, enger fassen |
| Ableitungsnachvollziehbarkeit | Qualitaetsattribut | Ableitungsgeschlossenheit indirekt | Ableitung von Folgeelementen nachvollziehbar halten | mittel bis hoch | abgeleitet | geringe Komplexitaet reduziert Bedarf | — | neu aufnehmen |
| Vererbungskonsistenz | Qualitaetsattribut | Vererbungslogik indirekt | Nicht-Geltung und Spannungen konsistent vererben | mittel bis hoch | abgeleitet | einmalige Sonderfaelle | — | neu aufnehmen |
| Rueckrollbarkeit | Qualitaetsattribut | B5,B4 indirekt | Ruecknahme faehig halten | mittel | theoretisch | irreversible externe Wirkungen | — | neu aufnehmen |
| Ausfuehrungseffizienz | Qualitaetsattribut | nachgeordnet aus operativer Ordnung | ressourcenangemessene Ausfuehrung | mittel | lokal/abgeleitet | nie Vorrang vor Leitplanken | — | neu aufnehmen, nachgeordnet |
| Zielbild vor Ausfuehrung explizieren | Operative Regel | A1 | Scope vorher binden | hoch | abgeleitet+lokal | triviale Kurzinteraktion | eindeutig | beibehalten |
| Aussagearten trennen | Operative Regel | A2,K1 | epistemische Rollen auseinanderhalten | hoch | standardsetzend abgeleitet | informelle Kleinantworten | mehrfach | beibehalten |
| Unsicherheiten markieren | Operative Regel | A3 | Unsicherheit explizit machen | hoch | empirisch+abgeleitet | Niedrigrisiko-Smalltalk | eindeutig | beibehalten |
| kleinsten sicheren naechsten Schritt waehlen | Operative Regel | A4 | Entgrenzung vermeiden | hoch | theoretisch+lokal | Einmalantwort ohne Folgewirkung | eindeutig | beibehalten |
| Gegenbeispiele und Testfaelle anfuehren | Operative Regel | A5 | Verhalten pruefbar machen | hoch | empirisch | fruehe offene Ideation | eindeutig | beibehalten |
| Begriff vor Benennung, Benennung vor Regelung | Operative Regel | B1 | terminologische Reihenfolge erzwingen | hoch | standardsetzend | Platzhalter in Skizzenphase | eindeutig | beibehalten |
| Herkunft und Referenzen mitfuehren | Operative Regel | B3 | Provenienz sichern | hoch | standardsetzend | fluechtige lokale Notiz | eindeutig | beibehalten |
| Pfadwechsel nur ueber explizite Schnittstellen | Operative Regel | B4 | Kurzschlussuebergaenge vermeiden | hoch | standardsetzend | fruehe Vorerkundung | eindeutig | beibehalten |
| Aenderungen gegen Drift und Revisionsfaehigkeit pruefen | Operative Regel | B5,A3 | Revision absichern | mittel | theoretisch+lokal | reine Formalkorrektur | mehrfach | beibehalten, enger fassen |
| Bewertung vor Materialisierung | Operative Regel | K2 | Uebernahme erst nach Pruefung | hoch | standardsetzend | reversible Sandbox | eindeutig | beibehalten |
| Spiegel und Adapter nicht als semantischen Ursprung behandeln | Operative Regel | K3,B2 | Wahrheitsquelle stabil halten | hoch | standardsetzend+lokal | rein technische Anzeige | mehrfach | beibehalten |
| Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen | Operative Regel | K2,K3,B4 | Kopplungslogik sichtbar machen | mittel bis hoch | abgeleitet | lose heuristische Analogie | mehrfach | beibehalten |
| Deprekation statt stiller Entfernung markieren | Operative Regel | Revisionsfolgen indirekt | Aenderungsprovenienz sichern | hoch | abgeleitet | rein lokale Arbeitsnotiz | — | neu aufnehmen |
| Prueftiefe an Tragweite und Reversibilitaet ausrichten | Operative Regel | A4,K2 | Prueftiefe proportional steuern | hoch | abgeleitet | geringe Tragweite und hohe Reversibilitaet | — | neu aufnehmen |
| Scope-Bindung wirkt bis in Materialisierung | Kopplungsfolge | A1+K2 | Scope ueber Phasen forttragen | hoch | abgeleitet | fruehe reversible Skizze | — | beibehalten |
| epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal | Kopplungsfolge | A2+K1 | gemeinsame Mindestordnung | hoch | standardsetzend | informelle Kurzkommunikation | — | beibehalten |
| Auditierbarkeit braucht Provenienz und Referenzierbarkeit | Kopplungsfolge | A3+B3 | Audit an Herkunft koppeln | hoch | standardsetzend+abgeleitet | fluide Vorstufe | — | beibehalten |
| rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik | Kopplungsfolge | A4+B4 | Begrenzung mit Uebergangslogik koppeln | hoch | theoretisch+abgeleitet | Einmalantworten | — | beibehalten |
| Testbarkeit muss vor operative Uebernahme treten | Kopplungsfolge | A5+K2 | Testpflicht vor Uebernahme | hoch | empirisch+abgeleitet | reversible Sandbox | — | beibehalten |
| ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie | Kopplungsfolge | B2+K3 | ontologischen Unterbau explizit machen | mittel bis hoch | standardsetzend+abgeleitet | flache Anzeige | — | beibehalten |
| governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik | Kopplungsfolge | B5+A4 | Lernfaehigkeit an Begrenzung koppeln | mittel bis hoch | theoretisch+abgeleitet | Kleinkorrektur ohne Lernanteil | — | beibehalten |
| Axiomrevision erzwingt Folgeebenen-Nachzug | Kopplungsfolge | B5+Nachzugsdisziplin | Aenderung propagiert in Folgeebenen | hoch | abgeleitet | rein sprachliche Korrektur | — | neu aufnehmen |

## Gesamtbefund
- Der Kernaxiomenraum ist stabil und nicht weiter zu expandieren.
- Der Folgeebenenraum ist gross genug und wurde primar ueber Verengung, Umklassifikation und selektive Neuaufnahme verbessert.
- Leistungs- und Geschwindigkeitsaspekte erscheinen nur nachgeordnet als Ausfuehrungseffizienz und Prueftiefenangemessenheit.
- Keine direkte Repo-Materialisierung folgt aus dieser Matrix.