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
