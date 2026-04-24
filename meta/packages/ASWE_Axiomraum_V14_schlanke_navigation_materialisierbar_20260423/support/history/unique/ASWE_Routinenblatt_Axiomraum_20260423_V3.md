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
