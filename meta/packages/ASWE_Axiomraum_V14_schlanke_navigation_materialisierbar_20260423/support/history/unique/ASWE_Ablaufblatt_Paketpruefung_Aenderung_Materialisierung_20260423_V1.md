# ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1

## 1. Zweck
Dieses Dokument schliesst die fehlenden paketinternen Ablaeufe.

## 2. Ablauf paketinterne Abschlusspruefung
1. Abschlussdokument lesen
2. Rekursive Pruefmatrix gegen Abschlussdokument spiegeln
3. Deprekations- und Umschichtungslog gegen beide Dokumente spiegeln
4. Abschlusscheckliste vollstaendig durchlaufen
5. Adapterkonzept gegen implizite Materialisierungsdrift pruefen
6. Pro-Model-Schleife ausfuehren
7. Entscheiden: freigabereif / minimaler Korrekturabschluss noetig / noch nicht freigabereif

## 3. Ablauf Aenderungsreihenfolge
Bei jeder Aenderung gilt diese Reihenfolge:
1. Abschlussdokument
2. Rekursive Pruefmatrix
3. Deprekations- und Umschichtungslog
4. Abschlusscheckliste
5. Pro-Model-Schleife erneut

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
