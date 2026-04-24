# ASWE_Rohdatenkorpus_Alle_Verfuegbaren_Dokumente_20260423_V1
## Zweck
Dieses Dokument konsolidiert alle in der aktuellen Arbeitsumgebung verfuegbaren rohen Markdown-Dokumente und Markdown-Inhalte aus Paket-ZIP-Dateien. Jeder Abschnitt enthaelt Provenienzmetadaten.

---

## RAW_RECORD_001: ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md`
- sha256: `dd4a62b6c994b4901c42a07b53dd727263d70f4d57d16c76126e45fcb8cef30d`
- chars: 1332
- approx_tokens: 333

```markdown
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

```

---

## RAW_RECORD_002: ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md`
- sha256: `edb81ae0d644d7ce74e4c09429e30e8c962f5deae7dd23b8cb4fb6d386c7258f`
- chars: 1709
- approx_tokens: 428

```markdown
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

```

---

## RAW_RECORD_003: ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2.md`
- sha256: `7ae13d7a134b2c547480145729506477c8d16a7e95d842d9eb66876b402252f5`
- chars: 4389
- approx_tokens: 1098

```markdown
# ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2

## 1. Zweck
Dieses Dokument ist die abschliessende Selbstverbesserungsschleife fuer ein starkes Modell im Pro-Kontext. Es dient nicht der offenen Weiterentwicklung, sondern der finalen, rekursiven Pruefung des Abschlussstandes.

## 2. Pflichtdokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V2.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V1.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md`

## 3. Harte Leitplanken
- Nicht neue Kernaxiome sammeln.
- Nicht neue offene Verbesserungskaskaden erzeugen.
- Nicht direkte Repo-Integration vorschlagen.
- Nicht Leistungs- oder Geschwindigkeitslogik ueber den Zielbildkern stellen.
- Keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen.
- Nur echte Abschlussmaengel markieren.

## 4. Direktprompt fuer das Pro-Modell

``\`text
Analysiere das vorliegende Abschlusspaket als finale Selbstverbesserungsschleife.

Pflichtdokumente:
- ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md
- ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md
- ASWE_Deprekations_Umschichtungslog_20260423_V2.md
- ASWE_Routinenblatt_Axiomraum_20260423_V1.md
- ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md
- ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md
- ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md

Ziel:
Nicht neue Kernaxiome oder offene Verbesserungskaskaden erzeugen, sondern den Abschlussstand final pruefen und nur echte verbleibende Abschlussmaengel markieren.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bisherigen Leitplanken bindend.

PHASE 1 – ABSCHLUSSKONSISTENZ
- Pruefe, ob das Abschlussdokument in sich widerspruchsfrei ist.
- Pruefe, ob Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen sauber getrennt bleiben.
- Pruefe, ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet gefuehrt werden.

PHASE 2 – REKURSIVE VOLLSTAENDIGKEITSPRUEFUNG
- Pruefe anhand der rekursiven Pruefmatrix, ob fuer alle Elemente von Kernaxiom bis operative Regel mindestens hinreichend vorliegen:
  - Funktion
  - Rueckbindung
  - Trennschaerfe
  - Ebenenangemessenheit
  - Evidenzstatus
  - Nicht-Geltung
  - Konfliktlage
  - Mehrfachableitung
  - Revisionsfolgen
  - finale Entscheidung
- Markiere nur echte Luecken.

PHASE 3 – SPIEGELUNG MIT DEM DEPREKATIONS- UND UMSCHICHTUNGSLOG
- Pruefe, ob alle Umklassifikationen, Streichungen, Verengungen und Neuaufnahmen konsistent zwischen Abschlussdokument und Log gespiegelt sind.
- Markiere jede Inkonsistenz explizit.

PHASE 4 – ROUTINEN- UND ABLAUFEINHALTUNG
- Pruefe, ob Routinenblatt, Ablaufblatt und Abschlusscheckliste gemeinsam den Paketstand voll abdecken.
- Markiere fehlende oder nicht eingehaltene Routinen.

PHASE 5 – KEINE FALSCHE REPO-INTEGRATION
- Pruefe, ob das Adapterkonzept konsequent verhindert, dass aus dem Abschlusspaket direkt Repo-Materialisierung oder SSOT-Umschreibung abgeleitet wird.
- Markiere nur echte Restfehler.

PHASE 6 – VERBLEIBENDE ABSCHLUSSMAENGEL
- Liste nur Maengel, die fuer den Abschluss unverzichtbar sind.
- Trenne:
  - Muss vor Abschluss korrigiert werden
  - kann bewusst als spaetere Weiterentwicklung offen bleiben

PHASE 7 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich
- Wenn ein Korrekturpaket noetig ist, gib nur den kleinsten moeglichen Korrekturauftrag an.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Abschlusspruefung_ProModel_20260423_V1.md
``\`

## 5. Schlussregel
Diese Schleife ist die letzte offene Selbstverbesserungsschleife dieses Pakets. Jeder darueber hinausgehende Schritt ist entweder minimaler Korrekturabschluss oder ein neuer, separat begruendeter Arbeitsstrang.

```

---

## RAW_RECORD_004: ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3.md`
- sha256: `3e7c9ac92266e5f7cb98a4ba88da65ca42f3a398ddea6fa0fbc270ec1ddd83c3`
- chars: 4858
- approx_tokens: 1215

```markdown
# ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3

## 1. Zweck
Dieses Dokument ist die abschliessende Selbstverbesserungsschleife fuer ein starkes Modell im Pro-Kontext. Es dient nicht der offenen Weiterentwicklung, sondern der finalen, rekursiven Pruefung des Korrekturabschlusspakets.

## 2. Pflichtdokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V3.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V2.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md`
8. `ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md`

## 3. Harte Leitplanken
- Nicht neue Kernaxiome sammeln.
- Nicht neue offene Verbesserungskaskaden erzeugen.
- Nicht direkte Repo-Integration vorschlagen.
- Nicht Leistungs- oder Geschwindigkeitslogik ueber den Zielbildkern stellen.
- Keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen.
- Nur echte Abschlussmaengel markieren.

## 4. Direktprompt fuer das Pro-Modell

``\`text
Analysiere das vorliegende Abschlusspaket als finale Selbstverbesserungsschleife.

Pflichtdokumente:
- ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md
- ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md
- ASWE_Deprekations_Umschichtungslog_20260423_V3.md
- ASWE_Routinenblatt_Axiomraum_20260423_V2.md
- ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md
- ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md
- ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md
- ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md

Ziel:
Nicht neue Kernaxiome oder offene Verbesserungskaskaden erzeugen, sondern den Abschlussstand final pruefen und nur echte verbleibende Abschlussmaengel markieren.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bisherigen Leitplanken bindend.

PHASE 1 – ABSCHLUSSKONSISTENZ
- Pruefe, ob das Abschlussdokument in sich widerspruchsfrei ist.
- Pruefe, ob Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen sauber getrennt bleiben.
- Pruefe, ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet gefuehrt werden.

PHASE 2 – REKURSIVE VOLLSTAENDIGKEITSPRUEFUNG
- Pruefe anhand der rekursiven Pruefmatrix, ob fuer alle Elemente von Kernaxiom bis operative Regel mindestens hinreichend vorliegen:
  - Funktion
  - Rueckbindung
  - Trennschaerfe
  - Ebenenangemessenheit
  - Evidenzstatus
  - Quellenrolle
  - Nicht-Geltung
  - vererbte Nicht-Geltung
  - Spannungen
  - vererbte Spannungen
  - Konfliktlage
  - Mehrfachableitung
  - Typ Mehrfachableitung
  - Redundanzstatus
  - Orthogonalitaet
  - Verwaisungsstatus
  - Kollapstest / Aufwertung
  - Unterordnungstest
  - Leistungs- / Geschwindigkeitsgrenze
  - Revisionsfolgen
  - finale Entscheidung
- Markiere nur echte Luecken.

PHASE 3 – SPIEGELUNG MIT DEM DEPREKATIONS- UND UMSCHICHTUNGSLOG
- Pruefe, ob alle Umklassifikationen, Streichungen, Verengungen und Neuaufnahmen konsistent zwischen Abschlussdokument und Log gespiegelt sind.
- Markiere jede Inkonsistenz explizit.

PHASE 4 – ROUTINEN- UND ABLAUFEINHALTUNG
- Pruefe, ob Routinenblatt, Ablaufblatt und Abschlusscheckliste gemeinsam den Paketstand voll abdecken.
- Pruefe insbesondere, ob Routinen und Direktprompt den Matrixstandard explizit spiegeln.
- Markiere fehlende oder nicht eingehaltene Routinen.

PHASE 5 – KEINE FALSCHE REPO-INTEGRATION
- Pruefe, ob das Adapterkonzept konsequent verhindert, dass aus dem Abschlusspaket direkt Repo-Materialisierung oder SSOT-Umschreibung abgeleitet wird.
- Markiere nur echte Restfehler.

PHASE 6 – VERBLEIBENDE ABSCHLUSSMAENGEL
- Liste nur Maengel, die fuer den Abschluss unverzichtbar sind.
- Trenne:
  - Muss vor Abschluss korrigiert werden
  - kann bewusst als spaetere Weiterentwicklung offen bleiben

PHASE 7 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich
- Wenn ein Korrekturpaket noetig ist, gib nur den kleinsten moeglichen Korrekturauftrag an.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Abschlusspruefung_ProModel_20260423_V2.md
``\`

## 5. Schlussregel
Diese Schleife ist die letzte offene Selbstverbesserungsschleife dieses Pakets. Jeder darueber hinausgehende Schritt ist entweder minimaler Korrekturabschluss oder ein neuer, separat begruendeter Arbeitsstrang.

```

---

## RAW_RECORD_005: ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md`
- sha256: `79ef860b7118f65177260325961c7e6d9342612810d1fba1e844f3b8e088a914`
- chars: 1774
- approx_tokens: 444

```markdown
# ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1

## Zweck
Diese Checkliste schliesst die globalen Metaqualitaetsachsen des Pakets.

## 1. Vollstaendigkeit
- Sind alle Kernaxiome explizit gelistet?
- Sind alle final zugelassenen Folgeelemente gelistet?
- Sind Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet enthalten?
- Sind offene Reserve- und Auditbegriffe explizit ausgelagert?

## 2. Saettigung
- Wurde weitere breite Expansion gestoppt?
- Werden neue Kandidaten nur noch ueber die Routine Neuaufnahme zugelassen?

## 3. Redundanzarmut / Minimalitaet
- Gibt es doppelte Folgeelemente?
- Wurden absorbierte Begriffe entfernt oder deklassiert?
- Sind Sammelbegriffe verengt worden?

## 4. Widerspruchsfreiheit / Konsistenz
- Widersprechen Abschlussdokument, Matrix und Deprekationslog einander?
- Wurden konflikttraechtige Mehrfachableitungen markiert?

## 5. Orthogonalitaet
- Sind Designprinzipien, Qualitaetsattribute und Regeln funktional unterscheidbar?
- Sind Reservebegriffe nicht ungeprueft in den Raum gerutscht?

## 6. Ableitungsgeschlossenheit
- Hat jedes Folgeelement eine explizite Rueckbindung?
- Sind indirekte Rueckbindungen expliziert oder entschieden?

## 7. Verwaisung
- Gibt es verwaiste Begriffe?
- Gibt es Elemente ohne klare finale Entscheidung?

## 8. Rekursive Standardeinhaltung
- Wurden die Standards von Kernaxiom bis operative Regel angewandt?
- Sind Ebenenangemessenheit, Konfliktlage, Revisionsfolgen und Leistungsgrenzen enthalten?

## 9. Repo- und Materialisierungsschutz
- Verhindert das Paket direkte Materialisierung?
- Ist Adapterlogik statt Direktintegration gesetzt?

## 10. Abschlussentscheidung
- abschlusstauglich ohne weitere Aenderung
- abschlusstauglich mit minimalem Korrekturpaket
- noch nicht abschlusstauglich

```

---

## RAW_RECORD_006: ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md`
- sha256: `56c76685ff4111d542887596384932f30101a6c3c993815bd652f550e55a1ea7`
- chars: 1849
- approx_tokens: 463

```markdown
# ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2

## Zweck
Diese Checkliste schliesst die globalen Metaqualitaetsachsen des Pakets.

## 1. Vollstaendigkeit
- Sind alle Kernaxiome explizit gelistet?
- Sind alle final zugelassenen Folgeelemente gelistet?
- Sind Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet enthalten?
- Sind offene Reserve- und Auditbegriffe explizit ausgelagert?

## 2. Saettigung
- Wurde weitere breite Expansion gestoppt?
- Werden neue Kandidaten nur noch ueber die Routine Neuaufnahme zugelassen?

## 3. Redundanzarmut / Minimalitaet
- Gibt es doppelte Folgeelemente?
- Wurden absorbierte Begriffe entfernt oder deklassiert?
- Sind Sammelbegriffe verengt worden?

## 4. Widerspruchsfreiheit / Konsistenz
- Widersprechen Abschlussdokument, Matrix und Deprekationslog einander?
- Wurden konflikttraechtige Mehrfachableitungen markiert?

## 5. Orthogonalitaet
- Sind Designprinzipien, Qualitaetsattribute und Regeln funktional unterscheidbar?
- Sind Reservebegriffe nicht ungeprueft in den Raum gerutscht?

## 6. Ableitungsgeschlossenheit
- Hat jedes Folgeelement eine explizite Rueckbindung?
- Sind indirekte Rueckbindungen expliziert oder entschieden?

## 7. Verwaisung
- Gibt es verwaiste Begriffe?
- Gibt es Elemente ohne klare finale Entscheidung?

## 8. Rekursive Standardeinhaltung
- Wurden die Standards von Kernaxiom bis operative Regel angewandt?
- Sind Ebenenangemessenheit, Konfliktlage, Revisionsfolgen und Leistungsgrenzen enthalten?
- Deckt der Pro-Model-Direktprompt die bindenden Matrixachsen explizit ab?

## 9. Repo- und Materialisierungsschutz
- Verhindert das Paket direkte Materialisierung?
- Ist Adapterlogik statt Direktintegration gesetzt?

## 10. Abschlussentscheidung
- abschlusstauglich ohne weitere Aenderung
- abschlusstauglich mit minimalem Korrekturpaket
- noch nicht abschlusstauglich

```

---

## RAW_RECORD_007: ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md`
- sha256: `c3ebaa8c5d78bcd30331666ab9024de12342915e8fe8ac82649bb031740513bc`
- chars: 5561
- approx_tokens: 1391

```markdown
# ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2

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

```

---

## RAW_RECORD_008: ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md`
- sha256: `c380b676ad33f60f5d38b6b347caa3d198566ff927724e2d26c7afd7f248f287`
- chars: 5561
- approx_tokens: 1391

```markdown
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

```

---

## RAW_RECORD_009: ASWE_Abschlusspaket_README_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlusspaket_README_20260423_V2.md`
- sha256: `807bc18ec1114b8c8c8dda1d42e31e988760572c40eff0d6d1373bf2c5a84b30`
- chars: 1895
- approx_tokens: 474

```markdown
# ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2

## Zweck
Diese Nachruestfassung schliesst die im vorherigen Abschlusspaket identifizierten Luecken:
- fehlende Vollabdeckung aller Pruefungsparameter,
- fehlende Routinen fuer Neuaufnahme, Umklassifizierung, Nachzug und Abschlussfreigabe,
- fehlende explizite Ablaufsteuerung fuer Paketpruefung, Aenderung und spaetere Materialisierungsvorpruefung,
- fehlende globale Abschluss-Checkliste.

## Paketlogik
Das Paket ist in sich geschlossen und trennt:
1. kanonischen Endstand
2. rekursive Vollpruefung aller Elemente
3. Deprekations- und Umschichtungsprovenienz
4. Routinen
5. Ablaufsteuerung
6. globale Abschluss-Checkliste
7. Repo-/Materialisierungs-Adapterkonzept
8. abschliessende Selbstverbesserungsschleife fuer ein Pro-Modell

## Enthaltene Dokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V2.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V1.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md`
8. `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2.md`

## Harte Entscheidungen
- Keine weitere breite Expansion des Kernaxiomenraums.
- Folgeebenen werden primaer konsolidiert und nur selektiv erweitert.
- Leistungs- und Geschwindigkeitsaspekte bleiben nachgeordnet.
- Keine implizite Aufwertung von Folgeelementen zu Kernaxiomen.
- Keine direkte Repo-Materialisierung aus diesem Paket heraus.

## Paketinterne Lesereihenfolge
1. Abschlussdokument
2. Rekursive Pruefmatrix
3. Deprekations- und Umschichtungslog
4. Routinenblatt
5. Ablaufblatt
6. Abschlusscheckliste
7. Adapterkonzept
8. Pro-Model-Schleife

```

---

## RAW_RECORD_010: ASWE_Abschlusspaket_README_20260423_V3.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlusspaket_README_20260423_V3.md`
- sha256: `f0b5a093631405919b0bb1a70e34f7f96751ee1b6e9a4011533c15ccd59f4014`
- chars: 2036
- approx_tokens: 509

```markdown
# ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3

## Zweck
Dieses Paket ist kein weiteres offenes Verbesserungsprojekt, sondern der Korrekturabschluss des Nachruestpakets V2.

Es schliesst die in der finalen Abschlusspruefung identifizierten Restmaengel:
- Spiegelungsluecke im Deprekations- und Umschichtungslog
- unvollstaendige Matrixdeckung im Pro-Model-Direktprompt
- unterabgedeckte Neuaufnahmeroutine
- unterabgedeckte Umklassifizierungsroutine

## Paketlogik
Das Paket bleibt in sich geschlossen und trennt:
1. kanonischen Endstand
2. rekursive Vollpruefung aller Elemente
3. Deprekations- und Umschichtungsprovenienz
4. Routinen
5. Ablaufsteuerung
6. globale Abschluss-Checkliste
7. Repo-/Materialisierungs-Adapterkonzept
8. abschliessende Selbstverbesserungsschleife fuer ein Pro-Modell
9. Kritikableitung und Paketdelta

## Enthaltene Dokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V3.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V2.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md`
8. `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3.md`
9. `ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md`

## Harte Entscheidungen
- Keine weitere breite Expansion des Kernaxiomenraums.
- Folgeebenen werden primaer konsolidiert und nur selektiv erweitert.
- Leistungs- und Geschwindigkeitsaspekte bleiben nachgeordnet.
- Keine implizite Aufwertung von Folgeelementen zu Kernaxiomen.
- Keine direkte Repo-Materialisierung aus diesem Paket heraus.

## Paketinterne Lesereihenfolge
1. Kritikableitung und Paketdelta
2. Abschlussdokument
3. Rekursive Pruefmatrix
4. Deprekations- und Umschichtungslog
5. Routinenblatt
6. Ablaufblatt
7. Abschlusscheckliste
8. Adapterkonzept
9. Pro-Model-Schleife

```

---

## RAW_RECORD_011: ASWE_Abschlusspruefung_ProModel_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlusspruefung_ProModel_20260423_V1.md`
- sha256: `4615574617b3aa44d408a9f796be55bd98a95ee2cd8955474e537e5be22ce099`
- chars: 11795
- approx_tokens: 2949

```markdown
# ASWE_Abschlusspruefung_ProModel_20260423_V1

## 1. Voranalyse

### Zielbild
Ziel dieser abschliessenden Selbstverbesserungsschleife ist **nicht** die Erzeugung neuer Kernaxiome oder einer weiteren offenen Verbesserungskaskade, sondern die finale Pruefung des vorliegenden Abschlusspakets auf:

- interne Konsistenz,
- rekursive Vollstaendigkeit der Pruefungen,
- saubere Spiegelung von Abschlussstand und Deprekationslog,
- Vollabdeckung von Routinen, Ablaeufen und Checklisten,
- sowie den Ausschluss falscher Repo-Integration oder verfruehter Materialisierung.

### Gegenstand
Pflichtgegenstand sind:

1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V2.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V1.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md`

### Geltungsbereich
Diese Pruefung gilt nur fuer die **Abschlusstauglichkeit des Pakets als konzeptioneller Paketstand**.

### Nicht-Geltung
Nicht Gegenstand sind:
- neue breite Kernaxiomen-Erweiterungen,
- neue offene Verbesserungsschleifen,
- direkte Repo-Integration,
- direkte SSOT-Umschreibung,
- direkte Rollen- oder Runtime-Materialisierung.

### Epistemischer Status

#### Beobachtung
Das Nachruestpaket V2 hat die wesentlichen Luecken des Vorpakets bereits stark reduziert:
- kanonischer Endstand,
- rekursive Vollpruefmatrix,
- Deprekations- und Umschichtungslog,
- Routinenblatt,
- Ablaufblatt,
- Abschlusscheckliste,
- Adapterkonzept
liegen alle vor.

#### Aussage
Das Paket ist **nahe an Abschlusstauglichkeit**, aber noch nicht vollkommen fehlerfrei.

#### Hypothese
Die verbleibenden Maengel sind klein genug fuer ein **minimales Korrekturpaket**, nicht fuer eine neue offene Verbesserungsphase.

#### Kriterium
Die Pruefung ist nur dann erfolgreich, wenn:
- nur echte Abschlussmaengel markiert werden,
- die Leitplanken unversehrt bleiben,
- keine zweite Regelquelle vorgeschlagen wird,
- und das Ergebnis klar zwischen sofort zu korrigierenden und spaeter offen lassbaren Punkten trennt.

#### Empfehlung
Das Paket sollte nur dann weiter veraendert werden, wenn echte Spiegelungs-, Vollabdeckungs- oder Routinenluecken bestehen.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: Abschluss- und Paketpruefungslogik
- noch nicht: lokale Implementierung

## 2. Abschlusskonsistenz

### Beobachtung
Das Abschlussdokument trennt sauber:
- Kernaxiome,
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen,
- sowie nachgeordnete Leistungs- und Geschwindigkeitsaspekte.

Leitplanken und Nicht-Geltung bleiben stabil:
- keine neue breite Expansion,
- keine direkte Materialisierung,
- Leistungslogik nur nachgeordnet.

### Befund
Die **innere Konsistenz des Abschlussdokuments ist hoch**.  
Es ist keine harte definitorische Kollision zwischen Kernaxiomen, Folgeebenen und Leistungslogik sichtbar.

### Pruefung der Ebenentrennung
Die Trennung zwischen:
- Kernaxiom,
- Designprinzip,
- Qualitaetsattribut,
- operativer Regel,
- Kopplungsfolge
bleibt sauber genug.

### Pruefung der Leistungs- und Geschwindigkeitsaspekte
Die nachgeordneten Formen:
- Ausfuehrungseffizienz,
- Prueftiefenangemessenheit
werden explizit zugelassen, ohne den Zielbildkern zu steuern.

### Urteil
**Kein Abschlussmangel** auf Ebene des kanonischen Abschlussdokuments.

---

## 3. Rekursive Vollstaendigkeitspruefung

### Beobachtung
Die rekursive Pruefmatrix deckt fuer alle Elemente von Kernaxiom bis Kopplungsfolge explizit folgende Pflichtparameter ab:

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

### Befund
Die Matrix ist **vollstaendiger als die frueheren Zwischenstaende** und deckt die aktuellsten rekursiven Standards weitgehend ab.

### Echter Restpunkt
Die Matrix ist selbst **reichhaltig genug**, aber der paketinterne Direktprompt der Pro-Schleife prueft nicht alle dieser Matrixachsen ausdruecklich wieder. In Phase 2 des Direktprompts werden zwar Funktion, Rueckbindung, Trennschaerfe, Ebenenangemessenheit, Evidenzstatus, Nicht-Geltung, Konfliktlage, Mehrfachableitung, Revisionsfolgen und finale Entscheidung geprueft, aber nicht explizit:
- Quellenrolle,
- vererbte Nicht-Geltung,
- vererbte Spannungen,
- Redundanzstatus,
- Orthogonalitaet,
- Verwaisungsstatus,
- Kollapstest / Aufwertung,
- Unterordnungstest,
- Leistungs- / Geschwindigkeitsgrenze.

### Urteil
Die Matrix selbst ist **hinreichend vollstaendig**.  
Aber die **abschliessende Selbstpruefschleife prueft die Matrix noch nicht vollumfaenglich entlang aller enthaltenen Achsen**.

### Bewertung
Dies ist ein **echter, aber kleiner Abschlussmangel**.

---

## 4. Spiegelung von Abschlussdokument und Deprekationslog

### Beobachtung
Abschlussdokument und Deprekations-/Umschichtungslog stimmen weitgehend ueberein in Bezug auf:
- Umklassifizierung von Materialisierungsdisziplin,
- Umstellung von Deprekationsdisziplin auf operative Regel,
- Verengung von Kontrollierbarkeit, Persistenz, dualer Lesbarkeit, Wahrheitsquellenstabilitaet, driftwachsamer Revisionsdisziplin und evaluator-kritischer Testdisziplin,
- Entfernung von Portierbarkeit, Evidenzdisziplin, Antwortzeitangemessenheit und Leistungsstabilitaet,
- Aufnahme neuer finaler Folgeelemente.

### Echter Inkonsistenzpunkt
Im Abschlussdokument wird als finale Kopplungsfolge explizit gefuehrt:

- **Axiomrevision erzwingt Folgeebenen-Nachzug**

Dieser Eintrag erscheint jedoch **nicht** in der Aufnahmeliste des Deprekations- und Umschichtungslogs unter den neu aufgenommenen finalen Raumkandidaten.

### Urteil
Hier liegt eine **echte Spiegelungsluecke** vor.

### Bewertung
Dies ist ein **Muss-vor-Abschluss-korrigieren**-Punkt.

---

## 5. Routinen- und Ablaufeinhaltung

### Beobachtung
Das Paket enthaelt nun:
- eine Routine fuer Neuaufnahme,
- eine Routine fuer Umklassifizierung,
- eine Routine fuer Axiomrevision -> Folgeebenen-Nachzug,
- eine Routine fuer Abschlussfreigabe,
- eine Routine fuer minimalen Korrekturabschluss,
- ein Ablaufblatt fuer Paketpruefung, Aenderung und Materialisierungsvorpruefung,
- eine globale Abschlusscheckliste.

### Befund
Die Struktur ist stark und insgesamt ausreichend. Zwei kleine Luecken bleiben:

#### Luecke 1 – Neuaufnahmeroutine
Die Routine Neuaufnahme eines Folgeelements nennt:
- Ebenentest,
- Funktionsdefinition,
- Rueckbindung,
- Nicht-Geltung und Spannungen,
- Mehrfachableitung,
- Orthogonalitaet/Redundanz,
- Leistungsgrenze,
- Entscheidung.

Nicht explizit genannt sind:
- **Evidenzstatus**
- **Quellenrolle**
- **vererbte Nicht-Geltung**
- **vererbte Spannungen**
- **Verwaisungsstatus**

Diese Punkte existieren im Matrixstandard, fehlen aber in der Neuaufnahmeroutine als explizite Pruefschritte.

#### Luecke 2 – Umklassifizierungsroutine
Die Umklassifizierungsroutine fordert Rueckbindung, Nicht-Geltung, Spannungen und Revisionsfolgen, aber nicht ausdruecklich:
- **Evidenzstatus / Quellenrolle aktualisieren**
- **Leistungs- / Geschwindigkeitsgrenze neu pruefen**
- **Verwaisungsstatus neu pruefen**

### Ablaufblatt
Das Ablaufblatt ist im Kern tragfaehig. Kein echter Mangel. Es definiert:
- Paketpruefung,
- Aenderungsreihenfolge,
- Materialisierungsvorpruefung,
- Stoppregeln.

### Abschlusscheckliste
Die Abschlusscheckliste ist ebenfalls tragfaehig. Kein echter Mangel. Sie deckt die globalen Metaqualitaetsachsen plausibel ab.

### Urteil
Die Routinen sind **weitgehend ausreichend**, aber noch nicht voll auf den erweiterten Matrixstandard gespiegelt.

### Bewertung
Dies ist ein **echter, aber kleiner Abschlussmangel**.

---

## 6. Keine falsche Repo-Integration

### Beobachtung
Das Adapterkonzept V2 zieht eine harte Grenze:
- keine direkte SSOT-Umschreibung,
- keine direkte Writer-/Runtime-/Rollenmaterialisierung,
- keine direkte `.codex`-Materialisierung,
- keine direkte Einspeisung ohne Adaptervertrag.

Stattdessen fuehrt es:
- Zielobjektfrage,
- Aequivalenzfrage,
- Transformationsfrage,
- Autorisationsfrage,
- Rueckrollfrage,
- sowie minimal notwendige Zusatzartefakte fuer spaetere Integration.

### Befund
Das Dokument verhindert konsequent, dass aus dem Abschlusspaket selbst direkte Repo-Materialisierung abgeleitet wird.

### Urteil
**Kein Abschlussmangel**.

---

## 7. Verbleibende Abschlussmaengel

## Muss vor Abschluss korrigiert werden

### M1. Spiegelungsluecke im Deprekations- und Umschichtungslog
Die neu aufgenommene Kopplungsfolge
- **Axiomrevision erzwingt Folgeebenen-Nachzug**
muss im Deprekations- und Umschichtungslog explizit unter den Neuaufnahmen gespiegelt werden.

### M2. Pro-Model-Direktprompt deckt die volle Matrix noch nicht explizit ab
In Phase 2 des Direktprompts muessen zusaetzlich ausdruecklich aufgenommen werden:
- Quellenrolle
- vererbte Nicht-Geltung
- vererbte Spannungen
- Redundanzstatus
- Orthogonalitaet
- Verwaisungsstatus
- Kollapstest / Aufwertung
- Unterordnungstest
- Leistungs- / Geschwindigkeitsgrenze

### M3. Neuaufnahmeroutine auf Matrixstandard erweitern
Die Routine Neuaufnahme eines Folgeelements soll explizit ergaenzt werden um:
- Evidenzstatus
- Quellenrolle
- vererbte Nicht-Geltung
- vererbte Spannungen
- Verwaisungsstatus

### M4. Umklassifizierungsroutine auf Matrixstandard erweitern
Die Routine Umklassifizierung soll explizit ergaenzt werden um:
- Evidenzstatus / Quellenrolle aktualisieren
- Leistungs- / Geschwindigkeitsgrenze erneut pruefen
- Verwaisungsstatus erneut pruefen

## Kann bewusst als spaetere Weiterentwicklung offen bleiben

### O1. Feinerer Unterbau fuer evaluator-kritische Testdisziplin
Nicht abschlusskritisch.

### O2. Spaetere Neubewertung von dualer Lesbarkeit unter hoeherem Automationsgrad
Nicht abschlusskritisch.

### O3. Spaetere Ausdifferenzierung von Antwortzeit- oder Leistungsstabilitaetsaspekten
Nicht abschlusskritisch, solange diese Begriffe nicht kanonisiert werden.

---

## 8. Endurteil

### Entscheidung
**abschlusstauglich mit minimalem Korrekturpaket**

### Begruendung
Das Paket ist:
- in seiner Grundstruktur konsistent,
- rekursiv weitgehend vollstaendig,
- repo- und materialisierungsschutzseitig sauber,
- und als Abschlussstand fast tragfaehig.

Die verbleibenden Maengel sind:
- **klein**,
- **klar lokalisierbar**,
- und betreffen nicht den inhaltlichen Kernraum, sondern die **vollstaendige Spiegelung und letzte Normdeckung** der Routinen und der abschliessenden Selbstpruefung.

### Kleinster moeglicher Korrekturauftrag
1. Im Deprekations- und Umschichtungslog die neu aufgenommene Kopplungsfolge  
   **„Axiomrevision erzwingt Folgeebenen-Nachzug“** unter den Neuaufnahmen explizit ergaenzen.
2. Im Dokument `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2.md` den Direktprompt in Phase 2 um die fehlenden Matrixachsen erweitern:
   - Quellenrolle
   - vererbte Nicht-Geltung
   - vererbte Spannungen
   - Redundanzstatus
   - Orthogonalitaet
   - Verwaisungsstatus
   - Kollapstest / Aufwertung
   - Unterordnungstest
   - Leistungs- / Geschwindigkeitsgrenze
3. Im Routinenblatt die Routine Neuaufnahme und die Routine Umklassifizierung um die oben benannten fehlenden Punkte erweitern.

Nach diesen drei Korrekturen ist das Paket nach meiner Einschaetzung **abschlusstauglich ohne weitere substanzielle Aenderung**.

```

---

## RAW_RECORD_012: ASWE_Abschlusspruefung_ProModel_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Abschlusspruefung_ProModel_20260423_V2.md`
- sha256: `8939cafccc33945470b3bf00030a5f2170fe3b47e3c8f95048f030e979dc3991`
- chars: 11767
- approx_tokens: 2942

```markdown
# ASWE_Abschlusspruefung_ProModel_20260423_V2

## 1. Voranalyse

### Zielbild
Ziel dieser abschliessenden Selbstverbesserungsschleife ist **nicht** die Erzeugung neuer Kernaxiome oder einer weiteren offenen Verbesserungskaskade, sondern die finale Pruefung des vorliegenden Korrekturabschlusspakets V3 auf:

- interne Konsistenz,
- rekursive Vollstaendigkeit der Pruefungen,
- saubere Spiegelung von Abschlussstand und Deprekationslog,
- Vollabdeckung von Routinen, Ablaeufen und Checklisten,
- sowie den Ausschluss falscher Repo-Integration oder verfruehter Materialisierung.

### Gegenstand
Pflichtgegenstand sind:

1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V3.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V2.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md`
8. `ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md`

### Geltungsbereich
Diese Pruefung gilt nur fuer die **Abschlusstauglichkeit des Pakets als konzeptioneller Paketstand**.

### Nicht-Geltung
Nicht Gegenstand sind:
- neue breite Kernaxiomen-Erweiterungen,
- neue offene Verbesserungsschleifen,
- direkte Repo-Integration,
- direkte SSOT-Umschreibung,
- direkte Rollen- oder Runtime-Materialisierung.

### Epistemischer Status

#### Beobachtung
Das Korrekturabschlusspaket V3 hat die zuvor identifizierten Defizite weitgehend sichtbar und konsistent adressiert:
- Deprekationslog gespiegelt,
- Direktprompt deutlich erweitert,
- Routinenblatt nachgeruestet,
- Ablaufsteuerung nachgeschaerft.

#### Aussage
Das Paket ist **sehr nahe an voller Abschlusstauglichkeit**, aber es bleiben noch wenige, echte Restmaengel in der **vollstaendigen Rekursion des Matrixstandards in die Routinen- und Checklogik**.

#### Hypothese
Wenn diese Restmaengel durch ein sehr kleines Korrekturpaket geschlossen werden, ist der Paketstand ohne weitere substantielle Umbauten abschlusstauglich.

#### Kriterium
Die Pruefung ist nur dann erfolgreich, wenn:
- nur echte Abschlussmaengel markiert werden,
- bereits behobene Punkte nicht erneut aufgemacht werden,
- keine zweite Regelquelle vorgeschlagen wird,
- und das Ergebnis klar zwischen **Muss vor Abschluss korrigieren** und **spaetere Weiterentwicklung** trennt.

#### Empfehlung
Das Paket ist **nicht** fuer eine neue offene Schleife zu oeffnen; es braucht hoechstens noch einen sehr kleinen letzten Korrekturabschluss.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: Abschluss- und Paketpruefungslogik
- noch nicht: lokale Implementierung

---

## 2. Abschlusskonsistenz

### Beobachtung
Das Abschlussdokument V3 trennt weiterhin sauber:
- Kernaxiome,
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen,
- sowie nachgeordnete Leistungs- und Geschwindigkeitsaspekte.

Leitplanken und Nicht-Geltung bleiben stabil:
- keine neue breite Expansion,
- keine direkte Materialisierung,
- Leistungslogik nur nachgeordnet.

### Befund
Die **innere Konsistenz des Abschlussdokuments ist hoch**.  
Es ist keine harte definitorische Kollision zwischen Kernaxiomen, Folgeebenen und Leistungslogik sichtbar.

### Pruefung der Ebenentrennung
Die Trennung zwischen:
- Kernaxiom,
- Designprinzip,
- Qualitaetsattribut,
- operativer Regel,
- Kopplungsfolge
bleibt sauber genug.

### Pruefung der Leistungs- und Geschwindigkeitsaspekte
Die nachgeordneten Formen:
- Ausfuehrungseffizienz,
- Prueftiefenangemessenheit
werden explizit zugelassen, ohne den Zielbildkern zu steuern.

### Urteil
**Kein Abschlussmangel** auf Ebene des kanonischen Abschlussdokuments.

---

## 3. Rekursive Vollstaendigkeitspruefung

### Beobachtung
Die rekursive Pruefmatrix V3 deckt fuer alle Elemente von Kernaxiom bis Kopplungsfolge explizit folgende Pflichtparameter ab:

- Rueckbindung
- Funktion
- Ebenenangemessenheit
- Trennschaerfe in Ebene
- Trennschaerfe zu anderen Ebenen
- Evidenzstatus
- Quellenrolle
- Nicht-Geltung / Grenzfall
- vererbte Nicht-Geltung
- Spannungen
- vererbte Spannungen
- Mehrfachableitung
- Typ Mehrfachableitung
- Redundanzstatus
- Orthogonalitaet
- Verwaisungsstatus
- Kollapstest / Aufwertung
- Unterordnungstest
- Leistungs- / Geschwindigkeitsgrenze
- Revisionsfolgen
- finale Entscheidung

### Befund
Die Matrix selbst ist **hinreichend vollstaendig** und deckt den aktuellsten rekursiven Standardraum sehr weitgehend ab.

### Echter Restpunkt 1 – Terminologische Asymmetrie um Konfliktlage
Der Matrixstandard fuehrt:
- `Spannungen`
- `vererbte Spannungen`

Die Abschlusscheckliste V2 und der Pro-Model-Direktprompt sprechen zusaetzlich von:
- `Konfliktlage`

Das ist inhaltlich anschlussfaehig, aber **nicht voll terminologisch harmonisiert**.  
Der Paketstand ist dadurch nicht inhaltlich falsch, aber nicht maximal explizit geschlossen:
- Entweder `Konfliktlage` wird als Oberbegriff ueber `Spannungen / vererbte Spannungen` explizit definiert,
- oder Checkliste und Direktprompt werden auf die Matrixterminologie verengt.

### Bewertung
Dies ist ein **kleiner echter Abschlussmangel**, weil der Paketstand sich selbst maximale Begriffsklarheit als Standard setzt.

### Urteil
Die Matrix ist **substanziell vollstaendig**, aber terminologisch noch minimal nachzuschliessen.

---

## 4. Spiegelung mit dem Deprekations- und Umschichtungslog

### Beobachtung
Abschlussdokument, Matrix und Deprekations-/Umschichtungslog stimmen nun konsistent ueberein in Bezug auf:
- Umklassifizierung von Materialisierungsdisziplin,
- Umstellung von Deprekationsdisziplin auf operative Regel,
- Verengung mehrerer grenzwertiger Folgeelemente,
- Entfernung von Portierbarkeit, Evidenzdisziplin, Antwortzeitangemessenheit und Leistungsstabilitaet,
- Aufnahme neuer Designprinzipien, Qualitaetsattribute, Regeln und der Kopplungsfolge
  `Axiomrevision erzwingt Folgeebenen-Nachzug`.

### Befund
Die fruehere Spiegelungsluecke ist **geschlossen**.

### Urteil
**Kein Abschlussmangel**.

---

## 5. Routinen- und Ablaufeinhaltung

### Beobachtung
Das Paket enthaelt:
- erweiterte Neuaufnahmeroutine,
- erweiterte Umklassifizierungsroutine,
- Nachzugsroutine,
- Abschlussfreigaberoutine,
- Minimal-Korrekturabschlussroutine,
- Ablaufblatt mit Matrix-Prompt-Deckungsabgleich,
- globale Abschlusscheckliste.

### Befund
Die Struktur ist stark und nahezu vollstaendig. Zwei kleine, aber echte Luecken bleiben.

### Echter Restpunkt 2 – Neuaufnahmeroutine deckt noch nicht alle Matrixachsen voll explizit
Die Neuaufnahmeroutine V2 deckt bereits deutlich mehr ab als zuvor:
- Ebenentest
- Funktionsdefinition
- Rueckbindung
- Evidenzstatus
- Quellenrolle
- Nicht-Geltung
- vererbte Nicht-Geltung
- vererbte Spannungen
- Mehrfachableitung
- Orthogonalitaet/Redundanz
- Verwaisungsstatus
- Leistungsgrenze
- Entscheidung

Nicht explizit genannt sind jedoch:
- **Kollapstest / Aufwertung**
- **Unterordnungstest**
- **Revisionsfolgen**

Diese Punkte koennen implizit mitgemeint sein, sind aber nach den eigenen aktuellen Standards **zu wichtig, um nur implizit zu bleiben**.

### Echter Restpunkt 3 – Axiomrevision -> Folgeebenen-Nachzug spiegelt nicht alle relevanten Matrixachsen
Die Nachzugsroutine V2 fordert:
- vererbte Nicht-Geltung,
- vererbte Spannungen,
- Mehrfachableitungen,
- Revisionsfolgen,
- Matrix- und Log-Update.

Nicht explizit genannt sind:
- **Evidenzstatus / Quellenrolle erneut pruefen, falls betroffen**
- **Verwaisungsstatus erneut pruefen**
- **Orthogonalitaet / Redundanz erneut pruefen, falls Axiomnaehe neu verteilt wird**
- **Leistungs- / Geschwindigkeitsgrenze erneut pruefen, falls geaenderte Regeln oder Attribute betroffen sind**

Auch hier gilt: Das ist nicht zwingend in jedem Fall erforderlich, aber fuer einen Paketstand mit explizitem Rekursionsanspruch sollte diese Moeglichkeit **explizit standardisiert** sein.

### Ablaufblatt
Das Ablaufblatt V2 ist tragfaehig. Kein echter Mangel.

### Abschlusscheckliste
Die Abschlusscheckliste V2 ist ebenfalls tragfaehig. Kein echter Mangel.

### Urteil
Die Routinen und Ablaeufe sind **weitgehend ausreichend**, aber noch nicht vollkommen vollstaendig auf Matrixniveau gespiegelt.

---

## 6. Keine falsche Repo-Integration

### Beobachtung
Das Adapterkonzept V3 bleibt konsistent:
- keine direkte SSOT-Umschreibung,
- keine direkte Writer-/Runtime-/Rollenmaterialisierung,
- keine direkte `.codex`-Materialisierung,
- keine direkte Einspeisung ohne Adaptervertrag.

Stattdessen werden weiterhin:
- Zielobjektfrage,
- Aequivalenzfrage,
- Transformationsfrage,
- Autorisationsfrage,
- Rueckrollfrage
als bindende Vorfragen gesetzt.

### Befund
Das Dokument verhindert konsequent, dass aus dem Abschlusspaket selbst direkte Repo-Materialisierung abgeleitet wird.

### Urteil
**Kein Abschlussmangel**.

---

## 7. Verbleibende Abschlussmaengel

## Muss vor Abschluss korrigiert werden

### M1. Terminologische Harmonisierung von Konfliktlage vs. Spannungen
Die Paketdokumente sollten explizit festlegen, ob:
- `Konfliktlage` ein Oberbegriff fuer `Spannungen` und `vererbte Spannungen` ist,
- oder ob Checkliste und Pro-Model-Direktprompt direkt auf die Matrixterminologie umgestellt werden.

Dies ist klein, aber fuer ein Paket mit hohem Anspruch an Trennschaerfe real.

### M2. Neuaufnahmeroutine um drei explizite Matrixachsen erweitern
In `ASWE_Routinenblatt_Axiomraum_20260423_V2.md` sollte die Routine Neuaufnahme eines Folgeelements ausdruecklich ergaenzt werden um:
- Kollapstest / Aufwertung
- Unterordnungstest
- Revisionsfolgen

### M3. Nachzugsroutine um vier explizite Matrixachsen erweitern
In derselben Datei sollte die Routine `Axiomrevision -> Folgeebenen-Nachzug` ausdruecklich ergaenzt werden um:
- Evidenzstatus / Quellenrolle erneut pruefen, falls betroffen
- Verwaisungsstatus erneut pruefen
- Orthogonalitaet / Redundanz erneut pruefen, falls betroffen
- Leistungs- / Geschwindigkeitsgrenze erneut pruefen, falls betroffen

## Kann bewusst als spaetere Weiterentwicklung offen bleiben

### O1. Feinere Unterdefinition von evaluator-kritischer Testdisziplin
Nicht abschlusskritisch.

### O2. Spaetere Rangneubewertung dualer Lesbarkeit bei hoeherem Automationsgrad
Nicht abschlusskritisch.

### O3. Spaetere Ausdifferenzierung untergeordneter Leistungsbegriffe
Nicht abschlusskritisch, solange sie nicht kanonisiert werden.

---

## 8. Endurteil

### Entscheidung
**abschlusstauglich mit minimalem Korrekturpaket**

### Begruendung
Das Paket ist:
- strukturell konsistent,
- rekursiv sehr weitgehend vollstaendig,
- sauber gegen falsche Repo-Integration abgesichert,
- und als konzeptioneller Paketstand beinahe geschlossen.

Die verbleibenden Maengel sind:
- klein,
- klar lokalisierbar,
- und betreffen nicht den Kernraum selbst, sondern die **letzte explizite Angleichung von Terminologie und Routinen an den Matrixstandard**.

### Kleinster moeglicher Korrekturauftrag
1. In der Abschlusscheckliste und/oder im Pro-Model-Direktprompt explizit festlegen, wie sich `Konfliktlage` zu `Spannungen` und `vererbten Spannungen` verhaelt.
2. Im Routinenblatt die Routine Neuaufnahme um
   - Kollapstest / Aufwertung
   - Unterordnungstest
   - Revisionsfolgen
   ergaenzen.
3. Im Routinenblatt die Routine `Axiomrevision -> Folgeebenen-Nachzug` um
   - Evidenzstatus / Quellenrolle erneut pruefen, falls betroffen
   - Verwaisungsstatus erneut pruefen
   - Orthogonalitaet / Redundanz erneut pruefen, falls betroffen
   - Leistungs- / Geschwindigkeitsgrenze erneut pruefen, falls betroffen
   ergaenzen.

Nach diesen drei Korrekturen ist das Paket nach meiner Einschaetzung **abschlusstauglich ohne weitere substanzielle Aenderung**.

```

---

## RAW_RECORD_013: ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md`
- sha256: `eed4a6aca977f4e678b49c71c2391b0a2350e7dc368ea7db8a5ad8ea2292bdbe`
- chars: 13075
- approx_tokens: 3269

```markdown
# Analyse und Optimierung des Prompts zur Axiomenarbeit unter LLM-Verhaltenssteuerung

## Einordnung

- **Gegenstandsbereich:** Systemgegenstand
- **Wissensebene:** operatives Vorgehen mit begrifflicher Vorstufe
- **Abstraktionsgrad:** kontextgebundene Arbeitsregel

Primärer Bezugspunkt sind die im Repo inzwischen explizit modellierten Prompt-Schichten **Prompt-Preflight**, **PromptEval-Contract** und **PromptPack-Rendering**. Diese trennen Vorprüfung, Qualitätsbewertung und Renderableitung und verlangen u. a. Zielbildklarheit, Scope-Disziplin, Ebenentrennung, Explizitheit, Operationalisierbarkeit und Auditierbarkeit. Außerdem darf Personalisierung nur als Verhaltensdisziplin, Prioritätsregel, Strukturhilfe oder Adapterhilfe portiert werden und keine zweite Governancequelle erzeugen. fileciteturn2file0 fileciteturn2file9

---

## Präzisionsdiagnose des Ausgangsprompts

### Ausgangsprompt

> Setze das Brainstorming der Axiomkandidaten für A und B fort, identifiziere also weitere mögliche Kandidaten. Halte dich an deutsche Sprachvorgaben. Überprüfe deine Axiomendefinition auf Gültigkeit. Entwickle ein umsetzbares Konzept zur Identifikation von Kernaxiomen. Ermittle Kernaxiomen aus den Kandidaten und begründe die Abgrenzung. Überprüfe dein gesamtes Vorgehen. Zitiere belastbare Quellen. Schreibe keinen Text, liefere eine Datei.

### Hauptdefizite

#### 1. Gegenstandsunterschreitung
„A und B“ sind nicht im Prompt selbst gebunden. Für einen robusten Lauf müssen die Gegenstände lokal explizit werden:
- **A = LLM-Verhaltenssteuerung**
- **B = ASWE_KnowledgeOS-Architektur**

Ohne diese Re-Bindung hängt die Ausführung an implizitem Chatgedächtnis und wird schlechter portierbar.

#### 2. Fehlende Scope-Grenze
„Setze das Brainstorming fort“ ist zu offen. Unklar bleibt:
- welches Kandidateninventar als Startmenge gilt,
- ob neue Kandidaten nur aus dem bisherigen Chatmaterial oder auch aus externer Literatur gewonnen werden dürfen,
- ob die Aufgabe nur begrifflich oder bereits normativ-architektonisch ist.

Das verletzt Scope-Disziplin und erhöht Driftgefahr. Genau diese Trennung wird im internen PromptEval-Contract explizit gefordert. fileciteturn2file0

#### 3. Ungenauer Validitätsbegriff
„Überprüfe deine Axiomendefinition auf Gültigkeit“ ist epistemisch unscharf. Für Axiome gibt es keine einfache globale „Gültigkeit“. Erforderlich ist die Zerlegung in prüfbare Dimensionen:
- begriffliche Kohärenz,
- Nicht-Zirkularität,
- Gegenstandsadäquanz,
- Abgrenzbarkeit,
- Widerspruchsarmut,
- Operationalisierbarkeit,
- Tragfähigkeit als Gründungsaxiom statt bloßes Qualitätsattribut.

#### 4. Ebenenvermischung
Der Prompt mischt mindestens vier Arbeitsarten:
- Kandidatenexpansion,
- Definitionsprüfung,
- Kernaxiomen-Selektion,
- Verfahrensaudit.

Ohne Phasentrennung steigt die Wahrscheinlichkeit, dass das Modell zu früh von Begriffen auf Auswahlentscheidungen oder Architekturfolgen springt. Das Repo fordert gerade hier die Trennung von Analyse, Preflight und Rendering sowie eine deduktive Reihenfolge. fileciteturn2file11 fileciteturn2file7

#### 5. Fehlende Entscheidungsregel für „Kernaxiome“
„Ermittle Kernaxiome aus den Kandidaten“ benennt kein Auswahlkriterium. Es fehlt ein Selektionsmaßstab, etwa:
- konstitutive Notwendigkeit,
- hohe Reichweite über A und B,
- geringe Ersetzbarkeit,
- starke Kopplungswirkung,
- hohe Verletzungsfolgen,
- gute Prüfbarkeit.

Ohne explizite Selektionslogik bleibt die Kernaxiomen-Menge willkürlich.

#### 6. Selbstprüfung ohne Auditvertrag
„Überprüfe dein gesamtes Vorgehen“ ist zu breit. Nötig ist ein explizites Self-Audit-Schema mit Prüfpunkten statt einer ungebundenen Selbstversicherung.

#### 7. Quellenanforderung zu unspezifisch
„Zitiere belastbare Quellen“ sagt nicht:
- welche Quellklassen zulässig sind,
- wie interne und externe Quellen zu gewichten sind,
- wie viele Quellen mindestens einzubeziehen sind,
- ob Primärquellen bevorzugt werden sollen.

Für robuste LLM-Steuerung ist das relevant, weil Risiko-, Mess- und Governancefragen stark kontextabhängig sind. NIST fordert genau solche kontext- und lebenszyklusbezogenen Risikobetrachtungen; Risiken variieren nach Lebenszyklusphase, Scope, Quelle und Einsatzkontext. citeturn113986view0

#### 8. Ausgabekontrakt unvollständig
„Schreibe keinen Text, liefere eine Datei“ bestimmt nur den Kanal, nicht die Artefaktklasse. Es fehlt:
- Dateiformat,
- Dateiname,
- interne Struktur,
- minimale Pflichtblöcke.

Das widerspricht der repo-internen Forderung, nur Artefakte mit klaren Zielpfaden und expliziter Ableitungslogik zu materialisieren. fileciteturn2file6 fileciteturn2file8

---

## Optimierungsprinzipien für diesen Prompt

Der optimierte Prompt sollte folgende Verhaltensdisziplinen erzwingen:

1. **Explizite Gegenstandsbindung**  
   A und B im Prompt selbst definieren.

2. **Preflight vor Ausführung**  
   Vor der eigentlichen Bearbeitung Ziel, Gegenstand, Scope, epistemischen Status und Abstraktionsniveau explizieren. Das entspricht der internen Preflight-Operationalisierung. fileciteturn2file9

3. **Begriffe vor Auswahlentscheidungen**  
   Erst Kandidatenraum erweitern und prüfen, dann Kernaxiome selektieren.

4. **Phasentrennung**  
   Kandidatenexpansion, Definitionsprüfung, Selektionsverfahren, Kernaxiomen-Selektion, Self-Audit trennen.

5. **Explizite Selektionskriterien**  
   Kernaxiome nicht bloß „ermitteln“, sondern über definierte Kriterien auswählen.

6. **Quellendisziplin**  
   Interne ASWE-Referenzen plus belastbare externe Primär-/Standardquellen getrennt führen.

7. **Artefaktklarheit**  
   Genau eine Datei mit festem Format und festen Blöcken ausgeben.

Diese Regeln passen zur im Repo festgelegten Architektur, nach der Rendering nur Ableitung sein darf, keine neue Governancewirkung tragen darf und bei Drift der Eval-/Preflight-Contract führend bleibt. fileciteturn2file7

---

## Optimierter Prompt – präzise Arbeitsfassung

``\`text
Arbeite an der Fortsetzung und Konsolidierung des bisherigen Axiomkandidatenraums in zwei explizit gebundenen Gegenstandsbereichen:

A) LLM-Verhaltenssteuerung
B) ASWE_KnowledgeOS-Architektur

Nutze das bisherige Kandidateninventar aus diesem Chat als Ausgangsbasis. Falls einzelne Vorbegriffe im aktuellen Kontext nicht eindeutig rekonstruierbar sind, markiere dies explizit als Rekonstruktionsunsicherheit statt stillschweigend zu ergänzen.

Arbeite strikt in folgender Reihenfolge und trenne die Phasen sichtbar:

PHASE 0 – PRE-FLIGHT
- Bestimme explizit:
  - Zielbild
  - Gegenstand
  - Geltungsbereich und Nicht-Geltung
  - epistemischen Status
  - Abstraktionsniveau
- Markiere:
  - Implizites
  - Vages
  - Nicht-Operationalisierbares
  - mögliche Ebenenvermischungen

PHASE 1 – KANDIDATENRAUM ERWEITERN
- Setze das Brainstorming der Axiomkandidaten für A und B fort.
- Identifiziere zusätzliche Kandidaten aus:
  1. dem bisherigen Chatkontext,
  2. internen ASWE-Referenzen,
  3. belastbaren externen Quellen.
- Trenne neue Kandidaten sauber nach:
  - A-spezifisch
  - B-spezifisch
  - gemeinsame Kopplungskandidaten

PHASE 2 – DEFINITIONS- UND GÜTEPRÜFUNG
- Prüfe jeden Kandidaten nicht pauschal auf „Gültigkeit“, sondern entlang folgender Kriterien:
  - begriffliche Kohärenz
  - Nicht-Zirkularität
  - Gegenstandsadäquanz
  - Abgrenzbarkeit zu Nachbarbegriffen
  - Widerspruchsarmut
  - Operationalisierbarkeit
  - Eignung als Gründungsaxiom statt bloßes Qualitätsattribut, Designprinzip oder Prozessmerkmal
- Markiere pro Kandidat:
  - tragfähig
  - unscharf
  - redundant
  - konfliktträchtig
  - nur sekundäres Qualitätsattribut
  - verwerfen

PHASE 3 – KONZEPT ZUR IDENTIFIKATION VON KERNAXIOMEN
- Entwickle ein umsetzbares Selektionskonzept zur Bestimmung von Kernaxiomen.
- Das Konzept muss mindestens explizieren:
  - Selektionskriterien
  - Ausschlusskriterien
  - Umgang mit Redundanz
  - Umgang mit Spannungen
  - Priorisierungslogik
  - minimale Prüfbarkeit
- Verwende keine bloß intuitive Auswahl ohne expliziten Maßstab.

PHASE 4 – ERMITTLUNG DER KERNAXIOME
- Leite aus dem geprüften Kandidatenraum die Kernaxiome ab.
- Begründe die Abgrenzung jedes Kernaxioms gegenüber:
  - nahen Alternativkandidaten
  - untergeordneten Qualitätsattributen
  - bloßen Architektur- oder Prozessregeln
- Trenne:
  - Kernaxiome für A
  - Kernaxiome für B
  - gemeinsame Kopplungsaxiome

PHASE 5 – SELF-AUDIT
- Prüfe dein eigenes Vorgehen explizit gegen folgende Fragen:
  - Wurden Beobachtung, Aussage, Hypothese, Maßstab, Kriterium und Empfehlung getrennt?
  - Wurden Begriffe vor Strukturen, Strukturen vor Prozessen und Prozesse vor Implementierung behandelt?
  - Wurden Selektionsentscheidungen explizit begründet?
  - Gibt es verbliebene Unsicherheiten, blinde Flecken oder nicht aufgelöste Spannungen?

QUELLENREGEL
- Zitiere belastbare Quellen.
- Bevorzuge:
  1. interne ASWE-Referenzen für lokale Architektur- und Verhaltenssteuerungslogik,
  2. externe Primärquellen, Standards oder anerkannte institutionelle Leitdokumente für allgemeine LLM-/GenAI-Risikologik.
- Trenne interne und externe Quellen sichtbar.

SPRACHREGEL
- Schreibe auf Deutsch.
- Englische Aliase nur knapp in Klammern direkt nach dem ersten relevanten deutschen Fachbegriff.

AUSGABEKONTRAKT
- Gib genau eine Datei aus, keine Chat-Zusammenfassung.
- Dateiformat: Markdown
- Dateiname:
  ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md

PFLICHTSTRUKTUR DER DATEI
1. Pre-Flight
2. Erweiterter Kandidatenraum
3. Prüfmatrix der Kandidaten
4. Selektionskonzept für Kernaxiome
5. Abgeleitete Kernaxiome
6. Abgrenzungsbegründungen
7. Self-Audit
8. Quellen
``\`

---

## Warum diese Fassung verhaltenssteuernd besser ist

- Sie erzwingt **Preflight statt Direktantwort** und operationalisiert damit die im Repo bereits formulierte Eingangsprüfung von Zielbild, Gegenstand, Geltung, epistemischem Status und Abstraktionsniveau. fileciteturn2file9
- Sie trennt **Eval, Preflight und Rendering**, statt die Ausgabeaufforderung selbst semantisch führend werden zu lassen. Genau diese Ableitungslogik ist inzwischen repo-intern festgeschrieben. fileciteturn2file7 fileciteturn2file8
- Sie begrenzt **verdeckte Governance durch Personalisierung**, weil Personalisierung nur als Verhaltensdisziplin bzw. Strukturhilfe portiert werden darf. fileciteturn2file9 fileciteturn2file2
- Sie reduziert Risiko aus **Prompt Injection**, **Excessive Agency** und **Overreliance**, weil Scope, Ableitungsdisziplin, Quellenpflicht und Self-Audit explizit gemacht werden. OWASP führt genau diese drei Risikoklassen für LLM-Anwendungen als zentrale Problemfelder. citeturn168119view1turn168119view2
- Sie ist risikologischer tragfähiger, weil NIST für GenAI-Kontexte fordert, Risiken nach Lebenszyklusphase, Scope, Quelle und Nutzungskontext zu unterscheiden und Maßnahmen entsprechend zu strukturieren. citeturn113986view0

---

## Noch schärfere Kompaktfassung

``\`text
Analysiere und erweitere den bisherigen Axiomkandidatenraum in den zwei explizit gebundenen Gegenstandsbereichen A) LLM-Verhaltenssteuerung und B) ASWE_KnowledgeOS-Architektur.

Arbeite strikt in fünf Phasen:
1. Pre-Flight: Zielbild, Gegenstand, Geltungsbereich, epistemischen Status und Abstraktionsniveau explizieren; Implizites, Vages und Ebenenvermischungen markieren.
2. Kandidatenraum erweitern: zusätzliche Kandidaten aus Chatkontext, internen ASWE-Referenzen und belastbaren externen Quellen identifizieren; trennen in A-spezifisch, B-spezifisch und gemeinsame Kopplungskandidaten.
3. Kandidaten prüfen: pro Kandidat begriffliche Kohärenz, Nicht-Zirkularität, Gegenstandsadäquanz, Abgrenzbarkeit, Widerspruchsarmut, Operationalisierbarkeit und Eignung als Gründungsaxiom prüfen; Ergebnis markieren als tragfähig, unscharf, redundant, konfliktträchtig, sekundäres Qualitätsattribut oder verwerfen.
4. Kernaxiome bestimmen: ein explizites Selektionskonzept entwickeln und daraus Kernaxiome für A, B und gemeinsame Kopplungen ableiten; jede Auswahl gegen benachbarte Kandidaten begründen.
5. Self-Audit: prüfen, ob Beobachtung, Aussage, Hypothese, Maßstab, Kriterium und Empfehlung getrennt wurden und ob Begriffe vor Strukturen, Strukturen vor Prozessen und Prozesse vor Implementierung behandelt wurden.

Quellenregel:
- interne ASWE-Referenzen und externe belastbare Primär-/Standardquellen getrennt ausweisen
- Deutsch als Hauptsprache, englische Aliase nur knapp in Klammern

Ausgabekontrakt:
- genau eine Markdown-Datei
- keine Chat-Zusammenfassung
- Pflichtblöcke:
  Pre-Flight
  Kandidatenraum
  Prüfmatrix
  Selektionskonzept
  Kernaxiome
  Abgrenzungsbegründungen
  Self-Audit
  Quellen
``\`

---

## Kurzfazit

Der Ausgangsprompt ist inhaltlich brauchbar, aber für eine robuste LLM-Verhaltenssteuerung noch zu implizit, zu selektionsschwach und zu wenig phasendiszipliniert. Die optimierte Fassung bindet Gegenstand, Scope, Validitätskriterien, Selektionslogik, Self-Audit und Artefaktform explizit und ist damit deutlich besser mit der inzwischen repo-intern etablierten Prompt-Architektur kompatibel. fileciteturn2file0 fileciteturn2file7

```

---

## RAW_RECORD_014: ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md`
- sha256: `315dc6940c9817c84a483e648dfc0615329e07946ce92c84fbac065a3651445e`
- chars: 15745
- approx_tokens: 3937

```markdown
# ASWE Axiomkandidatenraum – Parameter und Kriterien fuer die naechste Verbesserungsschleife (20260423 V1)

## Einordnung

- **Gegenstandsbereich:** Systemgegenstand
- **Wissensebene:** begriffliche und methodische Qualitaetssicherung
- **Abstraktionsgrad:** systemisches Strukturmodell mit Arbeitsregeln

Ausgangspunkt sind die im Dokument explizit benannten Unsicherheiten und die Gesamtbewertung:
1. die epistemisch ungleichmaessige LLM-verhaltenssteuernde Literaturbasis,
2. der nicht kanonisch standardisierte Axiombegriff,
3. moegliche Rangverschiebungen einzelner Kandidaten in spaeteren Repo-Phasen,
4. die Gesamtbewertung, dass B evidenzmaessig staerker fundiert ist als A und dass die Gesamtsynthese theoriegeleitet, aber nicht naturgesetzlich bewiesen ist.

Ziel der Verbesserungsschleife ist daher **nicht** eine Aufweichung des Zielbilds, sondern dessen **Verschaerfung unter hoeherer begrifflicher, evidenzieller und sprachlicher Disziplin**.

---

## Zielbild-Guardrails: Was explizit nicht aufgeweicht werden darf

Die naechste Schleife darf folgende Festlegungen **nicht** verwässern:

1. **Axiome bleiben Kernaxiome.**  
   Das Dokument darf nicht in einen allgemeinen Wuenschbarkeits- oder Qualitaetskatalog regressieren.

2. **Externe wissenschaftliche Quellen bleiben primaer.**  
   Repo-interne Artefakte sind Anwendungs- und Passungsbelege, nicht primaere Wahrheitsquelle fuer allgemeine LLM- oder Architekturgrundsaetze.

3. **Begriffe bleiben vor Strukturen; Strukturen vor Prozessen; Prozesse vor Implementierung.**  
   Keine vorschnelle Rueckableitung aus Tooling, Dateipfaden oder konkreten Workflows.

4. **Governierte statt freie Selbstverbesserung.**  
   Adaptivitaet und Evolvierbarkeit bleiben nur in kontrollierter, pruefbarer Form legitim.

5. **A und B bleiben getrennt, Kopplungen explizit.**  
   Keine implizite Uebertragung eines Architekturprinzips aus B in A oder umgekehrt ohne benannte Kopplungslogik.

---

## Abgeleitete Parameter fuer die naechste Verbesserungsschleife

## 1. Evidenzparameter

### P1. Quellenklassen-Gewichtung
Jede tragende Aussage wird kuenftig einer Quellenklasse zugeordnet:
- **P/S:** peer-reviewte Primaerquelle oder Standard
- **R:** institutioneller Report
- **PP:** Preprint
- **I:** repo-interner Anwendungsbeleg

**Kriterium:**  
Je hoeher der axiombildende Anspruch eines Satzes, desto staerker muss seine Primaerabstuetzung durch **P/S** sein.

**Verbesserungsziel:**  
A-Kernaxiome mit derzeit starker PP/R-Abhaengigkeit gezielt auf P/S-Niveau nachsuetzen oder den Geltungsanspruch enger formulieren.

---

### P2. Claim-Source-Fit
Nicht nur die Menge der Quellen, sondern die **Passung zwischen Aussage und Quellentyp** wird bewertet.

**Kriterium:**  
- konzeptionelle Begriffsabgrenzungen: Standards, Grundlagenliteratur, methodische Primaerquellen  
- Verhaltenstestbarkeit: empirische Evaluationsliteratur  
- Oversight / boundedness / governance: Governance-, Assurance- und Sicherheitsliteratur  
- repo-lokale Ableitung: interne Artefakte nur als Anwendungsbeleg

**Verbesserungsziel:**  
Jeder Kernsatz bekommt eine explizite Stuetzuordnung: definitorisch, methodisch, empirisch, lokal-anwendend.

---

### P3. Evidenzheterogenitaetsquote
Fuer jeden Kernaxiomcluster wird die Quellenmischung ausgewiesen.

**Kriterium:**  
- Wie hoch ist der Anteil P/S?
- Wie hoch ist der Anteil PP?
- Gibt es nur eine einzelne Schule bzw. Autorentrajektorie?
- Gibt es eine institutionelle Gegenpruefung?

**Verbesserungsziel:**  
Unsicherheiten duerfen bleiben, aber sie werden kuenftig **quantifiziert oder zumindest systematisch ausgewiesen** statt nur narrativ markiert.

---

### P4. Gegenbeispielsensitivitaet
Jeder Kernaxiomkandidat muss gegen plausible Gegenbeispiele getestet werden.

**Kriterium:**  
- Gibt es Faelle, in denen der Kandidat offensichtlich nicht gilt?
- Ist er nur unter bestimmten Systembedingungen tragfaehig?
- Muss der Geltungsbereich enger gezogen werden?

**Verbesserungsziel:**  
Keine Axiomformulierung ohne expliziten Belastungstest gegen Grenzfaelle.

---

## 2. Begriffs- und Axiomparameter

### P5. Axiomstatus-Schaerfe
Da „Axiom“ hier kein mathematisch kanonischer Begriff ist, wird ein expliziter Status eingefuehrt:

- **Gründungsaxiom**
- **starkes Designprinzip**
- **sekundaeres Qualitaetsattribut**
- **operative Regel / Governance-Regel**

**Kriterium:**  
Jeder Kandidat muss genau einer dieser Klassen zugeordnet sein.

**Verbesserungsziel:**  
Keine Restunklarheit mehr darueber, ob ein Begriff basal, abgeleitet oder lokal ist.

---

### P6. Notwendigkeitspruefung
Ein Kernaxiom muss als **konstitutiv notwendig** ausgewiesen werden.

**Kriterium:**  
Die Prueffrage lautet:
> Kollabiert ohne dieses Prinzip die semantische, epistemische oder governance-seitige Ordnung des Systems?

**Verbesserungsziel:**  
Begriffe wie Effizienz, Lesbarkeit oder Persistenz werden nur dann aufgewertet, wenn ein strenger Kollapstest dies rechtfertigt.

---

### P7. Nicht-Derivativitaet
Ein Kernaxiom darf nicht nur eine sprachliche Variante oder Folge eines staerkeren Axioms sein.

**Kriterium:**  
- laesst sich der Kandidat aus einem anderen Kernaxiom weitgehend ableiten?
- ist er nur eine Perspektive auf denselben Sachverhalt?

**Verbesserungsziel:**  
Weiteres Clustern und Zusammenziehen naher Kandidaten.

---

### P8. Trennschaerfe zu Nachbarbegriffen
Jeder Kernbegriff braucht eine **Negativabgrenzung**.

**Kriterium:**  
- Wodurch unterscheidet sich Auditierbarkeit von Rueckverfolgbarkeit?
- Wodurch unterscheidet sich Oversight von blosser Kontrollierbarkeit?
- Wodurch unterscheidet sich Governierte Evolvierbarkeit von Adaptivitaet?

**Verbesserungsziel:**  
Keine Kernbegriffe ohne definitorische Kontrastkante.

---

## 3. Rangstabilitaetsparameter

### P9. Phasenrobustheit
Da einzelne Kandidaten spaeter ihren Rang wechseln koennen, wird eine Phasenachse eingefuehrt:

- fruehe semantische Aufbauphase
- mittlere Ordnungs- und Pfadphase
- spaetere Automations- und Ausfuehrungsphase

**Kriterium:**  
Bleibt der Kandidat ueber alle Phasen kernhaft, oder steigt/sinkt sein Rang?

**Verbesserungsziel:**  
Zukuenftige Rangwechsel werden nicht mehr als diffuse Unsicherheit, sondern als **phasenabhaengige Eigenschaft** modelliert.

---

### P10. Automationssensitivitaet
Ein Kandidat wird darauf geprueft, ob sein Rang mit steigendem Automationsgrad waechst.

**Kriterium:**  
Beispiel: duale Lesbarkeit ist frueh vielleicht sekundaer, kann spaeter unter stark agentischer oder repo-automatisierter Verarbeitung quasi-konstitutiv werden.

**Verbesserungsziel:**  
Die Axiommatrix wird um eine Achse „Automationsgrad“ ergaenzt.

---

### P11. Kopplungsstabilitaet zwischen A und B
Gemeinsame Kopplungsaxiome muessen in beiden Bereichen tragfaehig bleiben.

**Kriterium:**  
- gilt das Kopplungsaxiom wirklich symmetrisch?
- oder ist es primaer ein B-Prinzip mit A-seitiger Anwendung?

**Verbesserungsziel:**  
Kopplungsaxiome werden kuenftig als
- echt gemeinsam,
- asymmetrisch gekoppelt,
- nur analogisierend uebertragen
klassifiziert.

---

## 4. Sprach- und Benennungsparameter

### P12. Sprachgovernance statt Sprachmischung als Default
Fremdsprachige oder hybride Begriffe sind nur dann zulaessig, wenn ihr Gebrauch regelgebunden ist.

**Kriterium fuer Zulaessigkeit eines englischen oder hybriden Terms:**
1. in der Fachliteratur ist gerade dieser Term kanonisch verankert,
2. die deutsche Entsprechung waere merklich unpraeziser,
3. der Term bezeichnet eine klar benannte Literaturtradition oder Evaluationsmethode,
4. der Term wird bei erster Nennung deutsch gefasst und dann knapp aliasiert.

**Verbesserungsziel:**  
Keine ungovernierte Mischsprache; jeder nichtdeutsche Kernterm muss eine Rechtfertigungsfunktion haben.

---

### P13. Jargon-Lizenz nur bei Mehrwert
Jargon ist nur gerechtfertigt, wenn er **Bedeutung komprimiert**, nicht wenn er nur modern oder feldnah klingt.

**Kriterium:**  
- verdichtet der Term wirklich einen etablierten Problemtyp?
- oder ersetzt er bloss ein gut moegliches deutsches Wort?

**Verbesserungsziel:**  
Pseudo-Praezision, Szenesprache und importierter Buzzword-Stil werden systematisch reduziert.

---

### P14. Bindestrich-Komposita nur unter formaler Disziplin
Bindestrich-Wortzusammensetzungen sind im technischen Deutschen oft legitim, aber nur wenn sie:
- Scope explizit machen,
- Fehlsegmentierung verhindern,
- oder einen stabilen zusammengesetzten Fachbegriff bilden.

**Kriterium:**  
Ein Bindestrich-Kompositum ist schwach, wenn:
- es nur provisorisches Prompt-Engineering im Fliesstext spiegelt,
- es mehrere ungeklaerte Ebenen in ein Wort presst,
- es sich nicht sauber rueckdefinieren laesst.

**Verbesserungsziel:**  
Hyphenierte Komposita werden kuenftig auf drei Typen begrenzt:
- fachlich etabliert,
- scope-klaerend,
- lokal-kontraktuell definiert.

---

### P15. Alias-Disziplin
Wenn Englisch verwendet wird, dann als Alias, nicht als konkurrierende Hauptsprache.

**Kriterium:**  
- erste Nennung auf Deutsch, dann kurzer englischer Alias in Klammern;
- danach konsistente Verwendung;
- keine dauernden Wechsel zwischen mehreren Benennungen fuer denselben Begriff.

**Verbesserungsziel:**  
Terminologische Stabilitaet statt lexikalischem Drift.

---

## Rechtfertigung der derzeitigen Vermischung deutscher und englischer Begriffe

## Beobachtung
Das bestehende Dokument mischt:
- deutsche Basisterminologie,
- englische Fachwoerter,
- hybride Ausdruecke,
- Bindestrich-Komposita,
- teils literaturnahe, teils repo-lokale Benennungen.

Beispiele mit starker oder teilweiser Legitimation:
- Oversight
- red teaming
- Traceability
- Mirror / Adapter
- PromptEval
- Preflight

Beispiele mit schwaecherer Form:
- boundedness
- Self-Audit
- Red-Teamability
- Claim-Source-Fit
- Governance-vorrangige Adaptivitaet als Mischregisterform

---

## Starke Rechtfertigungsfaelle

### 1. Literaturgebundene Fachterme
Begriffe wie **Oversight**, **red teaming**, **traceability** oder **prompt evaluation** koennen gerechtfertigt sein, wenn sie direkt an eine etablierte Literatur, ein Benchmark-Design oder eine Risikoklasse anschliessen.

**Begruendung:**  
Hier verweist der englische Term nicht nur auf ein Wort, sondern auf ein diskursiv etabliertes Konzeptfeld. Eine reine Uebersetzung wuerde teils Anschlussfaehigkeit an Literatur verlieren.

### 2. Repo-eigene Artefakt- und Vertragstitel
Bezeichnungen wie **PromptEval**, **PromptPack**, **Preflight** oder **Mirror** koennen als Eigennamen oder kontraktuelle Labels legitim sein.

**Begruendung:**  
Als Artefakt- oder Vertragsnamen sind sie nicht primaer Stilfrage, sondern Identifikatoren.

### 3. Scope-klaerende Bindestrichkomposita
Formen wie **LLM-Verhaltenssteuerung** oder **ASWE_KnowledgeOS-Architektur** sind gerechtfertigt, weil sie den Gegenstand stark und eindeutig binden.

**Begruendung:**  
Der Bindestrich verhindert hier Fehlsegmentierung und macht die Geltungszone explizit.

---

## Schwache oder problematische Faelle

### 1. Uebersetzbare englische Arbeitsbegriffe ohne Zusatznutzen
Begriffe wie **Self-Audit** oder **boundedness** sind nur schwach gerechtfertigt.

**Begruendung:**  
- Self-Audit laesst sich ohne Praezisionsverlust als **Selbstpruefung** oder **Eigenaudit** fassen.
- boundedness laesst sich im gegebenen Kontext als **Begrenztheit**, **Begrenzungsdisziplin** oder besser funktional als **gebundene Schrittlogik** ausdruecken.

Hier ist der englische Import kein Literaturzwang, sondern eher Gewohnheits- oder Stilimport.

### 2. Hybride Ableitungen mit Jargoncharakter
Formen wie **Red-Teamability** sind sprachlich schwach.

**Begruendung:**  
Sie sind weder sauberes Englisch noch sauberes Deutsch und erzeugen leicht Scheinpraezision. Besser waere:
- **adversariale Pruefbarkeit**
- **red-team-faehige Pruefbarkeit**
- **Pruefbarkeit durch Red Teaming**

### 3. Mehrschichtige Komposita mit impliziten Ebenen
Sehr lange, hybridisierte Bindestrichketten koennen die Ebenenvermischung eher verdecken als klaeren.

**Begruendung:**  
Wenn ein Ausdruck zugleich Gegenstand, Methode, Governance und Qualitaetsmaß verschmilzt, ist der terminologische Gewinn gering.

---

## Urteil zur Rechtfertigungsstaerke

Die derzeitige Vermischung deutscher und englischer Begriffe ist **nur teilweise stark gerechtfertigt**.

- **stark** dort, wo ein Begriff
  - literaturgebunden,
  - artefaktgebunden,
  - oder scope-klaerend ist;
- **schwach** dort, wo
  - ein gut moegliches deutsches Aequivalent existiert,
  - ein Hybridbegriff bloss feldnah klingt,
  - oder eine Bindestrichkonstruktion mehrere ungeklaerte Ebenen verdichtet.

### Konsequenz
Gerade weil die Rechtfertigung **nicht durchgaengig stark** ausfaellt, ist eine **grundsaetzliche sprachliche Ueberpruefung der Benennungsschicht** angezeigt.

Das bedeutet **nicht**:
- alles zwangsweise eindeutschen,
- alle englischen Fachterme verbannen,
- repo-lokale Eigennamen ersetzen.

Es bedeutet:
- eine explizite **Terminologiepolitik** einfuehren,
- jeden nichtdeutschen Kernterm auf Rechtfertigungsgrund pruefen,
- deutsche Primaerbegriffe mit knappen englischen Aliasen bevorzugen,
- hybride Kunstwoerter und unkontrollierte Kompositabildung reduzieren.

---

## Konkrete Kriterien fuer die naechste Verbesserungsschleife

### Muss-Kriterien
1. Jeder Kernbegriff bekommt einen Status:
   - deutsch primaer,
   - englischer Alias,
   - Eigennamenstatus,
   - literaturgebundener Originalterm.
2. Jeder tragende Satz wird nach Quellenklasse etikettiert.
3. Jeder Kernaxiomkandidat bekommt einen Kollapstest.
4. Jeder Kopplungsaxiomkandidat bekommt eine Symmetriepruefung.
5. Jeder gemischte oder hybride Begriff wird auf Rechtfertigungsgrund geprueft.

### Soll-Kriterien
1. Preprint-abhaengige A-Kandidaten werden nach Moeglichkeit mit P/S nachgeschaerft.
2. Schwache Hybridterme werden systematisch ersetzt oder lokal definiert.
3. Sekundaerattribute werden strenger von Kernaxiomen getrennt.
4. Rangverschiebungen werden phasenabhaengig modelliert.

### Verwerfungs- bzw. Revisionskriterien
Ein Begriff oder Satz muss ueberarbeitet werden, wenn:
- seine Quellenbasis primaer aus PP/I besteht, aber ein starker allgemeiner Geltungsanspruch behauptet wird;
- er nicht zwischen Kernaxiom und Designprinzip unterscheidet;
- er nur durch Jargon ueberzeugt;
- seine Sprachmischung keinen nachweisbaren Praezisions- oder Anschlussgewinn bringt;
- seine Bindestrichform mehrere Ebenen statt eines klaren Begriffs kapselt.

---

## Empfohlene Struktur der naechsten Schleife

1. **Evidenz-Rescoring**  
   alle Kernaxiome mit Quellenklassen und Claim-Source-Fit nachbewerten.

2. **Axiomstatus-Rescoring**  
   jeden Kandidaten in Kernaxiom / Designprinzip / Qualitaetsattribut / operative Regel einstufen.

3. **Phasen- und Automationsmatrix**  
   Rangstabilitaet der Kandidaten ueber Repo-Reifegrade pruefen.

4. **Terminologie-Review**  
   alle englischen, hybriden und bindestrichierten Kernterme nach Rechtfertigungsgrund markieren:
   - beibehalten
   - deutsch priorisieren, Alias behalten
   - ersetzen
   - lokal definieren

5. **Zielbild-Check**  
   pruefen, ob die Revision den axiombasierten Charakter schaerft oder in einen allgemeinen Qualitaetskatalog abgleitet.

---

## Abschlussurteil

Die naechste Verbesserungsschleife sollte an vier Hebeln ansetzen:

- **Evidenzschaerfung**
- **Axiomstatus-Schaerfung**
- **Rangstabilitaetsmodellierung**
- **Sprachgovernance**

Der kritischste neue Hebel ist die **Sprachgovernance**, weil die derzeitige deutsche-englische Mischform zwar teils funktional ist, aber noch nicht hinreichend regelgebunden. Genau deshalb ist eine **grundsaetzliche sprachliche Ueberpruefung der Benennungsschicht** gerechtfertigt, ohne das Zielbild selbst zu relativieren.

```

---

## RAW_RECORD_015: ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V1.md`
- sha256: `91822bb8b13ed8e84e1b591e5d6784d2b60883ec509314c6eacbbfc179b00c0e`
- chars: 32720
- approx_tokens: 8180

```markdown
# ASWE Axiomkandidatenraum – Analyse, Erweiterung und Kernaxiome (2026-04-23, V1)

## Pre-Flight

### Zielbild
Ein **begrifflich disziplinierter, extern priorisiert begründeter und operationalisierbarer Kernaxiomensatz** für zwei explizit gebundene Gegenstandsbereiche:

- **A)** LLM-Verhaltenssteuerung
- **B)** ASWE_KnowledgeOS-Architektur

Gesucht ist **nicht** bloß ein Wunschkatalog von Gütemerkmalen, sondern ein Satz von **konstitutiven Gründungsaxiomen**, aus denen sich sekundäre Qualitätsattribute, Designprinzipien und lokale Governance-Regeln ableiten lassen.

### Gegenstand
Gegenstand sind keine einzelnen Workstreams, Dateien oder Tools als solche, sondern:

- bei **A**: Prinzipien, die LLM-Ausführung, Instruktionsbindung, epistemische Disziplin, Prüfbarkeit und kontrollierte Verbesserung strukturieren;
- bei **B**: Prinzipien, die semantische Stabilität, Pfadtrennung, Provenienz, Evolvierbarkeit, Governance-Klarheit und operative Anschlussfähigkeit der ASWE_KnowledgeOS-Architektur tragen;
- zusätzlich: **Kopplungsaxiome**, die beide Bereiche verbinden.

### Geltungsbereich
Geltung beanspruchen die vorgeschlagenen Axiome für:

- konzeptionelle Grundlegung,
- Architektur- und Prompt-Verträge,
- Evaluations- und Preflight-Logik,
- spätere Operationalisierung und Materialisierung.

**Nicht-Geltung** bzw. nicht primärer Gegenstand:

- konkrete UI-Aktionen,
- konkrete Dateipfade als letzte Wahrheit,
- konkrete Tool- oder Modellwahl,
- produktive Leistungsmetriken wie Latenz oder Kosten als Primärbasis,
- rein lokale Sonderregeln, sofern sie nicht aus allgemeineren Prinzipien ableitbar sind.

### Epistemischer Status
- **Beobachtung:** bisheriger Brainstorming-Rohraum enthält viele relevante Begriffe, aber stark gemischte Ebenen.
- **Aussage:** ein belastbarer Kern ist ableitbar.
- **Hypothese:** einige bisher genannte Begriffe sind keine Kernaxiome, sondern abgeleitete Qualitätsattribute.
- **Maßstab:** Axiomtauglichkeit = konstitutiv, invariantennah, nicht bloß outcome-orientiert, abgrenzbar, operationalisierbar.
- **Empfehlung:** Kernaxiome knapp halten; sekundäre Qualitäten nachgeordnet führen.

### Abstraktionsniveau
- primär: **Grundsatz**
- sekundär: **systemisches Strukturmodell**
- noch nicht: konkrete lokale Implementierung

### Explizit gemachtes Implizites, Vages und Ebenenvermischung
Die bisherige Kandidatenliste mischt mindestens sechs Klassen:

1. **Gründungsaxiome / Invarianten**  
   z. B. Ebenentrennung, Provenienzfähigkeit, Pfadgrenzen.
2. **Designprinzipien**  
   z. B. Modularität, Adapter-Asymmetrie, Mirror-Disziplin.
3. **Qualitätsattribute**  
   z. B. Wiederauffindbarkeit, Menschenlesbarkeit, Maschinenlesbarkeit.
4. **Steuerbarkeitsanforderungen**  
   z. B. Kontrollierbarkeit, Regelbarkeit, boundedness.
5. **Betriebs- und Leistungsattribute**  
   z. B. schnell, effizient, leistungsfähig.
6. **Outcome-Wörter**  
   z. B. selbstoptimierend, adaptiv, selbstverbessernd.

Vage bzw. ohne Präzisierung nicht axiomtauglich sind insbesondere:

- „gültig“ als pauschales Prädikat für Axiomdefinitionen,
- „selbstoptimierend“ ohne Governance- und Stopbedingungen,
- „determinierbar“ als Absolutforderung für stochastische LLM-Systeme,
- „unabhängig“ ohne explizite Aussage, wovon unabhängig und wozu gekoppelt.

---

## Kandidatenraum

### Ausgangsbasis aus dem bisherigen Brainstorming
Die bisherige Chatbasis enthält u. a. folgende Rohkandidaten oder Rohcluster:

- evolvierbar
- weiterentwicklungstauglich
- weiterentwicklungsfähig
- optimierbar
- selbstverbessernd
- selbstoptimierend
- adaptiv
- nachvollziehbar
- beobachtbar
- suchbar
- wiederauffindbar
- navigierbar
- strukturierbar
- maschinenlesbar
- menschenlesbar
- persistent
- effizient
- schnell
- leistungsfähig
- belastbar
- stabil
- kontrollierbar
- regelbar
- steuerbar
- redundanzfrei
- widerspruchsfrei
- modular
- reparierbar
- zusammenhängend
- automatisierbar
- wiederholbar
- algorithmisierbar
- determinierbar

Diese Liste wurde im Folgenden **normalisiert, disambiguiert und erweitert**.

---

### A) Zusätzliche Kandidaten für LLM-Verhaltenssteuerung

| Kandidat | Kurzbeschreibung | Herkunft |
|---|---|---|
| Zweck- und Geltungsbindung | Zielbild, Scope und Nicht-Geltung müssen explizit sein | repo + NIST + PromptEval |
| Epistemische Ebenentrennung | Beobachtung, Beleg, Hypothese, Kriterium, Empfehlung, Schritt trennen | repo + CheckList + NIST |
| Explizitheit kritischer Annahmen | implizite Vorannahmen sichtbar machen | repo + PromptEval |
| Vorfestlegungsdisziplin | nicht vorschnell festschreiben, was selbst Analysegegenstand ist | repo |
| Auditierbarkeit | Entscheidungen, Annahmen, Blocker später rekonstruierbar | repo + NIST |
| Bounded Operationalisierbarkeit | Arbeit in begrenzte, prüfbare Schritte zerlegbar | repo + scalable oversight |
| Unsicherheitsmarkierung | Unsicherheit sprachlich und kalibriert ausdrücken | Lin et al.; Kadavath et al. |
| Verhaltenstestbarkeit | Verhalten nicht nur nach Freitextqualität, sondern mit verifizierbaren Tests prüfen | CheckList; IFEval |
| Adversarial prüfbare Robustheit | Verhalten auch gegen red-teaming / hostile inputs prüfen | Perez et al.; NIST |
| Oversight-Fähigkeit | menschliche oder governance-seitige Übersteuerung bleibt möglich | Bowman et al.; NIST |
| Regelgebundene Selbstkritik | Selbstkorrektur nur unter expliziten Regeln/Prinzipien | Bai et al. |
| Portierbarkeit | unterscheiden, was global, threadnah oder bloß Rendering ist | repo |
| Driftresistenz | Verhalten darf sich nicht unbemerkt von führenden Verträgen lösen | repo + technical debt |
| Kein zweiter semantischer Ursprung | gerenderte Prompts oder UI-Hinweise dürfen keine konkurrierende Wahrheit werden | repo |

### B) Zusätzliche Kandidaten für ASWE_KnowledgeOS-Architektur

| Kandidat | Kurzbeschreibung | Herkunft |
|---|---|---|
| Terminologische Primärordnung | Begriff vor Benennung vor Klassifikation vor Regelung | repo + ISO 704/1087 |
| Ontologische Trennschärfe | Kategorie, Instanz, Beobachtung, Aussage, Beleg usw. nicht kollabieren | repo + OWL + PROV-O |
| Provenienzfähigkeit | Herkunft, Stützung und Zeitbezug explizit modellierbar | PROV-O + repo |
| Beobachtung–Aussage–Beleg-Staffel | epistemische Minimalordnung der Erkenntnisrepräsentation | repo + PROV/SSN |
| Adressierbarkeit / Referenzierbarkeit | Zustände, Artefakte und Entscheidungen eindeutig verweisbar | repo + Architekturdisziplin |
| Wiederauffindbarkeit | relevante Artefakte später auffindbar | Brainstorming + repo |
| Pfad- und Interface-Explizitheit | Übergänge nur über explizite Payloads, Handoffs, Gates | repo + 42010 + autonomic systems |
| Autoritätsgrenzen | semantische, architektonische und operative Geltung nicht vermischen | repo |
| Mirror-/Adapter-Asymmetrie | Spiegelungen und Adapter sind nicht semantischer Ursprung | repo |
| Governierte Evolvierbarkeit | Verbesserung nur unter Erhalt der Kerninvarianten | self-adaptive systems + repo |
| Modularität mit expliziter Kopplung | nicht absolute Unabhängigkeit, sondern kontrollierte Kopplung | 42010 + technical debt + repo |
| Verifikationsfähigkeit | Regeln, Übergänge und Zustände prüfbar machen | repo + architecture quality |
| Reparierbarkeit | lokale Korrektur möglich, ohne Gesamtsemantik zu destabilisieren | technical debt + autonomic |
| Budget- und Schleifendisziplin | Iteration und Selbstverbesserung brauchen Abbruch- und Rückgaberegeln | repo + autonomic |

### Gemeinsame Kopplungskandidaten

| Kandidat | Kurzbeschreibung | Herkunft |
|---|---|---|
| Evaluation vor Operationalisierung | erst prüfen, dann rendern oder materialisieren | repo + CheckList + NIST |
| Kontrollierte Selbstverbesserung | Verbesserung nur unter Beobachtung, Gate-Logik und Rückgabepflicht | repo + autonomic systems |
| Keine direkte Kurzschlussableitung | keine direkte Ableitung von Evidenz zu Policy oder von Delta zu finaler Kanonisierung | repo |
| Explizite Rückgabepunkte | jeder Teilpfad braucht Rückgabeziel und Stopregel | repo + oversight |
| Nicht-Kollaps von Spiegel und Ursprung | gerenderte Oberfläche, Mirror oder thread-lokale Guidance bleibt abgeleitet | repo |
| Prüfbare Traceability | Änderung, Entscheidung und Begründung verknüpfbar | 42010 + PROV-O + repo |
| Lesbarkeit dualer Art | maschinen- und menschenlesbar, aber als Folgeprinzip, nicht als alleiniger Ursprung | SKOS/OWL/Repo |
| Governance-vorrangige Adaptivität | Adaptivität nie ohne Governance- und Autoritätsrahmen | NIST + autonomic + repo |

### Vorläufig sekundäre oder abgeleitete Qualitätsattribute
Diese Begriffe sind relevant, aber **nicht prima facie kernaxiomatisch**:

- schnell
- effizient
- leistungsfähig
- belastbar
- stabil
- redundanzfrei
- menschenlesbar
- maschinenlesbar
- persistent
- navigierbar
- suchbar
- wiederauffindbar
- automatisierbar
- wiederholbar
- algorithmisierbar
- determinierbar

Begründung: Sie sind meist **Folgeanforderungen**, **Designziele** oder **prüfbare Qualitätsattribute**, nicht notwendigerweise **konstitutive Gründungsbedingungen**.

---

## Prüfmatrix

Bewertungsskala:

- **H** = hoch / stark erfüllt
- **M** = mittel / teilweise erfüllt
- **N** = niedrig / unzureichend

Axiomtauglichkeit bedeutet hier: konstitutive Tragfähigkeit als Gründungsaxiom.

| Kandidat | Bereich | Kohärenz | Nicht-Zirkularität | Abgrenzbarkeit | Operationalisierbarkeit | Axiomtauglichkeit | Befund |
|---|---|---:|---:|---:|---:|---:|---|
| Zweck- und Geltungsbindung | A | H | H | H | H | H | tragfähig |
| Epistemische Ebenentrennung | A/K | H | H | H | H | H | tragfähig |
| Auditierbarkeit | A/K | H | H | H | H | H | tragfähig |
| Bounded Operationalisierbarkeit | A/K | H | H | H | H | H | tragfähig |
| Verhaltenstestbarkeit | A | H | H | H | H | H | tragfähig |
| Unsicherheitsmarkierung | A | H | H | H | M | M-H | tragfähig, aber kalibrierungsabhängig |
| Explizitheit | A | H | H | M | M | M | besser als Unterprinzip führen |
| Vorfestlegungsdisziplin | A | H | H | M | M | M | Unterprinzip von Zweck-/Scope-Bindung |
| Red-Teamability | A | H | H | H | H | M-H | als Unterfall von Verhaltenstestbarkeit |
| Oversight-Fähigkeit | A/K | H | H | H | M | H | tragfähig |
| Terminologische Primärordnung | B | H | H | H | H | H | tragfähig |
| Ontologische Trennschärfe | B | H | H | H | H | H | tragfähig |
| Provenienzfähigkeit | B/K | H | H | H | H | H | tragfähig |
| Beobachtung–Aussage–Beleg-Staffel | B/K | H | H | H | H | H | tragfähig |
| Adressierbarkeit / Referenzierbarkeit | B | H | H | H | H | H | tragfähig |
| Pfad- und Interface-Explizitheit | B/K | H | H | H | H | H | tragfähig |
| Mirror-/Adapter-Asymmetrie | B/K | H | H | H | H | H | tragfähig |
| Governierte Evolvierbarkeit | B/K | H | M | H | M | H | tragfähig |
| Modularität mit expliziter Kopplung | B | H | H | M | M | M-H | tragfähig, aber als Strukturprinzip |
| Reparierbarkeit | B | H | H | M | M | M | eher Design-/Qualitätsprinzip |
| Stabilität | B | M | H | M | M | M | abgeleitetes Ziel |
| Effizienz / Schnelligkeit | A/B | H | H | H | H | N | sekundäres Qualitätsattribut |
| Selbstoptimierung | A/B | M | M | M | N | N-M | nur governiert akzeptabel |
| Determinierbarkeit | A/B | M | H | H | M | N-M | zu absolut; konflikthaft zu Adaptivität |
| Maschinen-/Menschenlesbarkeit | B/K | H | H | M | H | M | Folgeprinzipien aus Referenzierbarkeit + Explizitheit |

### Zwischenbefund
Die stärksten Kandidaten clustern in drei Familien:

1. **epistemische Disziplin**  
   Zweck-/Scope-Bindung, Ebenentrennung, Beobachtung–Aussage–Beleg, Unsicherheitsmarkierung;
2. **architektonische Explizitheit**  
   Terminologische Primärordnung, ontologische Trennschärfe, Pfad- und Interface-Explizitheit, Referenzierbarkeit;
3. **governierte Veränderung**  
   Auditierbarkeit, boundedness, Oversight, governierte Evolvierbarkeit, Mirror-/Adapter-Asymmetrie.

---

## Selektionskonzept

### 1. Normalisierungsschritt
Vor Selektion werden Kandidaten in vier Klassen zerlegt:

- **Kernaxiom**
- **Designprinzip**
- **Qualitätsattribut**
- **lokale Governance-/Implementierungsregel**

Beispiele:

- „schnell“ → Qualitätsattribut
- „ein Writer-Pfad“ → lokale Governance-/Implementierungsregel
- „Beobachtung ≠ Aussage ≠ Beleg“ → Kernaxiom
- „Mirror ist nicht Ursprung“ → Kernaxiom oder starkes Designprinzip mit axiomatischer Funktion

### 2. Positivkriterien für Kernaxiome
Ein Kandidat wird nur dann als Kernaxiom geführt, wenn er die meisten der folgenden Kriterien erfüllt:

1. **Konstitutive Notwendigkeit**  
   Ohne ihn kollabiert die Ordnung des Gegenstands.
2. **Invarianzcharakter**  
   Er bleibt über Workstreams, Tools und konkrete Implementierungen hinweg tragfähig.
3. **Nicht-Derivativität**  
   Er ist nicht bloß Folge eines anderen Prinzips.
4. **Hohe Reichweite**  
   Er erklärt mehrere andere Regeln oder Qualitätsattribute.
5. **Governance-Relevanz**  
   Seine Verletzung erzeugt nicht nur lokale Unschärfe, sondern strukturelle Fehlsteuerung.
6. **Prüfbare Proxy-Operationalisierung**  
   Es gibt beobachtbare Indikatoren oder Gates.
7. **Abgrenzbarkeit**  
   Er lässt sich von Nachbarbegriffen sauber unterscheiden.

### 3. Ausschlusskriterien
Ein Kandidat wird **nicht** Kernaxiom, wenn er primär:

- Leistungsoptimierung ausdrückt,
- nur ein Tool-/Adapterdetail beschreibt,
- rein lokal aus einem bestehenden Vertrag stammt,
- ohne weitere Begriffe nicht operationalisierbar ist,
- mit weniger grundlegenden Axiomen hinreichend erklärbar ist.

### 4. Umgang mit Redundanz
Synonyme und nahe Nachbarn werden geclustert:

- weiterentwicklungstauglich / weiterentwicklungsfähig / evolvierbar  
  → **Governierte Evolvierbarkeit**
- suchbar / navigierbar / wiederauffindbar  
  → **Adressierbarkeit / Referenzierbarkeit / Wiederauffindbarkeit**
- kontrollierbar / regelbar / steuerbar  
  → **Steuerbarkeit unter Oversight**
- menschenlesbar / maschinenlesbar  
  → **duale Lesbarkeit**, nachgeordnet zu Explizitheit und Referenzierbarkeit

### 5. Umgang mit Spannungen
Spannungen werden **nicht** durch Wahl eines Pols gelöst, sondern durch präzisierende Oberbegriffe:

- adaptiv vs. determinierbar  
  → **governierte Adaptivität**, nicht absolute Determiniertheit
- unabhängig vs. zusammenhängend  
  → **Modularität mit expliziter Kopplung**
- schnell vs. auditierbar  
  → Auditierbarkeit ist primär; Geschwindigkeit ist sekundäres Optimierungsziel
- selbstoptimierend vs. kontrollierbar  
  → **kontrollierte Selbstverbesserung** statt freier Selbstoptimierung

### 6. Selektionsregel
Ein Kandidat wird als Kernaxiom übernommen, wenn er:

- mindestens **5 von 7 Positivkriterien stark** erfüllt,
- nicht unter ein stärkeres Axiom subsumierbar ist,
- keine unaufgelöste Kollision mit einem bereits ausgewählten Kernaxiom erzeugt,
- über mindestens einen beobachtbaren Prüfpfad verfügt.

---

## Kernaxiome

## A) Kernaxiome für LLM-Verhaltenssteuerung

### A1. Zweck- und Geltungsbindungsaxiom
**Definition:**  
Jede verhaltenssteuernde Instruktion muss Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung explizit binden, bevor operative Ausführung oder Optimierung erfolgt.

**Warum Kernaxiom:**  
Ohne explizite Zweck- und Scope-Bindung kollabieren Promptarbeit, Evaluationslogik und Governance in unscharfe, driftanfällige Direktantworten.

**Operationale Indikatoren:**  
- Zielbild ist vom Mittel getrennt;
- Nicht-Geltung ist benannt;
- Scope-Drift wird als Fehlerklasse behandelt.

---

### A2. Epistemisches Trennungsaxiom
**Definition:**  
Beobachtung, Beleg, Hypothese, Maßstab, Kriterium, Empfehlung und Implementierungsschritt dürfen nicht stillschweigend ineinander übergehen.

**Warum Kernaxiom:**  
Dieses Axiom verhindert Scheinklarheit, verdeckte Vorentscheidungen und unprüfbare Begründungsketten.

**Operationale Indikatoren:**  
- explizite Abschnittstrennung;
- getrennte Markierung von Annahmen und Befunden;
- keine Belegsimulation durch Stil oder Autoritätsrhetorik.

---

### A3. Auditierbarkeits- und Unsicherheitsaxiom
**Definition:**  
LLM-Verhalten muss seine tragenden Annahmen, Unsicherheiten, Belegbasis und Entscheidungsschritte so markieren, dass spätere Prüfung, Revision und Fehlersuche möglich bleiben.

**Warum Kernaxiom:**  
Auditierbarkeit macht Verhalten nicht automatisch richtig, aber ohne Auditierbarkeit ist Fehlsteuerung weder lokalisierbar noch lernfähig.

**Operationale Indikatoren:**  
- Unsicherheitsmarkierung vorhanden;
- Belegbasis benannt;
- offene Punkte bleiben sichtbar;
- Revision ist semantisch anschlussfähig.

---

### A4. Boundedness- und Oversight-Axiom
**Definition:**  
LLM-Arbeit darf nur in bounded, rückgabefähigen und übersteuerbaren Schritten stattfinden; freie Entgrenzung ist kein zulässiger Default.

**Warum Kernaxiom:**  
Es sichert Kontrollierbarkeit, minimiert Drift und erhält menschliche oder systemische Autorität über irreversible Entscheidungen.

**Operationale Indikatoren:**  
- kleinster sicherer nächster Schritt benennbar;
- Stop- bzw. Return-Bedingungen explizit;
- keine implizite Autoritätsausweitung.

---

### A5. Verhaltenstestbarkeitsaxiom
**Definition:**  
LLM-Verhalten muss anhand expliziter, reproduzierbarer und möglichst verifizierbarer Tests überprüfbar sein, nicht nur anhand subjektiver Antwortqualität.

**Warum Kernaxiom:**  
Ohne Verhaltenstestbarkeit bleibt Verhaltenssteuerung rhetorisch statt technisch überprüfbar.

**Operationale Indikatoren:**  
- verifizierbare Instruktionskriterien;
- Gegenbeispielfälle / red-team-Fälle;
- wiederholbare Prüffälle statt nur Einzelfalleindruck.

---

## B) Kernaxiome für ASWE_KnowledgeOS-Architektur

### B1. Terminologische Primärordnung
**Definition:**  
Im System wird zuerst geklärt, was ein Begriff bedeutet; erst danach folgen Benennung, Klassifikation, Regelung, Prozess und Implementierung.

**Warum Kernaxiom:**  
Es verhindert, dass lokale Artefakte oder Toolstrukturen rückwirkend Begriffe definieren.

**Operationale Indikatoren:**  
- Begriff vor Taxonomie;
- Definition vor Gate;
- keine Governanceentscheidung auf ungeklärter Terminologie.

---

### B2. Ontologisches Trennschärfeaxiom
**Definition:**  
Kategorie, Instanz, Beobachtung, Aussage, Beleg, Regel, Prüfung, Rolle und Mirror sind als verschiedene Objektklassen bzw. Relationen zu behandeln und dürfen nicht kollabieren.

**Warum Kernaxiom:**  
Dieses Axiom stabilisiert die semantische Architektur und macht spätere Ableitungen überhaupt erst sauber.

**Operationale Indikatoren:**  
- kanonische Nicht-Gleichsetzungen;
- getrennte Artefaktrollen;
- keine Verwechslung von SSOT, Objektklasse und Autoritätsrelation.

---

### B3. Provenienz- und Referenzierbarkeitsaxiom
**Definition:**  
Wissen, Zustände, Entscheidungen und Belege müssen adressierbar, referenzierbar und mit Herkunft versehen sein.

**Warum Kernaxiom:**  
Ohne Provenienz und Referenzierbarkeit gibt es keine belastbare Wiederauffindbarkeit, kein sauberes Handoff und keine belastbare Prüfung.

**Operationale Indikatoren:**  
- eindeutige Anker;
- Herkunft / Zeitbezug;
- verlinkbare oder eindeutig benennbare Artefakte;
- Traceability zwischen Aussage und Beleg.

---

### B4. Pfad- und Interface-Explizitheitsaxiom
**Definition:**  
Übergänge zwischen Erkenntnispfaden dürfen nur über explizite Interfaces, Payloads, Gates und Rückgabepunkte erfolgen; Kurzschlussableitungen sind unzulässig.

**Warum Kernaxiom:**  
Es schützt vor semantischer, architektonischer und operativer Kurzschlussbildung.

**Operationale Indikatoren:**  
- zulässige Übergänge benannt;
- verbotene Sprünge benannt;
- Pfadwechsel nur mit Payload und Rückgabeziel.

---

### B5. Governierte Evolvierbarkeitsaxiom
**Definition:**  
Die Architektur muss evolvierbar sein, aber nur so, dass Kerninvarianten erhalten, Drift sichtbar und Änderungen prüf- sowie reversionsfähig bleiben.

**Warum Kernaxiom:**  
Evolvierbarkeit ohne Governance erzeugt Drift; Governance ohne Evolvierbarkeit erzeugt Erstarrung.

**Operationale Indikatoren:**  
- definierte Änderungsobjekte;
- Stop-/Gate-Logik für Verbesserung;
- explizite Nicht-Evolvierbarkeiten;
- lernfähige Nachzugslogik.

---

## Gemeinsame Kopplungsaxiome

### K1. Beobachtung–Aussage–Beleg-Axiom
**Definition:**  
Sowohl im LLM-Verhalten als auch in der Architektur gilt eine minimale epistemische Staffel: Beobachtung ist nicht Aussage, Aussage ist nicht Beleg.

**Funktion:**  
Es ist die gemeinsame Minimalbedingung für Erkenntnisdisziplin, Evidenzaufnahme, Promptanalyse und spätere Governance.

---

### K2. Evaluations-vor-Operationalisierungs-Axiom
**Definition:**  
Bewertung, Vorprüfung und Trennschärfung gehen Rendering, Materialisierung, Operationalisierung oder Automation voraus.

**Funktion:**  
Es schützt beide Bereiche davor, unreife oder mehrdeutige Semantik zu früh in operative Wirklichkeit zu übersetzen.

---

### K3. Adapter-/Mirror-Asymmetrieaxiom
**Definition:**  
Adapterflächen, gerenderte Prompts und Runtime-Mirrors sind abgeleitete Arbeitsflächen, nicht semantischer Ursprung.

**Funktion:**  
Es verhindert konkurrierende Wahrheitsquellen und hält Primärlogik, Governance und Materialisierung auseinander.

---

## Abgrenzungsbegründungen

### 1. Warum „Effizienz“, „Schnelligkeit“ und „Leistungsfähigkeit“ keine Kernaxiome sind
Diese Begriffe sind wichtig, aber sie sind **Outcome- oder Optimierungsgrößen**.  
Sie sagen nicht, **wodurch** das System konstitutiv geordnet wird, sondern **wie gut** es unter dieser Ordnung performt. Ein System kann schnell und zugleich semantisch falsch strukturiert sein.

### 2. Warum „Selbstoptimierung“ nicht als unqualifiziertes Kernaxiom taugt
„Selbstoptimierung“ beschreibt ein gewünschtes Ergebnis, nicht die zulässige Form der Verbesserung.  
Ohne Gate-, Oversight- und Rückgaberegeln würde daraus freie, potenziell driftende Autonomie. Deshalb wird der Begriff nur in der Form **kontrollierte Selbstverbesserung** akzeptiert.

### 3. Warum „Determinierbarkeit“ kein Kernaxiom ist
Für stochastische LLM-Systeme ist absolute Determiniertheit weder realistisch noch zwingend wünschenswert. Kernrelevant ist stattdessen:

- boundedness,
- Auditierbarkeit,
- Verhaltenstestbarkeit,
- klare Stop- und Rückgabebedingungen.

Deterministische Teilprüfungen können wichtig sein, aber absolute Determiniertheit ist kein sinnvoller universeller Gründungssatz.

### 4. Warum „Menschenlesbarkeit“ und „Maschinenlesbarkeit“ sekundär bleiben
Beide sind hochrelevante Qualitätsziele, aber sie hängen von grundlegenderen Prinzipien ab:

- Explizitheit,
- Referenzierbarkeit,
- Provenienzfähigkeit,
- ontologischer Trennschärfe.

Ohne diese Basen bleiben „lesbar“ und „maschinenlesbar“ zu oberflächlich.

### 5. Warum „Modularität“ nicht allein steht
Modularität ist notwendig, aber nicht als absolute Entkopplung. In komplexen Wissens- und Agentensystemen ist nicht maximale Unabhängigkeit das Ziel, sondern **kontrollierte Kopplung über explizite Interfaces**. Deshalb wurde Modularität in B4 und B5 mitgeführt statt isoliert verabsolutiert.

### 6. Warum „ein Writer-Pfad“ oder konkrete Gate-Namen keine Kernaxiome sind
Dies sind **starke lokale Governance-Instanziierungen**, aber keine allgemeingültigen Gründungsaxiome.  
Sie lassen sich aus tieferen Prinzipien ableiten:

- Autoritätsgrenzen,
- Pfad- und Interface-Explizitheit,
- Adapter-/Mirror-Asymmetrie,
- Evaluations-vor-Operationalisierungs-Logik.

### 7. Warum „Persistenz“, „Wiederholbarkeit“ und „Automatisierbarkeit“ sekundär bleiben
Sie sind operative und systemische Qualitätsanforderungen, aber nicht notwendig basal.  
Ein System kann konzeptuell korrekt axiombasiert sein, auch bevor Persistenz- oder Automationsschichten vollständig ausgereift sind.

### 8. Warum „Governierte Evolvierbarkeit“ Kernstatus erhält
Der bisherige Brainstorming-Raum zielt stark auf Selbstverbesserung, Weiterentwicklung und Adaptivität. Die Literatur zu selbstadaptiven und autonomen Systemen zeigt aber, dass Adaptivität nur dann tragfähig ist, wenn Modelle, Feedback, Assurance, Ziele und Kontrollschleifen explizit bleiben. Deshalb ist nicht bloße Evolvierbarkeit, sondern **governierte** Evolvierbarkeit der belastbare Kern.

---

## Self-Audit

### Trennung der Ebenen
- **Beobachtung:** bisheriger Brainstorming-Raum ist heterogen und ebenengemischt.
- **Aussage:** ein belastbarer axiomatischer Kern ist durch Normalisierung und Selektion ableitbar.
- **Hypothese:** Verhaltenstestbarkeit und bounded Oversight sind für A konstitutiver als bloße Explizitheit.
- **Maßstab/Kriterium:** Konstitutivität, Invarianzcharakter, Reichweite, Abgrenzbarkeit, Operationalisierbarkeit.
- **Empfehlung:** Kern klein halten, Sekundärattribute separat führen.

### Begriffe vor Strukturen vor Prozessen vor Implementierung
Erfüllt:
- zuerst Begriffe und Kandidatenraum,
- dann Prüfmatrix und Selektionslogik,
- erst danach Kernaxiome und deren operative Konsequenzen,
- keine Festschreibung auf konkrete Implementierungsartefakte als Ursprung.

### Selektionsentscheidungen explizit begründet?
Ja:
- Positiv- und Ausschlusskriterien benannt,
- Synonymcluster aufgelöst,
- Spannungen explizit behandelt,
- sekundäre Qualitätsattribute von Kernaxiomen getrennt.

### Verbliebene Unsicherheiten
1. **LLM-verhaltenssteuernde Literatur ist epistemisch ungleichmäßig.**  
   Ein Teil der einschlägigen Evidenz liegt in starken Preprints oder institutionellen Reports, nicht ausschließlich in lang etablierten peer-reviewten Standards.
2. **„Axiom“ ist in diesem Feld kein kanonisch standardisierter Fachbegriff.**  
   Die hier vorgeschlagene Verwendung ist systemtheoretisch und architekturmethodisch, nicht mathematisch streng-formal.
3. **Einige Kandidaten könnten in späteren Repo-Phasen ihren Rang wechseln.**  
   Etwa könnte duale Lesbarkeit unter stärkerem Automationsgrad von sekundär zu quasi-konstitutiv aufsteigen.

### Gesamturteil
Das Vorgehen ist für den aktuellen Zweck **tragfähig**, **begrifflich diszipliniert** und **anschlussfähig**.  
Die stärkste noch verbleibende Unsicherheit liegt nicht in der internen Architektur, sondern in der noch jungen externen LLM-spezifischen Literaturbasis zur Prompt- und Verhaltenssteuerung.

---

## Quellen

### Bewertungslegende
- **S** = Standard / normative Referenz
- **P** = peer-reviewte wissenschaftliche Primärquelle
- **R** = institutioneller Report
- **PP** = Preprint / noch nicht oder nicht primär peer-reviewt
- **I** = repo-interner Anwendungsbeleg

---

### 1) Externe akademische Primärquellen und Standards – vorrangig

1. **ISO/IEC/IEEE 42010:2022** – *Software, systems and enterprise — Architecture description*.  
   Typ: **S**  
   Relevanz: trennt Architektur von Architekturbeschreibung; stark für B1, B4, B5.  
   URL: https://www.iso.org/standard/74393.html

2. **Ribeiro, Wu, Guestrin, Singh (2020)** – *Beyond Accuracy: Behavioral Testing of NLP Models with CheckList*. ACL 2020.  
   Typ: **P**  
   Relevanz: zentrale Stütze für A5 Verhaltenstestbarkeit.  
   URL: https://aclanthology.org/2020.acl-main.442/

3. **Weidinger et al. (2022)** – *Taxonomy of Risks posed by Language Models*. FAccT 2022. DOI: 10.1145/3531146.3533088  
   Typ: **P**  
   Relevanz: Stütze für A1, A3, A4; macht Risikofelder und Mitigationslogik explizit.  
   URL: https://www.research.ed.ac.uk/en/publications/taxonomy-of-risks-posed-by-language-models/

4. **Cheng et al. (2009)** – *Software Engineering for Self-Adaptive Systems: A Research Roadmap*. LNCS 5525. DOI: 10.1007/978-3-642-02161-9_1  
   Typ: **P**  
   Relevanz: starke Basis für B5 governierte Evolvierbarkeit und kontrollierte Adaptivität.  
   URL: https://research.monash.edu/en/publications/software-engineering-for-self-adaptive-systems-a-research-roadmap

5. **White et al. (2006)** – *Autonomic computing: Architectural approach and prototype*. Integrated Computer-Aided Engineering. DOI: 10.3233/ICA-2006-13206  
   Typ: **P**  
   Relevanz: starke Basis für kontrollierte Selbstverbesserung, High-level objectives, self-* unter Architekturprinzipien.  
   URL: https://research.ibm.com/publications/autonomic-computing-architectural-approach-and-prototype

6. **Sculley et al. (2015)** – *Hidden Technical Debt in Machine Learning Systems*. NeurIPS 2015.  
   Typ: **P**  
   Relevanz: Drift, Entanglement, versteckte Kopplungen; relevant für B4/B5 und A-Driftresistenz.  
   URL: https://research.google/pubs/hidden-technical-debt-in-machine-learning-systems/

7. **SKOS Simple Knowledge Organization System Reference (W3C Recommendation, 2009)**  
   Typ: **S**  
   Relevanz: Stütze für B1 und B2; Taxonomie ≠ volle Ontologie.  
   URL: https://www.w3.org/TR/skos-reference

8. **PROV-O: The PROV Ontology (W3C Recommendation, 2013)**  
   Typ: **S**  
   Relevanz: Stütze für B3 und K1; Provenienz, Ableitungen, Herkunft.  
   URL: https://www.w3.org/TR/prov-o/

9. **Semantic Sensor Network Ontology / SOSA (W3C Recommendation, 2017)**  
   Typ: **S**  
   Relevanz: Stütze für Beobachtungsmodellierung und Trennung von Beobachtung/Gegenstand/Eigenschaft.  
   URL: https://www.w3.org/TR/vocab-ssn/

10. **OWL 2 Web Ontology Language Primer (Second Edition)**  
    Typ: **S**  
    Relevanz: Stütze für Klassen/Individuen/Relationen und ontologische Trennschärfe.  
    URL: https://www.w3.org/standards/history/owl2-primer/

---

### 2) Externe ergänzende Preprints / institutionelle Reports

11. **Bai et al. (2022)** – *Constitutional AI: Harmlessness from AI Feedback*. arXiv:2212.08073  
    Typ: **PP**  
    Relevanz: Regelgebundene Selbstkritik, Prinzipienlisten, kontrollierte Selbstverbesserung.  
    URL: https://arxiv.org/abs/2212.08073

12. **Zhou et al. (2023)** – *Instruction-Following Evaluation for Large Language Models*. arXiv:2311.07911  
    Typ: **PP**  
    Relevanz: verifizierbare Instruktionsbefolgung; relevant für A5.  
    URL: https://arxiv.org/abs/2311.07911

13. **Lin, Hilton, Evans (2022)** – *Teaching Models to Express Their Uncertainty in Words*. arXiv:2205.14334  
    Typ: **PP**  
    Relevanz: Unsicherheitsmarkierung und Kalibrierungsargumente für A3.  
    URL: https://arxiv.org/abs/2205.14334

14. **Bowman et al. (2022)** – *Measuring Progress on Scalable Oversight for Large Language Models*. arXiv:2211.03540  
    Typ: **PP**  
    Relevanz: Oversight-Logik und bounded Assistenz; relevant für A4.  
    URL: https://arxiv.org/abs/2211.03540

15. **Perez et al. (2022)** – *Red Teaming Language Models with Language Models*. arXiv:2202.03286  
    Typ: **PP**  
    Relevanz: adversariale Prüfbarkeit; Unterbau für A5.  
    URL: https://arxiv.org/abs/2202.03286

16. **Bommasani et al. (2021)** – *On the Opportunities and Risks of Foundation Models*. arXiv:2108.07258  
    Typ: **PP / Überblick mit hoher Feldrelevanz**  
    Relevanz: breiter Risiko- und Systemkontext für A und K.  
    URL: https://arxiv.org/abs/2108.07258

17. **NIST AI 600-1 (2024)** – *Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile*  
    Typ: **R**  
    Relevanz: risikoorientierte Ergänzung, besonders zu Govern, Map, Measure, Manage; stark für A1, A3, A4 und K2.  
    URL: https://doi.org/10.6028/NIST.AI.600-1

---

### 3) Repo-interne Referenzen – Anwendungsbeleg, nicht Primärbeweis

18. **ASWE PromptEval Contract (2026-04-20)**  
    Typ: **I**  
    Relevanz: lokale Operationalisierung von Zielbildklarheit, Scope-Disziplin, Ebenentrennung, Auditierbarkeit, Portierbarkeit.

19. **ASWE Prompt Preflight Operationalization (2026-04-20)**  
    Typ: **I**  
    Relevanz: lokale Vorprüfregeln für Ziel, Gegenstand, Geltung, epistemischen Status und Abstraktionsniveau.

20. **ASWE KnowledgeOS Abstraktions- und Ebenenrouter V1 (2026-03-26)**  
    Typ: **I**  
    Relevanz: Gegenstandsbereich vor Wissensebene vor Abstraktionsgrad; zentrale lokale Strukturstütze.

21. **ASWE KnowledgeOS Ontologische Basis V1 (2026-03-26)**  
    Typ: **I**  
    Relevanz: primitive Grundbegriffe und kanonische Nicht-Gleichsetzungen.

22. **ASWE Execution System – Target Contract (2026-04-13)**  
    Typ: **I**  
    Relevanz: Pfadobjekte, harte Trennungen, evolvierbare Systemelemente.

23. **ASWE Autonomy Infrastructure V1 (2026-04-13)**  
    Typ: **I**  
    Relevanz: boundedness, Rückgabezwang, Resume, Dead-End- und Budgetlogik.

### Gesamtbewertung der Evidenzlage
- Für **B** ist die Evidenzlage stark: Standards + Architektur- und Selbstadaptionsliteratur + interne Anschlussbelege sind gut integrierbar.
- Für **A** ist die Evidenzlage brauchbar, aber heterogener: ein Teil ist peer-reviewed, ein relevanter Teil liegt in hochwertigen Preprints bzw. institutionellen Reports.
- Die vorgeschlagenen Kernaxiome sind daher **wissenschaftlich begründet, aber nicht als naturgesetzlich bewiesen zu lesen**; sie sind eine **theoriegeleitete Architektur- und Governance-Synthese**.

```

---

## RAW_RECORD_016: ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md`
- sha256: `d52c9b2ecd0732d49c548f5b461189379be72176d895389d53f110402093e746`
- chars: 37153
- approx_tokens: 9289

```markdown
# ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2

## 1. Pre-Flight

### Zielbild
Ziel bleibt ein **begrifflich disziplinierter, extern primaer gestuetzter und operationalisierbarer Kernaxiomensatz** fuer zwei explizit gebundene Gegenstandsbereiche:

- **A)** LLM-Verhaltenssteuerung
- **B)** ASWE_KnowledgeOS-Architektur

Gesucht ist weiterhin **kein allgemeiner Qualitaetskatalog**, sondern ein Satz von **Kernaxiomen**, aus denen sich starke Designprinzipien, sekundaere Qualitaetsattribute und operative Regeln ableiten lassen. Dieses Zielbild bleibt gegenueber D1 unveraendert und darf gemaess D2 und D3 nicht aufgeweicht werden. fileciteturn11file16 fileciteturn11file12

### Gegenstand
Gegenstand sind nicht einzelne Tools, Dateien oder Workflows, sondern:

- bei **A**: Prinzipien zur Zielbindung, epistemischen Disziplin, Pruefbarkeit, Unsicherheitsmarkierung und kontrollierten Ausfuehrung von LLM-Arbeit;
- bei **B**: Prinzipien zur begrifflichen Ordnung, ontologischen Trennschaerfe, Provenienz, Referenzierbarkeit, expliziten Pfaden und governierter Evolvierbarkeit der Architektur;
- zusaetzlich: **Kopplungsaxiome**, die beide Bereiche verbinden, ohne sie zu verschmelzen.

### Geltungsbereich
Die revidierten Aussagen beanspruchen Geltung fuer:

- konzeptionelle Grundlegung,
- Prompt- und Architekturvertraege,
- Vorpruefungs-, Evaluations- und Materialisierungslogik,
- spaetere Operationalisierung in ASWE-nahen, kontrollierten Umgebungen.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:

- konkrete Oberflaechenentscheidungen,
- konkrete Dateipfade als semantischer Ursprung,
- konkrete Modellwahl,
- Kosten-, Latenz- oder Throughput-Optimierung als Primaerziel,
- lokale Governance-Instanzen, soweit sie nicht aus allgemeineren Prinzipien ableitbar sind.

### Epistemischer Status
- **Beobachtung:** D1 liefert bereits einen tragfaehigen ersten Kern und eine belastbare Trennung zwischen Kernaxiomen und sekundaeren Merkmalen. fileciteturn11file9 fileciteturn11file4
- **Aussage:** D3 verlangt eine Revision entlang von Terminologiepolitik, Statusklarheit, Nicht-Geltung, Grenzfaellen, Phasenrobustheit und Kopplungsstabilitaet. fileciteturn11file2 fileciteturn11file5
- **Hypothese:** Mehrere A-seitige Aussagen bleiben tragfaehig, muessen aber enger gefasst werden, wenn ihre primaere Stuetzung weiterhin aus Preprints oder Reports stammt. fileciteturn11file15 fileciteturn11file14
- **Massstab:** Kernaxiomtauglichkeit = konstitutive Notwendigkeit, Nicht-Derivativitaet, Reichweite, Abgrenzbarkeit, pruefbare Proxy-Operationalisierung.
- **Empfehlung:** D1 wird nicht neu erfunden, sondern entlang der in D2 und D3 definierten Revisionspflichten verschaerft.

### Abstraktionsniveau
- primaer: **Grundsatz**
- sekundaer: **systemisches Strukturmodell**
- noch nicht: lokale Implementierung

### Was aus D1 inhaltlich tragend bleibt
1. die Zielbildbindung auf Kernaxiome statt Wunschkatalog, fileciteturn11file9
2. die Dreiteilung in A, B und Kopplung, fileciteturn11file9
3. die Trennung zwischen Kernaxiomen, Designprinzipien und sekundaeren Qualitaetsattributen, fileciteturn11file6 fileciteturn11file4
4. die Einschaetzung, dass B evidenzmaessig staerker fundiert ist als A. fileciteturn11file1

### Was gemaess D3 zwingend zu ueberarbeiten ist
1. Terminologie-Register und Benennungsklassen, fileciteturn11file2
2. explizite Statusklasse fuer jeden Kandidaten, fileciteturn11file5
3. Quellenrollenkennzeichnung, fileciteturn11file14
4. Nicht-Geltung, Spannungen und Grenzfaelle je Kernaxiomcluster, fileciteturn11file5
5. Phasenrobustheit, Automationssensitivitaet und Kopplungsstabilitaet, fileciteturn11file5
6. sprachliche Bereinigung ungovernierter Mischformen. fileciteturn11file8

---

## 2. Terminologie-Register

### Benennungsklassen
1. **deutscher Primaerbegriff**  
2. **englischer Alias**  
3. **Eigenname**  
4. **literaturgebundener Originalterm**

| Begriff im Dokument | Benennungsklasse | Bevorzugte Form | Alias / Originalterm | Begründung |
|---|---|---|---|---|
| LLM-Verhaltenssteuerung | deutscher Primaerbegriff | LLM-Verhaltenssteuerung | – | scope-klaerend und lokal etabliert |
| ASWE_KnowledgeOS-Architektur | deutscher Primaerbegriff | ASWE_KnowledgeOS-Architektur | – | scope-klaerend und lokal etabliert |
| Geltungsbereich | deutscher Primaerbegriff | Geltungsbereich | scope | deutscher Begriff ausreichend; Alias nur punktuell |
| Nicht-Geltung | deutscher Primaerbegriff | Nicht-Geltung | out of scope | definitorisch klarer im Deutschen |
| Terminologische Primaerordnung | deutscher Primaerbegriff | Terminologische Primaerordnung | – | zentrale B-seitige Leitkategorie |
| Ontologische Trennschaerfe | deutscher Primaerbegriff | Ontologische Trennschaerfe | – | zentrale B-seitige Leitkategorie |
| Provenienz | deutscher Primaerbegriff | Provenienz | provenance | deutscher Begriff fachlich tragfaehig |
| Referenzierbarkeit | deutscher Primaerbegriff | Referenzierbarkeit | addressability | deutscher Begriff ausreichend |
| Spurverfolgbarkeit | deutscher Primaerbegriff | Spurverfolgbarkeit | traceability | deutscher Primaerbegriff; englischer Alias nur in Quellennaehe |
| Selbstpruefung | deutscher Primaerbegriff | Selbstpruefung | self-audit | englische Form nicht noetig |
| begrenzt-rueckgabefaehige Schrittlogik | deutscher Primaerbegriff | begrenzt-rueckgabefaehige Schrittlogik | bounded step logic | ersetzt unpraezises boundedness |
| Aufsichtsfaehigkeit | deutscher Primaerbegriff | Aufsichtsfaehigkeit | oversight | englischer Alias literaturnah, aber Deutsch primaer |
| adversariale Pruefbarkeit | deutscher Primaerbegriff | adversariale Pruefbarkeit | red teaming | funktional praeziser als Hybridformen |
| Aussage-Quellen-Passung | deutscher Primaerbegriff | Aussage-Quellen-Passung | claim-source fit | deutscher Begriff ausreichend |
| Spiegel-/Adapter-Asymmetrie | deutscher Primaerbegriff + Eigennamebezug | Spiegel-/Adapter-Asymmetrie | Mirror / Adapter | deutsche Funktionsbezeichnung, repo-lokale Eigennamen bleiben zitierbar |
| PromptEval | Eigenname | PromptEval | – | repo-lokaler Vertragsname |
| Preflight | Eigenname | Preflight | – | repo-lokaler Verfahrensname |
| PromptPack | Eigenname | PromptPack | – | repo-lokaler Artefaktname |
| CheckList | literaturgebundener Originalterm | CheckList | – | etablierter Benchmark-/Methodentitel |
| LLMBAR | literaturgebundener Originalterm | LLMBAR | – | Benchmarkname |
| IFEval | literaturgebundener Originalterm | IFEval | – | Benchmarkname |
| PROV-O | literaturgebundener Originalterm | PROV-O | – | W3C-Standardbezeichnung |
| SKOS | literaturgebundener Originalterm | SKOS | – | W3C-Standardbezeichnung |
| SOSA/SSN | literaturgebundener Originalterm | SOSA/SSN | – | W3C-Standardbezeichnung |

### Terminologiepolitische Revisionsentscheide
- **ersetzt:** Self-Audit → Selbstpruefung
- **ersetzt:** boundedness → begrenzt-rueckgabefaehige Schrittlogik
- **ersetzt:** Red-Teamability → adversariale Pruefbarkeit
- **ersetzt:** Claim-Source-Fit → Aussage-Quellen-Passung
- **beibehalten als Eigenname oder Originalterm:** PromptEval, Preflight, PromptPack, CheckList, LLMBAR, IFEval, PROV-O, SKOS, SOSA/SSN

---

## 3. Revidierter Kandidatenraum

### A) LLM-Verhaltenssteuerung

| Kandidat | Statusklasse | Revisionsbefund |
|---|---|---|
| Ziel- und Geltungsbindung | Kernaxiom | bleibt Kern; begrifflich geschaerft und enger an Scope-/Nicht-Geltung gebunden |
| Epistemische Trennung | Kernaxiom | bleibt Kern; jetzt explizit auf Beobachtung, Aussage, Beleg, Hypothese, Kriterium, Empfehlung bezogen |
| Auditierbarkeit | Kernaxiom | bleibt Kern; enger an Revision, Fehlersuche und Begruendungsketten gebunden |
| Unsicherheitsmarkierung | Kernaxiom mit engerem Geltungsanspruch | bleibt Kern fuer hochrelevante oder pruefpflichtige Arbeit; nicht jede alltaegliche Interaktion benoetigt dieselbe Strenge |
| begrenzt-rueckgabefaehige Schrittlogik | Kernaxiom mit engerem Geltungsanspruch | bleibt Kern fuer ASWE-nahe, kontrollierte LLM-Arbeit; nicht als universelles Naturgesetz aller LLM-Nutzung formulieren |
| Aufsichtsfaehigkeit | Kernaxiom mit engerem Geltungsanspruch | bleibt Kern fuer Systeme mit delegierter oder teilautonomer Wirkung |
| Verhaltenstestbarkeit | Kernaxiom | bleibt Kern; durch peer-reviewte Evaluationsliteratur besser abgestuetzt |
| Explizitheit kritischer Annahmen | starkes Designprinzip | in A1/A2 mitgefuehrt, nicht eigenstaendig konstitutiv |
| Vorfestlegungsdisziplin | operative Regel | aus Preflight-/Analysevertrag ableitbar, nicht basaler als A1/A2 |
| adversariale Pruefbarkeit | starkes Designprinzip | wichtiger Unterfall von Verhaltenstestbarkeit, aber nicht eigener Gründungssatz |
| Portierbarkeit | starkes Designprinzip | relevant fuer Prompt-/Artefakttrennung, aber abgeleitet |
| Driftresistenz | sekundaeres Qualitaetsattribut | Folge guter Bindungs-, Audit- und Testlogik |
| regelgebundene Selbstkritik | starkes Designprinzip | wichtig, aber als konkrete Instanziierung von A3/A4 zu lesen |
| kein zweiter semantischer Ursprung | Kopplungskandidat | wird in K3 gefuehrt |

### B) ASWE_KnowledgeOS-Architektur

| Kandidat | Statusklasse | Revisionsbefund |
|---|---|---|
| Terminologische Primaerordnung | Kernaxiom | bleibt Kern; jetzt mit ISO 704:2022 statt alterer Terminologiegrundlage schaerfer fundiert |
| Ontologische Trennschaerfe | Kernaxiom | bleibt Kern; W3C- und ontologische Standardlogik stützt den definitorischen Anspruch |
| Provenienz | Kernaxiom | bleibt Kern, aber in enger Bindung an Referenzierbarkeit und Spurverfolgbarkeit |
| Referenzierbarkeit | Kernaxiom | bleibt Kern; Wiederauffindbarkeit folgt daraus, ersetzt sie aber nicht vollstaendig |
| Pfad- und Schnittstellenexplizitheit | Kernaxiom | bleibt Kern; deutsche Form ersetzt ungefilterte Interface-Sprache |
| Governierte Evolvierbarkeit | Kernaxiom | bleibt Kern; Governierung wird noch expliziter gegen freie Selbstoptimierung abgegrenzt |
| Beobachtung-Aussage-Beleg-Staffel | Kopplungskandidat | wird als K1 gefuehrt |
| Spiegel-/Adapter-Asymmetrie | Kopplungskandidat mit B-Prioritaet | wird als K3 gefuehrt |
| Modularitaet mit expliziter Kopplung | starkes Designprinzip | bleibt wichtig, aber nicht basal genug fuer Kernstatus |
| Reparierbarkeit | sekundaeres Qualitaetsattribut | Folge guter Modularitaet, Pfadlogik und Referenzierbarkeit |
| Verifikationsfaehigkeit | starkes Designprinzip | starker Systemgrundsatz, aber aus Kernaxiomen mit ableitbar |
| Budget- und Schleifendisziplin | operative Regel | starke Governance-Regel, aber nicht architekturontologisch basal |
| Wiederauffindbarkeit | sekundaeres Qualitaetsattribut | abgeleitete Folge aus Provenienz + Referenzierbarkeit |
| Persistenz | sekundaeres Qualitaetsattribut | wichtig, aber nicht primaer konstitutiv |

### K) Gemeinsame Kopplungskandidaten

| Kandidat | Statusklasse | Revisionsbefund |
|---|---|---|
| Beobachtung-Aussage-Beleg-Trennung | Kernaxiom | bleibt Kern; als K1 explizit kopplend |
| Evaluation vor Operationalisierung | Kernaxiom | bleibt Kern; nun strikter gegen vorschnelle Materialisierung abgegrenzt |
| Spiegel-/Adapter-Asymmetrie | Kernaxiom mit asymmetrischer Kopplung | bleibt Kern, aber primaer architekturseitig verankert |
| kontrollierte Selbstverbesserung | starkes Designprinzip | wird nicht als eigener Kernsatz gefuehrt, sondern aus B5 + A4 + K2 abgeleitet |
| keine direkte Kurzschlussableitung | starkes Designprinzip | in K2 und B4 mitgefuehrt |
| explizite Rueckgabepunkte | operative Regel | aus A4 und B4 ableitbar |
| duale Lesbarkeit | sekundaeres Qualitaetsattribut | bleibt wichtig; kann spaeter rangsteigen |
| Leistungsmerkmale wie Effizienz oder Schnelligkeit | sekundaeres Qualitaetsattribut | bleiben explizit ausserhalb des Kernstatus |

---

## 4. Status- und Evidenzmatrix

### Bewertungslogik
- **Evidenzniveau hoch:** primaer durch Standards oder peer-reviewte Quellen gestuetzt
- **Evidenzniveau mittel:** gemischte Stuetzung aus peer-reviewten Quellen und Reports oder aus Architektur-Analogien
- **Evidenzniveau begrenzt:** primaer aus Reports, Preprints oder starker lokaler Governance-Synthese; Geltungsanspruch entsprechend enger

| Kandidat / Abschnitt | Statusklasse | Quellenrolle | Hauptquellen | Evidenzniveau | Geltungsanspruch nach Revision |
|---|---|---|---|---|---|
| Ziel- und Geltungsbindung | Kernaxiom | definitorisch, standardsetzend, repo-lokal anwendend | P2, R1, I1, I2 | mittel | stark fuer ASWE-nahe verhaltenssteuernde Arbeit, nicht als universale Eigenschaft aller Prompts formuliert |
| Epistemische Trennung | Kernaxiom | definitorisch, standardsetzend, repo-lokal anwendend | S4, S5, I1, I2 | hoch | breit fuer A und B tragfaehig |
| Auditierbarkeit | Kernaxiom | definitorisch, standardsetzend, empirisch, repo-lokal anwendend | S2, R1, P3, I1 | mittel bis hoch | breit fuer kontrollierte LLM-Arbeit und Architekturvertraege |
| Unsicherheitsmarkierung | Kernaxiom | empirisch, methodisch, repo-lokal anwendend | P7, PP2, I1 | mittel | enger: fuer pruefpflichtige, risikobehaftete oder begruendungssensitive Kommunikation |
| begrenzt-rueckgabefaehige Schrittlogik | Kernaxiom | standardsetzend, repo-lokal anwendend, theoretisch | R1, P4, P5, I2 | mittel | enger: fuer delegierte, mehrstufige oder teilautonome Arbeit |
| Aufsichtsfaehigkeit | Kernaxiom | standardsetzend, theoretisch, repo-lokal anwendend | R1, P4, P5, PP3, I2 | mittel | enger: fuer Systeme mit Rueckgabepflicht und Autoritaetsgrenzen |
| Verhaltenstestbarkeit | Kernaxiom | empirisch | P1, P6, PP1 | hoch bis mittel | breit; Benchmark- und Verifikationslogik klar gestuetzt |
| Terminologische Primaerordnung | Kernaxiom | standardsetzend | S1 | hoch | breit fuer Wissens- und Architekturordnung |
| Ontologische Trennschaerfe | Kernaxiom | standardsetzend, definitorisch | S3, S4, S5 | hoch | breit fuer semantische Architektur |
| Provenienz | Kernaxiom | standardsetzend | S4 | hoch | breit |
| Referenzierbarkeit | Kernaxiom | standardsetzend, architekturmethodisch | S2, S4, S3 | hoch | breit |
| Pfad- und Schnittstellenexplizitheit | Kernaxiom | standardsetzend, architekturmethodisch, repo-lokal anwendend | S2, P4, I2 | hoch bis mittel | breit fuer ASWE-Architektur |
| Governierte Evolvierbarkeit | Kernaxiom | theoretisch, architekturmethodisch, repo-lokal anwendend | P4, P5, P3, I2 | hoch bis mittel | breit, aber governance-gebunden |
| K1 Beobachtung-Aussage-Beleg-Trennung | Kernaxiom | definitorisch, standardsetzend | S4, S5, I1 | hoch | echt gemeinsam |
| K2 Evaluation vor Operationalisierung | Kernaxiom | empirisch, standardsetzend, repo-lokal anwendend | P1, R1, I1, I2 | mittel bis hoch | echt gemeinsam |
| K3 Spiegel-/Adapter-Asymmetrie | Kernaxiom | architekturmethodisch, repo-lokal anwendend | S2, I1, I2 | mittel | asymmetrisch gekoppelt; primaer B-seitig |

### Evidenzrevision gegenueber D1
1. **B1** wird auf **ISO 704:2022** aktualisiert; die aeltere 2009er Ausgabe ist nicht mehr noetig.  
2. **A5** wird nicht nur ueber CheckList, sondern zusaetzlich ueber **LLMBAR** gestuetzt; damit ist nicht nur Verhaltenstestung selbst, sondern auch die Vorsicht gegenueber LLM-als-Evaluator peer-reviewt adressiert.  
3. **A3** wird durch eine neue peer-reviewte Quelle zu sprachlicher Unsicherheitsschaetzung gestaerkt; der Geltungsanspruch bleibt dennoch enger als bei B-Kernaussagen.  
4. **A4** bleibt bewusst enger formuliert, weil die staerkste Evidenz hier weiterhin gemischt aus Standard-/Governance- und Selbstadaptionsliteratur stammt.

---

## 5. Kernaxiome

## A) Kernaxiome fuer LLM-Verhaltenssteuerung

### A1. Ziel- und Geltungsbindungsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Jede verhaltenssteuernde LLM-Instruktion muss Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung explizit binden, bevor operative Ausfuehrung oder Optimierung erfolgt.  
**Quellenrolle:** definitorisch, standardsetzend, repo-lokal anwendend  
**Quellen:** P2, R1, I1, I2  
**Revisionshinweis:** Gegenueber D1 wird der Scope-Aspekt nicht mehr nur implizit mitgefuehrt, sondern definitorisch mit dem Zielbild verschaltet.

### A2. Epistemisches Trennungsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Beobachtung, Beleg, Hypothese, Massstab, Kriterium, Empfehlung und Implementierungsschritt duerfen nicht stillschweigend ineinander uebergehen.  
**Quellenrolle:** definitorisch, standardsetzend, repo-lokal anwendend  
**Quellen:** S4, S5, I1, I2  
**Revisionshinweis:** Gegenueber D1 wird die Trennung expliziter auf die gesamte verhaltenssteuernde Argumentkette ausgedehnt.

### A3. Auditierbarkeits- und Unsicherheitsmarkierungsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** In pruefpflichtiger oder risikobehafteter LLM-Arbeit muessen tragende Annahmen, Unsicherheiten, Belegbasis und Entscheidungsschritte so markiert werden, dass spaetere Pruefung, Revision und Fehlersuche moeglich bleiben.  
**Quellenrolle:** empirisch, standardsetzend, repo-lokal anwendend  
**Quellen:** P7, R1, I1  
**Revisionshinweis:** Der Geltungsanspruch wird enger formuliert als in D1: nicht jede triviale Interaktion, wohl aber jede begruendungssensitive, delegierte oder revisionsrelevante Arbeit faellt darunter.

### A4. Axiom der begrenzt-rueckgabefaehigen Schrittlogik unter Aufsicht
**Statusklasse:** Kernaxiom  
**Definition:** In ASWE-naher, kontrollierter LLM-Arbeit duerfen mehrstufige Aufgaben nur in begrenzten, rueckgabefaehigen und uebersteuerbaren Schritten ausgefuehrt werden.  
**Quellenrolle:** standardsetzend, theoretisch, repo-lokal anwendend  
**Quellen:** R1, P4, P5, I2, PP3  
**Revisionshinweis:** Der fruehere Mischbegriff aus boundedness und oversight wird in eine deutsche Funktionsdefinition ueberfuehrt; der Geltungsanspruch bleibt bewusst enger und betriebsnah.

### A5. Verhaltenstestbarkeitsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** LLM-Verhalten muss anhand expliziter, reproduzierbarer und moeglichst verifizierbarer Tests bewertet werden, nicht nur anhand subjektiver Antwortguete.  
**Quellenrolle:** empirisch  
**Quellen:** P1, P6, PP1  
**Revisionshinweis:** D1 wird um peer-reviewte Evidenz dafuer ergaenzt, dass nicht nur Modelle, sondern auch LLM-basierte Evaluatoren selbst pruefbeduerftig sind.

## B) Kernaxiome fuer ASWE_KnowledgeOS-Architektur

### B1. Terminologische Primaerordnung
**Statusklasse:** Kernaxiom  
**Definition:** Im System wird zuerst geklaert, was ein Begriff bedeutet; erst danach folgen Benennung, Klassifikation, Regelung, Prozess und Implementierung.  
**Quellenrolle:** standardsetzend  
**Quellen:** S1  
**Revisionshinweis:** Gegenueber D1 wird die terminologische Basis auf die aktuelle ISO-704-Ausgabe aktualisiert.

### B2. Ontologische Trennschaerfe
**Statusklasse:** Kernaxiom  
**Definition:** Kategorie, Instanz, Beobachtung, Aussage, Beleg, Regel, Pruefung, Rolle und Spiegel-/Adapterflaeche sind als verschiedene Klassen oder Relationen zu behandeln und duerfen nicht kollabieren.  
**Quellenrolle:** standardsetzend, definitorisch  
**Quellen:** S3, S4, S5  
**Revisionshinweis:** Der Spiegel-/Adapter-Bezug wird hier bereits ontologisch vorbereitet, aber nicht vollstaendig konsumiert.

### B3. Provenienz- und Referenzierbarkeitsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Wissen, Zustaende, Entscheidungen und Belege muessen adressierbar, referenzierbar und mit Herkunft versehen sein.  
**Quellenrolle:** standardsetzend  
**Quellen:** S4, S2  
**Revisionshinweis:** D1s lose Verbindung von Provenienz und Wiederauffindbarkeit wird sauberer in Provenienz, Referenzierbarkeit und abgeleitete Folgeattribute getrennt.

### B4. Pfad- und Schnittstellenexplizitheitsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Uebergaenge zwischen Erkenntnis-, Governance- und Ausfuehrungspfaden duerfen nur ueber explizite Schnittstellen, Payloads, Gates und Rueckgabepunkte erfolgen; Kurzschlussableitungen sind unzulaessig.  
**Quellenrolle:** standardsetzend, architekturmethodisch, repo-lokal anwendend  
**Quellen:** S2, P4, I2  
**Revisionshinweis:** Die Terminologie wird gegenueber D1 eingedeutscht und enger an Rueckgabelogik gebunden.

### B5. Governierte Evolvierbarkeit
**Statusklasse:** Kernaxiom  
**Definition:** Die Architektur muss veraenderbar und lernfaehig bleiben, aber nur so, dass Kerninvarianten erhalten, Drift sichtbar und Aenderungen pruef- sowie revidierbar bleiben.  
**Quellenrolle:** theoretisch, architekturmethodisch, repo-lokal anwendend  
**Quellen:** P4, P5, P3, I2  
**Revisionshinweis:** Gegenueber D1 wird der Gegensatz zu freier Selbstoptimierung staerker markiert.

## K) Gemeinsame Kopplungsaxiome

### K1. Beobachtung-Aussage-Beleg-Axiom
**Statusklasse:** Kernaxiom  
**Definition:** In beiden Gegenstandsbereichen gilt: Beobachtung ist nicht Aussage, Aussage ist nicht Beleg.  
**Quellenrolle:** definitorisch, standardsetzend  
**Quellen:** S4, S5, I1  
**Kopplungsstatus:** echt gemeinsam

### K2. Evaluations-vor-Operationalisierungs-Axiom
**Statusklasse:** Kernaxiom  
**Definition:** Vorpruefung, Bewertung und Trennschaerfung gehen Materialisierung, Operationalisierung oder Automation voraus.  
**Quellenrolle:** empirisch, standardsetzend, repo-lokal anwendend  
**Quellen:** P1, R1, I1, I2  
**Kopplungsstatus:** echt gemeinsam

### K3. Spiegel-/Adapter-Asymmetrieaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Gerenderte Arbeitsflaechen, Adapter und Spiegelungen sind abgeleitete Schnittstellen, nicht semantischer Ursprung.  
**Quellenrolle:** architekturmethodisch, repo-lokal anwendend  
**Quellen:** S2, I1, I2  
**Kopplungsstatus:** asymmetrisch gekoppelt; primaer B-seitig verankert, A-seitig angewandt

---

## 6. Nicht-Geltung, Spannungen und Grenzfaelle

| Axiom | Nicht-Geltung | Spannungsbeziehung | Grenzfall / Gegenbeispiel |
|---|---|---|---|
| A1 Ziel- und Geltungsbindung | nicht erforderlich in rein privaten, folgenarmen Ein-Satz-Interaktionen ohne Delegationscharakter | Spannung zu explorativer Offenheit: zu enge Scope-Bindung kann Suchraeume verfrueht schliessen | Brainstorming ohne klares Erkenntnisziel; hier reicht eine weichere Zielbindung, nicht der volle Vertrag |
| A2 Epistemische Trennung | nicht jede alltaegliche Formulierung braucht formale Abschnittsetiketten | Spannung zu Lesefluss und knapper Darstellung | Kurze Warnhinweise oder einfache Statusabfragen, bei denen Volltrennung unverhaeltnismaessig waere |
| A3 Auditierbarkeit und Unsicherheitsmarkierung | nicht jeder Smalltalk oder unkritische Kreativoutput braucht explizite Unsicherheitsmarkierung | Spannung zu Nutzbarkeit und sprachlicher Fluessigkeit | Eine stark formalisierte Unsicherheitsmarkierung kann triviale Interaktion unnoetig sperrig machen |
| A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht | nicht jede einmalige, folgenarme Einzelantwort benoetigt Rueckgabe- und Aufsichtslogik | Spannung zu Bearbeitungsgeschwindigkeit und fluider Exploration | Ein einzelner, klar begrenzter Definitionshinweis ohne nachgelagerte Wirkung |
| A5 Verhaltenstestbarkeit | nicht jeder konzeptionelle Erkundungsschritt laesst sich sofort voll testen | Spannung zu frueher Ideengenerierung | Neue Begriffe koennen zunaechst heuristisch eingefuehrt werden, bevor ein Testregime sinnvoll ist |
| B1 Terminologische Primaerordnung | lokale Dateinamen oder Labels muessen nicht immer voll definitorisch ausgearbeitet sein | Spannung zu Arbeitsgeschwindigkeit | In fruehen Notizzustaenden darf ein Platzhalter existieren, sofern er nicht in Governance uebergeht |
| B2 Ontologische Trennschaerfe | nicht jedes informelle Memo braucht vollstaendige ontologische Modellierung | Spannung zu pragmatischer Dokumentation | Ein kurzes Handoff kann Begriffe zusammenziehen, solange der kanonische Bestand davon getrennt bleibt |
| B3 Provenienz und Referenzierbarkeit | fluechtige Hilfsnotizen koennen temporaer geringere Referenzdichte haben | Spannung zu Erstellungsaufwand | Ein lokaler Skizzenblock ohne sofortige Langzeitrelevanz |
| B4 Pfad- und Schnittstellenexplizitheit | spontane ideelle Vorerkundung kann voruebergehend ohne formales Gate stattfinden | Spannung zu kreativer Beweglichkeit | Fruhes Whiteboard-Mapping, das noch nicht in operative Pfade eingespeist wird |
| B5 Governierte Evolvierbarkeit | nicht jede Aenderung benoetigt schweren Prozessapparat | Spannung zu lokaler Reparaturgeschwindigkeit | Kleinkorrekturen an rein formalen Darstellungen, die keine Kernsemantik beruehren |
| K1 Beobachtung-Aussage-Beleg | rhetorische Alltagsform kann diese Ebenen sprachlich verschmelzen, ohne sofort Schaden zu stiften | Spannung zu kuerzerer Kommunikation | Sehr kurze Statusmeldungen, solange sie nicht als kanonischer Beleg weiterverwendet werden |
| K2 Evaluation vor Operationalisierung | bei reversiblen, folgenarmen Entwuerfen kann teilweise prototypische Operationalisierung vor voller Evaluation zulaessig sein | Spannung zu iterativer Geschwindigkeit | Ein lokaler Entwurf in einer Sandbox, der noch keine normative Wirkung entfaltet |
| K3 Spiegel-/Adapter-Asymmetrie | rein technische Spiegel duerfen lokale Bequemlichkeitsfunktionen haben | Spannung zu Nutzerkomfort und Spiegeltreue | Ein Mirror kann identische Inhalte anzeigen, wird aber problematisch, sobald er semantische Vorrangigkeit beansprucht |

### Verdichtete Spannungslogik
- **Geschwindigkeit vs. Explizitheit:** Nicht jede Explizitheitspflicht darf kreatives Denken blockieren; fuer operative, persistente oder governance-relevante Uebergaenge bleibt Explizitheit primaer.
- **Adaptivitaet vs. Governierung:** Verbesserungsfaehigkeit bleibt Ziel, aber nur unter Sichtbarkeit von Drift, Rueckgabe und Revision.
- **Nutzbarkeit vs. Formalisierung:** Die Revisionslogik muss stark genug fuer tragende Artefakte und leicht genug fuer Vorstufen bleiben.

---

## 7. Phasenrobustheit, Automationssensitivitaet und Kopplungsstabilitaet

### 7.1 Phasenrobustheit

| Cluster / Axiomfamilie | fruehe semantische Aufbauphase | Ordnungs- und Pfadphase | spaetere Automations- und Ausfuehrungsphase | Befund |
|---|---|---|---|---|
| Ziel- und Geltungsbindung (A1) | hoch | hoch | hoch | phasenrobust |
| Epistemische Trennung (A2, K1) | hoch | hoch | hoch | phasenrobust |
| Auditierbarkeit / Unsicherheitsmarkierung (A3) | mittel | hoch | hoch | steigt mit Wirkungstiefe |
| begrenzt-rueckgabefaehige Schrittlogik / Aufsicht (A4) | niedrig bis mittel | hoch | hoch | gewinnt mit Delegation und Automation stark an Rang |
| Verhaltenstestbarkeit (A5) | mittel | hoch | hoch | steigt mit Operationalisierung |
| Terminologische Primaerordnung (B1) | hoch | hoch | hoch | phasenrobust |
| Ontologische Trennschaerfe (B2) | hoch | hoch | hoch | phasenrobust |
| Provenienz / Referenzierbarkeit (B3) | mittel | hoch | hoch | steigt mit Persistenz und Handoff-Dichte |
| Pfad- und Schnittstellenexplizitheit (B4) | mittel | hoch | hoch | stark phasenabhaengig, spaeter nahezu unverzichtbar |
| Governierte Evolvierbarkeit (B5) | mittel | hoch | hoch | gewinnt mit Architekturreife an Gewicht |
| duale Lesbarkeit | niedrig bis mittel | mittel | hoch | derzeit sekundaer, spaeter moeglich quasi-konstitutiv |
| Persistenz | niedrig bis mittel | mittel | hoch | bleibt sekundaer, aber automationserhoeht relevant |

### 7.2 Automationssensitivitaet

| Begriff / Merkmal | derzeitiger Rang | Rang unter hoeherem Automationsgrad | Kommentar |
|---|---|---|---|
| duale Lesbarkeit | sekundaeres Qualitaetsattribut | moeglich starkes Designprinzip | Maschinen- und Menschenlesbarkeit werden bei agentischer Verarbeitung wichtiger |
| Persistenz | sekundaeres Qualitaetsattribut | moeglich starkes Designprinzip | relevant fuer Resume, Nachvollzug und reproduzierte Verarbeitung |
| Verhaltenstestbarkeit | Kernaxiom | Kernaxiom mit steigendem Druck | Tests werden mit steigendem Wirkungsgrad zwingender |
| Aufsichtsfaehigkeit | Kernaxiom mit engerem Geltungsanspruch | eindeutiger Kernstatus | je autonomer das System, desto weniger entbehrlich |
| Pfad- und Schnittstellenexplizitheit | Kernaxiom | noch staerkerer Kernstatus | Automation bestraft implizite Uebergaenge scharf |
| Wiederauffindbarkeit | sekundaeres Qualitaetsattribut | moeglich starkes Designprinzip | wächst mit Dokument- und Agentendichte |

### 7.3 Kopplungsstabilitaet zwischen A und B

| Kopplungsaxiom | Klassifikation | Begründung |
|---|---|---|
| K1 Beobachtung-Aussage-Beleg | echt gemeinsam | epistemische Mindestordnung ist fuer Verhalten und Architektur gleich basal |
| K2 Evaluation vor Operationalisierung | echt gemeinsam | beide Bereiche kippen bei vorschneller Materialisierung in Fehlsteuerung |
| K3 Spiegel-/Adapter-Asymmetrie | asymmetrisch gekoppelt | Ursprung in architektonischer Wahrheitsquellenlogik, dann auf LLM-Arbeitsflaechen uebertragen |
| kontrollierte Selbstverbesserung | nur analog uebertragen | in A und B wichtig, aber aus unterschiedlichen Mechanismen abgeleitet; kein eigenstaendiges gemeinsames Kernaxiom |
| keine direkte Kurzschlussableitung | asymmetrisch gekoppelt | primaer B-seitige Pfadlogik, A-seitig als Verhaltensregel nutzbar |

---

## 8. Selbstpruefung

### Terminologiepolitik eingehalten?
Ueberwiegend ja.
- Schwache Hybridformen aus D1 wurden ersetzt.
- Englische Formen erscheinen nun entweder als Eigenname, literaturgebundener Originalterm oder knapper Alias.
- Die verbleibenden englischen Begriffe sind im Terminologie-Register klassifiziert.

### Unkommentierte Mischsprache reduziert?
Ja.
- boundedness, Self-Audit, Claim-Source-Fit und Red-Teamability wurden ersetzt.
- CheckList, LLMBAR, IFEval, PROV-O, SKOS und SOSA/SSN bleiben begruendet erhalten.
- Mirror / Adapter erscheinen nur noch als repo-bezogene Eigennamen im Rahmen der deutschen Primaerbezeichnung.

### Kernaxiome klarer von abgeleiteten Begriffen getrennt?
Ja.
- Der revidierte Kandidatenraum trennt systematisch zwischen Kernaxiom, starkem Designprinzip, sekundaerem Qualitaetsattribut und operativer Regel.
- D1s sekundaere Leistungs- und Betriebsattribute bleiben explizit ausserhalb des Kernstatus. fileciteturn11file4

### Zielbild unversehrt geblieben?
Ja.
- Kernaxiome bleiben Kernaxiome.
- Externe Standards und peer-reviewte Quellen bleiben vorrangig.
- Repo-interne Referenzen werden nur anwendungsnah eingesetzt.
- A und B bleiben getrennt; Kopplungen sind explizit.
- Governierte statt freie Selbstverbesserung bleibt zentrale Guardrail. fileciteturn11file16

### Verbliebene Unsicherheiten
1. **A-seitige Literatur bleibt heterogener als B-seitige.**  
   Trotz neuer peer-reviewter Stuetzung fuer Verhaltenstestung und Unsicherheitskommunikation sind Aufsichts- und Schrittlogikfragen weiterhin staerker governance- und designtheoretisch als rein empirisch belegt.
2. **Einige rangnahe Begriffe koennen spaeter aufsteigen.**  
   Vor allem duale Lesbarkeit, Persistenz und Wiederauffindbarkeit koennen unter hoeherem Automationsgrad an basaler Bedeutung gewinnen.
3. **Der Axiombegriff bleibt architekturmethodisch, nicht mathematisch.**  
   Das Dokument behandelt Axiome als konstitutive, nicht-derivative Grundaussagen fuer ein Systemdesign, nicht als formal-axiomatische Theorie.

### Gesamturteil
Diese V2 verbessert D1 entlang der in D2 und D3 geforderten Achsen:
- sprachliche Governierung,
- explizite Statusklassen,
- engere Aussage-Quellen-Passung,
- Nicht-Geltung und Grenzfaelle,
- Phasen- und Kopplungsmodellierung.

Damit ist die Revision terminologisch sauberer, evidenzseitig differenzierter und operativ besser anschlussfaehig als D1, ohne das Zielbild zu verwaessern. fileciteturn11file17 fileciteturn11file0

---

## 9. Quellen

### Quellenlegende
- **S** = Standard / normative Referenz
- **P** = peer-reviewte wissenschaftliche Primaerquelle
- **R** = institutioneller Report
- **PP** = Preprint
- **I** = repo-interner Anwendungs- oder Passungsbeleg

### Standards und normative Referenzen
- **S1** ISO 704:2022. *Terminology work — Principles and methods*. ISO.  
  URL: https://www.iso.org/standard/79077.html  
  Rolle: definitorische und terminologische Grundlegung.

- **S2** ISO/IEC/IEEE 42010:2022. *Software, systems and enterprise — Architecture description*. ISO/IEC/IEEE.  
  URL: https://www.iso.org/standard/74393.html  
  Rolle: Architektur-, Schnittstellen- und Beschreibungslogik.

- **S3** W3C. *SKOS Simple Knowledge Organization System Reference* (2009).  
  URL: https://www.w3.org/TR/skos-reference/  
  Rolle: Taxonomie- und Wissensorganisationslogik.

- **S4** W3C. *PROV-O: The PROV Ontology* (2013).  
  URL: https://www.w3.org/TR/prov-o/  
  Rolle: Provenienz, Ableitung, Referenzierbarkeit.

- **S5** W3C. *Semantic Sensor Network Ontology / SOSA* (2017).  
  URL: https://www.w3.org/TR/vocab-ssn/  
  Rolle: Beobachtungsmodellierung und Trennung von Beobachtung, Eigenschaft und Gegenstand.

### Peer-reviewte wissenschaftliche Primaerquellen
- **P1** Ribeiro, M. T., Wu, T., Guestrin, C., Singh, S. (2020). *Beyond Accuracy: Behavioral Testing of NLP Models with CheckList*. ACL 2020.  
  URL: https://aclanthology.org/2020.acl-main.442/  
  Rolle: empirische Basis fuer Verhaltenstestbarkeit.

- **P2** Weidinger, L. et al. (2022). *Taxonomy of Risks posed by Language Models*. FAccT 2022. DOI: 10.1145/3531146.3533088  
  URL: https://www.research.ed.ac.uk/en/publications/taxonomy-of-risks-posed-by-language-models  
  Rolle: Risiko- und Mitigationsrahmen fuer A-seitige Geltungs- und Governanceaussagen.

- **P3** Sculley, D. et al. (2015). *Hidden Technical Debt in Machine Learning Systems*. NeurIPS 2015.  
  URL: https://research.google/pubs/hidden-technical-debt-in-machine-learning-systems/  
  Rolle: Drift, Kopplungen, Wartungs- und Architekturrisiken.

- **P4** Cheng, B. H. C. et al. (2009). *Software Engineering for Self-Adaptive Systems: A Research Roadmap*. LNCS 5525. DOI: 10.1007/978-3-642-02161-9_1  
  URL: https://research.monash.edu/en/publications/software-engineering-for-self-adaptive-systems-a-research-roadmap  
  Rolle: selbstadaptive Systeme und governierte Veraenderbarkeit.

- **P5** White, S. R. et al. (2006). *Autonomic computing: Architectural approach and prototype*. Integrated Computer-Aided Engineering. DOI: 10.3233/ICA-2006-13206  
  URL: https://research.ibm.com/publications/autonomic-computing-architectural-approach-and-prototype  
  Rolle: kontrollierte Selbstanpassung und Architekturprinzipien.

- **P6** Zeng, Z., Yu, J., Gao, T., Meng, Y., Goyal, T., Chen, D. (2024). *Evaluating Large Language Models at Evaluating Instruction Following*. ICLR 2024.  
  URL: https://collaborate.princeton.edu/en/publications/evaluating-large-language-models-at-evaluating-instruction-follow/  
  Rolle: peer-reviewte Evidenz dafuer, dass auch LLM-Evaluatoren fuer Instruktionsbefolgung selbst fehlbar und pruefbeduerftig sind.

- **P7** Tang, Z., Shen, K., Kejriwal, M. (2026). *An evaluation of estimative uncertainty in large language models*. npj Complexity 3, 8. DOI: 10.1038/s44260-026-00070-6  
  URL: https://www.nature.com/articles/s44260-026-00070-6  
  Rolle: peer-reviewte Evidenz fuer Grenzen und Kalibrierungsprobleme sprachlicher Unsicherheitsausdruecke.

### Institutionelle Reports
- **R1** NIST AI 600-1 (2024). *Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile*.  
  URL: https://doi.org/10.6028/NIST.AI.600-1  
  Rolle: Governance-, Risiko- und Aufsichtsrahmen.

### Ergaenzende Preprints
- **PP1** Zhou, J. et al. (2023). *Instruction-Following Evaluation for Large Language Models*. arXiv:2311.07911  
  URL: https://arxiv.org/abs/2311.07911  
  Rolle: Benchmark- und Evaluationskontext fuer Instruktionsbefolgung.

- **PP2** Bai, Y. et al. (2022). *Constitutional AI: Harmlessness from AI Feedback*. arXiv:2212.08073  
  URL: https://arxiv.org/abs/2212.08073  
  Rolle: regelgebundene Selbstkritik und prinzipiengeleitete Verbesserung.

- **PP3** Bowman, S. R. et al. (2022). *Measuring Progress on Scalable Oversight for Large Language Models*. arXiv:2211.03540  
  URL: https://arxiv.org/abs/2211.03540  
  Rolle: Aufsicht und skalenfaehige Uebersteuerung.

### Repo-interne Referenzen
- **I1** ASWE PromptEval Contract (2026-04-20).  
  Rolle: lokaler Anwendungsbeleg fuer Zielbildklarheit, Scope-Disziplin, Ebenentrennung, Auditierbarkeit.

- **I2** ASWE Prompt Preflight Operationalization / ASWE Autonomy Infrastructure / ASWE Execution System – Target Contract (2026-03-26 bis 2026-04-20).  
  Rolle: lokaler Anwendungsbeleg fuer Preflight, Rueckgabe, Pfadobjekte, Grenzlogik und Materialisierungsdisziplin.

### Gesamtbewertung der Evidenzlage in V2
- **B** bleibt evidenzseitig staerker abgesichert als **A**, weil zentrale B-Kernaussagen direkt auf Standards und etablierter Architektur- bzw. Ontologielogik aufliegen.
- **A** ist gegenueber D1 verbessert, weil Verhaltenstestbarkeit und Unsicherheitskommunikation nun staerker peer-reviewt abgestuetzt sind; dennoch bleiben Aufsichts- und Schrittlogikfragen partiell governance- und designtheoretisch.
- Die hier vorgeschlagenen Kernaxiome sind daher weiterhin **wissenschaftlich gestuetzte Architektur- und Governance-Synthesen**, nicht formal bewiesene Naturgesetze.

```

---

## RAW_RECORD_017: ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V3.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V3.md`
- sha256: `a29b61a9d0580bec49571f7117bc3f36a0c21a8d8f19d7a76aab9d1ee47a7e40`
- chars: 23869
- approx_tokens: 5968

```markdown
# ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V3

## 1. Voranalyse

### Zielbild
Ziel bleibt ein **begrifflich disziplinierter, extern primaer gestuetzter und operationalisierbarer Kernaxiomensatz** fuer zwei explizit gebundene Gegenstandsbereiche:

- **A)** LLM-Verhaltenssteuerung
- **B)** ASWE_KnowledgeOS-Architektur

Gesucht ist weiterhin **kein allgemeiner Qualitaetskatalog**, sondern ein Satz von **Kernaxiomen**, aus denen sich starke Designprinzipien, sekundaere Qualitaetsattribute und operative Regeln ableiten lassen.

### Gegenstand
Gegenstand dieser V3 ist nicht die erneute breite Kandidatenexpansion, sondern die **Metaqualitaetspruefung des bereits aufgebauten Kandidatenraums** in D1/V2 entlang von:

- Vollstaendigkeit,
- Saettigung,
- Redundanzarmut,
- Widerspruchsfreiheit,
- Orthogonalitaet,
- Ableitungsgeschlossenheit,
- Verwaisung.

### Geltungsbereich
Die Aussagen dieser V3 beanspruchen Geltung fuer:

- die konzeptionelle Grundlegung des Axiomkandidatenraums,
- die Qualitaetspruefung seiner inneren Struktur,
- die Rueckbindung von Designprinzipien, Qualitaetsattributen und Regeln an Kernaxiome,
- die weitere Revision des Hauptdokuments unter den bereits etablierten Leitplanken.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:

- neue breite Begriffslisten ohne Erklaerungsmehrwert,
- lokale Tool- oder Pfadimplementierung,
- UI- und Betriebsoptimierung,
- neue Regelquellen neben D2, D3 und D4,
- performative Leistungsmetriken wie Geschwindigkeit oder Kosten als Primaerziel.

### Epistemischer Status

#### Beobachtung
D1/V2 ist terminologisch, statusseitig und evidenzbezogen deutlich reifer als V1. Es trennt bereits Kernaxiome, starke Designprinzipien, sekundaere Qualitaetsattribute und operative Regeln und fuehrt Terminologie-Register, Quellenrollen, Nicht-Geltung, Phasenrobustheit und Kopplungslogik ein.

#### Aussage
D1/V2 ist **konsolidierungsreif**, aber noch nicht **metaqualitativ geschlossen**. Es fehlen vor allem:
- eine explizite Vollstaendigkeitslogik,
- ein Redundanz- und Konsistenzaudit,
- eine Abdeckungs- und Ableitungsmatrix,
- eine Verwaisungspruefung.

#### Hypothese
Wenn der vorhandene Raum entlang dieser Metaqualitaetsachsen geprueft wird, laesst sich V2 in eine strukturell geschlossenere V3 ueberfuehren, ohne das Zielbild aufzuweichen.

#### Kriterium
Die Revision ist nur dann gelungen, wenn:
- keine zweite Regelquelle entsteht,
- Kernaxiome Kernaxiome bleiben,
- A, B und Kopplung getrennt bleiben,
- neue Metaqualitaetskriterien nur ergaenzen, nicht ersetzen,
- verwaiste Begriffe sichtbar gemacht und rueckgebunden oder eliminiert werden,
- keine ungovernierte Mischsprache zurueckkehrt.

#### Empfehlung
Die V3 soll **nicht** primaer vergroessern, sondern den vorhandenen Raum auf **Abdeckung, Konsistenz und Ableitungsgeschlossenheit** pruefen und entlang dieser Befunde revidieren.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: systemisches Strukturmodell
- noch nicht: konkrete lokale Implementierung

### Leitplanken- und Geltungspruefung
Die in D5 formulierten Metaqualitaetsachsen sind mit D2, D3 und D4 vereinbar, sofern sie:
- den bestehenden Regelraum nur erweitern,
- keine terminologischen Rueckfaelle erzeugen,
- keine Zielbildaufweichung erzeugen,
- keine direkte Konkurrenz zur Sprachgovernance, Selbstanwendungsprämisse oder Voranalyse-Disziplin bilden.

---

## 2. Metaqualitaetspruefung

## 2.1 Vollstaendigkeit

### Beobachtung
D1/V2 deckt fuer A, B und Kopplung jeweils mehrere Kandidatenfamilien ab:
- epistemische Disziplin,
- Begriffs- und Ontologieordnung,
- Provenienz und Referenzierbarkeit,
- Pfad- und Rueckgabelogik,
- governierte Veraenderbarkeit,
- Test- und Prueflogik,
- Phasen- und Automationssensitivitaet.

### Befund
Die **domänische Vollstaendigkeit** ist fuer die aktuelle Reifestufe hoch genug.  
Nicht explizit ausgearbeitet sind jedoch:
- **strukturelle Vollstaendigkeit** ueber alle Statusklassen,
- **Ableitungsvollstaendigkeit**,
- **Negativraum-Vollstaendigkeit**.

### Kriterium
Ein Kandidatenraum ist erst dann vollstaendig genug fuer Konsolidierung, wenn:
- alle relevanten Familien praesent sind,
- alle Statusklassen sinnvoll belegt sind,
- bewusst offene Negativraeume markiert sind,
- Folgeebenen an Kernaxiome rueckgebunden sind.

### Konsequenz
V3 muss Vollstaendigkeit als **eigene Metaqualitaetsachse** einfuehren und zwischen domänischer, struktureller, ableitungsbezogener und negativer Vollstaendigkeit unterscheiden.

### Herkunftsstatus
**Echte, aber nachgeordnete Erweiterung**.

---

## 2.2 Saettigung

### Beobachtung
Der Kandidatenraum ist gegenueber V1 und V2 deutlich erweitert und bereits stark differenziert. Neue Kandidaten wuerden nun mit hoher Wahrscheinlichkeit eher:
- Synonyme,
- Unterfaelle,
- Umformulierungen,
- oder phase-/automationsspezifische Spezialisierungen
beisteuern als neue Grunddimensionen.

### Befund
Der Raum ist **nicht vollstaendig bewiesen saettigungsnah**, aber **klar konsolidierungsreif**.

### Kriterium
Saettigung ist erreicht, wenn neue Kandidaten keinen eigenstaendigen konstitutiven Erklaerungsmehrwert mehr liefern.

### Konsequenz
Ab jetzt hat **Konsolidierung Vorrang vor Expansion**.

### Herkunftsstatus
**Praezisierung** der bereits in D3 und D5 angelegten Konsolidierungslogik.

---

## 2.3 Redundanzarmut / Minimalitaet

### Beobachtung
D1/V2 reduziert Redundanz bereits ueber:
- Statusklassentrennung,
- Nicht-Derivativitaet,
- Clusterung,
- Unterordnung abgeleiteter Begriffe.

Nicht explizit geprueft sind jedoch:
- semantische Dubletten,
- funktionale Dubletten,
- perspektivische Umbenennungen,
- doppelte Kopplungsfolgen.

### Befund
Die Redundanzarmut ist **teilweise**, aber noch nicht **formal auditiert**.

### Kriterium
Ein Raum ist minimal genug, wenn kein Begriff verbleibt, dessen Wegfall die Erklaerungskraft nicht merklich reduziert.

### Konsequenz
V3 fuehrt einen expliziten **Redundanz- und Minimalitaetsabschnitt** ein.

### Herkunftsstatus
**Praezisierung** von Nicht-Derivativitaet und Trennschaerfe.

---

## 2.4 Widerspruchsfreiheit / Konsistenz

### Beobachtung
D1/V2 behandelt Spannungen, Nicht-Geltung und Grenzfaelle. Das ist stark, ersetzt aber keinen globalen Konsistenzaudit.

### Befund
Der Raum ist **spannungssensitiv**, aber noch nicht **global auf Widerspruchsfreiheit geprueft**.

### Kriterium
Konsistenz erfordert die Unterscheidung zwischen:
- produktiver Spannung,
- lokaler Unvereinbarkeit,
- normativem Konflikt,
- definitorischer Kollision,
- ableitungsseitiger Inkompatibilitaet.

### Konsequenz
V3 fuehrt eine explizite **Redundanz- und Konsistenzrevision** ein.

### Herkunftsstatus
**Praezisierung** der Grenzfall- und Spannungslogik aus V2.

---

## 2.5 Orthogonalitaet

### Beobachtung
Mehrere Kernaxiome tragen unterschiedliche Grundfunktionen:
- A1/A2: epistemische und instruktionale Ordnung,
- A3/A4/A5: Pruef- und Ausfuehrungsdisziplin,
- B1/B2/B3/B4/B5: Begriffs-, Ontologie-, Provenienz-, Pfad- und Evolvierbarkeitsordnung,
- K1/K2/K3: Kopplungsregeln.

Gleichzeitig bestehen Naehen, etwa zwischen:
- A3 und A5,
- B3 und abgeleiteten Wiederauffindbarkeitsmerkmalen,
- K2 und B4,
- K3 und B2/B4.

### Befund
Die Orthogonalitaet ist **gut angelegt**, aber noch nicht explizit geprueft.

### Kriterium
Axiome sind orthogonal genug, wenn sie unterschiedliche konstitutive Dimensionen tragen und nicht nur den gleichen Grundsatz sprachlich variieren.

### Konsequenz
V3 prueft explizit, wo Orthogonalitaet stark ist und wo Unterordnung statt Gleichrangigkeit angemessen ist.

### Herkunftsstatus
**Praezisierung** der Trennschaerfe.

---

## 2.6 Ableitungsgeschlossenheit

### Beobachtung
D1/V2 klassifiziert nachgeordnete Begriffe, zeigt aber nicht vollstaendig:
- aus welchem Axiom welche Designprinzipien folgen,
- aus welchem Axiom welche Qualitaetsattribute folgen,
- aus welchem Axiom welche operativen Regeln folgen,
- welche Kopplungsfolgen sich ergeben.

### Befund
Die Ableitungsgeschlossenheit ist der **staerkste noch offene Mangel**.

### Kriterium
Ein Raum ist ableitungsgeschlossen genug, wenn jede nachgeordnete Kategorie auf wenigstens ein Kernaxiom rueckgebunden werden kann und jedes Kernaxiom eine plausible Folgeebene besitzt.

### Konsequenz
V3 fuehrt eine **Abdeckungs- und Ableitungsmatrix** ein.

### Herkunftsstatus
**Echte, aber nachgeordnete Erweiterung**.

---

## 2.7 Verwaisung

### Beobachtung
D1/V2 enthaelt plausible operative Regeln und Qualitaetsattribute, aber ihre Rueckbindung ist nicht vollstaendig expliziert.

### Befund
Moegliche Verwaisungen betreffen insbesondere:
- sekundaere Attribute wie Wiederauffindbarkeit, Persistenz und duale Lesbarkeit,
- operative Regeln wie Rueckgabepunkte, Budget- und Schleifendisziplin,
- starke Designprinzipien wie Portierbarkeit oder adversariale Pruefbarkeit.

### Kriterium
Verwaist ist ein Begriff, wenn seine normative oder funktionale Bedeutung nicht klar auf einen Kernsatz rueckgebunden werden kann.

### Konsequenz
V3 markiert:
- verwaiste Regeln,
- verwaiste Qualitaetsattribute,
- Axiome ohne ausreichende Folgeebene.

### Herkunftsstatus
**Direkte Ableitung** aus der Ableitungsgeschlossenheit.

---

## 3. Abdeckungs- und Ableitungsmatrix

### 3.1 Kernaxiom -> starke Designprinzipien

| Kernaxiom | Starke Designprinzipien |
|---|---|
| A1 Ziel- und Geltungsbindung | Explizitheit kritischer Annahmen; Vorfestlegungsdisziplin |
| A2 Epistemische Trennung | begriffliche Rollenreinheit; Aussagearten-Trennung |
| A3 Auditierbarkeit und Unsicherheitsmarkierung | regelgebundene Selbstkritik; dokumentierbare Revision |
| A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht | Rueckgabepunkt-Disziplin; delegationsbegrenzte Ausfuehrung |
| A5 Verhaltenstestbarkeit | adversariale Pruefbarkeit; evaluator-kritische Testdisziplin |
| B1 Terminologische Primaerordnung | definitorische Priorisierung vor Taxonomie und Regelung |
| B2 Ontologische Trennschaerfe | Klassen-/Rollen-/Relationsreinheit |
| B3 Provenienz und Referenzierbarkeit | Spurverfolgbarkeit; eindeutige Ankerbildung |
| B4 Pfad- und Schnittstellenexplizitheit | kontrollierte Kopplung; Payload- und Gate-Disziplin |
| B5 Governierte Evolvierbarkeit | kontrollierte Aenderbarkeit; driftwachsame Revisionsdisziplin |
| K1 Beobachtung-Aussage-Beleg | epistemische Staffelung |
| K2 Evaluation vor Operationalisierung | keine Kurzschlussmaterialisierung |
| K3 Spiegel-/Adapter-Asymmetrie | keine konkurrierende Wahrheitsquelle |

### 3.2 Kernaxiom -> sekundaere Qualitaetsattribute

| Kernaxiom | Sekundaere Qualitaetsattribute |
|---|---|
| A1 | Kontexttreue; Driftresistenz |
| A2 | argumentative Nachvollziehbarkeit |
| A3 | Revisionsfaehigkeit; Fehlersuchbarkeit |
| A4 | Kontrollierbarkeit; Begrenztheit; sichere Delegierbarkeit |
| A5 | Reproduzierbarkeit; Pruefbarkeit |
| B1 | begriffliche Stabilitaet |
| B2 | semantische Widerspruchsarmut |
| B3 | Wiederauffindbarkeit; Persistenznutzen; Referenzdichte |
| B4 | Wartbarkeit; Schnittstellenklarheit |
| B5 | Reparierbarkeit; lernfaehige Veraenderbarkeit |
| K1 | Evidenzdisziplin |
| K2 | Materialisierungsdisziplin |
| K3 | Wahrheitsquellenstabilitaet |
| mehrere Axiome gemeinsam | duale Lesbarkeit; Automatisierbarkeit; Wiederholbarkeit |

### 3.3 Kernaxiom -> operative Regeln

| Kernaxiom | Operative Regeln |
|---|---|
| A1 | Zielbild vor Ausfuehrung explizieren |
| A2 | Beobachtung, Aussage, Hypothese, Kriterium, Empfehlung trennen |
| A3 | Unsicherheiten und Belegbasis markieren |
| A4 | kleinsten sicheren naechsten Schritt waehlen; Rueckgabepunkte benennen |
| A5 | Testfaelle und Gegenbeispiele anfuehren |
| B1 | Begriff vor Benennung, Benennung vor Regelung |
| B2 | Kategorien, Instanzen und Rollen nicht kollabieren |
| B3 | Herkunft und Referenzen mitfuehren |
| B4 | Pfadwechsel nur ueber explizite Schnittstellen und Payloads |
| B5 | Aenderungen gegen Drift und Revisionsfaehigkeit pruefen |
| K2 | Bewertung vor Materialisierung |
| K3 | Spiegel- und Adapteroberflaechen nicht als Ursprung behandeln |

### 3.4 Kernaxiom -> Kopplungsfolgen

| Kernaxiom | Kopplungsfolgen |
|---|---|
| A1 + K2 | Scope-Bindung wirkt bis in Materialisierung und Operationalisierung |
| A2 + K1 | epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal |
| A3 + B3 | Auditierbarkeit braucht Provenienz und Referenzierbarkeit |
| A4 + B4 | Rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik |
| A5 + K2 | Testbarkeit muss vor operative Uebernahme treten |
| B2 + K3 | ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie |
| B5 + A4 | governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik |

### 3.5 Verwaisungspruefung

#### Verwaiste Regeln
- **keine voll verwaiste Regel**, aber teils nur implizit rueckgebunden:
  - Budget- und Schleifendisziplin -> primaer aus A4 und B5 ableitbar
  - explizite Rueckgabepunkte -> aus A4 und B4 ableitbar

#### Verwaiste Qualitaetsattribute
- **duale Lesbarkeit** -> nur indirekt rueckgebunden; braucht explizite Zuordnung zu B3, B4 und K3
- **Persistenz** -> derzeit indirekt; sollte als Folge von B3 und spaeterer Automationssensitivitaet markiert werden
- **Wiederauffindbarkeit** -> aus B3 ableitbar, in V2 aber noch nicht stark genug expliziert

#### Axiome ohne ausreichende Folgeebene
- **kein voll unterableitendes Axiom**, aber K1 und K3 haben bislang kuerzere explizite Folgeebenen als A- und B-Axiome.

#### Doppelte Ableitungen
- Driftresistenz folgt sowohl aus A1/A3 als auch aus B5.
- Wiederauffindbarkeit folgt aus B3, aber auch indirekt aus B4 und spaeterer dualer Lesbarkeit.
- Rueckgabepunkt-Disziplin folgt aus A4 und B4.

#### Konflikthafte Ableitungen
- Keine harte Kollision sichtbar.
- Potenzielle Spannung:
  - A4 rueckgabefaehige Begrenzung vs. B5 lernfaehige Veraenderbarkeit
  - A2 starke Trennung vs. alltagsnahe Nutzbarkeit
  - K3 Wahrheitsquellenasymmetrie vs. ergonomische Spiegel- und Adapteroberflaechen

---

## 4. Vollstaendigkeits- und Saettigungsurteil

## 4.1 A – LLM-Verhaltenssteuerung
**Urteil:** konsolidierungsreif, noch nicht saettigungsbewiesen.

### Begruendung
- Die relevanten Grunddimensionen fuer A sind praesent:
  - Ziel- und Geltungsbindung,
  - epistemische Trennung,
  - Auditierbarkeit und Unsicherheitsmarkierung,
  - begrenzte Rueckgabelogik unter Aufsicht,
  - Verhaltenstestbarkeit.
- Neue Kandidaten wuerden wahrscheinlich eher Spezialisierungen oder Unterfaelle bilden.
- Offen bleiben vor allem:
  - staerkere externe Primaerabstuetzung fuer A4,
  - explizite Rueckbindung einzelner Regeln und Attribute.

### Bewusst offene Negativraeume
- vollstaendige Theorie von Nutzerinteraktion im Niedrigrisikobereich,
- detaillierte Metrik fuer Unsicherheitskalibrierung,
- feinkoernige Taxonomie von Evaluatortypen.

## 4.2 B – ASWE_KnowledgeOS-Architektur
**Urteil:** nahe saettigungsreif auf Kernaxiomebene.

### Begruendung
- Die B-seitigen Grunddimensionen sind stark abgedeckt:
  - Terminologie,
  - Ontologie,
  - Provenienz und Referenzierbarkeit,
  - Pfad- und Schnittstellenexplizitheit,
  - governierte Evolvierbarkeit.
- Die groessten offenen Punkte liegen nicht in fehlenden Kernaxiomen, sondern in der Ableitungsebene.

### Bewusst offene Negativraeume
- detaillierte Bewertungsmetriken fuer Ontologiequalitaet,
- formale Modellierung von Revisionskosten,
- Feindifferenzierung struktureller Komplexitaetsmaße.

## 4.3 K – Kopplung
**Urteil:** konsolidierungsreif, aber noch nicht voll ausgeschrieben.

### Begruendung
- K1, K2 und K3 decken die zentrale Kopplungslogik bereits gut ab.
- Weitere echte gemeinsame Kernaxiome sind derzeit nicht zwingend erkennbar.
- Offen ist vor allem, welche Kopplungsfolgen explizit bleiben muessen und welche besser asymmetrisch an A oder B rueckgebunden werden.

### Bewusst offene Negativraeume
- feingranulare Kopplungstypologie,
- separate Unterklassen fuer asymmetrische Kopplungen,
- explizite Kopplungskosten- oder Driftmetriken.

## Gesamturteil
Der Kandidatenraum ist **nicht zu klein**, sondern **metaqualitativ noch nicht voll konsolidiert**.  
Die Hauptaufgabe von V3 ist daher **nicht Expansion**, sondern **Abschluss der Raumqualitaet**.

---

## 5. Redundanz- und Konsistenzrevision

## 5.1 Semantische Dubletten
1. **Wiederauffindbarkeit** und Teile der **Referenzierbarkeit**  
   Entscheidung: **unterordnen**  
   Begruendung: Wiederauffindbarkeit ist keine gleichrangige Kernkategorie neben Referenzierbarkeit, sondern deren Folge und Nutzungseffekt.

2. **Driftresistenz** und Teile von **governierter Evolvierbarkeit**  
   Entscheidung: **enger fassen**  
   Begruendung: Driftresistenz ist besser als sekundaeres Qualitaetsattribut unter B5 und A1/A3 fuehrbar.

## 5.2 Funktionale Dubletten
1. **explizite Rueckgabepunkte** und Teile der **Pfad- und Schnittstellenexplizitheit**  
   Entscheidung: **unterordnen**  
   Begruendung: Rueckgabepunkte sind operative Regel unter A4/B4, kein eigenstaendiger Designgrundsatz.

2. **adversariale Pruefbarkeit** und Teile der **Verhaltenstestbarkeit**  
   Entscheidung: **unterordnen**  
   Begruendung: adversariale Pruefbarkeit ist spezieller Unterfall von A5.

## 5.3 Normkonflikte
1. **begrenzte Rueckgabelogik** vs. **governierte Evolvierbarkeit**  
   Entscheidung: **als produktive Spannung behalten**  
   Begruendung: Lernen und Veraenderung brauchen begrenzte Rueckkopplung, nicht freie Entgrenzung.

2. **epistemische Trennung** vs. **Nutzbarkeit**  
   Entscheidung: **enger fassen**  
   Begruendung: Die formale Strenge gilt fuer tragende Artefakte und pruefpflichtige Kommunikation, nicht fuer jede triviale Interaktion.

## 5.4 Definitionskollisionen
Keine harte Kollision sichtbar.  
Kritische Begriffe werden in V3 terminologisch nachgeschaerft:
- Wiederauffindbarkeit -> abgeleitetes Qualitaetsattribut
- Persistenz -> sekundaer, aber automationssensitiv
- duale Lesbarkeit -> sekundaer, spaeter moeglich aufwertbar

## 5.5 Ueberlappende Kopplungsaxiome
1. **K2 Evaluation vor Operationalisierung** und **B4 Pfad- und Schnittstellenexplizitheit**  
   Entscheidung: **als asymmetrisch verschraenkt behalten**  
   Begruendung: K2 regelt die zeitlich-normative Vorrangigkeit, B4 die architektonische Uebergangsform.

2. **K3 Spiegel-/Adapter-Asymmetrie** und **B2 Ontologische Trennschaerfe**  
   Entscheidung: **unterordnen ohne Aufloesung**  
   Begruendung: K3 bleibt als Kopplungsaxiom erhalten, ist aber ontologisch in B2 vorbereitet.

---

## 6. Revidierter Kernaxiomenraum

## A) Kernaxiome fuer LLM-Verhaltenssteuerung
1. **A1 Ziel- und Geltungsbindung**
2. **A2 Epistemische Trennung**
3. **A3 Auditierbarkeit und Unsicherheitsmarkierung**
4. **A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht**
5. **A5 Verhaltenstestbarkeit**

### Starke Designprinzipien unter A
- Explizitheit kritischer Annahmen
- regelgebundene Selbstkritik
- adversariale Pruefbarkeit
- evaluator-kritische Testdisziplin
- Portierbarkeit

### Sekundaere Qualitaetsattribute unter A
- Driftresistenz
- Kontrollierbarkeit
- Reproduzierbarkeit
- argumentative Nachvollziehbarkeit

### Operative Regeln unter A
- Zielbild vor Ausfuehrung explizieren
- Aussagearten trennen
- Unsicherheiten markieren
- kleinsten sicheren naechsten Schritt waehlen
- Gegenbeispiele und Testfaelle anfuehren

## B) Kernaxiome fuer ASWE_KnowledgeOS-Architektur
1. **B1 Terminologische Primaerordnung**
2. **B2 Ontologische Trennschaerfe**
3. **B3 Provenienz und Referenzierbarkeit**
4. **B4 Pfad- und Schnittstellenexplizitheit**
5. **B5 Governierte Evolvierbarkeit**

### Starke Designprinzipien unter B
- definitorische Priorisierung
- Rollen- und Relationsreinheit
- kontrollierte Kopplung
- driftwachsame Revisionsdisziplin
- Verifikationsfaehigkeit

### Sekundaere Qualitaetsattribute unter B
- Wiederauffindbarkeit
- Persistenz
- Reparierbarkeit
- Wartbarkeit
- duale Lesbarkeit

### Operative Regeln unter B
- Begriff vor Benennung, Benennung vor Regelung
- Herkunft und Referenzen mitfuehren
- Pfadwechsel nur ueber explizite Schnittstellen
- Aenderungen gegen Drift und Revisionsfaehigkeit pruefen

## K) Kopplungsaxiome
1. **K1 Beobachtung-Aussage-Beleg**
2. **K2 Evaluation vor Operationalisierung**
3. **K3 Spiegel-/Adapter-Asymmetrie**

### Starke Designprinzipien unter K
- epistemische Staffelung
- keine Kurzschlussmaterialisierung
- keine konkurrierende Wahrheitsquelle

### Sekundaere Qualitaetsattribute unter K
- Evidenzdisziplin
- Materialisierungsdisziplin
- Wahrheitsquellenstabilitaet

### Operative Regeln unter K
- Bewertung vor Materialisierung
- Spiegel und Adapter nicht als semantischen Ursprung behandeln
- Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen

---

## 7. Selbstpruefung

### Terminologiepolitik eingehalten?
Ja.
- Allgemeine Anglizismen wurden nicht als Default wieder eingefuehrt.
- Eigenname, Originalterm und deutscher Primaerbegriff bleiben getrennt.

### Geltungsordnung eingehalten?
Ja.
- D2, D3 und D4 bleiben vorrangig.
- D5 wirkt nur als nachgeordnete Metaqualitaetsergaenzung.

### Zweite Regelquelle vermieden?
Ja.
- V3 fuehrt keine neue Leitplankenarchitektur ein.
- Neue Metaqualitaetskriterien werden als Erweiterung und Praezisierung ausgewiesen.

### Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung getrennt?
Ja, in Voranalyse und Metaqualitaetspruefung ausdruecklich.

### Echten Erklaerungsmehrwert geliefert?
Ja.
- Die wesentliche Neuerung liegt in:
  - Vollstaendigkeitslogik,
  - Saettigungsurteil,
  - Redundanz- und Konsistenzrevision,
  - Abdeckungs- und Ableitungsmatrix,
  - Verwaisungspruefung.

### Zielbild unversehrt geblieben?
Ja.
- Kernaxiome bleiben Kernaxiome.
- Externe Quellen bleiben primaer.
- A, B und Kopplung bleiben getrennt.
- Governierte statt freie Selbstverbesserung bleibt bindend.
- Begriffe bleiben vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.

### Verbleibende Unsicherheiten
1. **A4** bleibt extern weniger stark primaer abgestuetzt als die staerksten B-Axiome.
2. **duale Lesbarkeit**, **Persistenz** und **Wiederauffindbarkeit** koennen unter hoeherem Automationsgrad aufgewertet werden.
3. Ein voll formaler Konsistenzbeweis liegt nicht vor; V3 liefert einen strukturierten Audit, keine mathematische Vollbeweislage.

---

## 8. Quellen

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

### Institutionelle Reports
- NIST AI 600-1 (2024) – Generative Artificial Intelligence Profile

### Repo-interne Referenzen
- D1: ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md
- D2: ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md
- D3: ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md
- D4: ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md
- D5: ASWE_Axiomkandidatenraum_Verbesserungsschleife_V3_Standardschaerfung_20260423_V3.md

```

---

## RAW_RECORD_018: ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md`
- sha256: `90004f41ed889a7996b4c68466d2c49238abba94c98142730b66c6f572aff78b`
- chars: 15151
- approx_tokens: 3788

```markdown
# ASWE Axiomkandidatenraum – Verbesserungsschleife V2 durch Selbstanwendung und Folgeprompt (20260423 V1)

## Einordnung

- **Gegenstandsbereich:** Systemgegenstand
- **Wissensebene:** methodische und sprachliche Revisionssteuerung
- **Abstraktionsgrad:** systemisches Strukturmodell mit konkreten Arbeitsregeln

Dieses Dokument nimmt die vorherige Verbesserungsschleife **auf sich selbst** in Anwendung.  
Ziel ist nicht eine neue allgemeine Wunschliste, sondern die **Selbstverbesserung des Verbesserungsschleifendokuments** und daraus abgeleitet die Konstruktion der **naechsten, enger gefuehrten Revisionsschleife** fuer das Hauptdokument.

---

## 1. Selbstanwendungsprämisse

Die vorherige Schleife hat Parameter formuliert, die nicht nur das Hauptdokument, sondern bereits das Verbesserungsschleifendokument selbst verbessern koennen. Selbstanwendbar sind vor allem jene Parameter, die:

1. die **Sprache und Benennungsschicht** regeln,
2. die **Statusklarheit von Aussagen** erhoehen,
3. die **Ableitungslogik** des Dokuments schaerfen,
4. die **Ausfuehrbarkeit der naechsten Schleife** verbessern.

Nicht primaer selbstanwendbar sind Parameter, die vor allem die **inhaltliche Bewertung der Kernaxiome im Hauptdokument** betreffen, etwa Phasenrobustheit einzelner Axiome oder deren Rangwechsel unter steigendem Automationsgrad. Diese bleiben Ziel der naechsten Schleife am Hauptdokument.

---

## 2. Parameter aus V1, die das Verbesserungsschleifendokument selbst verbessern

## 2.1 Direkt selbstanwendbare Parameter

| Parameter aus V1 | Warum selbstanwendbar | Umsetzung in diesem Dokument |
|---|---|---|
| **P12 Sprachgovernance statt Sprachmischung als Default** | Das Dokument selbst mischte Deutsch, Englisch und Hybridformen | Deutsche Primaerbegriffe; englische Aliase nur dort, wo fachlich oder referenziell noetig |
| **P13 Jargon-Lizenz nur bei Mehrwert** | Mehrere Begriffe waren feldnah, aber nicht immer begrifflich noetig | Schwache Jargonformen reduziert oder ersetzt |
| **P14 Bindestrich-Komposita nur unter formaler Disziplin** | Einige Bindestrichformen verdichteten mehrere Ebenen ohne Rueckdefinition | Bindestriche nur fuer scope-klaerende oder lokal-kontraktuelle Begriffe |
| **P15 Alias-Disziplin** | Das vorige Dokument wechselte teils unruhig zwischen deutschen und englischen Formen | Erstnennung deutsch, Alias knapp in Klammern, danach konsistent |
| **P2 Aussage-Quellen-Passung** | Das vorige Dokument mischte normative Regeln, Sprachurteile und Arbeitsanweisungen ohne klare Rollenmarkierung | In diesem Dokument wird zwischen Selbstanwendungsregel, Revisionskriterium und Folgeauftrag getrennt |
| **P4 Gegenbeispielsensitivitaet** | Die vorige Sprachkritik war im Ergebnis korrekt, aber noch zu pauschal | Dieses Dokument benennt explizit Ausnahmefaelle, in denen englische Terme beibehalten werden sollen |
| **P8 Trennschaerfe zu Nachbarbegriffen** | Begriffe wie Alias, Eigenname, Originalterm und Hybridform wurden noch nicht sauber genug getrennt | Eigene Benennungsklassen eingefuehrt |

## 2.2 Mittelbar selbstanwendbare Parameter

| Parameter aus V1 | Warum nur mittelbar selbstanwendbar | Umgang in diesem Dokument |
|---|---|---|
| **P1 Quellenklassen-Gewichtung** | Diese Schleife ist primaer ein Revisions- und Sprachsteuerungsdokument, kein neues Literaturdokument | Nur als Revisionsregel fuer die naechste Schleife am Hauptdokument uebernommen |
| **P3 Evidenzheterogenitaetsquote** | Fuer dieses Dokument nicht der zentrale Engpass | Als Auftrag an die Folgeversion des Hauptdokuments weitergereicht |
| **P5 Axiomstatus-Schaerfe** | Betrifft primaer den Status von Axiomkandidaten im Hauptdokument | Als Folgeauftrag beibehalten |
| **P9 Phasenrobustheit** | Betrifft die Rangstabilitaet von Kernaxiomen, nicht die Revisionssprache dieses Dokuments | In der naechsten Schleife zu bearbeiten |
| **P10 Automationssensitivitaet** | Betrifft spaetere Systemreifegrade des Hauptdokuments | In der naechsten Schleife zu bearbeiten |
| **P11 Kopplungsstabilitaet zwischen A und B** | Betrifft das Axiommodell selbst | In der naechsten Schleife am Hauptdokument zu pruefen |

---

## 3. Umgesetzte Selbstverbesserungen in diesem Dokument

## 3.1 Terminologiepolitik des Dokuments

Dieses Dokument verwendet nur noch vier Benennungsklassen:

1. **deutscher Primaerbegriff**  
   Standardform des Fliesstexts.
2. **englischer Alias**  
   nur bei erster Nennung, wenn ein klarer fachlicher Anschlussgewinn entsteht.
3. **Eigenname eines repo-lokalen Artefakts oder Vertrags**  
   bleibt in der etablierten Form erhalten.
4. **literaturgebundener Originalterm**  
   bleibt erhalten, wenn eine Uebersetzung den Anschluss an die Fachliteratur spuerbar verschlechtert.

### Folgeregel
Nicht zulaessig als Default sind:
- unkommentierte Hybridbildungen,
- feldnahe Modeterme ohne begrifflichen Mehrwert,
- wechselnde Benennungen fuer denselben Gegenstand.

## 3.2 Ersetzte oder geschaerfte Termformen

| Bisher schwach oder unruhig | Neue bevorzugte Form | Begründung |
|---|---|---|
| Self-Audit | Selbstpruefung | Deutsch gleich praezise; kein Fachverlust |
| Claim-Source-Fit | Aussage-Quellen-Passung | Deutsch tragfaehig; englischer Alias nicht erforderlich |
| boundedness | Begrenzungsdisziplin | funktional klarer als der importierte Term |
| Red-Teamability | adversariale Pruefbarkeit | sauberes Deutsch, hoehere Rueckdefinierbarkeit |
| Governance-vorrangige Adaptivitaet | governierte Adaptivitaet | kuerzer, begrifflich schaerfer |
| hybrider Jargon ohne Status | deutscher Primaerbegriff mit knappem Alias | stabilere Terminologie |

## 3.3 Ausnahmefaelle, in denen Englisch bestehen bleiben darf

Englische Formen bleiben nur in drei Faellen stehen:

1. **repo-lokaler Eigenname**  
   etwa konkrete Vertragstitel, etablierte Artefaktnamen oder technische Labels.
2. **literaturgebundener Originalterm**  
   wenn der englische Ausdruck ein klar abgegrenztes Diskursfeld bezeichnet.
3. **Benchmark- oder Methodentitel**  
   wenn eine standardisierte Bezeichnung zitiert oder referenziert wird.

### Gegenbeispielregel
Wenn ein englischer oder hybrider Begriff ohne einen dieser drei Gruende verwendet wird, ist er in der naechsten Revision **ersetzungsbeduerftig**.

## 3.4 Strukturverbesserung des Dokuments

Das vorige Verbesserungsschleifendokument enthielt:
- Zielbild-Guardrails,
- Parameter,
- Sprachurteil,
- naechste Schritte.

Diese Bausteine bleiben, werden jetzt aber deutlicher getrennt in:

1. **Selbstanwendungsregel**
2. **bereits umgesetzte Verbesserungen**
3. **Revisionsauftrag an das Hauptdokument**
4. **naechster Ausfuehrungsprompt**

Damit wird das Dokument selbst ausfuehrbarer und weniger meta-unscharf.

---

## 4. Revisionsauftrag, der aus der Selbstanwendung fuer das Hauptdokument folgt

Die Selbstanwendung zeigt, welche Verbesserungen nun **nicht mehr nur als abstrakte Parameter**, sondern als konkrete Revisionspflicht am Hauptdokument zu behandeln sind.

## 4.1 Revisionspflichten erster Ordnung

Diese Punkte sollen in der naechsten Schleife am Hauptdokument verbindlich umgesetzt werden:

1. **Terminologie-Register einfuehren**  
   Jeder tragende Begriff erhaelt einen Status:
   - deutscher Primaerbegriff,
   - englischer Alias,
   - Eigenname,
   - literaturgebundener Originalterm.

2. **Aussagearten trennen**  
   Jeder zentrale Abschnitt trennt:
   - Beobachtung,
   - Aussage,
   - Hypothese,
   - Kriterium,
   - Empfehlung.

3. **Kernaxiomstatus explizit markieren**  
   Jeder Kandidat wird als
   - Kernaxiom,
   - starkes Designprinzip,
   - sekundaeres Qualitaetsattribut,
   - operative Regel
   gekennzeichnet.

4. **Aussage-Quellen-Passung explizit machen**  
   Pro tragender Aussage ist anzugeben, ob ihre Funktion:
   - definitorisch,
   - empirisch,
   - standardsetzend,
   - oder repo-lokal anwendend ist.

5. **Gegenbeispiele und Nicht-Geltung einbauen**  
   Jeder Kernaxiomcluster bekommt mindestens:
   - eine Nicht-Geltung,
   - eine Spannungsbeziehung,
   - ein Gegenbeispiel oder einen Grenzfall.

## 4.2 Revisionspflichten zweiter Ordnung

Diese Punkte sollen in derselben oder unmittelbar folgenden Schleife aufgenommen werden, falls die Dokumentgroesse beherrschbar bleibt:

1. **Phasenrobustheit der Axiome**  
   fruehe Aufbauphase, Ordnungsphase, spaetere Automationsphase.
2. **Automationssensitivitaet**  
   welche Kriterien werden mit steigender agentischer Ausfuehrung aufgewertet?
3. **Kopplungsstabilitaet zwischen A und B**  
   echtes gemeinsames Axiom, asymmetrische Kopplung oder nur Analogie?

---

## 5. Konstruierte naechste Verbesserungsschleife

## 5.1 Ziel der naechsten Schleife
Das Hauptdokument wird von einer **starken ersten Synthese** zu einer **terminologisch, epistemisch und evidenziell schärferen V2** ueberfuehrt, ohne den axiombasierten Charakter aufzuweichen.

## 5.2 Nicht-Ziel
Die naechste Schleife dient **nicht** dazu:
- neue breite Kandidatenlisten zu erzeugen,
- in Tool- oder Repo-Implementierung abzurutschen,
- das Zielbild von Kernaxiomen in einen allgemeinen Qualitaetskatalog umzubauen,
- deutsche Primaerbegriffe wieder durch ungovernierte Mischsprache zu ersetzen.

## 5.3 Pflichtaenderungen an V2 des Hauptdokuments
Die Folgeversion des Hauptdokuments muss mindestens enthalten:

1. **Terminologie-Register am Anfang**
2. **Klassifizierung jedes Kandidaten nach Statusklasse**
3. **Quellenrollenkennzeichnung pro tragendem Satz oder Abschnitt**
4. **Nicht-Geltung und Grenzfaelle fuer die Kernaxiome**
5. **separaten Abschnitt zu Phasenrobustheit und Automationssensitivitaet**
6. **Pruefung der Kopplungsaxiome auf Symmetrie oder Asymmetrie**
7. **sprachlich bereinigte Benennungsschicht nach der hier definierten Terminologiepolitik**

## 5.4 Abnahmekriterien der naechsten Schleife
Die naechste Schleife ist nur dann gelungen, wenn das neue Hauptdokument:

- die Zahl unkommentierter englischer oder hybrider Terme deutlich senkt,
- dennoch literatur- und anschlussfaehig bleibt,
- Kernaxiome klarer von Designprinzipien und Qualitaetsattributen trennt,
- pro zentralem Axiom mindestens eine Nicht-Geltung oder einen Grenzfall nennt,
- die Evidenzbasis von A staerker typisiert und, soweit moeglich, mit Primaerquellen nachschaerft,
- keine Aufweichung der Zielbild-Guardrails enthaelt.

---

## 6. Konkreter Ausfuehrungsprompt mit Dokumentenreferenzierung

### 6.1 Fuehrende Dokumente fuer die naechste Schleife

Verwende die folgenden Dokumente in genau dieser Rollenlogik:

- **D1:** `ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V1.md`  
  Rolle: zu revidierendes Hauptdokument.

- **D2:** `ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md`  
  Rolle: erste Verbesserungsschleife; Parameterpool und Sprachkritik.

- **D3:** `ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md`  
  Rolle: fuehrende Schleife; enthaelt die selbstangewandten Verbesserungen, Revisionspflichten und die Terminologiepolitik fuer V2.

- **D4:** `ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md`  
  Rolle: verhaltenssteuernde Ausfuehrungslogik fuer Pre-Flight, Phasentrennung und Scope-Disziplin.

### 6.2 Konkreter Prompt

``\`text
Revidiere das Hauptdokument D1 unter Fuehrung von D3 und unter Rueckgriff auf D2 und D4.

Dokumentenrollen:
- D1 = zu revidierendes Hauptdokument
- D2 = erste Verbesserungsschleife mit Parameterpool
- D3 = fuehrende Verbesserungsschleife mit Selbstanwendung, Terminologiepolitik und Revisionspflichten
- D4 = Ausfuehrungslogik fuer Pre-Flight, Phasentrennung und Scope-Disziplin

Arbeite strikt in dieser Reihenfolge:

PHASE 0 – PRE-FLIGHT
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Markiere, was aus D1 inhaltlich tragend bleibt und was aus D3 zwingend zu ueberarbeiten ist.
- Das Zielbild darf nicht aufgeweicht werden:
  - Kernaxiome bleiben Kernaxiome.
  - Externe wissenschaftliche Quellen bleiben primaer.
  - Begriffe bleiben vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
  - Governierte statt freie Selbstverbesserung.
  - A und B bleiben getrennt; Kopplungen nur explizit.

PHASE 1 – TERMINOLOGIE-REVISION
- Fuehre am Anfang von D1 ein Terminologie-Register ein.
- Ordne jeden tragenden Begriff genau einer Benennungsklasse zu:
  1. deutscher Primaerbegriff
  2. englischer Alias
  3. Eigenname
  4. literaturgebundener Originalterm
- Ersetze schwache Hybrid- und Jargonformen.
- Behalte englische Terme nur, wenn ihr Erhalt nach der in D3 definierten Terminologiepolitik gerechtfertigt ist.

PHASE 2 – STATUS- UND EVIDENZ-REVISION
- Markiere jeden Kandidaten explizit als:
  - Kernaxiom
  - starkes Designprinzip
  - sekundaeres Qualitaetsattribut
  - operative Regel
- Weise pro tragendem Satz oder Abschnitt die Quellenrolle aus:
  - definitorisch
  - empirisch
  - standardsetzend
  - repo-lokal anwendend
- Schaerfe A-seitige Aussagen, falls sie primaer auf Preprints oder Reports beruhen; ziehe den Geltungsanspruch enger, wenn Primaerquellen nicht ausreichen.

PHASE 3 – GRENZFAELLE UND NICHT-GELTUNG
- Ergaenze fuer jeden Kernaxiomcluster:
  - mindestens eine Nicht-Geltung,
  - mindestens eine Spannungsbeziehung,
  - mindestens einen Grenzfall oder ein Gegenbeispiel.

PHASE 4 – PHASEN- UND KOPPLUNGSREVISION
- Fuege einen Abschnitt ein zu:
  - Phasenrobustheit
  - Automationssensitivitaet
  - Kopplungsstabilitaet zwischen A und B
- Klassifiziere Kopplungsaxiome als:
  - echt gemeinsam
  - asymmetrisch gekoppelt
  - nur analog uebertragen

PHASE 5 – SELBSTPRUEFUNG
- Pruefe explizit:
  - ob die Terminologiepolitik eingehalten wurde,
  - ob unkommentierte Mischsprache reduziert wurde,
  - ob Kernaxiome klarer von abgeleiteten Begriffen getrennt wurden,
  - ob das Zielbild unversehrt blieb.

QUELLENREGEL
- Externe akademische Primaerquellen und Standards bleiben vorrangig.
- Repo-interne Referenzen duerfen nur als Anwendungs- oder Passungsbelege dienen.
- Wenn fuer A keine hinreichend starke Primaerquelle verfuegbar ist, markiere die Aussage als enger geltend statt sie mit schwacher Evidenz zu verallgemeinern.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md

PFLICHTSTRUKTUR
1. Pre-Flight
2. Terminologie-Register
3. Revidierter Kandidatenraum
4. Status- und Evidenzmatrix
5. Kernaxiome
6. Nicht-Geltung, Spannungen und Grenzfaelle
7. Phasenrobustheit, Automationssensitivitaet und Kopplungsstabilitaet
8. Selbstpruefung
9. Quellen
``\`

---

## 7. Kurzurteil zur Selbstanwendung

Die staerksten selbstanwendbaren Parameter waren nicht die rein axiominhaltlichen, sondern die **sprach- und ableitungslogischen Parameter**.  
Gerade sie verbessern das Verbesserungsschleifendokument unmittelbar, weil sie:

- die Benennungsschicht ordnen,
- unnoetigen Hybridjargon reduzieren,
- die Rollen von Aussagen klarer trennen,
- und den Folgeprompt deutlich ausfuehrbarer machen.

Die naechste echte inhaltliche Verbesserungsschleife muss nun wieder am **Hauptdokument D1** ansetzen; D3 dient dafuer als fuehrender Revisionsrahmen.

```

---

## RAW_RECORD_019: ASWE_Axiomkandidatenraum_Verbesserungsschleife_V3_Abdeckung_Folgeprompt_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Verbesserungsschleife_V3_Abdeckung_Folgeprompt_20260423_V1.md`
- sha256: `7c6d856480a9f14813ed2f1b76246cc49f72edbf44df90db965b7bdc45bb566f`
- chars: 15018
- approx_tokens: 3755

```markdown
# ASWE Axiomkandidatenraum – Verbesserungsschleife V3 zu Abdeckung, Vollständigkeit und Ableitungsclosure (20260423 V1)

## 1. Einordnung

- **Gegenstandsbereich:** Systemgegenstand
- **Wissensebene:** begriffliche, methodische und evaluative Revisionssteuerung
- **Abstraktionsgrad:** Grundsatz mit systemischem Strukturmodell

Fuehrendes Revisionsobjekt ist das aktuellste Hauptdokument **D1 = ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md**.  
Diese Schleife bewertet D1 nicht erneut primaer auf Sprache, sondern auf **Trennschaerfe, Abdeckungslogik, Vollstaendigkeit, Redundanzbehandlung, Widerspruchsmanagement und Ableitungsclosure**.

Ziel ist eine V3-Schleife, die den Kandidatenraum nicht bloß weiter verfeinert, sondern ihn auf **meta-strukturelle Vollstaendigkeit und innere Geschlossenheit** prueft.

---

## 2. Kurzdiagnose von D1/V2

## 2.1 Was in D1/V2 bereits stark umgesetzt ist
D1/V2 setzt eine trennscharfere Analyse gegenueber frueheren Versionen deutlich sichtbar um:

1. **Terminologische Trennung**  
   Es gibt ein Terminologie-Register mit Benennungsklassen.
2. **Statusklassentrennung**  
   Kandidaten werden als Kernaxiom, starkes Designprinzip, sekundaeres Qualitaetsattribut oder operative Regel klassifiziert.
3. **Aussage-Quellen-Passung**  
   Es gibt eine Status- und Evidenzmatrix mit Quellenrollen und Evidenzniveau.
4. **Nicht-Geltung, Spannungen und Grenzfaelle**  
   Kernaxiome werden nicht nur positiv, sondern auch negativ und konfliktsensitiv gefasst.
5. **Phasen- und Kopplungslogik**  
   Phasenrobustheit, Automationssensitivitaet und Kopplungsstabilitaet sind eingefuehrt.
6. **Sprachgovernance**  
   Mischsprache wurde reduziert und explizit geregelt.

### Zwischenurteil
D1/V2 ist **strukturell deutlich reifer** als D1/V1. Die Analyse ist nicht mehr nur selektiv-argumentativ, sondern bereits **evaluationsnah organisiert**.

---

## 2.2 Was in D1/V2 noch nicht trennscharf oder nicht vollstaendig genug umgesetzt ist

### A. Vollständigkeit ist noch kein explizites Pruefkriterium
D1/V2 behandelt Kandidatenraumgroesse, Phasenrobustheit und Rangnahe, aber **nicht explizit Vollständigkeit** als eigene Evaluationsachse.

Es fehlt insbesondere:
- ein definierter Vollständigkeitsbegriff,
- eine Unterscheidung zwischen
  - domänischer Vollständigkeit,
  - struktureller Vollständigkeit,
  - Ableitungsvollständigkeit,
  - Negativraum-Vollständigkeit,
- ein expliziter Sättigungs- oder Stopptest fuer weitere Kandidatenexpansion.

### B. Redundanz wird nur teilweise explizit behandelt
D1/V2 adressiert Redundanz indirekt ueber:
- Nicht-Derivativitaet,
- Statusklassentrennung,
- Clusterung,
- Unterordnung in Designprinzipien oder Attribute.

Es fehlt aber:
- ein expliziter **Redundanz- oder Minimalitätsaudit**,
- eine Matrix fuer
  - semantische Dubletten,
  - Funktionsdubletten,
  - nur perspektivische Umbenennungen,
  - ueberlappende Kopplungsaxiome.

### C. Widerspruchsfreiheit ist noch nicht als globaler Prüfpunkt formalisiert
D1/V2 behandelt Spannungen und Grenzfaelle. Das ist stark.  
Aber Spannung ist nicht dasselbe wie **Widerspruchsfreiheit**.

Es fehlt:
- ein globaler Konsistenz- oder Widerspruchsaudit,
- eine Unterscheidung zwischen
  - produktiver Spannung,
  - lokaler Unvereinbarkeit,
  - globalem Normenkonflikt,
  - Definitionskollision.

### D. Ableitungsclosure fehlt
D1/V2 klassifiziert Designprinzipien, Qualitaetsattribute und operative Regeln, aber es zeigt **nicht vollstaendig**, aus **welchem Axiom** welcher nachgeordnete Begriff folgt.

Es fehlt:
- eine Axiom-zu-Regel-Matrix,
- eine Axiom-zu-Qualitaetsattribut-Matrix,
- eine Rueckpruefung auf **verwaiste** Regeln/Attribute,
- eine Rueckpruefung auf **unterbestimmte** Axiome mit zu wenigen Ableitungen.

### E. Meta-Abdeckung des Kandidatenraums ist noch offen
D1/V2 beantwortet noch nicht explizit:
- Ist der Raum **saettigungsnah**?
- Welche Klassen moeglicher Kandidaten wurden bewusst **nicht** aufgenommen?
- Gibt es eine relevante **negative Luecke**, etwa bei:
  - Vollstaendigkeit,
  - Konsistenz,
  - Minimalitaet,
  - Orthogonalitaet,
  - Closure,
  - Revisionskosten,
  - Bewertungsinterdependenzen?

---

## 3. Begründete Einschätzung zur Größe des Kandidatenraums

## 3.1 Urteil
Der Kandidatenraum ist **fuer die naechste Konsolidierungsstufe gross genug**, aber **noch nicht in einem strengen Sinn vollstaendig oder saettigungsgeprueft**.

## 3.2 Begruendung

### Positiv
Der Raum ist bereits ausreichend gross fuer:
- stabile Kernaxiomen-Selektion,
- Trennung zwischen A, B und Kopplung,
- erste Ableitung starker Designprinzipien,
- erste Trennung sekundaerer Qualitaetsattribute,
- phasen- und automationsbezogene Differenzierung.

Mit anderen Worten:
**Es gibt nicht zu wenige Kandidaten, sondern eher noch zu wenig explizite Metapruefung des vorhandenen Raums.**

### Einschraenkung
„Ausreichend gross“ bedeutet hier nicht:
- domain-vollstaendig,
- final erschlossen,
- saturiert.

Es bedeutet:
- gross genug, um die naechste Schleife auf **Raumqualitaet statt auf reine Expansion** umzustellen.

### Konsequenz
Die naechste Schleife sollte **nicht primaer weitere Begriffe sammeln**, sondern pruefen:
1. Was fehlt strukturell?
2. Was ist doppelt?
3. Was kollidiert?
4. Was ist abgeleitet, aber noch nicht zurueckgebunden?
5. Welche Luecken bleiben, wenn man Vollstaendigkeit systematisch fasst?

---

## 4. Sind Vollständigkeit, Redundanz- und Widerspruchsfreiheit berücksichtigt?

## 4.1 Vollständigkeit
**Noch nicht ausreichend explizit.**

- implizit teilweise beruehrt:
  - durch Kandidatenexpansion,
  - Phasenrobustheit,
  - Automationssensitivitaet,
  - Kopplungsstabilitaet.
- explizit noch fehlend:
  - eigener Vollstaendigkeitsbegriff,
  - Abdeckungsmatrix,
  - Negativraum-Audit,
  - Saettigungsregel.

## 4.2 Redundanzfreiheit
**Teilweise beruecksichtigt, aber noch nicht formal genug.**

- bereits vorhanden:
  - Nicht-Derivativitaet,
  - Synonym-/Clusterlogik,
  - Unterordnung abgeleiteter Begriffe.
- noch fehlend:
  - expliziter Minimalitaets- bzw. Redundanzaudit,
  - Kennzeichnung semantischer versus funktionaler Redundanz,
  - Nachweis, dass zwei verbleibende Axiome nicht denselben normativen Kern doppeln.

## 4.3 Widerspruchsfreiheit
**Teilweise beruecksichtigt, aber nicht als eigener Konsistenzstandard.**

- bereits vorhanden:
  - Spannungsbeziehungen,
  - Nicht-Geltung,
  - Grenzfaelle.
- noch fehlend:
  - globale Konsistenzmatrix,
  - Normkonfliktpruefung,
  - Pruefung, ob Ableitungen eines Axioms anderen Axiomen widersprechen,
  - Pruefung, ob Kopplungsaxiome lokale A- oder B-Axiome unterlaufen.

### Kurzurteil
Vollstaendigkeit, Redundanzfreiheit und Widerspruchsfreiheit sind in D1/V2 **angelegt**, aber **noch nicht als explizite Metaqualitaetskriterien voll umgesetzt**.

---

## 5. Berücksichtigt D1/V2 selbst alle Axiome sowie deren abgeleitete Regeln und Qualitätsattribute?

## Urteil
**Nein, noch nicht vollstaendig.**

## Begruendung
D1/V2 beruecksichtigt bereits viele:
- Kernaxiome,
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln.

Aber es tut dies noch **nicht closure-vollstaendig**.

### Was fehlt
1. **Ableitungsclosure**
   - nicht jede operative Regel ist explizit auf ein oder mehrere Axiome zurueckgebunden;
   - nicht jedes Qualitaetsattribut ist als Folge bestimmter Axiome rekonstruiert.

2. **Vollstaendige Ableitungsrichtung**
   - es fehlt die bidirektionale Frage:
     - Aus welchem Axiom folgt dieser Begriff?
     - Welche Begriffe folgen aus diesem Axiom?

3. **Verwaisungspruefung**
   - es ist noch nicht systematisch geprueft, ob es
     - Regeln ohne Axiom,
     - Attribute ohne Axiom,
     - Axiome ohne belastbare Folgeebene
     gibt.

4. **Gesamtclosure ueber A, B und K**
   - die Kopplungslogik ist vorhanden, aber nicht als vollstaendige Closure-Matrix.

### Konsequenz
Die naechste Schleife muss von der blossen Statusklassifikation zu einer **vollstaendigen Ableitungs- und Abdeckungsmatrix** uebergehen.

---

## 6. Neue Verbesserungsschleife V3: höchste Reifestufe für den nächsten Schritt

## 6.1 Ziel
Die naechste Verbesserungsschleife soll D1/V2 nicht nur sprachlich oder evidenziell nachschaerfen, sondern auf **Metaqualitaet des Kandidatenraums** pruefen.

## 6.2 Neue Leitfrage
> Ist der Kandidatenraum nicht nur trennscharf und evidenzsensitiv, sondern auch hinreichend vollstaendig, minimal, konsistent, orthogonal und ableitungsseitig geschlossen?

## 6.3 Neue Prüfparameter

### P16. Vollständigkeitsparameter
Zu unterscheiden sind:
- **domänische Vollständigkeit**  
  Sind die relevanten Kandidatenfamilien fuer A, B und K praesent?
- **strukturelle Vollständigkeit**  
  Sind alle Statusklassen sinnvoll belegt?
- **Ableitungsvollständigkeit**  
  Sind Regeln und Attribute vollstaendig an Axiome rueckgebunden?
- **Negativraum-Vollständigkeit**  
  Ist explizit gemacht, was bewusst ausgeschlossen bleibt?

### P17. Sättigungsparameter
- Gibt es noch neue Kandidaten mit echtem Erklaerungsmehrwert?
- Oder entstehen nur Synonyme, Unterfaelle oder Umformulierungen?
- Ab welcher Stelle soll Expansion gestoppt und nur noch Konsolidierung betrieben werden?

### P18. Redundanz- und Minimalitätsparameter
- semantische Dublette?
- funktionale Dublette?
- nur perspektivische Umbenennung?
- koennte einer von zwei Begriffen entfallen, ohne Erklaerungskraft zu verlieren?

### P19. Widerspruchs- und Konsistenzparameter
Zu pruefen sind:
- Definitionskollisionen,
- Normkonflikte,
- Pfadkonflikte,
- Kopplungskollisionen,
- Folgekonflikte zwischen Axiom und abgeleiteter Regel.

### P20. Orthogonalitätsparameter
Axiome muessen moeglichst unterschiedliche konstitutive Funktionen tragen.  
Prueffrage:
- Beschreiben zwei Axiome wirklich verschiedene Grunddimensionen?
- Oder nur denselben Grundsatz aus zwei Blickrichtungen?

### P21. Ableitungsclosure-Parameter
Fuer jedes Kernaxiom ist auszuweisen:
- welche Designprinzipien daraus folgen,
- welche Qualitaetsattribute daraus folgen,
- welche operativen Regeln daraus folgen,
- welche Kopplungsfolgen daraus folgen,
- welche Begriffe gerade **nicht** daraus folgen.

### P22. Verwaisungsparameter
Zu suchen sind:
- Attribute ohne Axiom,
- Regeln ohne Axiom,
- Axiome ohne Folgeebene,
- Kopplungen ohne Primaeranker.

### P23. Globaler Metaqualitätsparameter
Der Kandidatenraum wird nicht mehr nur lokal bewertet, sondern als Ganzes entlang von:
- Vollstaendigkeit,
- Konsistenz,
- Minimalitaet,
- Orthogonalitaet,
- Spurverfolgbarkeit,
- Ableitungsclosure,
- Revisionsstabilitaet.

---

## 7. Konkreter Folgeprompt fuer die naechste Schleife

### Dokumentenrollen
- **D1:** `ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md`  
  zu pruefendes Hauptdokument
- **D2:** `ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md`  
  Sprach- und Benennungspolitik
- **D3:** `ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md`  
  fuehrende Revisionspflichten fuer V2
- **D4:** `ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md`  
  Ausfuehrungslogik fuer Pre-Flight und Phasentrennung
- **D5:** dieses Dokument  
  fuehrende V3-Schleife fuer Vollstaendigkeit, Redundanz, Widerspruchsfreiheit und Ableitungsclosure

### Prompt
``\`text
Analysiere und revidiere D1 unter Fuehrung von D5 und unter Rueckgriff auf D2, D3 und D4.

Dokumentenrollen:
- D1 = aktuelles Hauptdokument V2
- D2 = Sprachgovernance
- D3 = V2-Revisionspflichten
- D4 = Pre-Flight- und Ausfuehrungslogik
- D5 = V3-Schleife fuer Vollstaendigkeit, Redundanz, Widerspruchsfreiheit und Ableitungsclosure

Arbeite strikt in folgenden Phasen:

PHASE 0 – PRE-FLIGHT
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Halte das Zielbild stabil:
  - Kernaxiome bleiben Kernaxiome.
  - Externe wissenschaftliche Quellen bleiben primaer.
  - A, B und Kopplung bleiben getrennt.
  - Governierte statt freie Selbstverbesserung bleibt bindend.
  - Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.

PHASE 1 – METAQUALITÄTS-AUDIT DES KANDIDATENRAUMS
- Pruefe D1 explizit entlang von:
  - Vollstaendigkeit
  - Saettigung
  - Redundanz / Minimalitaet
  - Widerspruchsfreiheit / Konsistenz
  - Orthogonalitaet
  - Ableitungsclosure
  - Verwaisung
- Fuehre fuer jede Achse einen eigenen Befund aus.

PHASE 2 – ABDECKUNGS- UND CLOSURE-MATRIX
- Erzeuge eine Matrix:
  - Kernaxiom -> starke Designprinzipien
  - Kernaxiom -> sekundaere Qualitaetsattribute
  - Kernaxiom -> operative Regeln
  - Kernaxiom -> Kopplungsfolgen
- Markiere:
  - verwaiste Regeln
  - verwaiste Attribute
  - unterableitende Axiome
  - doppelte Ableitungen
  - konflikthafte Ableitungen

PHASE 3 – VOLLSTÄNDIGKEITS- UND SAETTIGUNGSURTEIL
- Bestimme, ob der Kandidatenraum:
  - noch deutlich expansionsbeduerftig,
  - konsolidierungsreif,
  - oder nahezu saettigungsnah ist.
- Begruende dies getrennt fuer:
  - A
  - B
  - K

PHASE 4 – REDUNDANZ- UND KONSISTENZREVISION
- Identifiziere:
  - semantische Dubletten
  - funktionale Dubletten
  - Normkonflikte
  - Definitionskollisionen
  - ueberlappende Kopplungsaxiome
- Entscheide pro Fall:
  - zusammenziehen
  - unterordnen
  - streichen
  - enger fassen
  - als produktive Spannung behalten

PHASE 5 – REVISION DES HAUPTDOKUMENTS
- Revidiere D1 so, dass
  - Vollstaendigkeit explizit adressiert wird,
  - Redundanz und Widerspruchsfreiheit als eigene Metaqualitaetskriterien erscheinen,
  - die Ableitungsclosure sichtbar wird,
  - verwaiste Begriffe eliminiert oder rueckgebunden werden.

PHASE 6 – SELBSTPRUEFUNG
- Pruefe explizit:
  - ob die Revisionslogik D5 eingehalten wurde,
  - ob neue Kandidaten echten Erklaerungsmehrwert bringen,
  - ob das Dokument nach der Revision geschlossener und nicht nur groesser ist,
  - ob das Zielbild unversehrt blieb.

QUELLENREGEL
- Externe Standards und peer-reviewte Primaerquellen bleiben primaer.
- Literatur zur Modell- und Ontologiequalitaet fuer Vollstaendigkeit, Konsistenz, Minimalitaet und Evaluation ist zulaessig und bevorzugt.
- Repo-interne Referenzen nur als Anwendungs- oder Passungsbeleg.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V3.md

PFLICHTSTRUKTUR
1. Pre-Flight
2. Metaqualitaets-Audit
3. Abdeckungs- und Closure-Matrix
4. Vollstaendigkeits- und Saettigungsurteil
5. Redundanz- und Konsistenzrevision
6. Revidierter Kernaxiomenraum
7. Selbstpruefung
8. Quellen
``\`

---

## 8. Schlussurteil

D1/V2 ist bereits **deutlich trennschaerfer und reifer** als fruehere Fassungen.  
Die wichtigste noch offene Reifestufe ist jetzt **nicht** weitere grobe Expansion, sondern die **Metaqualitaetspruefung des vorhandenen Raums**.

Der naechste entscheidende Schritt ist daher:
- von Statusklarheit zu **Ableitungsclosure**,
- von Spannungsbeschreibung zu **Konsistenzaudit**,
- von breiter Kandidatensammlung zu **Saettigungs- und Vollstaendigkeitsurteil**.

```

---

## RAW_RECORD_020: ASWE_Axiomkandidatenraum_Verbesserungsschleife_V3_Standardschaerfung_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Verbesserungsschleife_V3_Standardschaerfung_20260423_V2.md`
- sha256: `3b70b1132de7a666ff1c8f8189c30d42758e7aa2d40c398117a3320fda5062c6`
- chars: 19469
- approx_tokens: 4868

```markdown
# ASWE_Axiomkandidatenraum_Verbesserungsschleife_V3_Standardschaerfung_20260423_V2

## 1. Pre-Flight

### Zielbild
Ziel dieses Dokuments ist die **standardscharfe Revision** des bisherigen V3-Verbesserungsschleifendokuments.  
Es soll nicht eine weitere lose Metaebene erzeugen, sondern die bereits etablierten Regeln aus D2, D3, D4 und D1/V2 **auf das V3-Dokument selbst anwenden** und daraus eine verbesserte, ausfuehrbare Folgeversion ableiten.

### Gegenstand
Gegenstand ist **nicht** erneut der Axiomkandidatenraum als solcher, sondern die **Qualitaet des V3-Schleifendokuments** in Bezug auf:

- Selbstanwendung vorher gesetzter Standards,
- Terminologiepolitik,
- Aussagearten-Trennung,
- Quellen- und Rollenpassung,
- Ableitungsdisziplin,
- Vermeidung einer zweiten, unmarkierten Governancequelle.

### Geltungsbereich
Dieses Dokument gilt fuer die Revision von Verbesserungsschleifendokumenten, die das Hauptdokument zum Axiomkandidatenraum steuern.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:
- neue inhaltliche Kernaxiome fuer A oder B,
- neue breite Literaturrecherche,
- lokale Repo-Implementierung,
- neue Router- oder Workflowarchitektur ausserhalb des Dokumentenkontexts.

### Epistemischer Status
#### Beobachtung
Das bisherige V3-Dokument fuehrt eine sinnvolle neue Reifestufe ein, haelt aber mehrere bereits etablierte Standards nur teilweise ein.

#### Aussage
Die staerksten Defizite liegen nicht im Zielbild, sondern in der **Selbstanwendung der bereits etablierten Dokumentenstandards**.

#### Hypothese
Wenn V3 entlang von Terminologiepolitik, Aussagearten-Trennung, Quellen- und Ableitungsdisziplin revidiert wird, wird die naechste Schleife praeziser und governance-seitig sauberer.

#### Kriterium
Die Revision ist nur dann gelungen, wenn:
- keine ungovernierte Mischsprache bleibt,
- neue Parameter als **Erweiterung**, **Praezisierung** oder **Ableitung** bestehender Parameter kenntlich sind,
- Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung getrennt bleiben,
- das Dokument selbst eine Quellen- und Rollenlogik besitzt,
- der Folgeprompt enger und auditierbarer wird.

#### Empfehlung
Die V3-Revision soll den Kandidatenraum nicht vergroessern, sondern das Schleifendokument selbst **strukturell schliessen**.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: Dokumenten- und Revisionslogik
- noch nicht: konkrete Axiomrevision des Hauptdokuments

---

## 2. Terminologie-Register des vorliegenden Dokuments

### Benennungsklassen
1. deutscher Primaerbegriff
2. englischer Alias
3. Eigenname
4. literaturgebundener Originalterm

| Begriff | Benennungsklasse | Bevorzugte Form | Alias / Originalterm | Begründung |
|---|---|---|---|---|
| Standardschaerfung | deutscher Primaerbegriff | Standardschaerfung | – | zentrale Revisionsfunktion |
| Metaqualitaetspruefung | deutscher Primaerbegriff | Metaqualitaetspruefung | – | ersetzt hybrides Audit-Vokabular |
| Vollstaendigkeit | deutscher Primaerbegriff | Vollstaendigkeit | completeness | Deutsch ausreichend |
| Saettigung | deutscher Primaerbegriff | Saettigung | saturation | Deutsch ausreichend |
| Redundanzarmut | deutscher Primaerbegriff | Redundanzarmut | minimality | Deutscher Begriff tragfaehig |
| Widerspruchsfreiheit | deutscher Primaerbegriff | Widerspruchsfreiheit | consistency | Deutscher Begriff tragfaehig |
| Orthogonalitaet | deutscher Primaerbegriff | Orthogonalitaet | orthogonality | etablierter wissenschaftlicher Terminus, deutsch verwendbar |
| Ableitungsgeschlossenheit | deutscher Primaerbegriff | Ableitungsgeschlossenheit | closure | ersetzt unkommentiertes Closure |
| Verwaisung | deutscher Primaerbegriff | Verwaisung | orphaning | funktionsklar im Deutschen |
| Abdeckungsmatrix | deutscher Primaerbegriff | Abdeckungsmatrix | coverage matrix | deutscher Begriff ausreichend |
| PromptEval | Eigenname | PromptEval | – | repo-lokaler Vertragsname |
| Preflight | Eigenname | Preflight | – | repo-lokaler Verfahrensname |
| CheckList | literaturgebundener Originalterm | CheckList | – | Benchmark-/Methodentitel |
| IFEval | literaturgebundener Originalterm | IFEval | – | Benchmarkname |
| LLMBAR | literaturgebundener Originalterm | LLMBAR | – | Benchmarkname |

### Terminologiepolitische Revisionsentscheidungen
- **ersetzt:** Metaqualitäts-Audit -> Metaqualitaetspruefung
- **ersetzt:** Ableitungsclosure -> Ableitungsgeschlossenheit
- **ersetzt:** Closure-Matrix -> Abdeckungs- und Ableitungsmatrix
- **ersetzt:** Meta-Abdeckung -> Abdeckungslogik
- **ersetzt:** höchste Reifestufe -> naechste Reifestufe
- **beibehalten:** PromptEval, Preflight, CheckList, IFEval, LLMBAR

---

## 3. Standardsaudit des bisherigen V3-Dokuments

## 3.1 Bereits vorher etablierte Standards

| Standardquelle | Etablierter Standard | Befund im bisherigen V3 | Revisionsbedarf |
|---|---|---|---|
| D3 Selbstanwendungsprämisse | Sprache, Benennungsschicht, Statusklarheit, Ableitungslogik und Ausfuehrbarkeit sind selbstanwendbar | nur teilweise angewandt | hoch |
| D3 Terminologiepolitik | deutsche Primaerbegriffe, englische Aliase nur begruendet, keine unkommentierten Hybridbildungen | teilweise verletzt durch hybride oder unnötig importierte Meta-Terme | hoch |
| D3 Aussagearten-Trennung | Beobachtung, Aussage, Hypothese, Kriterium, Empfehlung sollen getrennt werden | nur implizit, nicht systematisch | hoch |
| D3 Aussage-Quellen-Passung | tragende Aussagen sollen eine Rollenlogik erhalten | im V3-Dokument selbst nicht explizit umgesetzt | hoch |
| D3 Gegenbeispiel- und Nicht-Geltungsdisziplin | neue Anforderungen sollen nicht nur positiv, sondern auch negativ abgegrenzt werden | fuer neue Meta-Parameter nur teilweise umgesetzt | mittel |
| D3 Vermeidung ungovernierter Erweiterung | neue Schleifen duerfen keine zweite, stillschweigende Governancequelle erzeugen | teilweise gefaehrdet, weil P16-P23 ohne explizite Ableitungsherkunft eingefuehrt werden | hoch |
| D4 Pre-Flight-Disziplin | Zielbild, Gegenstand, Geltung, epistemischer Status, Abstraktionsniveau zuerst explizieren | im V3-Dokument teilweise umgesetzt | mittel |
| D4 Phasentrennung | Analyse, Massstab, Folgeauftrag und Prompt sauber trennen | im V3-Dokument vorhanden, aber nicht durchgehend rollenklar | mittel |
| D1/V2 Quellenabschnitt | Reife Dokumente enthalten Quellenlegende und Quellenfunktion | im V3-Dokument fehlt ein eigener Quellenabschnitt | hoch |

## 3.2 Konkret nicht eingehaltene Standards

### S1. Fehlende Selbstanwendung der Terminologiepolitik
Das bisherige V3-Dokument fordert Metaqualitaetskriterien, verwendet aber selbst mehrere Terme, die nach D3 terminologiepolitisch zu schwach geregelt sind.

**Befund:**
- unkommentierte Meta-Terme,
- importierte oder hybride Formen trotz moeglicher deutscher Primaerbegriffe,
- fehlendes Terminologie-Register.

**Revision:**
Dieses Dokument fuehrt ein Terminologie-Register ein und ersetzt schwache Formen.

### S2. Fehlende Trennung der Aussagearten
Das bisherige V3-Dokument mischt Diagnose, Urteil, Schlussfolgerung und Folgeauftrag zu stark.

**Befund:**
- Beobachtung und Bewertung nicht immer getrennt,
- keine explizite Hypothesen- oder Kriterienebene.

**Revision:**
Dieses Dokument verwendet explizite epistemische Rollen im Pre-Flight und im Standardsaudit.

### S3. Fehlende Quellen- und Rollenpassung im Schleifendokument selbst
Das bisherige V3-Dokument macht Aussagen ueber Standardverletzungen, ohne selbst eine explizite Quellenrolle auszuweisen.

**Befund:**
- keine eigene Quellenrubrik,
- keine Kennzeichnung, welche Aussagen auf D2, D3, D4 oder D1/V2 zurueckgehen.

**Revision:**
Dieses Dokument fuehrt eine Quellenrubrik ein und unterscheidet:
- definitorisch,
- standardsetzend,
- ableitend,
- anwendungsbezogen.

### S4. Neue Parameter ohne Herkunftsklassifikation
P16-P23 sind sachlich plausibel, aber ihr Status gegenueber frueheren Parametern ist nicht markiert.

**Befund:**
- unklar, ob neu,
- unklar, ob bloß praezisierend,
- unklar, ob aus P1-P15 ableitbar.

**Revision:**
Dieses Dokument fuehrt fuer jeden neuen Parameter eine Herleitungsklasse ein:
- Erweiterung,
- Praezisierung,
- Rekombination,
- direkte Ableitung.

### S5. Teilweise zu starke epistemische Formulierungen
Formulierungen wie „hoechste Reifestufe“ oder implizite Endstufensprache sind zu stark.

**Befund:**
- Suggestion von Finalitaet oder methodischem Endzustand,
- kollidiert mit Evolvierbarkeitslogik.

**Revision:**
Die Formulierungen werden auf „naechste Reifestufe“ bzw. „naechster Konsolidierungsschritt“ reduziert.

### S6. Risiko einer zweiten Governancequelle
Das bisherige V3-Dokument fuehrt sinnvolle neue Meta-Parameter ein, macht aber nicht durchgaengig explizit, dass diese den bestehenden Standardraum **erweitern** und **nicht ersetzen**.

**Befund:**
- moegliche Konkurrenz zwischen D3 und V3,
- unzureichende Prioritaetsregel.

**Revision:**
Dieses Dokument setzt explizit:
- D2, D3 und D4 bleiben fuehrende Vorstandards,
- die revidierte V3-Version ergaenzt nur die Metaqualitaetsdimension des Kandidatenraums.

---

## 4. Revidierte Parameterlogik

## 4.1 Bereits tragfaehige Bestandteile des bisherigen V3
Diese Teile des bisherigen V3 bleiben inhaltlich tragend:

1. der Fokus auf Vollstaendigkeit, Redundanz, Widerspruchsfreiheit und Ableitungsgeschlossenheit,
2. die Einschaetzung, dass der Kandidatenraum eher konsolidierungs- als expansionsbeduerftig ist,
3. die Diagnose, dass D1/V2 noch keine explizite Ableitungsmatrix besitzt,
4. die Anhebung der Pruefebene von lokalem Axiomstatus auf globale Raumqualitaet.

## 4.2 Revidierte Einordnung von P16-P23

| Parameter | Funktion | Herkunftsklasse | Herleitung |
|---|---|---|---|
| P16 Vollstaendigkeitsparameter | prueft Abdeckungsbreite und Negativraum | Erweiterung | erweitert P5, P6, P9, P11 um Raumabdeckung |
| P17 Saettigungsparameter | prueft Stoppreife weiterer Expansion | Praezisierung | praezisiert Konsolidierungslogik aus D3 |
| P18 Redundanz- und Minimalitaetsparameter | prueft Dubletten und Entbehrlichkeit | Rekombination | kombiniert P7 Nicht-Derivativitaet mit Redundanzlogik aus D1 |
| P19 Widerspruchs- und Konsistenzparameter | prueft globale Konfliktfreiheit | Erweiterung | erweitert Spannungs- und Grenzfalllogik aus V2 |
| P20 Orthogonalitaetsparameter | prueft Unterschiedlichkeit konstitutiver Funktionen | Praezisierung | praezisiert Trennschaerfe zu Nachbarbegriffen |
| P21 Ableitungsgeschlossenheitsparameter | prueft Rueckbindung von Regeln und Attributen an Axiome | Erweiterung | neue explizite Closure-Ebene, implizit schon in D3 vorbereitet |
| P22 Verwaisungsparameter | sucht Regeln/Attribute ohne Axiom und Axiome ohne Folgeebene | direkte Ableitung | folgt direkt aus P21 |
| P23 Globaler Metaqualitaetsparameter | integriert alle Raumqualitaetsachsen | Rekombination | fasst P16-P22 zu einem Gesamturteil zusammen |

### Urteil zur Parameterlage
Die neuen Parameter sind **im Kern tragfaehig**, aber nur dann standardkonform, wenn ihre Herkunft relativ zu den bereits etablierten Parametern explizit markiert bleibt.

---

## 5. Revidierte Schleifenlogik

### 5.1 Ziel
Die revidierte V3-Schleife erweitert die bestehende Revisionsarchitektur um eine **Metaqualitaetspruefung des Kandidatenraums**, ohne D2, D3 oder D4 zu ersetzen.

### 5.2 Nicht-Ziel
Die revidierte V3-Schleife dient nicht dazu:
- das Zielbild von Kernaxiomen aufzuweichen,
- einen neuen, parallelen Standardkatalog zu setzen,
- breite neue Kandidatenlisten zu erzeugen,
- Literaturbreite anstelle von Ableitungsdisziplin zu priorisieren.

### 5.3 Neuer verbindlicher Zusatzstandard
Jede weitere Schleife, die auf V2 aufsetzt, muss kuenftig zusaetzlich explizit pruefen:

1. Vollstaendigkeit
2. Saettigung
3. Redundanzarmut / Minimalitaet
4. Widerspruchsfreiheit / Konsistenz
5. Orthogonalitaet
6. Ableitungsgeschlossenheit
7. Verwaisung
8. globale Raumqualitaet

Diese Zusatzstandards **ergänzen** die bisherigen Standards; sie ersetzen sie nicht.

---

## 6. Verbesserte Dokumentenversion der V3-Schleife

## 6.1 Revidierter Dokumentkern

### Einordnung
- **Gegenstandsbereich:** Systemgegenstand
- **Wissensebene:** begriffliche, methodische und evaluative Revisionssteuerung
- **Abstraktionsgrad:** Grundsatz mit systemischem Strukturmodell

### Beobachtung
D1/V2 ist terminologisch, statusseitig und evidenzbezogen deutlich reifer als V1. Gleichzeitig fehlt noch eine explizite Metaqualitaetspruefung des Kandidatenraums hinsichtlich Vollstaendigkeit, Saettigung, Redundanzarmut, Widerspruchsfreiheit und Ableitungsgeschlossenheit.

### Aussage
Der naechste Reifeschritt ist nicht primaer weitere Expansion, sondern die explizite Pruefung des vorhandenen Kandidatenraums als Gesamtstruktur.

### Hypothese
Wenn der Kandidatenraum entlang dieser Metaqualitaetsachsen geprueft wird, lassen sich:
- verwaiste Begriffe,
- doppelte Axiome,
- konflikthafte Ableitungen,
- und noch offene Negativraeume
sichtbar machen.

### Kriterium
Die Schleife ist nur dann gelungen, wenn:
- alle neuen Meta-Parameter auf bestehende Standards rueckgebunden sind,
- keine ungovernierte Mischsprache verwendet wird,
- Beobachtung, Aussage, Hypothese, Kriterium und Folgeauftrag getrennt sind,
- das Folgeprompt enger und pruefbarer wird,
- keine zweite Governancequelle entsteht.

### Empfehlung
Die naechste Revision des Hauptdokuments soll als **Metaqualitaetspruefung des bereits aufgebauten Raums** ausgefuehrt werden.

## 6.2 Revidierter Folgeprompt

``\`text
Analysiere und revidiere D1 unter Fuehrung von D5 und unter Rueckgriff auf D2, D3 und D4.

Dokumentenrollen:
- D1 = aktuelles Hauptdokument V2
- D2 = Sprachgovernance und Zielbild-Guardrails
- D3 = selbstanwendbare Revisionspflichten fuer Schleifen- und Hauptdokumente
- D4 = Pre-Flight-, Phasentrennungs- und Ausfuehrungslogik
- D5 = revidierte V3-Schleife fuer Metaqualitaetspruefung des Kandidatenraums

Prioritaetsregel:
- D2, D3 und D4 bleiben fuehrende Vorstandards.
- D5 erweitert diese Standards nur um Metaqualitaetsachsen; D5 ersetzt keine zuvor etablierte Regel.

Arbeite strikt in folgenden Phasen:

PHASE 0 – PRE-FLIGHT
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne explizit:
  - Beobachtung
  - Aussage
  - Hypothese
  - Kriterium
  - Empfehlung
- Das Zielbild bleibt bindend:
  - Kernaxiome bleiben Kernaxiome.
  - Externe wissenschaftliche Quellen bleiben primaer.
  - A, B und Kopplung bleiben getrennt.
  - Governierte statt freie Selbstverbesserung bleibt bindend.
  - Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.

PHASE 1 – METAQUALITAETSPRUEFUNG DES KANDIDATENRAUMS
- Pruefe D1 entlang von:
  - Vollstaendigkeit
  - Saettigung
  - Redundanzarmut / Minimalitaet
  - Widerspruchsfreiheit / Konsistenz
  - Orthogonalitaet
  - Ableitungsgeschlossenheit
  - Verwaisung
- Fuehre fuer jede Achse getrennt aus:
  - Beobachtung
  - Befund
  - Kriterium
  - Konsequenz

PHASE 2 – ABDECKUNGS- UND ABLEITUNGSMATRIX
- Erzeuge eine Matrix:
  - Kernaxiom -> starke Designprinzipien
  - Kernaxiom -> sekundaere Qualitaetsattribute
  - Kernaxiom -> operative Regeln
  - Kernaxiom -> Kopplungsfolgen
- Markiere:
  - verwaiste Regeln
  - verwaiste Qualitaetsattribute
  - Axiome ohne ausreichende Folgeebene
  - doppelte Ableitungen
  - konflikthafte Ableitungen

PHASE 3 – VOLLSTAENDIGKEITS- UND SAETTIGUNGSURTEIL
- Bestimme getrennt fuer A, B und K, ob der Raum:
  - noch expansionsbeduerftig,
  - konsolidierungsreif,
  - oder saettigungsnah ist.
- Begruende dies mit echtem Erklaerungsmehrwert, nicht mit blossen Begriffsmengen.

PHASE 4 – REDUNDANZ- UND KONSISTENZREVISION
- Identifiziere:
  - semantische Dubletten
  - funktionale Dubletten
  - Normkonflikte
  - Definitionskollisionen
  - ueberlappende Kopplungsaxiome
- Entscheide pro Fall:
  - zusammenziehen
  - unterordnen
  - streichen
  - enger fassen
  - als produktive Spannung behalten

PHASE 5 – REVISION DES HAUPTDOKUMENTS
- Revidiere D1 so, dass
  - Vollstaendigkeit explizit adressiert wird,
  - Redundanzarmut und Widerspruchsfreiheit als eigene Metaqualitaetskriterien erscheinen,
  - die Ableitungsgeschlossenheit sichtbar wird,
  - verwaiste Begriffe eliminiert oder rueckgebunden werden.

PHASE 6 – SELBSTPRUEFUNG
- Pruefe explizit:
  - ob D5 keine zweite Governancequelle erzeugt,
  - ob die Terminologiepolitik eingehalten wurde,
  - ob Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung getrennt wurden,
  - ob neue Begriffe echten Erklaerungsmehrwert bringen,
  - ob das Zielbild unversehrt blieb.

QUELLENREGEL
- Externe Standards und peer-reviewte Primaerquellen bleiben primaer.
- Repo-interne Referenzen nur als Anwendungs- oder Passungsbelege.
- Wenn fuer eine neue Metaqualitaetsachse keine starke externe Stuetzung vorliegt, ist dies explizit als enger geltender methodischer Zusatz auszuweisen.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V3.md

PFLICHTSTRUKTUR
1. Pre-Flight
2. Metaqualitaetspruefung
3. Abdeckungs- und Ableitungsmatrix
4. Vollstaendigkeits- und Saettigungsurteil
5. Redundanz- und Konsistenzrevision
6. Revidierter Kernaxiomenraum
7. Selbstpruefung
8. Quellen
``\`

---

## 7. Selbstpruefung dieses Dokuments

### Terminologiepolitik eingehalten?
Ja, ueberwiegend.
- Schwache Hybridformen des bisherigen V3 wurden ersetzt.
- Englische Terme erscheinen nur noch als Eigenname, Originalterm oder knapper Alias.

### Aussagearten getrennt?
Ja.
- Pre-Flight und revidierter Dokumentkern trennen Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung explizit.

### Quellen- und Rollenpassung umgesetzt?
Ja, in grundsaetzlicher Form.
- Das Dokument unterscheidet standardsetzende, ableitende und anwendungsbezogene Aussagen.
- Es fuehrt einen eigenen Quellenabschnitt ein.

### Zweite Governancequelle vermieden?
Ja, im Zielbild.
- D2, D3 und D4 bleiben fuehrende Standards.
- Diese V3-Revision erweitert den Standardraum nur um Metaqualitaetsachsen.

### Verbleibende Unsicherheit
Die Metaqualitaetsachsen sind methodisch plausibel und stark anschlussfaehig, aber noch nicht alle extern gleich stark abgestuetzt wie die Kernaxiome des Hauptdokuments. Deshalb bleiben sie als **dokumenten- und modellqualitative Erweiterung**, nicht als neuer Basiskanonsatz, ausgewiesen.

---

## 8. Quellen

### Quellenrollen
- **standardsetzend:** zuvor etablierte interne Dokumentenstandards
- **ableitend:** aus diesen Standards hergeleitete Revisionspflichten
- **anwendungsbezogen:** aktuelles Hauptdokument, an dem die Schleife ansetzt

### Interne Referenzen
1. **D1:** ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md  
   Rolle: anwendungsbezogen; aktuelles Hauptdokument mit Terminologie-Register, Statusklassen, Evidenzmatrix, Nicht-Geltung, Phasen- und Kopplungslogik.

2. **D2:** ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md  
   Rolle: standardsetzend; Guardrails fuer Zielbild, Quellenprioritaet, Sprachgovernance und Revisionshebel.

3. **D3:** ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md  
   Rolle: standardsetzend; Selbstanwendungsprämisse, Terminologiepolitik, Aussagearten-Trennung, Revisionspflichten erster und zweiter Ordnung.

4. **D4:** ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md  
   Rolle: standardsetzend; Pre-Flight-Disziplin, Phasentrennung, Scope-Disziplin und verhaltenssteuernde Promptlogik.

```

---

## RAW_RECORD_021: ASWE_Axiomkandidatenraum_Verbesserungsschleife_V4_Folgeebenen_Handlungsfolgen_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Verbesserungsschleife_V4_Folgeebenen_Handlungsfolgen_20260423_V1.md`
- sha256: `fa64528bbb26d955f362af0d7080f66775dc769f47027bf3ccc2e0331e20e8ed`
- chars: 20403
- approx_tokens: 5101

```markdown
# ASWE_Axiomkandidatenraum_Verbesserungsschleife_V4_Folgeebenen_Handlungsfolgen_20260423_V1

## 1. Voranalyse

### Zielbild
Ziel dieses Dokuments ist die Erschliessung der Handlungsfolgen aus dem bisherigen Folgeebenen-Audit fuer die weitere Verbesserung des gesamten Kernaxiomen- und Folgeebenenraums.

Der Gegenstand ist nicht die erneute breite Expansion von Kernaxiomen, sondern:
- die Ableitung konkreter Revisionsfolgen aus dem bisherigen Audit,
- die Bestimmung der naechsten produktiven Verbesserungsschleife,
- ein kontrolliertes Brainstorming moeglicher weiterer Elemente auf den Folgeebenen,
- deren anschliessende Analyse im Hinblick auf:
  - Ebenenangemessenheit,
  - Trennschaerfe,
  - Rueckbindbarkeit,
  - funktionalen Mehrwert,
  - Redundanzrisiko,
  - und potenzielle Aufwertungs- oder Streichungsentscheidung.

### Gegenstand
Gegenstand sind drei miteinander verschraenkte Teilfragen:

1. Welche Handlungsfolgen ergeben sich aus dem bisherigen Folgeebenen-Audit fuer den gesamten Raum?
2. Welche weiteren moeglichen Folgeelemente koennten noch fehlen oder unterbelichtet sein?
3. Welche dieser moeglichen Elemente sind echte Kandidaten und welche sind nur Auditkriterien, Sammelbegriffe, Unterfaelle oder Nutzungseffekte?

### Geltungsbereich
Dieses Dokument gilt fuer:
- die naechste Revision des Hauptdokuments,
- die weitere Konsolidierung von Designprinzipien, Qualitaetsattributen und operativen Regeln,
- die Rekursion der bisherigen Analysestandards auf die Folgeebenen,
- die Vorbereitung des naechsten Anweisungsprompts.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:
- neue breite Kernaxiomen-Sammlung,
- lokale Implementierung,
- UI- oder Betriebsoptimierung,
- reine Benennungsvarianten ohne funktionalen Unterschied,
- implizite Aufwertung eines Folgeelements zu einem Kernaxiom ohne Kollapstest.

### Epistemischer Status

#### Beobachtung
Der bisherige Lauf hat gezeigt:
- der Kernaxiomenraum ist konsolidierungsreif,
- der Folgeebenenraum ist gross genug fuer einen belastbaren Auditlauf,
- der Engpass liegt nun in Trennschaerfe, Rueckbindung, funktionaler Definition, Ebenenangemessenheit und Mehrfachableitung der Folgeelemente.

#### Aussage
Die naechste Schleife muss die Folgeebenen nicht nur auditieren, sondern den gesamten Raum entlang konkreter Revisionsfolgen umbauen.

#### Hypothese
Wenn die aus dem Audit ableitbaren Revisionsfolgen systematisch abgearbeitet und weitere moegliche Folgeelemente vor ihrer Aufnahme streng gesiebt werden, wird der Raum:
- kleiner oder gleich gross,
- aber begrifflich sauberer,
- funktional belastbarer,
- und revisionsstabiler.

#### Kriterium
Dieses Dokument ist nur dann gelungen, wenn es:
- aus dem Audit konkrete Handlungsfolgen ableitet,
- Brainstorming und Analyse trennt,
- neue moegliche Folgeelemente strikt gegen die bisherigen Ebenendefinitionen prueft,
- keine zweite Regelquelle erzeugt,
- und einen klaren Folgeprompt liefert.

#### Empfehlung
Die naechste Schleife sollte als Folgeebenen-Konsolidierungsschleife mit Kandidatensiebung ausgefuehrt werden.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: systemisches Strukturmodell mit Revisionsfolgen
- noch nicht: lokale Implementierung

---

## 2. Geltungsordnung und Leitplanken

### Geltungsordnung
1. D2 – Zielbild, Sprachgovernance, Leitplanken
2. D3 – Selbstanwendungsprämisse, Revisionspflichten
3. D4 – Voranalyse-, Phasentrennungs- und Ausfuehrungslogik
4. D1/V3 – aktueller Kernaxiomenraum
5. D5 – Standardschaerfung und Metaqualitaetspruefung
6. D6 – Folgeebenen-Pruefrahmen
7. dieses Dokument – V4-Handlungsfolgen- und Kandidatensiebungsschleife

### Bindende Leitplanken
1. Kernaxiome bleiben Kernaxiome.
2. Externe wissenschaftliche Quellen bleiben primaer.
3. A, B und Kopplung bleiben getrennt; Kopplungen sind explizit.
4. Governierte statt freie Selbstverbesserung bleibt bindend.
5. Begriffe stehen vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
6. Neue Folgeelemente duerfen den bestehenden Regelraum nur erweitern, wenn sie echten funktionalen Mehrwert besitzen.
7. Folgeelemente duerfen nicht implizit den Rang von Kernaxiomen erhalten.
8. Auditkriterien duerfen nicht ungeprueft als Folgeelemente in den Raum rutschen.

---

## 3. Erschlossene Handlungsfolgen aus dem bisherigen Audit

## 3.1 Handlungsfolgen erster Ordnung

### H1. Folgeebenen-Inventar explizit stabilisieren
Die bisherigen Folgeelemente sind gross genug fuer Konsolidierung.
Konsequenz:
- keine breite Expansion als Default,
- zuerst Vollinventar stabilisieren,
- alle Folgeelemente mit fester Ebene, Rueckbindung und Kurzdefinition fuehren.

### H2. Fehlklassifikationen sichtbar machen und entscheiden
Der Audit hat bereits mehrere grenzwertige Elemente markiert:
- Materialisierungsdisziplin
- Evidenzdisziplin
- Portierbarkeit
- Wahrheitsquellenstabilitaet

Konsequenz:
- fuer diese Elemente ist eine explizite Umklassifizierungsentscheidung noetig,
- nicht bloß ein weiterer Kommentar.

### H3. Indirekte Rueckbindungen explizit nacharbeiten
Besonders unterbelichtet bleiben:
- duale Lesbarkeit
- Persistenz
- Wiederauffindbarkeit
- driftwachsame Revisionsdisziplin
- Portierbarkeit

Konsequenz:
- pro indirekt rueckgebundenem Element ist entweder
  - die Rueckbindung zu schaerfen,
  - das Element enger zu fassen,
  - oder es zu streichen oder unterzuordnen.

### H4. Mehrfachableitungen typisieren
Bisher ist sichtbar, dass mehrere Elemente mehrfach rueckgebunden sind.
Konsequenz:
- jede Mehrfachableitung muss als
  - komplementaer,
  - redundant,
  - konflikttraechtig,
  - oder nur scheinbar mehrfach
klassifiziert werden.

### H5. Vererbungslogik von Nicht-Geltung und Spannungen nachziehen
Bisher wurde dies fuer Folgeebenen als Pruefbedarf definiert, aber noch nicht ausformuliert.

Konsequenz:
- fuer priorisierte Folgeelemente sind
  - Nicht-Geltung,
  - Spannungen,
  - Grenzfaelle,
  - und Vererbung aus Kernaxiomen
explizit mitzuschreiben.

### H6. Ebenenangemessenheit operationalisieren
Der Audit hat Ebenendefinitionen geliefert, aber noch keine systematische Umschichtung vorgenommen.

Konsequenz:
- fuer jedes Folgeelement ist explizit zu entscheiden:
  - bleibt auf aktueller Ebene,
  - wird untergeordnet,
  - wird umklassifiziert,
  - wird gestrichen,
  - oder wird als Aufwertungskandidat markiert.

## 3.2 Handlungsfolgen zweiter Ordnung

### H7. Folgeebenen-Register einfuehren
Neben dem Kernaxiomenraum braucht es ein explizites Register fuer:
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen.

### H8. Folgeebenen-Closure vervollstaendigen
Die Matrix Kernaxiom -> Folgeelemente reicht noch nicht.
Ergaenzend braucht es:
- Folgeelement -> Rueckbindung,
- Folgeelement -> Nicht-Geltung,
- Folgeelement -> Konflikte,
- Folgeelement -> Revisionsfolgen.

### H9. Kandidatensiebung vor Neuaufnahme
Ab jetzt darf ein neues Folgeelement nur aufgenommen werden, wenn es:
- nicht bloß Auditkriterium ist,
- nicht bloß Sammelbegriff ist,
- nicht nur Umbenennung oder Nutzungseffekt ist,
- funktional eigenstaendig ist,
- und auf der richtigen Ebene sitzt.

### H10. Stopregel fuer Folgeebenenexpansion
Weitere Folgeelemente duerfen nur dann in den Raum aufgenommen werden, wenn sie:
- eine neue Funktion,
- eine neue Konfliktklasse,
- oder eine neue unverzichtbare Rueckbindung
einbringen.

---

## 4. Brainstorming moeglicher weiterer Elemente auf den Folgeebenen

## 4.1 Moegliche starke Designprinzipien
- Ausnahmebehandlungs-Explizitheit
- Deprekationsdisziplin
- Rueckrollfaehige Veraenderung
- Priorisierung von Konfliktaufloesung
- Transformationsdisziplin zwischen Ebenen
- Vererbungsdisziplin von Nicht-Geltung
- Begriffsversionsdisziplin
- Grenzfallnahe Modellierung
- Mindestkontextdisziplin
- Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision

## 4.2 Moegliche sekundaere Qualitaetsattribute
- Ableitungsnachvollziehbarkeit
- Vererbungskonsistenz
- Ausnahmefestigkeit
- Umklassifizierungsrobustheit
- Deprekationsklarheit
- Rueckrollbarkeit
- Revisionskostenbeherrschbarkeit
- Konfliktpriorisierungsklarheit
- Transformationsstabilitaet
- Nachzugskonsistenz
- Kontextsparsamkeit
- Ausnahmeprotokollierbarkeit

## 4.3 Moegliche operative Regeln
- Nicht-Geltung fuer priorisierte Folgeelemente explizit angeben
- Mehrfachableitungstyp pro Folgeelement markieren
- Umklassifizierung nur mit Ebenentest dokumentieren
- indirekte Rueckbindung nicht stehen lassen, sondern aufloesen
- Nutzungseffekt nicht als Designprinzip oder Attribut fuehren
- Axiomrevision zieht Folgeebenenrevision zwingend nach
- jedes Folgeelement braucht Kurzdefinition und Negativabgrenzung
- jede Umschichtung explizit begruenden
- Deprekation statt stiller Entfernung markieren
- Konfliktaufloesung immer gegen Leitplanken begruenden

## 4.4 Moegliche Kopplungsfolgen
- Axiomrevision erzwingt Folgeebenen-Nachzug
- Folgeebenen-Konflikte duerfen Kernaxiome nicht implizit uminterpretieren
- Umschichtungen muessen auf Kopplungsfolgen geprueft werden
- Vererbte Nicht-Geltung muss in Kopplungsfolgen sichtbar bleiben
- Spiegel-/Adapter-Asymmetrie wirkt auch auf Folgeebenenregister

---

## 5. Analyse der weiteren moeglichen Elemente

## 5.1 Elemente mit hoher Plausibilitaet als echte Folgekandidaten

### A. Ausnahmebehandlungs-Explizitheit
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: hoch  
Begruendung: Der bisherige Raum behandelt Nicht-Geltung und Grenzfaelle, aber die explizite Gestaltung von Ausnahmen auf Folgeebene ist noch nicht als eigenes Konstruktionsprinzip ausgearbeitet.  
Risiko: geringe Redundanz mit Vererbung von Nicht-Geltung; klare Abgrenzung noetig.

### B. Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: hoch  
Begruendung: Aus der Selbstanwendung und den Revisionsfolgen ergibt sich bereits implizit, dass Axiomrevision Folgeebenen mitziehen muss. Als explizites Designprinzip ist das bislang unterbelichtet.  
Risiko: Naehe zu driftwachsamer Revisionsdisziplin; klare funktionale Differenz noetig.

### C. Ableitungsnachvollziehbarkeit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: hoch  
Begruendung: Der bisherige Raum kennt Ableitungsgeschlossenheit als Metaqualitaetsachse, aber nicht ihr resultierendes Guetemerkmal auf Artefaktebene.  
Risiko: darf nicht mit Spurverfolgbarkeit oder argumentativer Nachvollziehbarkeit kollabieren.

### D. Vererbungskonsistenz
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: hoch  
Begruendung: Der Raum fordert Vererbung von Nicht-Geltung und Spannungen, besitzt aber noch kein Attribut fuer die Guete dieser Vererbung.  
Risiko: Naehe zu Widerspruchsfreiheit; als Folgeattribut dennoch plausibel.

### E. Deprekationsdisziplin
Vorlaeufige Ebene: starkes Designprinzip oder operative Regel  
Plausibilitaet: mittel bis hoch  
Begruendung: Stille Entfernung oder Umschichtung von Folgeelementen waere revisionslogisch problematisch.  
Risiko: koennte auch rein operative Regel sein; Ebenentest noetig.

### F. Rueckrollbarkeit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: mittel  
Begruendung: Im Raum sind Revisionsfolgen und Aenderungskosten vorhanden, Rueckrollbarkeit aber noch nicht explizit als Guete.  
Risiko: Naehe zu Reparierbarkeit und kontrollierter Veraenderbarkeit.

## 5.2 Elemente mit eher mittlerer oder unsicherer Plausibilitaet

### G. Transformationsdisziplin zwischen Ebenen
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: mittel  
Begruendung: beschreibt, wie aus Axiomen Folgeelemente abgeleitet werden.  
Risiko: moeglicherweise eher Auditkriterium als stabiler Raumbegriff.

### H. Konfliktpriorisierungsklarheit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: mittel  
Begruendung: ergibt sich aus Konfliktbehandlung, aber noch unklar, ob eigenstaendig genug.

### I. Mindestkontextdisziplin
Vorlaeufige Ebene: starkes Designprinzip oder operative Regel  
Plausibilitaet: mittel  
Begruendung: koennte relevant sein, wenn Folgeelemente nur unter Mindestkontext sauber anwendbar sind.  
Risiko: moeglicherweise Unterfall von Ziel- und Geltungsbindung.

### J. Begriffsversionsdisziplin
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: mittel  
Begruendung: relevant bei Revisionen und Umschichtungen.  
Risiko: noch zu nahe an Terminologieregister und Deprekationsdisziplin.

## 5.3 Elemente, die eher Auditkriterien als Raumkandidaten sind

### K. Umklassifizierungsrobustheit
Wahrscheinlich eher Auditkriterium als echtes Qualitaetsattribut.

### L. Revisionskostenbeherrschbarkeit
Wahrscheinlich eher Metaqualitaets- oder Bewertungsachse als Folgeelement des Kernraums.

### M. Nachzugskonsistenz
Vermutlich eher Qualitaetskriterium fuer Revisionsprozesse als stabiler Raumbegriff.

### N. Ausnahmeprotokollierbarkeit
Eher operative Regel oder implementierungsnah als eigenstaendiges Attribut.

### O. Kontextsparsamkeit
Noch zu unscharf; aktuell eher heuristischer Pruefbegriff als Folgeelement.

---

## 6. Verdichtetes Analyseurteil

## 6.1 Was sollte wahrscheinlich in die naechste Schleife aufgenommen werden?
Mit hoechster Prioritaet als ernsthafte Kandidaten fuer die naechste Pruefung:

1. Ausnahmebehandlungs-Explizitheit
2. Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
3. Ableitungsnachvollziehbarkeit
4. Vererbungskonsistenz
5. Deprekationsdisziplin
6. Rueckrollbarkeit

## 6.2 Was sollte zunaechst nicht als echter Raumkandidat aufgenommen werden?
Zunaechst eher nicht direkt aufnehmen:
- Transformationsdisziplin zwischen Ebenen
- Konfliktpriorisierungsklarheit
- Mindestkontextdisziplin
- Begriffsversionsdisziplin
- Umklassifizierungsrobustheit
- Revisionskostenbeherrschbarkeit
- Nachzugskonsistenz
- Ausnahmeprotokollierbarkeit
- Kontextsparsamkeit

Diese Begriffe sind derzeit eher:
- Auditkriterium,
- Unterfall,
- Metaqualitaetsachse,
- oder prozessnahe Hilfsbegriffe.

## 6.3 Gesamturteil
Die naechste Schleife sollte selektiv erweitern, aber primaer konsolidieren.
Es gibt einige plausible weitere Folgekandidaten, aber deutlich mehr Vorschlaege, die besser als:
- Auditkriterium,
- Bewertungsachse,
- Unterfall,
- oder operative Ausfuehrungshilfe
behandelt werden.

---

## 7. Revisionsauftrag fuer die naechste Schleife

Die naechste Schleife sollte verbindlich leisten:
1. die grenzwertigen bestehenden Folgeelemente umklassifizieren oder enger fassen,
2. indirekte Rueckbindungen explizit aufloesen,
3. Mehrfachableitungen typisieren,
4. Nicht-Geltung und Spannungen fuer priorisierte Folgeelemente nachziehen,
5. die hochplausiblen neuen Kandidaten gegen die Ebenendefinitionen pruefen,
6. alle schwach plausiblen Vorschlaege zunaechst als Auditkriterien oder Reserveliste fuehren.

---

## 8. Naechster Anweisungsprompt

``\`text
Analysiere und revidiere den Folgeebenenraum des aktuellen Axiomkandidatenraums unter Fuehrung dieser V4-Schleife und unter Rueckgriff auf D1 bis D6.

Ziel:
Nicht den Kernaxiomenraum erweitern, sondern
1. die bestehenden Folgeelemente konsolidieren,
2. grenzwertige Folgeelemente umklassifizieren oder enger fassen,
3. indirekte Rueckbindungen explizit aufloesen,
4. und nur hochplausible neue Folgekandidaten gegen die Ebenendefinitionen pruefen.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bestehenden Leitplanken und die Geltungsordnung bindend.

PHASE 1 – BESTEHENDEN FOLGEEBENENRAUM KONSOLIDIEREN
- Pruefe alle bestehenden Designprinzipien, Qualitaetsattribute und operativen Regeln erneut auf:
  - Rueckbindung
  - Ebenenangemessenheit
  - funktionale Definition
  - Trennschaerfe
  - Nicht-Geltung
  - Spannungen
  - Mehrfachableitung
- Fuehre explizite Revisionsentscheidungen aus:
  - beibehalten
  - unterordnen
  - enger fassen
  - umklassifizieren
  - streichen

PHASE 2 – INDIREKTE RUECKBINDUNGEN AUFLOESEN
- Bearbeite prioritär:
  - duale Lesbarkeit
  - Persistenz
  - Wiederauffindbarkeit
  - Portierbarkeit
  - Materialisierungsdisziplin
  - Wahrheitsquellenstabilitaet
  - driftwachsame Revisionsdisziplin
- Weise jedem dieser Elemente eine explizite Rueckbindung oder eine Revisionsentscheidung zu.

PHASE 3 – MEHRFACHABLEITUNGEN UND VERERBUNGSLOGIK
- Klassifiziere jede relevante Mehrfachableitung als:
  - komplementaer
  - redundant
  - konflikttraechtig
  - nur scheinbar mehrfach
- Ziehe fuer priorisierte Folgeelemente explizit nach:
  - Nicht-Geltung
  - Grenzfaelle
  - Spannungen
  - vererbte Einschraenkungen aus Kernaxiomen

PHASE 4 – PRUEFUNG WEITERER HOCHPLAUSIBLER FOLGEKANDIDATEN
- Pruefe ausschliesslich diese moeglichen neuen Kandidaten:
  - Ausnahmebehandlungs-Explizitheit
  - Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
  - Ableitungsnachvollziehbarkeit
  - Vererbungskonsistenz
  - Deprekationsdisziplin
  - Rueckrollbarkeit
- Entscheide pro Kandidat:
  - aufnehmen
  - als Auditkriterium statt Raumkandidat fuehren
  - unterordnen
  - verwerfen

PHASE 5 – KEINE SCHEINKANDIDATEN AUFNEHMEN
- Fuehre diese Begriffe ausdruecklich nicht ungeprueft als Raumkandidaten:
  - Transformationsdisziplin zwischen Ebenen
  - Konfliktpriorisierungsklarheit
  - Mindestkontextdisziplin
  - Begriffsversionsdisziplin
  - Umklassifizierungsrobustheit
  - Revisionskostenbeherrschbarkeit
  - Nachzugskonsistenz
  - Ausnahmeprotokollierbarkeit
  - Kontextsparsamkeit
- Begruende, ob sie
  - Auditkriterium,
  - Unterfall,
  - Metaqualitaetsachse,
  - oder verwerfbarer Restbegriff
sind.

PHASE 6 – SELBSTPRUEFUNG
- Pruefe explizit:
  - ob keine zweite Regelquelle entstanden ist,
  - ob Folgeelemente nicht implizit zu Kernaxiomen aufgewertet wurden,
  - ob der Raum nach der Revision kleiner oder gleich gross, aber trennschaerfer wurde,
  - ob der Zielbildkern unversehrt blieb.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Folgeebenen_Konsolidierung_und_Kandidatensiebung_20260423_V1.md
``\`

---

## 9. Selbstpruefung

### Werden die bisherigen Standards eingehalten?
Ja.
- Zielbild bleibt stabil.
- Sprache bleibt primaer deutsch.
- Brainstorming und Analyse sind getrennt.
- neue moegliche Elemente werden nicht vorschnell aufgenommen.
- Auditkriterien und Raumkandidaten werden explizit unterschieden.

### Wurde die Frage nach weiteren moeglichen Folgeelementen behandelt?
Ja.
- Es wurde ein kontrolliertes Brainstorming ueber mehrere Ebenen durchgefuehrt.
- Danach wurde eine strenge Analyse und Siebung vorgenommen.

### Wichtigster naechster Schritt
Die naechste Schleife sollte nicht den Raum unkontrolliert vergroessern, sondern den bestehenden Folgeebenenraum konsolidieren und nur wenige hochplausible neue Kandidaten pruefen.

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

```

---

## RAW_RECORD_022: ASWE_Axiomkandidatenraum_Verbesserungsschleife_V4_Folgeebenen_Handlungsfolgen_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Axiomkandidatenraum_Verbesserungsschleife_V4_Folgeebenen_Handlungsfolgen_20260423_V2.md`
- sha256: `da5fcc8f3a943d7093ea7735600a2860686c3fa2f385a3e86a122b1e98033d1e`
- chars: 25846
- approx_tokens: 6462

```markdown
# ASWE_Axiomkandidatenraum_Verbesserungsschleife_V4_Folgeebenen_Handlungsfolgen_20260423_V2

## 1. Voranalyse

### Zielbild
Ziel dieses Dokuments ist die Erschliessung der Handlungsfolgen aus dem bisherigen Folgeebenen-Audit fuer die weitere Verbesserung des gesamten Kernaxiomen- und Folgeebenenraums.

Der Gegenstand ist nicht die erneute breite Expansion von Kernaxiomen, sondern:
- die Ableitung konkreter Revisionsfolgen aus dem bisherigen Audit,
- die Bestimmung der naechsten produktiven Verbesserungsschleife,
- ein kontrolliertes Brainstorming moeglicher weiterer Elemente auf den Folgeebenen,
- deren anschliessende Analyse im Hinblick auf:
  - Ebenenangemessenheit,
  - Trennschaerfe,
  - Rueckbindbarkeit,
  - funktionalen Mehrwert,
  - Redundanzrisiko,
  - potenzielle Aufwertungs- oder Streichungsentscheidung,
  - sowie **Leistungs- und Geschwindigkeitsaspekte als nachgeordnete Qualitaetsdimension**.

### Gegenstand
Gegenstand sind vier miteinander verschraenkte Teilfragen:

1. Welche Handlungsfolgen ergeben sich aus dem bisherigen Folgeebenen-Audit fuer den gesamten Raum?
2. Welche weiteren moeglichen Folgeelemente koennten noch fehlen oder unterbelichtet sein?
3. Welche dieser moeglichen Elemente sind echte Kandidaten und welche sind nur Auditkriterien, Sammelbegriffe, Unterfaelle oder Nutzungseffekte?
4. Wie sind **Leistungs- und Geschwindigkeitsaspekte** so zu beruecksichtigen, dass sie den Raum verbessern, ohne den Zielbildkern zu unterlaufen?

### Geltungsbereich
Dieses Dokument gilt fuer:
- die naechste Revision des Hauptdokuments,
- die weitere Konsolidierung von Designprinzipien, Qualitaetsattributen und operativen Regeln,
- die Rekursion der bisherigen Analysestandards auf die Folgeebenen,
- die Vorbereitung des naechsten Anweisungsprompts,
- die explizite Einordnung von Leistungs- und Geschwindigkeitsaspekten als **sekundaere, nicht basale** Gesichtspunkte.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:
- neue breite Kernaxiomen-Sammlung,
- lokale Implementierung,
- UI- oder Betriebsoptimierung als eigenstaendiger Leitbildersatz,
- reine Benennungsvarianten ohne funktionalen Unterschied,
- implizite Aufwertung eines Folgeelements zu einem Kernaxiom ohne Kollapstest,
- Leistungs- oder Geschwindigkeitsziele als Vorrangkriterium vor Trennschaerfe, Rueckbindung, Konsistenz oder Leitplanken.

### Epistemischer Status

#### Beobachtung
Der bisherige Lauf hat gezeigt:
- der Kernaxiomenraum ist konsolidierungsreif,
- der Folgeebenenraum ist gross genug fuer einen belastbaren Auditlauf,
- der Engpass liegt nun in Trennschaerfe, Rueckbindung, funktionaler Definition, Ebenenangemessenheit und Mehrfachableitung der Folgeelemente,
- Leistungs- und Geschwindigkeitsaspekte wurden bislang eher implizit oder negativ mitgefuehrt, aber noch nicht als explizit nachgeordnete Folgeebenenfrage modelliert.

#### Aussage
Die naechste Schleife muss die Folgeebenen nicht nur auditieren, sondern den gesamten Raum entlang konkreter Revisionsfolgen umbauen und dabei Leistungs- und Geschwindigkeitsaspekte **explizit, aber nachgeordnet** einordnen.

#### Hypothese
Wenn die aus dem Audit ableitbaren Revisionsfolgen systematisch abgearbeitet und weitere moegliche Folgeelemente vor ihrer Aufnahme streng gesiebt werden, wird der Raum:
- kleiner oder gleich gross,
- begrifflich sauberer,
- funktional belastbarer,
- revisionsstabiler,
- und zugleich besser gegen unkontrollierte Langsamkeit, Ueberpruefungsoverhead oder unproportionale Prueftiefe austariert.

#### Kriterium
Dieses Dokument ist nur dann gelungen, wenn es:
- aus dem Audit konkrete Handlungsfolgen ableitet,
- Brainstorming und Analyse trennt,
- neue moegliche Folgeelemente strikt gegen die bisherigen Ebenendefinitionen prueft,
- Leistungs- und Geschwindigkeitsaspekte nicht zu Kernaxiomen oder Vorrangregeln macht,
- keine zweite Regelquelle erzeugt,
- und einen klaren Folgeprompt liefert.

#### Empfehlung
Die naechste Schleife sollte als Folgeebenen-Konsolidierungsschleife mit Kandidatensiebung und **sekundaerer Leistungs- und Geschwindigkeitspruefung** ausgefuehrt werden.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: systemisches Strukturmodell mit Revisionsfolgen
- noch nicht: lokale Implementierung

---

## 2. Geltungsordnung und Leitplanken

### Geltungsordnung
1. D2 – Zielbild, Sprachgovernance, Leitplanken
2. D3 – Selbstanwendungsprämisse, Revisionspflichten
3. D4 – Voranalyse-, Phasentrennungs- und Ausfuehrungslogik
4. D1/V3 – aktueller Kernaxiomenraum
5. D5 – Standardschaerfung und Metaqualitaetspruefung
6. D6 – Folgeebenen-Pruefrahmen
7. dieses Dokument – V4-Handlungsfolgen- und Kandidatensiebungsschleife

### Bindende Leitplanken
1. Kernaxiome bleiben Kernaxiome.
2. Externe wissenschaftliche Quellen bleiben primaer.
3. A, B und Kopplung bleiben getrennt; Kopplungen sind explizit.
4. Governierte statt freie Selbstverbesserung bleibt bindend.
5. Begriffe stehen vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
6. Neue Folgeelemente duerfen den bestehenden Regelraum nur erweitern, wenn sie echten funktionalen Mehrwert besitzen.
7. Folgeelemente duerfen nicht implizit den Rang von Kernaxiomen erhalten.
8. Auditkriterien duerfen nicht ungeprueft als Folgeelemente in den Raum rutschen.
9. Leistungs- und Geschwindigkeitsaspekte duerfen den Zielbildkern nur **optimieren**, nicht **steuern**.

---

## 3. Erschlossene Handlungsfolgen aus dem bisherigen Audit

## 3.1 Handlungsfolgen erster Ordnung

### H1. Folgeebenen-Inventar explizit stabilisieren
Die bisherigen Folgeelemente sind gross genug fuer Konsolidierung.
Konsequenz:
- keine breite Expansion als Default,
- zuerst Vollinventar stabilisieren,
- alle Folgeelemente mit fester Ebene, Rueckbindung und Kurzdefinition fuehren.

### H2. Fehlklassifikationen sichtbar machen und entscheiden
Der Audit hat bereits mehrere grenzwertige Elemente markiert:
- Materialisierungsdisziplin
- Evidenzdisziplin
- Portierbarkeit
- Wahrheitsquellenstabilitaet

Konsequenz:
- fuer diese Elemente ist eine explizite Umklassifizierungsentscheidung noetig,
- nicht bloß ein weiterer Kommentar.

### H3. Indirekte Rueckbindungen explizit nacharbeiten
Besonders unterbelichtet bleiben:
- duale Lesbarkeit
- Persistenz
- Wiederauffindbarkeit
- driftwachsame Revisionsdisziplin
- Portierbarkeit

Konsequenz:
- pro indirekt rueckgebundenem Element ist entweder
  - die Rueckbindung zu schaerfen,
  - das Element enger zu fassen,
  - oder es zu streichen oder unterzuordnen.

### H4. Mehrfachableitungen typisieren
Bisher ist sichtbar, dass mehrere Elemente mehrfach rueckgebunden sind.
Konsequenz:
- jede Mehrfachableitung muss als
  - komplementaer,
  - redundant,
  - konflikttraechtig,
  - oder nur scheinbar mehrfach
klassifiziert werden.

### H5. Vererbungslogik von Nicht-Geltung und Spannungen nachziehen
Bisher wurde dies fuer Folgeebenen als Pruefbedarf definiert, aber noch nicht ausformuliert.

Konsequenz:
- fuer priorisierte Folgeelemente sind
  - Nicht-Geltung,
  - Spannungen,
  - Grenzfaelle,
  - und Vererbung aus Kernaxiomen
explizit mitzuschreiben.

### H6. Ebenenangemessenheit operationalisieren
Der Audit hat Ebenendefinitionen geliefert, aber noch keine systematische Umschichtung vorgenommen.

Konsequenz:
- fuer jedes Folgeelement ist explizit zu entscheiden:
  - bleibt auf aktueller Ebene,
  - wird untergeordnet,
  - wird umklassifiziert,
  - wird gestrichen,
  - oder wird als Aufwertungskandidat markiert.

### H11. Leistungs- und Geschwindigkeitsaspekte explizit, aber nachgeordnet modellieren
Bisher wurden Leistungs- und Geschwindigkeitsaspekte nicht hinreichend explizit als Folgeebenenfrage gefuehrt.

Konsequenz:
- sie sind in der naechsten Schleife explizit zu pruefen,
- aber primaer als sekundaere Qualitaetsattribute oder operative Regeln,
- nicht als Kernaxiome oder vorrangige Designlogik.

## 3.2 Handlungsfolgen zweiter Ordnung

### H7. Folgeebenen-Register einfuehren
Neben dem Kernaxiomenraum braucht es ein explizites Register fuer:
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen.

### H8. Folgeebenen-Closure vervollstaendigen
Die Matrix Kernaxiom -> Folgeelemente reicht noch nicht.
Ergaenzend braucht es:
- Folgeelement -> Rueckbindung,
- Folgeelement -> Nicht-Geltung,
- Folgeelement -> Konflikte,
- Folgeelement -> Revisionsfolgen.

### H9. Kandidatensiebung vor Neuaufnahme
Ab jetzt darf ein neues Folgeelement nur aufgenommen werden, wenn es:
- nicht bloß Auditkriterium ist,
- nicht bloß Sammelbegriff ist,
- nicht nur Umbenennung oder Nutzungseffekt ist,
- funktional eigenstaendig ist,
- und auf der richtigen Ebene sitzt.

### H10. Stopregel fuer Folgeebenenexpansion
Weitere Folgeelemente duerfen nur dann in den Raum aufgenommen werden, wenn sie:
- eine neue Funktion,
- eine neue Konfliktklasse,
- oder eine neue unverzichtbare Rueckbindung
einbringen.

### H12. Leistungsoptimierung unter Leitplanken binden
Schnelligkeit oder Effizienz darf nicht als allgemeiner Vorrang eingefuehrt werden.

Konsequenz:
- jede Leistungs- oder Geschwindigkeitsverbesserung ist gegen
  - Zielbild,
  - Trennschaerfe,
  - Rueckbindung,
  - Konsistenz,
  - und Evidenzstatus
zu pruefen.

---

## 4. Brainstorming moeglicher weiterer Elemente auf den Folgeebenen

## 4.1 Moegliche starke Designprinzipien
- Ausnahmebehandlungs-Explizitheit
- Deprekationsdisziplin
- Rueckrollfaehige Veraenderung
- Priorisierung von Konfliktaufloesung
- Transformationsdisziplin zwischen Ebenen
- Vererbungsdisziplin von Nicht-Geltung
- Begriffsversionsdisziplin
- Grenzfallnahe Modellierung
- Mindestkontextdisziplin
- Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
- leitplankenkonforme Leistungsoptimierung
- Verhaeltnismaessigkeit von Prueftiefe

## 4.2 Moegliche sekundaere Qualitaetsattribute
- Ableitungsnachvollziehbarkeit
- Vererbungskonsistenz
- Ausnahmefestigkeit
- Umklassifizierungsrobustheit
- Deprekationsklarheit
- Rueckrollbarkeit
- Revisionskostenbeherrschbarkeit
- Konfliktpriorisierungsklarheit
- Transformationsstabilitaet
- Nachzugskonsistenz
- Kontextsparsamkeit
- Ausnahmeprotokollierbarkeit
- Ausfuehrungseffizienz
- Antwortzeitangemessenheit
- Leistungsstabilitaet
- Prueftiefenangemessenheit

## 4.3 Moegliche operative Regeln
- Nicht-Geltung fuer priorisierte Folgeelemente explizit angeben
- Mehrfachableitungstyp pro Folgeelement markieren
- Umklassifizierung nur mit Ebenentest dokumentieren
- indirekte Rueckbindung nicht stehen lassen, sondern aufloesen
- Nutzungseffekt nicht als Designprinzip oder Attribut fuehren
- Axiomrevision zieht Folgeebenenrevision zwingend nach
- jedes Folgeelement braucht Kurzdefinition und Negativabgrenzung
- jede Umschichtung explizit begruenden
- Deprekation statt stiller Entfernung markieren
- Konfliktaufloesung immer gegen Leitplanken begruenden
- Prueftiefe an Tragweite und Reversibilitaet ausrichten
- beschleunigte Bearbeitung nur in Niedrigrisiko- und Ruecknahmefaellen zulassen
- Leistungsoptimierung nie ohne Rueckbindung und Evidenzstatus dokumentieren

## 4.4 Moegliche Kopplungsfolgen
- Axiomrevision erzwingt Folgeebenen-Nachzug
- Folgeebenen-Konflikte duerfen Kernaxiome nicht implizit uminterpretieren
- Umschichtungen muessen auf Kopplungsfolgen geprueft werden
- Vererbte Nicht-Geltung muss in Kopplungsfolgen sichtbar bleiben
- Spiegel-/Adapter-Asymmetrie wirkt auch auf Folgeebenenregister
- beschleunigte Folgeebenenrevision darf Kopplungslogik nicht ueberspringen

---

## 5. Analyse der weiteren moeglichen Elemente

## 5.1 Elemente mit hoher Plausibilitaet als echte Folgekandidaten

### A. Ausnahmebehandlungs-Explizitheit
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: hoch  
Begruendung: Der bisherige Raum behandelt Nicht-Geltung und Grenzfaelle, aber die explizite Gestaltung von Ausnahmen auf Folgeebene ist noch nicht als eigenes Konstruktionsprinzip ausgearbeitet.  
Risiko: geringe Redundanz mit Vererbung von Nicht-Geltung; klare Abgrenzung noetig.

### B. Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: hoch  
Begruendung: Aus der Selbstanwendung und den Revisionsfolgen ergibt sich bereits implizit, dass Axiomrevision Folgeebenen mitziehen muss. Als explizites Designprinzip ist das bislang unterbelichtet.  
Risiko: Naehe zu driftwachsamer Revisionsdisziplin; klare funktionale Differenz noetig.

### C. Ableitungsnachvollziehbarkeit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: hoch  
Begruendung: Der bisherige Raum kennt Ableitungsgeschlossenheit als Metaqualitaetsachse, aber nicht ihr resultierendes Guetemerkmal auf Artefaktebene.  
Risiko: darf nicht mit Spurverfolgbarkeit oder argumentativer Nachvollziehbarkeit kollabieren.

### D. Vererbungskonsistenz
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: hoch  
Begruendung: Der Raum fordert Vererbung von Nicht-Geltung und Spannungen, besitzt aber noch kein Attribut fuer die Guete dieser Vererbung.  
Risiko: Naehe zu Widerspruchsfreiheit; als Folgeattribut dennoch plausibel.

### E. Deprekationsdisziplin
Vorlaeufige Ebene: starkes Designprinzip oder operative Regel  
Plausibilitaet: mittel bis hoch  
Begruendung: Stille Entfernung oder Umschichtung von Folgeelementen waere revisionslogisch problematisch.  
Risiko: koennte auch rein operative Regel sein; Ebenentest noetig.

### F. Rueckrollbarkeit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: mittel  
Begruendung: Im Raum sind Revisionsfolgen und Aenderungskosten vorhanden, Rueckrollbarkeit aber noch nicht explizit als Guete.  
Risiko: Naehe zu Reparierbarkeit und kontrollierter Veraenderbarkeit.

## 5.2 Leistungs- und Geschwindigkeitsbezogene Elemente mit hoher oder mittlerer Plausibilitaet

### G. Ausfuehrungseffizienz
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: hoch  
Begruendung: Der Raum hat bislang keine explizite Folgeeigenschaft dafuer, dass Analysen und Revisionen unter unverletzten Leitplanken ressourcenangemessen ausgefuehrt werden.  
Risiko: darf nicht in Oberflaechenschnelligkeit ohne Inhaltswahrung kippen.

### H. Prueftiefenangemessenheit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut oder operative Regel  
Plausibilitaet: hoch  
Begruendung: Der Raum braucht eine explizite Kategorie dafuer, dass Prueftiefe proportional zu Tragweite, Reversibilitaet und Konfliktrisiko sein soll.  
Risiko: kann teils auch als operative Regel formuliert werden; Ebenentest erforderlich.

### I. leitplankenkonforme Leistungsoptimierung
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: mittel bis hoch  
Begruendung: Beschreibt nicht Leistungsgewinn an sich, sondern dessen begrenzte Zulaessigkeit unter Vorrang der Leitplanken.  
Risiko: Naehe zu Meta-Regel statt stabilem Raumbegriff.

### J. Antwortzeitangemessenheit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: mittel  
Begruendung: In interaktiven Arbeitsraeumen kann Antwortzeit relevant sein, aber sie ist stark kontextabhaengig und nicht durchgehend systemisch basal.  
Risiko: Naehe zu UI-/Betriebsoptimierung; nur eng geltend.

### K. Leistungsstabilitaet
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: mittel  
Begruendung: Bei hoeherem Automationsgrad kann wichtig werden, dass Geschwindigkeit und Aufwand nicht stark schwanken.  
Risiko: derzeit noch eher spaetphasig und nur begrenzt zwingend.

## 5.3 Elemente mit eher mittlerer oder unsicherer Plausibilitaet

### L. Transformationsdisziplin zwischen Ebenen
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: mittel  
Begruendung: beschreibt, wie aus Axiomen Folgeelemente abgeleitet werden.  
Risiko: moeglicherweise eher Auditkriterium als stabiler Raumbegriff.

### M. Konfliktpriorisierungsklarheit
Vorlaeufige Ebene: sekundaeres Qualitaetsattribut  
Plausibilitaet: mittel  
Begruendung: ergibt sich aus Konfliktbehandlung, aber noch unklar, ob eigenstaendig genug.

### N. Mindestkontextdisziplin
Vorlaeufige Ebene: starkes Designprinzip oder operative Regel  
Plausibilitaet: mittel  
Begruendung: koennte relevant sein, wenn Folgeelemente nur unter Mindestkontext sauber anwendbar sind.  
Risiko: moeglicherweise Unterfall von Ziel- und Geltungsbindung.

### O. Begriffsversionsdisziplin
Vorlaeufige Ebene: starkes Designprinzip  
Plausibilitaet: mittel  
Begruendung: relevant bei Revisionen und Umschichtungen.  
Risiko: noch zu nahe an Terminologieregister und Deprekationsdisziplin.

## 5.4 Elemente, die eher Auditkriterien als Raumkandidaten sind

### P. Umklassifizierungsrobustheit
Wahrscheinlich eher Auditkriterium als echtes Qualitaetsattribut.

### Q. Revisionskostenbeherrschbarkeit
Wahrscheinlich eher Metaqualitaets- oder Bewertungsachse als Folgeelement des Kernraums.

### R. Nachzugskonsistenz
Vermutlich eher Qualitaetskriterium fuer Revisionsprozesse als stabiler Raumbegriff.

### S. Ausnahmeprotokollierbarkeit
Eher operative Regel oder implementierungsnah als eigenstaendiges Attribut.

### T. Kontextsparsamkeit
Noch zu unscharf; aktuell eher heuristischer Pruefbegriff als Folgeelement.

---

## 6. Verdichtetes Analyseurteil

## 6.1 Was sollte wahrscheinlich in die naechste Schleife aufgenommen werden?
Mit hoechster Prioritaet als ernsthafte Kandidaten fuer die naechste Pruefung:
1. Ausnahmebehandlungs-Explizitheit
2. Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
3. Ableitungsnachvollziehbarkeit
4. Vererbungskonsistenz
5. Deprekationsdisziplin
6. Rueckrollbarkeit
7. Ausfuehrungseffizienz
8. Prueftiefenangemessenheit

Mit mittlerer Prioritaet:
9. leitplankenkonforme Leistungsoptimierung
10. Antwortzeitangemessenheit
11. Leistungsstabilitaet

## 6.2 Was sollte zunaechst nicht als echter Raumkandidat aufgenommen werden?
Zunaechst eher nicht direkt aufnehmen:
- Transformationsdisziplin zwischen Ebenen
- Konfliktpriorisierungsklarheit
- Mindestkontextdisziplin
- Begriffsversionsdisziplin
- Umklassifizierungsrobustheit
- Revisionskostenbeherrschbarkeit
- Nachzugskonsistenz
- Ausnahmeprotokollierbarkeit
- Kontextsparsamkeit

Diese Begriffe sind derzeit eher:
- Auditkriterium,
- Bewertungsachse,
- Unterfall,
- oder prozessnahe Hilfsbegriffe.

## 6.3 Gesamturteil
Die naechste Schleife sollte selektiv erweitern, aber primaer konsolidieren.
Es gibt einige plausible weitere Folgekandidaten, darunter nun auch explizite Leistungs- und Geschwindigkeitsaspekte. Diese dürfen aber nur als sekundaere Qualitaetsattribute, begrenzte Designprinzipien oder operative Regeln eingefuehrt werden, nicht als vorrangige Steuerung des Raums.

---

## 7. Revisionsauftrag fuer die naechste Schleife

Die naechste Schleife sollte verbindlich leisten:
1. die grenzwertigen bestehenden Folgeelemente umklassifizieren oder enger fassen,
2. indirekte Rueckbindungen explizit aufloesen,
3. Mehrfachableitungen typisieren,
4. Nicht-Geltung und Spannungen fuer priorisierte Folgeelemente nachziehen,
5. die hochplausiblen neuen Kandidaten gegen die Ebenendefinitionen pruefen,
6. Leistungs- und Geschwindigkeitskandidaten explizit, aber nachgeordnet behandeln,
7. alle schwach plausiblen Vorschlaege zunaechst als Auditkriterien oder Reserveliste fuehren.

---

## 8. Naechster Anweisungsprompt

``\`text
Analysiere und revidiere den Folgeebenenraum des aktuellen Axiomkandidatenraums unter Fuehrung dieser V4-Schleife und unter Rueckgriff auf D1 bis D6.

Ziel:
Nicht den Kernaxiomenraum erweitern, sondern
1. die bestehenden Folgeelemente konsolidieren,
2. grenzwertige Folgeelemente umklassifizieren oder enger fassen,
3. indirekte Rueckbindungen explizit aufloesen,
4. hochplausible neue Folgekandidaten gegen die Ebenendefinitionen pruefen,
5. und Leistungs- sowie Geschwindigkeitsaspekte explizit, aber nachgeordnet einordnen.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bestehenden Leitplanken und die Geltungsordnung bindend.
- Pruefe explizit, dass Leistungs- und Geschwindigkeitsaspekte den Zielbildkern nicht uebersteuern.

PHASE 1 – BESTEHENDEN FOLGEEBENENRAUM KONSOLIDIEREN
- Pruefe alle bestehenden Designprinzipien, Qualitaetsattribute und operativen Regeln erneut auf:
  - Rueckbindung
  - Ebenenangemessenheit
  - funktionale Definition
  - Trennschaerfe
  - Nicht-Geltung
  - Spannungen
  - Mehrfachableitung
- Fuehre explizite Revisionsentscheidungen aus:
  - beibehalten
  - unterordnen
  - enger fassen
  - umklassifizieren
  - streichen

PHASE 2 – INDIREKTE RUECKBINDUNGEN AUFLOESEN
- Bearbeite prioritär:
  - duale Lesbarkeit
  - Persistenz
  - Wiederauffindbarkeit
  - Portierbarkeit
  - Materialisierungsdisziplin
  - Wahrheitsquellenstabilitaet
  - driftwachsame Revisionsdisziplin
- Weise jedem dieser Elemente eine explizite Rueckbindung oder eine Revisionsentscheidung zu.

PHASE 3 – MEHRFACHABLEITUNGEN, VERERBUNGSLOGIK UND LEISTUNGSGRENZEN
- Klassifiziere jede relevante Mehrfachableitung als:
  - komplementaer
  - redundant
  - konflikttraechtig
  - nur scheinbar mehrfach
- Ziehe fuer priorisierte Folgeelemente explizit nach:
  - Nicht-Geltung
  - Grenzfaelle
  - Spannungen
  - vererbte Einschraenkungen aus Kernaxiomen
- Pruefe explizit, wo beschleunigte Bearbeitung, verringerte Prueftiefe oder Effizienzsteigerung zulaessig ist und wo nicht.

PHASE 4 – PRUEFUNG WEITERER HOCHPLAUSIBLER FOLGEKANDIDATEN
- Pruefe ausschliesslich diese moeglichen neuen Kandidaten:
  - Ausnahmebehandlungs-Explizitheit
  - Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
  - Ableitungsnachvollziehbarkeit
  - Vererbungskonsistenz
  - Deprekationsdisziplin
  - Rueckrollbarkeit
  - Ausfuehrungseffizienz
  - Prueftiefenangemessenheit
  - leitplankenkonforme Leistungsoptimierung
  - Antwortzeitangemessenheit
  - Leistungsstabilitaet
- Entscheide pro Kandidat:
  - aufnehmen
  - als Auditkriterium statt Raumkandidat fuehren
  - unterordnen
  - verwerfen

PHASE 5 – KEINE SCHEINKANDIDATEN AUFNEHMEN
- Fuehre diese Begriffe ausdruecklich nicht ungeprueft als Raumkandidaten:
  - Transformationsdisziplin zwischen Ebenen
  - Konfliktpriorisierungsklarheit
  - Mindestkontextdisziplin
  - Begriffsversionsdisziplin
  - Umklassifizierungsrobustheit
  - Revisionskostenbeherrschbarkeit
  - Nachzugskonsistenz
  - Ausnahmeprotokollierbarkeit
  - Kontextsparsamkeit
- Begruende, ob sie
  - Auditkriterium,
  - Unterfall,
  - Metaqualitaetsachse,
  - oder verwerfbarer Restbegriff
sind.

PHASE 6 – SELBSTPRUEFUNG
- Pruefe explizit:
  - ob keine zweite Regelquelle entstanden ist,
  - ob Folgeelemente nicht implizit zu Kernaxiomen aufgewertet wurden,
  - ob der Raum nach der Revision kleiner oder gleich gross, aber trennschaerfer wurde,
  - ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet eingefuehrt wurden,
  - ob der Zielbildkern unversehrt blieb.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Folgeebenen_Konsolidierung_und_Kandidatensiebung_20260423_V1.md
``\`

---

## 9. Selbstpruefung

### Werden die bisherigen Standards eingehalten?
Ja.
- Zielbild bleibt stabil.
- Sprache bleibt primaer deutsch.
- Brainstorming und Analyse sind getrennt.
- neue moegliche Elemente werden nicht vorschnell aufgenommen.
- Auditkriterien und Raumkandidaten werden explizit unterschieden.
- Leistungs- und Geschwindigkeitsaspekte werden nur nachgeordnet eingefuehrt.

### Wurde die Frage nach weiteren moeglichen Folgeelementen behandelt?
Ja.
- Es wurde ein kontrolliertes Brainstorming ueber mehrere Ebenen durchgefuehrt.
- Danach wurde eine strenge Analyse und Siebung vorgenommen.

### Wurden Leistungs- und Geschwindigkeitsaspekte beruecksichtigt?
Ja.
- In V2 nun explizit.
- Sie werden als moegliche Folgeelemente, Qualitaetsattribute, Designprinzipien oder operative Regeln geprueft.
- Sie erhalten aber keinen Vorrang vor Leitplanken, Trennschaerfe, Rueckbindung und Konsistenz.

### Wichtigster naechster Schritt
Die naechste Schleife sollte nicht den Raum unkontrolliert vergroessern, sondern den bestehenden Folgeebenenraum konsolidieren und nur wenige hochplausible neue Kandidaten pruefen – einschliesslich klar begrenzter Leistungs- und Geschwindigkeitsaspekte.

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

```

---

## RAW_RECORD_023: ASWE_Deprekations_Umschichtungslog_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Deprekations_Umschichtungslog_20260423_V2.md`
- sha256: `28bc8cbfb58f06f4d240962e5e602d63de0b334771704335758f0f90df5f7d66`
- chars: 3120
- approx_tokens: 780

```markdown
# ASWE_Deprekations_Umschichtungslog_20260423_V2

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

```

---

## RAW_RECORD_024: ASWE_Deprekations_Umschichtungslog_20260423_V3.md

- source_kind: `root_md`
- source_ref: `ASWE_Deprekations_Umschichtungslog_20260423_V3.md`
- sha256: `131d41141f6e8da1c4d1eb69fd60f8e30a70bea92dab5140d7022473575390ff`
- chars: 3190
- approx_tokens: 798

```markdown
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

```

---

## RAW_RECORD_025: ASWE_Folgeebenen_Audit_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Folgeebenen_Audit_20260423_V2.md`
- sha256: `ba7fa3994990ebac3264437bb09c4d50b9844bc7bdea2a24848a9e42b0a6274d`
- chars: 25310
- approx_tokens: 6328

```markdown
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

```

---

## RAW_RECORD_026: ASWE_Folgeebenen_Audit_Pruefrahmen_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Folgeebenen_Audit_Pruefrahmen_20260423_V1.md`
- sha256: `e1957326ec7bf539f5576efb782c49b2a9af46155f1e2e7a9cf0247e2830d834`
- chars: 16632
- approx_tokens: 4158

```markdown
# ASWE_Folgeebenen_Audit_Pruefrahmen_20260423_V1

## 1. Voranalyse

### Zielbild
Ziel dieses Dokuments ist ein **Pruefrahmen fuer die Folgeebenen des Axiomkandidatenraums**, also fuer jene Elemente, die aus Kernaxiomen abgeleitet werden:

- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen.

Der Pruefrahmen dient **nicht** der erneuten breiten Erweiterung des Kernaxiomenraums, sondern der **rekursiven Selbstanwendung der bereits etablierten Standards** auf die aus Axiomen abgeleiteten Ebenen.

### Gegenstand
Gegenstand ist die Frage, ob die Folgeebenen:

- in ausreichender Zahl vorhanden sind,
- trennscharf genug unterschieden werden,
- funktional hinreichend definiert sind,
- sauber auf Kernaxiome rueckgebunden werden,
- eigene Nicht-Geltung, Spannungen, Evidenzstatus und Revisionsfolgen besitzen.

### Geltungsbereich
Dieser Pruefrahmen gilt fuer die Revision des Hauptdokuments zum Axiomkandidatenraum und fuer weitere Schleifendokumente, soweit sie Folgeelemente des Axiomensatzes bewerten oder ableiten.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:
- neue breite Sammlung weiterer Kernaxiome,
- lokale Tool- oder Repo-Implementierung,
- performative Optimierungsziele wie Geschwindigkeit oder Kosten,
- rein sprachliche Mikroedits ohne Einfluss auf die Folgeebenenlogik.

### Epistemischer Status

#### Beobachtung
Der bisherige Revisionslauf hat die Kernaxiome deutlich staerker formalisiert als ihre Folgeebenen. Fuer die Folgeebenen liegen bereits mehrere Designprinzipien, Qualitaetsattribute und operative Regeln vor, aber ihre Rueckbindung, Trennschaerfe und Negativlogik sind noch ungleichmaessig ausgearbeitet.

#### Aussage
Der naechste produktive Reifeschritt liegt nicht primaer in weiterer Kandidatenexpansion, sondern in einem **Folgeebenen-Audit**.

#### Hypothese
Wenn die bisherigen Standards rekursiv auf die Folgeebenen angewandt werden, wird der Kandidatenraum strukturell geschlossener, ohne dass das Zielbild aufgeweicht werden muss.

#### Kriterium
Der Pruefrahmen ist nur dann gelungen, wenn er:
- dieselben Grundstandards wie fuer Axiome auf Folgeebenen uebertraegt,
- Rueckbindung, Trennschaerfe, Evidenzstatus, Nicht-Geltung und Konfliktlage der Folgeelemente sichtbar macht,
- keine zweite Regelquelle erzeugt,
- Konsolidierung ueber Expansion stellt.

#### Empfehlung
Die Folgeebenen sollen ab jetzt **als eigener Auditgegenstand** behandelt werden.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: systemisches Strukturmodell fuer Folgeebenen
- noch nicht: lokale Implementierung

---

## 2. Geltungsordnung und Leitplanken

### Geltungsordnung
1. D2 – Zielbild, Sprachgovernance, Leitplanken  
2. D3 – Selbstanwendungsprämisse, Revisionspflichten  
3. D4 – Voranalyse-, Phasentrennungs- und Ausfuehrungslogik  
4. D1/V3 – aktueller Kernaxiomenraum  
5. dieses Dokument – Pruefrahmen fuer Folgeebenen als nachgeordnete Erweiterung

### Bindende Leitplanken
1. Kernaxiome bleiben Kernaxiome.
2. Externe wissenschaftliche Quellen bleiben primaer.
3. A, B und Kopplung bleiben getrennt; Kopplungen sind explizit.
4. Governierte statt freie Selbstverbesserung bleibt bindend.
5. Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
6. Neue Pruefkriterien fuer Folgeebenen duerfen den bestehenden Regelraum nur erweitern, nicht ersetzen.
7. Folgeelemente duerfen nicht implizit den Rang von Kernaxiomen erhalten.

---

## 3. Vorläufiges Urteil zur Menge und Reife der Folgeebenen

## 3.1 Genug Kandidaten auf den Folgeebenen?
**Ja, fuer einen belastbaren Auditlauf.**

Der vorhandene Raum enthaelt bereits ausreichend Folgeelemente, um ein eigenstaendiges Audit zu rechtfertigen:

### Starke Designprinzipien
- Explizitheit kritischer Annahmen
- Vorfestlegungsdisziplin
- regelgebundene Selbstkritik
- adversariale Pruefbarkeit
- evaluator-kritische Testdisziplin
- definitorische Priorisierung
- Rollen- und Relationsreinheit
- kontrollierte Kopplung
- driftwachsame Revisionsdisziplin
- epistemische Staffelung
- keine Kurzschlussmaterialisierung
- keine konkurrierende Wahrheitsquelle

### Sekundaere Qualitaetsattribute
- Driftresistenz
- Kontrollierbarkeit
- Reproduzierbarkeit
- argumentative Nachvollziehbarkeit
- begriffliche Stabilitaet
- semantische Widerspruchsarmut
- Wiederauffindbarkeit
- Persistenz
- Reparierbarkeit
- Wartbarkeit
- duale Lesbarkeit
- Evidenzdisziplin
- Materialisierungsdisziplin
- Wahrheitsquellenstabilitaet

### Operative Regeln
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
- Kopplungen explizit markieren

### Urteil
Die Folgeebenen sind **nicht zu klein**, sondern bereits **gross genug fuer Konsolidierung und Rekursionspruefung**.

## 3.2 Sind die Folgeebenen bereits trennscharf und funktional definiert?
**Nur teilweise.**

### Relativ stark definiert
- adversariale Pruefbarkeit als Unterfall von Verhaltenstestbarkeit
- kontrollierte Kopplung als Folge von Pfad- und Schnittstellenexplizitheit
- Wiederauffindbarkeit als Folge von Provenienz und Referenzierbarkeit
- Rueckgabepunkt-Disziplin als Folge von begrenzt-rueckgabefaehiger Schrittlogik und Pfadlogik

### Noch vergleichsweise unscharf
- Portierbarkeit
- duale Lesbarkeit
- Persistenz als Folgeebene
- Materialisierungsdisziplin
- Wahrheitsquellenstabilitaet
- evaluator-kritische Testdisziplin
- driftwachsame Revisionsdisziplin
- Vorfestlegungsdisziplin
- Budget- und Schleifendisziplin
- asymmetrische Kopplungsfolgen

### Kernbefund
Die Folgeebenen sind **hinreichend vorhanden**, aber **noch nicht durchgehend gleich stark trennscharf, funktional und evidenzseitig modelliert**.

---

## 4. Pruefgegenstaende des Folgeebenen-Audits

Jedes Folgeelement ist kuenftig entlang von vier Grundfragen zu pruefen:

1. **Rueckbindung**
   - Aus welchem Kernaxiom oder welchen Kernaxiomen folgt das Element?
   - Ist die Rueckbindung eindeutig, mehrfach oder unklar?

2. **Trennschaerfe**
   - Wovon unterscheidet sich das Element?
   - Ist es eigenstaendig oder nur Umbenennung / Unterfall / Nutzungseffekt?

3. **Funktionale Definition**
   - Welche spezifische Funktion erfuellt das Element im System?
   - Was leistet es, das kein anderes Element in gleicher Weise leistet?

4. **Selbstanwendbarkeit der Regeln**
   - Gilt auf dieses Element selbst:
     - Nicht-Derivativitaet,
     - Nicht-Geltung,
     - Spannungsfaehigkeit,
     - Evidenzstatus,
     - Konsistenzpruefung,
     - Revisionsfolgen,
     - Sprachgovernance?

---

## 5. Pruefachsen fuer Folgeebenen

## P24. Folgeebenen-Trennschaerfe
Prueft, ob ein Folgeelement klar von Nachbarbegriffen auf derselben Ebene unterscheidbar ist.

### Leitfragen
- Ist das Element ein eigener Funktionsbegriff?
- Oder ist es nur eine andere Perspektive auf einen vorhandenen Begriff?
- Wo verlaeuft die Negativabgrenzung?

## P25. Funktionale Definition
Prueft, ob das Element funktional statt bloß etikettierend definiert ist.

### Leitfragen
- Welche Aufgabe erfuellt das Element?
- Welche Fehlklasse verhindert oder bearbeitet es?
- Welche spezifische Wirkung im System ist damit verbunden?

## P26. Rueckbindungsstaerke
Prueft, wie eindeutig das Element an einen oder mehrere Kernsaetze gebunden ist.

### Klassen
- eindeutig rueckgebunden
- mehrfach rueckgebunden
- indirekt rueckgebunden
- verwaist

## P27. Vererbte Nicht-Geltung
Prueft, wie sich Nicht-Geltung und Grenzfaelle eines Axioms auf seine Folgeelemente uebertragen.

### Leitfragen
- Gilt die Nicht-Geltung des Axioms direkt mit?
- Oder gilt das Folgeelement enger oder weiter?
- Entstehen neue Grenzfaelle erst auf Folgeebene?

## P28. Vererbte Spannungen
Prueft, welche Spannungen eines Axioms auf Designprinzipien, Attribute oder Regeln uebergehen und ob dort neue Konflikte entstehen.

## P29. Evidenzstatus der Folgeebene
Prueft, welcher epistemische Status fuer das Folgeelement gilt.

### Klassen
- direkt empirisch gestuetzt
- standardsetzend abgeleitet
- repo-lokal operationalisiert
- heuristisch nuetzlich, aber schwach abgestuetzt

## P30. Mehrfachableitungs-Typologie
Prueft, wie Mehrfachableitungen zu interpretieren sind.

### Typen
- komplementaer
- redundant
- konflikttraechtig
- nur scheinbar mehrfach

## P31. Orthogonalitaet innerhalb der Folgeebene
Prueft, ob Folgeelemente auf derselben Ebene wirklich unterschiedliche Funktionen tragen.

## P32. Revisionsfolgen und Aenderungskosten
Prueft, welche Folgeebenen bei Revision eines Axioms oder Designprinzips mitgezogen werden muessen.

## P33. Folgeebenen-Saettigung
Prueft, ob weitere Folgeelemente noch echten Erklaerungsmehrwert bringen oder nur Umformulierungen darstellen.

---

## 6. Auditmatrix fuer Folgeelemente

| Folgeelement | Ebene | Rueckbindung | Funktionale Definition | Trennschaerfe | Evidenzstatus | Nicht-Geltung / Grenzfall | Mehrfachableitung | Konfliktlage | Revisionsfolgen | Befund |
|---|---|---|---|---|---|---|---|---|---|---|
| duale Lesbarkeit | Qualitaetsattribut | indirekt, mehrfach | noch zu schaerfen | mittel | repo-lokal + theoretisch | automationssensitiv | mehrfach | gering | hoch | aufwertungs- und definierbeduerftig |
| Persistenz | Qualitaetsattribut | indirekt aus B3 | funktional noch zu schaerfen | mittel | theoretisch / lokal | nicht jede Hilfsnotiz persistenzpflichtig | teilweise mehrfach | gering | mittel | sekundaer, aber nachzuschaerfen |
| Portierbarkeit | Designprinzip | indirekt | unscharf | niedrig bis mittel | lokal | braucht engeren Scope | unklar | mittel | mittel | definier- oder unterordnungsbeduerftig |
| adversariale Pruefbarkeit | Designprinzip | eindeutig aus A5 | gut | hoch | empirisch + benchmarknah | nicht fuer jeden Erkundungsschritt voll noetig | scheinbar mehrfach | gering | niedrig | tragfaehig |
| Rueckgabepunkt-Disziplin | operative Regel | mehrfach aus A4/B4 | gut | mittel bis hoch | abgeleitet | nicht jede Einzelschrittinteraktion | mehrfach | gering | hoch | tragfaehig, aber als Regel untergeordnet |
| Wiederauffindbarkeit | Qualitaetsattribut | aus B3, teils B4 | gut, aber utilisation effect | mittel | standardsetzend abgeleitet | fluechtige Hilfsnotizen ausgenommen | mehrfach | gering | mittel | als Folge von B3 klarer markieren |

---

## 7. Entscheidungsregeln

### Ein Folgeelement wird beibehalten, wenn:
- seine Funktion eigenstaendig ist,
- seine Rueckbindung nachvollziehbar ist,
- seine Trennschaerfe ausreichend ist,
- es keinen funktional gleichwertigen Dublettenbegriff gibt.

### Ein Folgeelement wird untergeordnet, wenn:
- es funktional nur Unterfall eines staerkeren Elements ist,
- seine Wirkung bereits durch ein anderes Element abgedeckt wird.

### Ein Folgeelement wird enger gefasst, wenn:
- seine Funktion prinzipiell sinnvoll ist,
- aber Rueckbindung, Nicht-Geltung oder Spannungslogik noch zu breit oder unklar sind.

### Ein Folgeelement wird gestrichen, wenn:
- es weder eigenstaendig noch funktional noetig ist,
- es nur perspektivische Umbenennung ist,
- es keine belastbare Rueckbindung besitzt.

### Ein Folgeelement wird aufgewertet, wenn:
- es unter hoeherem Automationsgrad oder staerkerer Delegation quasi-konstitutiv wird,
- seine Funktion systemisch basal wird,
- es auf mehreren Ebenen wiederholt unverzichtbar erscheint.

---

## 8. Vorläufige Schwerpunktkandidaten fuer die naechste Auditstufe

### Prioritaet 1 – sofort pruefen
- duale Lesbarkeit
- Persistenz
- Wiederauffindbarkeit
- Portierbarkeit
- Rueckgabepunkt-Disziplin
- evaluator-kritische Testdisziplin

### Prioritaet 2 – danach pruefen
- Materialisierungsdisziplin
- Wahrheitsquellenstabilitaet
- driftwachsame Revisionsdisziplin
- Budget- und Schleifendisziplin
- asymmetrische Kopplungsfolgen

### Prioritaet 3 – spaeter pruefen
- feinere Unterklassen von Kontrollierbarkeit
- Unterattribute von Reparierbarkeit und Wartbarkeit
- detaillierte Nutzbarkeits- und Lesbarkeitsunterformen

---

## 9. Folgeprompt

``\`text
Analysiere die Folgeebenen des aktuellen Axiomkandidatenraums unter Fuehrung dieses Pruefrahmens und unter Rueckgriff auf D1, D2, D3, D4 und D5.

Ziel:
Nicht neue Kernaxiome sammeln, sondern die bereits aus Kernaxiomen abgeleiteten Elemente auf Trennschaerfe, funktionale Definition, Rueckbindung, Vererbungslogik und Evidenzstatus pruefen.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bestehenden Leitplanken und die Geltungsordnung bindend.

PHASE 1 – FOLGEEBENEN-INVENTAR
- Liste alle starken Designprinzipien, sekundaeren Qualitaetsattribute, operativen Regeln und Kopplungsfolgen auf.
- Markiere, ob die Menge fuer einen Auditlauf ausreichend ist.

PHASE 2 – TRNNSCHAERFE- UND FUNKTIONSAUDIT
- Pruefe fuer jedes Folgeelement:
  - Rueckbindung
  - funktionale Definition
  - Trennschaerfe
  - Evidenzstatus
  - Nicht-Geltung / Grenzfaelle
  - Mehrfachableitung
  - Konfliktlage
  - Revisionsfolgen

PHASE 3 – VERWAISUNGS- UND MEHRFACHABLEITUNGSPRUEFUNG
- Markiere:
  - verwaiste Folgeelemente
  - indirekt rueckgebundene Elemente
  - komplementaere Mehrfachableitungen
  - redundante Mehrfachableitungen
  - konflikttraechtige Mehrfachableitungen

PHASE 4 – REVISIONSENTSCHEIDUNGEN
- Entscheide pro Folgeelement:
  - beibehalten
  - unterordnen
  - enger fassen
  - streichen
  - aufwerten
- Begruende jede Entscheidung explizit.

PHASE 5 – SELBSTPRUEFUNG
- Pruefe, ob die bisherigen Standards nun rekursiv auf Folgeebenen angewandt wurden.
- Pruefe, ob die Folgeebenen konsistenter, trennschaerfer und funktional definierter geworden sind.
- Pruefe, ob keine zweite Regelquelle entstanden ist.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Folgeebenen_Audit_20260423_V1.md
``\`

---

## 10. Selbstpruefung

### Werden alle bisherigen Standards selbst eingehalten?
Ja, soweit fuer diese Reifestufe erforderlich:
- deutsche Primaerbegriffe werden bevorzugt,
- Zielbild bleibt stabil,
- Konsolidierung bleibt vorrangig,
- keine zweite Regelquelle wird eingefuehrt,
- Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung sind getrennt.

### Wurde die Frage nach der Menge der Folgeelemente mitbearbeitet?
Ja.
- Urteil: **genug Kandidaten fuer einen Auditlauf vorhanden**.

### Wurde die Frage nach Trennschaerfe und funktionaler Definition mitbearbeitet?
Ja.
- Urteil: **nur teilweise ausreichend**, besonders schwach bei indirekten, mehrfach rueckgebundenen oder automationssensitiven Folgeelementen.

### Wichtigster naechster Schritt
Die naechste Schleife sollte **nicht** den Kernaxiomenraum vergroessern, sondern den **Folgeebenenraum rekursiv auditieren**.

---

## 11. Quellen

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

```

---

## RAW_RECORD_027: ASWE_Folgeebenen_Audit_Pruefrahmen_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Folgeebenen_Audit_Pruefrahmen_20260423_V2.md`
- sha256: `6d06dcde8334c4f6780dd7321854add3d99501c0d4d75aac3bd577b9e183787c`
- chars: 20146
- approx_tokens: 5037

```markdown
# ASWE_Folgeebenen_Audit_Pruefrahmen_20260423_V2

## 1. Voranalyse

### Zielbild
Ziel dieses Dokuments ist ein **erweiterter Pruefrahmen fuer die Folgeebenen des Axiomkandidatenraums**, der die bisher etablierten Analysestandards nun **explizit rekursiv** auf folgende Ebenen anwendet:

- **starkes Designprinzip**
- **sekundaeres Qualitaetsattribut**
- **operative Regel**

Der Pruefrahmen soll nicht nur die Rueckbindung dieser Elemente an Kernaxiome pruefen, sondern auch ihre **definitorische Trennschaerfe**
- untereinander,
- zu Kernaxiomen,
- sowie innerhalb der jeweiligen Ebene.

### Gegenstand
Gegenstand ist die systematische Pruefung der Folgeebenen in Bezug auf:

- definitorische Trennschaerfe,
- funktionale Definition,
- Rueckbindung an Kernaxiome,
- Nicht-Derivativitaet innerhalb der Folgeebene,
- Nicht-Geltung, Spannungen und Grenzfaelle,
- Evidenzstatus,
- Redundanzarmut,
- Widerspruchsfreiheit,
- Orthogonalitaet,
- Ableitungsgeschlossenheit,
- Verwaisung,
- Revisionsfolgen.

### Geltungsbereich
Dieses Dokument gilt fuer die Revision des Hauptdokuments zum Axiomkandidatenraum und fuer weitere Schleifendokumente, soweit sie aus Kernaxiomen abgeleitete Elemente klassifizieren, bewerten oder umformulieren.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:
- neue breite Sammlung weiterer Kernaxiome,
- lokale Repo-Implementierung,
- UI- oder Betriebsoptimierung,
- reine Stil- oder Formulierungsvarianten ohne begrifflichen Unterschied,
- direkte Promotion eines Folgeelements zu einem Kernaxiom ohne expliziten Kollapstest.

### Epistemischer Status

#### Beobachtung
Die bisherigen Revisionen haben fuer Kernaxiome deutlich strengere Standards etabliert als fuer ihre Folgeebenen. Designprinzipien, Qualitaetsattribute und operative Regeln sind bereits vorhanden, aber ihre Trennschaerfe und funktionale Eigenstaendigkeit sind noch ungleichmaessig ausgearbeitet.

#### Aussage
Der naechste produktive Schritt ist ein **Folgeebenen-Audit mit Ebenendifferenzierung**, nicht eine erneute breite Expansion des Kernaxiomenraums.

#### Hypothese
Wenn die bisherigen Analysestandards rekursiv auf Folgeebenen angewandt werden, wird der Gesamtraum:
- trennschaerfer,
- konsistenter,
- ableitungsseitig geschlossener,
- und revisionsstabiler.

#### Kriterium
Der Pruefrahmen ist nur dann gelungen, wenn er:
- die drei Folgeebenen definitorisch klar trennt,
- dieselben Grundstandards wie fuer Kernaxiome auf Folgeelemente uebertraegt,
- Mehrfachableitungen, Grenzfaelle und Verwaisungen explizit prueft,
- keine zweite Regelquelle erzeugt,
- keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen erzeugt.

#### Empfehlung
Ab jetzt sollen starke Designprinzipien, sekundaere Qualitaetsattribute und operative Regeln als **eigene Auditobjekte** behandelt werden.

### Abstraktionsniveau
- primaer: Grundsatz
- sekundaer: systemisches Strukturmodell fuer Folgeebenen
- noch nicht: lokale Implementierung

---

## 2. Geltungsordnung und Leitplanken

### Geltungsordnung
1. **D2** – Zielbild, Sprachgovernance, Leitplanken  
2. **D3** – Selbstanwendungsprämisse, Revisionspflichten  
3. **D4** – Voranalyse-, Phasentrennungs- und Ausfuehrungslogik  
4. **D1/V3** – aktueller Kernaxiomenraum  
5. **D5** – Standardschaerfung und Metaqualitaetspruefung  
6. **dieses Dokument** – Folgeebenen-Pruefrahmen als nachgeordnete Erweiterung

### Bindende Leitplanken
1. Kernaxiome bleiben Kernaxiome.
2. Externe wissenschaftliche Quellen bleiben primaer.
3. A, B und Kopplung bleiben getrennt; Kopplungen sind explizit.
4. Governierte statt freie Selbstverbesserung bleibt bindend.
5. Begriffe stehen vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
6. Neue Pruefkriterien fuer Folgeebenen duerfen den bestehenden Regelraum nur erweitern, nicht ersetzen.
7. Folgeelemente duerfen nicht implizit den Rang von Kernaxiomen erhalten.

---

## 3. Vorläufiges Urteil zur Menge und Reife der Folgeebenen

## 3.1 Genug Kandidaten auf den Folgeebenen?
**Ja, fuer einen belastbaren Auditlauf.**

Die bisherigen Dokumente enthalten bereits hinreichend viele Folgeelemente, um die Folgeebene selbst als strukturierten Gegenstand zu pruefen. Die Zahl der vorhandenen starken Designprinzipien, sekundaeren Qualitaetsattribute und operativen Regeln ist ausreichend, um:
- Dubletten zu erkennen,
- schwache Begriffe zu identifizieren,
- funktionale Luecken sichtbar zu machen,
- Rueckbindungs- und Verwaisungspruefungen durchzufuehren.

### Urteil
Der Engpass liegt **nicht** in zu wenigen Kandidaten, sondern in:
- ungleicher definitorischer Schaerfe,
- unvollstaendiger Rueckbindung,
- fehlender Ebenentrennung,
- und zu schwacher funktionaler Definition einzelner Folgeelemente.

## 3.2 Sind die Folgeebenen nach bisherigen Standards trennscharf und funktional definiert?
**Nur teilweise.**

### Relativ stark definiert
- adversariale Pruefbarkeit
- Rueckgabepunkt-Disziplin
- kontrollierte Kopplung
- Wiederauffindbarkeit als Folge von Provenienz und Referenzierbarkeit

### Noch vergleichsweise unscharf
- Portierbarkeit
- duale Lesbarkeit
- Persistenz als Folgeebene
- Materialisierungsdisziplin
- Wahrheitsquellenstabilitaet
- evaluator-kritische Testdisziplin
- driftwachsame Revisionsdisziplin
- Vorfestlegungsdisziplin
- Budget- und Schleifendisziplin
- asymmetrische Kopplungsfolgen

### Kernbefund
Die Folgeebenen sind **hinreichend vorhanden**, aber **noch nicht durchgehend gleich stark trennscharf, funktional und evidenzseitig modelliert**.

---

## 4. Ebenendefinitionen und definitorische Trennschaerfe

## 4.1 Kernaxiom
**Definition:**  
Ein Kernaxiom ist eine konstitutive, nicht-derivative Grundaussage, ohne die die semantische, epistemische oder steuerungsseitige Ordnung des Systems kollabiert.

**Kennzeichen:**  
- konstitutive Notwendigkeit  
- hohe Reichweite  
- Nicht-Derivativitaet  
- invariantennaher Charakter  
- direkte Leitplankenrelevanz

## 4.2 Starkes Designprinzip
**Definition:**  
Ein starkes Designprinzip ist eine aus einem oder mehreren Kernaxiomen abgeleitete, systemgestaltende Konstruktionsregel. Es beschreibt, **wie** ein System aufgebaut oder ausgerichtet werden soll, nicht **wodurch** seine Grundordnung konstituiert ist.

**Kennzeichen:**  
- abgeleitet, nicht basal  
- konstruktiv und orientierend  
- verletzt man es, kollabiert nicht notwendig die gesamte Grundordnung sofort, aber Architektur- oder Verhaltensqualitaet sinkt deutlich  
- typischerweise mittlere bis hohe Reichweite auf Struktur- oder Prozessentscheidungen

## 4.3 Sekundaeres Qualitaetsattribut
**Definition:**  
Ein sekundaeres Qualitaetsattribut ist eine aus Axiomen und/oder Designprinzipien folgende, bewertende Gueteeigenschaft des resultierenden Systems oder seiner Artefakte.

**Kennzeichen:**  
- evaluativ statt konstitutiv  
- beschreibt Guete, nicht Bauanweisung  
- oft mess-, pruef- oder beobachtbar  
- typischerweise Folge mehrerer Axiome oder Prinzipien

## 4.4 Operative Regel
**Definition:**  
Eine operative Regel ist eine konkrete Handlungs-, Pruef- oder Entscheidungsanweisung fuer die Ausfuehrung innerhalb eines gegebenen Rahmens.

**Kennzeichen:**  
- handlungsnah  
- kontext- und situationsgebundener als Designprinzipien  
- meist eng an Ausfuehrung, Pruefung oder Ablauf gekoppelt  
- am staerksten revisions- und kontextsensitiv

## 4.5 Trennschaerfe zwischen den Ebenen

| Frage | Kernaxiom | Starkes Designprinzip | Sekundaeres Qualitaetsattribut | Operative Regel |
|---|---|---|---|---|
| Was beschreibt es? | Grundordnung | Konstruktionsorientierung | Gueteeigenschaft | Handlung / Anweisung |
| Kollapstest bei Wegfall? | ja, potenziell systemisch | meist nein, aber starker Strukturverlust | nein, Qualitaetsverlust | nein, Ausfuehrungs- oder Prozessverlust |
| Ableitungsstatus | nicht-derivativ | aus Axiom ableitbar | aus Axiom/Prinzip ableitbar | aus Axiom/Prinzip ableitbar |
| Abstraktionsniveau | basal | strukturell | evaluativ | operativ |
| Typische Form | "X muss grundsaetzlich gelten" | "Systeme sollen so gestaltet werden, dass ..." | "Das System ist/bleibt ..." | "Tu / pruefe / markiere ..." |

### Trennschaerfetest
Ein Begriff ist **nicht** trennscharf genug, wenn unklar bleibt, ob er:
- eine Grundbedingung,
- eine Konstruktionsregel,
- eine Gueteeigenschaft,
- oder eine Ausfuehrungsanweisung  
beschreibt.

---

## 5. Rekursive Analysestandards fuer Folgeebenen

Die bisherigen Analysestandards werden nun explizit auf die Folgeebenen uebertragen.

## P24. Folgeebenen-Trennschaerfe
Prueft, ob ein Folgeelement klar von Nachbarbegriffen auf derselben Ebene unterscheidbar ist und zugleich sauber gegen die drei anderen Ebenen abgegrenzt werden kann.

## P25. Funktionale Definition
Prueft, ob das Element funktional definiert ist:
- Was leistet es?
- Welche Fehlklasse verhindert es?
- Welche spezifische Wirkung hat es?

## P26. Rueckbindungsstaerke
Prueft, wie klar das Element an Kernaxiome rueckgebunden ist.

### Klassen
- eindeutig rueckgebunden
- mehrfach rueckgebunden
- indirekt rueckgebunden
- verwaist

## P27. Vererbte Nicht-Geltung
Prueft, wie sich Nicht-Geltung, Grenzfaelle und Anwendungsschranken eines Axioms auf das Folgeelement uebertragen.

## P28. Vererbte Spannungen
Prueft, welche Spannungen eines Axioms auf Folgeebenen uebergehen und ob dort neue Konflikte entstehen.

## P29. Evidenzstatus der Folgeebene
Prueft den epistemischen Status des Folgeelements.

### Klassen
- direkt empirisch gestuetzt
- standardsetzend abgeleitet
- repo-lokal operationalisiert
- heuristisch nuetzlich, aber schwach abgestuetzt

## P30. Mehrfachableitungs-Typologie
Prueft, wie Mehrfachableitungen zu lesen sind.

### Typen
- komplementaer
- redundant
- konflikttraechtig
- nur scheinbar mehrfach

## P31. Orthogonalitaet innerhalb der Folgeebene
Prueft, ob Elemente auf derselben Ebene unterschiedliche Funktionen tragen oder nur denselben Sachverhalt variieren.

## P32. Revisionsfolgen und Aenderungskosten
Prueft, welche Folgeelemente mitrevidiert werden muessen, wenn Axiome oder Designprinzipien geaendert werden.

## P33. Folgeebenen-Saettigung
Prueft, ob weitere Folgeelemente echten Erklaerungsmehrwert bringen oder nur Umformulierungen darstellen.

## P34. Ebenenangemessenheit
Prueft, ob ein Element auf der **richtigen Ebene** gefuehrt wird.

### Leitfragen
- Ist es zu basal fuer ein Designprinzip und gehoert eher ins Kernaxiom?
- Ist es zu evaluativ fuer ein Designprinzip und eher ein Qualitaetsattribut?
- Ist es zu handlungsnah und daher eher eine operative Regel?
- Ist es nur ein Nutzungseffekt statt ein eigenstaendiger Begriff?

## P35. Folgeebenen-Kollapstest
Prueft, ob ein vermeintliches Designprinzip oder Qualitaetsattribut in Wahrheit so basal ist, dass sein Wegfall die Grundordnung kollabieren liesse.

### Konsequenz
Wenn ja, ist eine **Aufwertungskandidatur** zu pruefen.

## P36. Folgeebenen-Unterordnungstest
Prueft, ob ein Folgeelement lediglich:
- Unterfall,
- Umformulierung,
- operationalisierte Fassung,
- oder Nutzungseffekt  
eines staerkeren Elements ist.

---

## 6. Auditmatrix fuer Folgeelemente

| Folgeelement | Ebene | Rueckbindung | Funktionale Definition | Trennschaerfe zur eigenen Ebene | Trennschaerfe zu anderen Ebenen | Evidenzstatus | Nicht-Geltung / Grenzfall | Mehrfachableitung | Konfliktlage | Revisionsfolgen | Befund |
|---|---|---|---|---|---|---|---|---|---|---|---|
| duale Lesbarkeit | Qualitaetsattribut | indirekt, mehrfach | noch zu schaerfen | mittel | mittel | repo-lokal + theoretisch | automationssensitiv | mehrfach | gering | hoch | definier- und zuordnungsbeduerftig |
| Persistenz | Qualitaetsattribut | indirekt aus B3 | funktional noch zu schaerfen | mittel | mittel | theoretisch / lokal | nicht jede Hilfsnotiz persistenzpflichtig | teilweise mehrfach | gering | mittel | sekundaer, aber nachzuschaerfen |
| Portierbarkeit | Designprinzip | indirekt | unscharf | niedrig bis mittel | niedrig bis mittel | lokal | braucht engeren Scope | unklar | mittel | mittel | definier- oder unterordnungsbeduerftig |
| adversariale Pruefbarkeit | Designprinzip | eindeutig aus A5 | gut | hoch | hoch | empirisch + benchmarknah | nicht fuer jeden Erkundungsschritt voll noetig | scheinbar mehrfach | gering | niedrig | tragfaehig |
| Rueckgabepunkt-Disziplin | operative Regel | mehrfach aus A4/B4 | gut | mittel bis hoch | hoch | abgeleitet | nicht jede Einzelschrittinteraktion | mehrfach | gering | hoch | tragfaehig, aber als Regel untergeordnet |
| Wiederauffindbarkeit | Qualitaetsattribut | aus B3, teils B4 | gut, aber Nutzungseffekt | mittel | hoch | standardsetzend abgeleitet | fluechtige Hilfsnotizen ausgenommen | mehrfach | gering | mittel | als Folge von B3 klarer markieren |
| evaluator-kritische Testdisziplin | Designprinzip | aus A5 | funktional plausibel, noch nicht ganz stabil | mittel | mittel | empirisch + lokal | nicht jeder Testschritt evaluator-zentriert | teilweise mehrfach | gering | mittel | weiter schaerfen |
| Materialisierungsdisziplin | Qualitaetsattribut oder Designprinzip? | aus K2, B4 | noch nicht stabil | niedrig | niedrig | abgeleitet | nur fuer operative Uebergaenge relevant | mehrfach | mittel | hoch | Ebenenpruefung erforderlich |

---

## 7. Entscheidungsregeln

### Ein Folgeelement wird beibehalten, wenn:
- seine Funktion eigenstaendig ist,
- seine Rueckbindung nachvollziehbar ist,
- seine Trennschaerfe innerhalb seiner Ebene ausreichend ist,
- es auch gegen benachbarte Ebenen sauber abgegrenzt ist,
- es keinen funktional gleichwertigen Dublettenbegriff gibt.

### Ein Folgeelement wird untergeordnet, wenn:
- es funktional nur Unterfall eines staerkeren Elements ist,
- seine Wirkung bereits durch ein anderes Element abgedeckt wird,
- es primär als Nutzungseffekt oder Konkretisierung erscheint.

### Ein Folgeelement wird enger gefasst, wenn:
- seine Funktion prinzipiell sinnvoll ist,
- aber Rueckbindung, Nicht-Geltung, Spannungslogik oder Ebenenstatus noch zu breit oder unklar sind.

### Ein Folgeelement wird gestrichen, wenn:
- es weder eigenstaendig noch funktional noetig ist,
- es nur perspektivische Umbenennung ist,
- es keine belastbare Rueckbindung besitzt,
- es auf seiner Ebene keinen klaren Mehrwert liefert.

### Ein Folgeelement wird aufgewertet, wenn:
- es unter hoeherem Automationsgrad oder staerkerer Delegation quasi-konstitutiv wird,
- sein Wegfall die Grundordnung faktisch destabilisiert,
- der Folgeebenen-Kollapstest positiv ausfaellt.

### Ein Folgeelement wird umklassifiziert, wenn:
- seine Funktion eher evaluativ als konstruktiv ist,
- seine Funktion eher operativ als strukturell ist,
- oder seine Basalitaet den derzeitigen Ebenenstatus sprengt.

---

## 8. Priorisierte Auditkandidaten

### Prioritaet 1 – sofort pruefen
- duale Lesbarkeit
- Persistenz
- Wiederauffindbarkeit
- Portierbarkeit
- Rueckgabepunkt-Disziplin
- evaluator-kritische Testdisziplin
- Materialisierungsdisziplin

### Prioritaet 2 – danach pruefen
- Wahrheitsquellenstabilitaet
- driftwachsame Revisionsdisziplin
- Budget- und Schleifendisziplin
- asymmetrische Kopplungsfolgen
- Kontrollierbarkeit als Folgeattribut

### Prioritaet 3 – spaeter pruefen
- feinere Unterklassen von Reparierbarkeit und Wartbarkeit
- Unterformen von Lesbarkeit
- genauere Metrisierung von Evidenzdisziplin

---

## 9. Folgeprompt

``\`text
Analysiere die Folgeebenen des aktuellen Axiomkandidatenraums unter Fuehrung dieses Pruefrahmens und unter Rueckgriff auf D1, D2, D3, D4 und D5.

Ziel:
Nicht neue Kernaxiome sammeln, sondern die bereits aus Kernaxiomen abgeleiteten Elemente auf Trennschaerfe, funktionale Definition, Rueckbindung, Vererbungslogik, Ebenenangemessenheit und Evidenzstatus pruefen.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bestehenden Leitplanken und die Geltungsordnung bindend.

PHASE 1 – FOLGEEBENEN-INVENTAR
- Liste alle starken Designprinzipien, sekundaeren Qualitaetsattribute, operativen Regeln und Kopplungsfolgen auf.
- Markiere, ob die Menge fuer einen Auditlauf ausreichend ist.
- Markiere pro Element die vorlaeufige Ebene.

PHASE 2 – TRNNSCHAERFE- UND FUNKTIONSAUDIT
- Pruefe fuer jedes Folgeelement:
  - Rueckbindung
  - funktionale Definition
  - Trennschaerfe innerhalb der eigenen Ebene
  - Trennschaerfe zu den anderen Ebenen
  - Evidenzstatus
  - Nicht-Geltung / Grenzfaelle
  - Mehrfachableitung
  - Konfliktlage
  - Revisionsfolgen
  - Ebenenangemessenheit

PHASE 3 – VERWAISUNGS-, MEHRFACHABLEITUNGS- UND UMSCHICHTUNGSPRUEFUNG
- Markiere:
  - verwaiste Folgeelemente
  - indirekt rueckgebundene Elemente
  - komplementaere Mehrfachableitungen
  - redundante Mehrfachableitungen
  - konflikttraechtige Mehrfachableitungen
  - Fehlklassifikationen zwischen Designprinzip, Qualitaetsattribut und operativer Regel
  - potenzielle Aufwertungskandidaten zur Kernaxiomebene

PHASE 4 – REVISIONSENTSCHEIDUNGEN
- Entscheide pro Folgeelement:
  - beibehalten
  - unterordnen
  - enger fassen
  - streichen
  - aufwerten
  - umklassifizieren
- Begruende jede Entscheidung explizit.

PHASE 5 – SELBSTPRUEFUNG
- Pruefe, ob die bisherigen Standards nun rekursiv auf Folgeebenen angewandt wurden.
- Pruefe, ob die Folgeebenen konsistenter, trennschaerfer, funktional definierter und sauberer gegeneinander abgegrenzt wurden.
- Pruefe, ob keine zweite Regelquelle entstanden ist.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Folgeebenen_Audit_20260423_V2.md
``\`

---

## 10. Selbstpruefung

### Werden die bisherigen Analysestandards jetzt auch auf Folgeebenen angewandt?
Ja.
- Rueckbindung,
- Trennschaerfe,
- Nicht-Geltung,
- Spannungen,
- Evidenzstatus,
- Redundanzarmut,
- Widerspruchsfreiheit,
- Ableitungsgeschlossenheit,
- Verwaisung
werden nun explizit auf Designprinzipien, Qualitaetsattribute und operative Regeln uebertragen.

### Wird die definitorische Trennschaerfe untereinander und zu Kernaxiomen mitgeprueft?
Ja.
- Das Dokument enthaelt nun explizite Ebenendefinitionen,
- eine Trennschaerfematrix,
- Ebenenangemessenheit als eigene Pruefachse,
- sowie Umklassifizierungsregeln.

### Ist die Menge der Folgeelemente fuer einen belastbaren Auditlauf ausreichend?
Ja.
- Urteil: **genug Kandidaten vorhanden**.
- Der Engpass liegt in Qualitaet und Klassifikation, nicht in Quantitaet.

### Wichtigster naechster Schritt
Die naechste Schleife sollte die Folgeebenen **tatsaechlich auditieren und umklassifizieren**, statt den Kernaxiomenraum weiter zu vergroessern.

---

## 11. Quellen

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

```

---

## RAW_RECORD_028: ASWE_Folgeebenen_Konsolidierung_und_Kandidatensiebung_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Folgeebenen_Konsolidierung_und_Kandidatensiebung_20260423_V1.md`
- sha256: `fb2c2ff62ef48c2fced08f7c3ed14d9465ee111a9068dd8ca01c6d96e6e7f308`
- chars: 23093
- approx_tokens: 5774

```markdown
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

```

---

## RAW_RECORD_029: ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md`
- sha256: `bfdfe185a9f846c16e0b152e8d5ef3136775565aa8c64999aed1f562e9988f99`
- chars: 3095
- approx_tokens: 774

```markdown
# ASWE_Kritikableitung_und_Paketdelta_20260423_V1

## Zweck
Dieses Dokument leitet das Korrekturabschlusspaket V3 explizit aus den zuletzt festgestellten Abschlussmaengeln ab.

## Ausgangslage
Das Nachruestpaket V2 war bereits:
- strukturell stark,
- rekursiv weitgehend vollstaendig,
- und als konzeptioneller Paketstand beinahe abschlusstauglich.

Die finale Abschlusspruefung identifizierte jedoch vier echte Restmaengel, die vor einem wirklichen Korrekturabschluss geschlossen werden mussten.

## M1. Spiegelungsluecke im Deprekations- und Umschichtungslog
### Kritik
Die final gefuehrte Kopplungsfolge
- `Axiomrevision erzwingt Folgeebenen-Nachzug`
war im Abschlussdokument und in der rekursiven Matrix vorhanden, wurde aber im Deprekations- und Umschichtungslog nicht als Neuaufnahme gespiegelt.

### Paketreaktion
- Das Deprekations- und Umschichtungslog wird in V3 korrigiert.
- Die Kopplungsfolge wird explizit unter den Neuaufnahmen ergaenzt.

## M2. Unvollstaendige Matrixdeckung im Pro-Model-Direktprompt
### Kritik
Der Direktprompt der Pro-Schleife deckte nur einen Teil der in der rekursiven Matrix enthaltenen Pflichtachsen explizit ab.

Fehlende Achsen:
- Quellenrolle
- vererbte Nicht-Geltung
- vererbte Spannungen
- Redundanzstatus
- Orthogonalitaet
- Verwaisungsstatus
- Kollapstest / Aufwertung
- Unterordnungstest
- Leistungs- / Geschwindigkeitsgrenze

### Paketreaktion
- Das Pro-Model-Dokument wird in V3 so revidiert, dass Phase 2 die volle Matrixdeckung ausdruecklich fordert.

## M3. Unterabgedeckte Neuaufnahmeroutine
### Kritik
Die Routine Neuaufnahme eines Folgeelements spiegelte den erweiterten Matrixstandard noch nicht voll.

Fehlende explizite Pruefpunkte:
- Evidenzstatus
- Quellenrolle
- vererbte Nicht-Geltung
- vererbte Spannungen
- Verwaisungsstatus

### Paketreaktion
- Das Routinenblatt wird in V2 der Routinen nachgeruestet.
- Die Neuaufnahmeroutine wird auf den Matrixstandard gehoben.

## M4. Unterabgedeckte Umklassifizierungsroutine
### Kritik
Die Routine Umklassifizierung spiegelte ebenfalls den Matrixstandard noch nicht voll.

Fehlende explizite Pruefpunkte:
- Evidenzstatus / Quellenrolle aktualisieren
- Leistungs- / Geschwindigkeitsgrenze erneut pruefen
- Verwaisungsstatus erneut pruefen

### Paketreaktion
- Das Routinenblatt wird entsprechend erweitert.

## Zusatzentscheidung
Neben den vier Muss-Korrekturen wird das Ablaufblatt in V2 leicht nachgeschaerft:
- die paketinterne Abschlusspruefung erhaelt einen expliziten Matrix-Prompt-Deckungsabgleich,
- die Aenderungsreihenfolge schliesst nun die Kritikableitung und die Pro-Model-Schleife expliziter ein.

## Ergebnis
Das V3-Paket ist kein neues offenes Verbesserungsprojekt, sondern ein Korrekturabschluss mit vier Pflichtreparaturen und einer kleinen Ablaufnachschaerfung.

## Paketdelta
Gegenueber V2 sind inhaltlich geaendert:
1. Deprekations- und Umschichtungslog
2. Routinenblatt
3. Ablaufblatt
4. Pro-Model-Schleife
5. README

Substantiell unveraendert, aber paketkonsistent neu versioniert:
1. Abschlussdokument
2. Rekursive Pruefmatrix
3. Abschlusscheckliste
4. Adapterkonzept

```

---

## RAW_RECORD_030: ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md`
- sha256: `1f843323b7c17740be3efefa38637d0cf266286233d3d24893a8cce925b462e1`
- chars: 33745
- approx_tokens: 8437

```markdown
# ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2

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
```

---

## RAW_RECORD_031: ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md

- source_kind: `root_md`
- source_ref: `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md`
- sha256: `dc7161f608b72dbe95fd317e340b06837e56b853384b1374129aeefb3b20109f`
- chars: 33745
- approx_tokens: 8437

```markdown
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
```

---

## RAW_RECORD_032: ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md`
- sha256: `1832485d137f4099faa0af0c2149512f3b266998f54c2019895c76e0a2173cbc`
- chars: 1650
- approx_tokens: 413

```markdown
# ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2

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

```

---

## RAW_RECORD_033: ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md

- source_kind: `root_md`
- source_ref: `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md`
- sha256: `b9b78feb62a3954e36f1dfb056780a38b7212f8c088f12afa6e901938a589dd3`
- chars: 1650
- approx_tokens: 413

```markdown
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

```

---

## RAW_RECORD_034: ASWE_Routinenblatt_Axiomraum_20260423_V1.md

- source_kind: `root_md`
- source_ref: `ASWE_Routinenblatt_Axiomraum_20260423_V1.md`
- sha256: `f3dc40d3c2cd7d29b36a5446397c477147e7b193e3e84d62b7fd12503a21f12e`
- chars: 1717
- approx_tokens: 430

```markdown
# ASWE_Routinenblatt_Axiomraum_20260423_V1

## Zweck
Dieses Dokument standardisiert die fehlenden Routinen des Abschlusspakets.

## 1. Routine Neuaufnahme eines Folgeelements
1. Ebenentest
2. Funktionsdefinition
3. Rueckbindungstest
4. Nicht-Geltung und Spannungen
5. Mehrfachableitungspruefung
6. Orthogonalitaets- und Redundanzpruefung
7. Leistungsgrenze
8. Entscheidung: aufnehmen / unterordnen / umklassifizieren / verwerfen

## 2. Routine Umklassifizierung
1. Aktuelle Ebene markieren
2. Ziel-Ebene markieren
3. Begruenden, warum aktuelle Ebene unpassend ist
4. Kollapstest pruefen
5. Rueckbindung, Nicht-Geltung, Spannungen und Revisionsfolgen nachziehen
6. Deprekationslog aktualisieren
7. Matrix und Abschlussdokument spiegeln

## 3. Routine Axiomrevision -> Folgeebenen-Nachzug
1. Geaendertes Axiom markieren
2. Direkt abgeleitete Folgeelemente identifizieren
3. Indirekt betroffene Folgeelemente identifizieren
4. Vererbte Nicht-Geltung und Spannungen neu pruefen
5. Mehrfachableitungen neu klassifizieren
6. Matrix aktualisieren
7. Deprekationslog aktualisieren
8. Abschlusscheckliste erneut anwenden

## 4. Routine Abschlussfreigabe
1. Abschlussdokument ist intern konsistent
2. Matrix enthaelt alle Pflichtparameter
3. Deprekationslog spiegelt alle Aenderungen
4. Ablaufblatt wurde befolgt
5. Adapterkonzept verhindert direkte Materialisierung
6. Pro-Model-Schleife ergibt Abschlusstauglichkeit oder minimales Korrekturpaket
7. Erst dann gilt das Paket als freigabereif

## 5. Routine Minimaler Korrekturabschluss
1. Nur echte Abschlussmaengel zulassen
2. Keine neue Expansion
3. Nur kleinstmoegliche Korrekturen an Abschlussdokument, Matrix und Deprekationslog
4. Abschlusscheckliste erneut durchlaufen

```

---

## RAW_RECORD_035: ASWE_Routinenblatt_Axiomraum_20260423_V2.md

- source_kind: `root_md`
- source_ref: `ASWE_Routinenblatt_Axiomraum_20260423_V2.md`
- sha256: `020e22be91cd2393d32f1e060828e5355e850692aefafebbe875acca02b9645a`
- chars: 2493
- approx_tokens: 624

```markdown
# ASWE_Routinenblatt_Axiomraum_20260423_V2

## Zweck
Dieses Dokument standardisiert die Routinen des Korrekturabschlusspakets auf dem Niveau des rekursiven Matrixstandards.

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
12. Leistungs- und Geschwindigkeitsgrenze pruefen
13. Entscheidung:
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
11. Leistungs- und Geschwindigkeitsgrenze erneut pruefen
12. Revisionsfolgen aktualisieren
13. Deprekationslog aktualisieren
14. Matrix und Abschlussdokument spiegeln

## 3. Routine Axiomrevision -> Folgeebenen-Nachzug
1. Geaendertes Axiom markieren
2. Direkt abgeleitete Folgeelemente identifizieren
3. Indirekt betroffene Folgeelemente identifizieren
4. vererbte Nicht-Geltung und vererbte Spannungen neu pruefen
5. Mehrfachableitungen neu klassifizieren
6. Revisionsfolgen aktualisieren
7. Matrix aktualisieren
8. Deprekationslog aktualisieren
9. Abschlusscheckliste erneut anwenden

## 4. Routine Abschlussfreigabe
1. Abschlussdokument ist intern konsistent
2. Matrix enthaelt alle Pflichtparameter
3. Deprekationslog spiegelt alle Aenderungen
4. Routinen- und Ablaufblatt wurden eingehalten
5. Abschlusscheckliste ist ohne harte Restverletzung durchlaufen
6. Adapterkonzept verhindert direkte Materialisierung
7. Pro-Model-Schleife ergibt:
   - abschlusstauglich ohne weitere Aenderung
   - oder abschlusstauglich mit minimalem Korrekturpaket
8. Erst dann gilt das Paket als freigabereif

## 5. Routine Minimaler Korrekturabschluss
1. Nur echte Abschlussmaengel zulassen
2. Keine neue Expansion
3. Nur kleinstmoegliche Korrekturen an:
   - Abschlussdokument
   - Matrix
   - Deprekationslog
   - Routinen oder Promptdeckung
4. Abschlusscheckliste erneut durchlaufen
5. Pro-Model-Schleife erneut ausfuehren

```

---

## RAW_RECORD_036: ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4.md

- source_kind: `package_dir_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4.md`
- sha256: `fdbd07cbb848cdcc4474b1b98c5ebce57af2ef40842d0459a513e6f3a6eb00c0`
- chars: 3993
- approx_tokens: 999

```markdown
# ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4

## 1. Zweck
Dieses Dokument ist die abschliessende Selbstverbesserungsschleife fuer das finale, repo-materialisierbare Korrekturabschlusspaket. Es dient nicht der offenen Weiterentwicklung, sondern der letzten Freigabepruefung.

## 2. Pflichtdokumente
1. `ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md`
2. `ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md`
3. `ASWE_Finaler_Korrekturauftrag_20260423_V1.md`

## 3. Harte Leitplanken
- Nicht neue Kernaxiome sammeln.
- Nicht neue offene Verbesserungskaskaden erzeugen.
- Nicht Leistungs- oder Geschwindigkeitslogik ueber den Zielbildkern stellen.
- Keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen.
- Nur echte Abschlussmaengel markieren.
- Repo-Materialisierbarkeit heisst: Das Dokument ist alleinstehend und commit-faehig; die konkrete Einbringung in ein Repo bleibt ein bewusster Pfad-/Commitentscheid.

## 4. Direktprompt fuer die Abschlusspruefung

``\`text
Analysiere das finale Korrekturabschlusspaket als letzte Selbstverbesserungsschleife.

Pflichtdokumente:
- ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md
- ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md
- ASWE_Finaler_Korrekturauftrag_20260423_V1.md

Ziel:
Nicht neue Kernaxiome oder offene Verbesserungskaskaden erzeugen, sondern nur pruefen, ob der finale Korrekturauftrag vollstaendig umgesetzt wurde und das materialisierbare Abschlussdokument alleinstehend tragfaehig ist.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bisherigen Leitplanken bindend.

PHASE 1 – UMSETZUNG DES FINALEN KORREKTURAUFTRAGS
- Pruefe, ob M1, M2 und M3 voll umgesetzt wurden:
  - M1: Konfliktlage vs. Spannungen terminologisch harmonisiert
  - M2: Neuaufnahmeroutine um Kollapstest/Aufwertung, Unterordnungstest und Revisionsfolgen erweitert
  - M3: Nachzugsroutine um Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze erweitert

PHASE 2 – ABSCHLUSSKONSISTENZ
- Pruefe, ob das materialisierbare Abschlussdokument in sich widerspruchsfrei ist.
- Pruefe, ob Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen sauber getrennt bleiben.
- Pruefe, ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet gefuehrt werden.

PHASE 3 – REKURSIVE VOLLSTAENDIGKEIT
- Pruefe, ob die enthaltene Matrix oder ihr kanonischer Pruefstandard mindestens folgende Achsen umfasst:
  - Funktion
  - Rueckbindung
  - Trennschaerfe
  - Ebenenangemessenheit
  - Evidenzstatus
  - Quellenrolle
  - Nicht-Geltung
  - vererbte Nicht-Geltung
  - Spannungen
  - vererbte Spannungen
  - Konfliktlage
  - Mehrfachableitung
  - Typ Mehrfachableitung
  - Redundanzstatus
  - Orthogonalitaet
  - Verwaisungsstatus
  - Kollapstest / Aufwertung
  - Unterordnungstest
  - Leistungs- / Geschwindigkeitsgrenze
  - Revisionsfolgen
  - finale Entscheidung

PHASE 4 – PROZESSNACHVOLLZIEHBARKEIT
- Pruefe, ob die Chronik den Selbstverbesserungsprozess von der ersten bis zur letzten Dokumentversion nachvollziehbar dokumentiert.
- Markiere nur echte Luecken, die fuer den Abschluss unverzichtbar sind.

PHASE 5 – REPO-MATERIALISIERBARKEIT
- Pruefe, ob das Dokument alleinstehend in ein Repo uebernommen werden kann.
- Pruefe zugleich, dass die konkrete Pfad- und Commitentscheidung nicht implizit aus dem Dokument erzwungen wird.

PHASE 6 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich
- Wenn ein Korrekturpaket noetig ist, gib nur den kleinsten moeglichen Korrekturauftrag an.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Finalfreigabepruefung_20260423_V1.md
``\`

```

---

## RAW_RECORD_037: ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V3.md

- source_kind: `package_dir_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V3.md`
- sha256: `47c6af647bdf6f59e0c3d25c3d754abc1b2a4bb7c8caf58b9c5b56a452d20cce`
- chars: 2704
- approx_tokens: 676

```markdown
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

```

---

## RAW_RECORD_038: ASWE_Abschlusspaket_README_20260423_V4.md

- source_kind: `package_dir_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Abschlusspaket_README_20260423_V4.md`
- sha256: `9f918ba4f8d147315465d9a5de7d8a290cd746fd8894a45bddbe29701f563668`
- chars: 1002
- approx_tokens: 251

```markdown
# ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4

## Zweck
Dieses Paket ist der finale Korrekturabschluss des Axiomraum-Selbstverbesserungslaufs.

## Kernartefakte
1. `ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md` – alleinstehendes, repo-materialisierbares Hauptdokument.
2. `ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md` – Prozesschronik von der ersten bis zur letzten Dokumentversion.
3. `ASWE_Finaler_Korrekturauftrag_20260423_V1.md` – Ableitung und Umsetzung der letzten Massnahmen.
4. `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4.md` – finaler Pruefprompt.

## Final umgesetzte Massnahmen
- M1: Konfliktlage vs. Spannungen harmonisiert.
- M2: Neuaufnahmeroutine voll auf Matrixstandard erweitert.
- M3: Nachzugsroutine voll auf Matrixstandard erweitert.

## Materialisierungsstatus
Das Hauptdokument ist als einzelnes Markdown-Artefakt materialisierbar. Die konkrete Repo-Pfad- und Commitentscheidung bleibt ein separater Umsetzungsschritt.

```

---

## RAW_RECORD_039: ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md

- source_kind: `package_dir_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md`
- sha256: `e84c05e6d4f03b74c09da653b37f8856018e7a32250dcecbddfd1266ed5874c9`
- chars: 56303
- approx_tokens: 14076

```markdown
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

```

---

## RAW_RECORD_040: ASWE_Finaler_Korrekturauftrag_20260423_V1.md

- source_kind: `package_dir_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Finaler_Korrekturauftrag_20260423_V1.md`
- sha256: `bb7ab183e6000cc5dbd4279dea730a410a556ba43fcea24cabe12b8fe6c6f010`
- chars: 1851
- approx_tokens: 463

```markdown
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

```

---

## RAW_RECORD_041: ASWE_Routinenblatt_Axiomraum_20260423_V3.md

- source_kind: `package_dir_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Routinenblatt_Axiomraum_20260423_V3.md`
- sha256: `0b17c348c60df8b956001b5009426542b6da56dbac49ad4b18545ef8ae9810b0`
- chars: 3570
- approx_tokens: 893

```markdown
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

```

---

## RAW_RECORD_042: ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md

- source_kind: `package_dir_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md`
- sha256: `d0541dd85ffbd00b2c4bd55efdbbd7791ff1e0c0932798ea36a069e8dbf473f2`
- chars: 5591
- approx_tokens: 1398

```markdown
# ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1

## Zweck
Dieses Dokument macht den Selbstverbesserungsprozess des Axiomraum-Pakets von der ersten Idee bis zur finalen, repo-materialisierbaren Korrekturfassung nachvollziehbar.

## 1. Ausgangsimpuls
Der Lauf begann mit der Idee, aus Begriffen zur LLM-Verhaltenssteuerung und zur ASWE_KnowledgeOS-Architektur zentrale Gruendungsaxiome abzuleiten. Frueh standen OCR-/Brainstorming-Impulse, Sprachdisziplin, Promptanalyse und die Unterscheidung von LLM-Verhaltenssteuerung einerseits und Architekturbegriffen andererseits im Vordergrund.

## 2. Erste Prompt- und Axiomphasen
Zunaechst wurden Prompts analysiert und verbessert:
- Zielbild,
- Gegenstand,
- Geltungsbereich,
- epistemischer Status,
- Abstraktionsniveau,
- Phasentrennung,
- Quellenregel,
- Ausgabekontrakt.

Die fruehen Axiomdokumente fuehrten die Grundtrennung ein:
- A: LLM-Verhaltenssteuerung
- B: ASWE_KnowledgeOS-Architektur
- K: Kopplung zwischen A und B

## 3. Sprachgovernance und Selbstanwendung
Im weiteren Lauf wurde deutlich, dass der Raum nicht nur inhaltlich, sondern auch sprachlich und methodisch kontrolliert werden muss:
- deutsche Primaerbegriffe,
- englische Aliase nur begruendet,
- Vermeidung schwacher Hybridformen,
- Terminologiepolitik,
- Selbstanwendung der eigenen Standards auf das Dokument selbst.

## 4. Hauptdokument-Revisionen
Das Hauptdokument D1 wurde unter Rueckgriff auf mehrere Verbesserungsschleifen revidiert. Zentrale Zielbildkriterien wurden stabilisiert:
- Kernaxiome bleiben Kernaxiome.
- Externe wissenschaftliche Quellen bleiben primaer.
- A und B bleiben getrennt; Kopplungen nur explizit.
- Governierte statt freie Selbstverbesserung bleibt bindend.
- Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.

## 5. Metaqualitaet des Kandidatenraums
Danach wurde der Kandidatenraum selbst entlang von Metaqualitaetsachsen geprueft:
- Vollstaendigkeit
- Saettigung
- Redundanzarmut / Minimalitaet
- Widerspruchsfreiheit / Konsistenz
- Orthogonalitaet
- Ableitungsgeschlossenheit
- Verwaisung

Der Befund: Der Kernaxiomenraum war nicht mehr primaer expansionsbeduerftig, sondern konsolidierungsreif.

## 6. Ausweitung auf Folgeebenen
Ein wichtiger Wendepunkt war die Einsicht, dass dieselben Standards auch fuer Folgeebenen gelten muessen:
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen.

Daraus entstanden Pruefrahmen und Folgeebenen-Audits. Der Engpass verlagerte sich von neuen Axiomen zu:
- Trennschaerfe,
- Rueckbindung,
- Ebenenangemessenheit,
- Mehrfachableitung,
- Vererbungslogik,
- Umklassifizierung.

## 7. Handlungsfolgen, Leistungslogik und Kandidatensiebung
Weitere Schleifen leiteten Handlungsfolgen ab:
- Folgeebenen-Inventar stabilisieren,
- Fehlklassifikationen entscheiden,
- indirekte Rueckbindungen aufloesen,
- Mehrfachableitungen typisieren,
- Nicht-Geltung und Spannungen vererben,
- Leistungs- und Geschwindigkeitsaspekte nachgeordnet behandeln.

Dabei wurden unter anderem eingefuehrt:
- Ausfuehrungseffizienz,
- Prueftiefenangemessenheit,
- Ausnahmebehandlungs-Explizitheit,
- Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision,
- Ableitungsnachvollziehbarkeit,
- Vererbungskonsistenz,
- Rueckrollbarkeit.

## 8. Erste Abschlusspakete
Ein erstes Abschlusspaket fuehrte zusammen:
- Abschlussdokument,
- rekursive Pruefmatrix,
- Deprekations- und Umschichtungslog,
- Adapterkonzept,
- Pro-Model-Schleife.

Die erneute Pruefung zeigte aber, dass noch nicht alle Matrixachsen, Routinen und Ablaeufe vollstaendig rekursiv geschlossen waren.

## 9. Nachruestfassung V2
Die Nachruestfassung V2 ergaenzte:
- eine erweiterte Matrix,
- Routinenblatt,
- Ablaufblatt,
- Abschlusscheckliste,
- verbessertes Adapterkonzept,
- Pro-Model-Pruefprompt.

Sie war stark, aber die Abschlusspruefung identifizierte noch Restmaengel:
- Konfliktlage war nicht sauber gegen Spannungen harmonisiert.
- Neuaufnahmeroutine fehlten Kollapstest/Aufwertung, Unterordnungstest und Revisionsfolgen.
- Nachzugsroutine fehlten erneute Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze.

## 10. Korrekturabschluss V3
Das V3-Paket korrigierte bereits:
- die Spiegelung der Kopplungsfolge `Axiomrevision erzwingt Folgeebenen-Nachzug` im Deprekationslog,
- die Matrixdeckung im Pro-Model-Prompt,
- grosse Teile der Routinenlogik.

Die finale Abschlusspruefung V2 zeigte jedoch noch drei punktuelle Restmassnahmen.

## 11. Finaler materialisierbarer Abschluss V4
Das finale Paket V4 setzt diese Restmassnahmen um:
- `Konfliktlage` wird als Oberbegriff fuer Spannungen, vererbte Spannungen, konflikttraechtige Mehrfachableitungen und Regel-/Ebenen-/Zielbildkollisionen definiert.
- Die Neuaufnahmeroutine erhaelt Kollapstest/Aufwertung, Unterordnungstest und Revisionsfolgen.
- Die Nachzugsroutine erhaelt erneute Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze.
- Das Abschlussdokument wird als alleinstehendes, repo-materialisierbares Markdown-Artefakt konsolidiert.

## 12. Prozessurteil
Der Prozess ist von Expansion zu Konsolidierung, von Konsolidierung zu rekursiver Vollpruefung und von rekursiver Vollpruefung zu materialisierbarer Abschlussfaehigkeit uebergegangen.

Das finale Zielbild bleibt:
- interne Konsistenz,
- rekursive Vollstaendigkeit,
- saubere Spiegelung,
- Vollabdeckung der Pruefparameter,
- klare Routinen,
- dokumentierte Prozessprovenienz,
- kontrollierte Materialisierbarkeit ohne implizite Repo-Schreibentscheidung.

```

---

## RAW_RECORD_043: ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_20260423_V1.zip!ASWE_Abschlusspaket_Axiomraum_20260423_V1/ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V1.md`
- sha256: `1c26ebd06f8ef5a74e638bcb7a7eae3977b4992a4762e32b2e64ade9b43a22e2`
- chars: 4848
- approx_tokens: 1212

```markdown
# ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V1

## 1. Zweck
Dieses Dokument ist die **abschliessende Selbstverbesserungsschleife** fuer ein starkes Modell im Pro-Kontext. Es dient nicht der offenen Weiterentwicklung, sondern der finalen, rekursiven Pruefung des Abschlussstandes.

## 2. Ziel
Das Modell soll:
- den kanonischen Abschlussstand pruefen,
- die rekursive Pruefmatrix auf Vollstaendigkeit und Konsistenz kontrollieren,
- das Deprekations- und Umschichtungslog gegen den Abschlussstand spiegeln,
- Repo-Integration nicht direkt ausloesen,
- und nur noch verbleibende echte Abschlussmaengel markieren.

## 3. Eingabedokumente
Pflichtinput fuer die Schleife:
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V1.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V1.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V1.md`
4. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V1.md`

## 4. Harte Leitplanken
- Nicht neue Kernaxiome sammeln.
- Nicht neue offene Verbesserungskaskaden erzeugen.
- Nicht direkte Repo-Integration vorschlagen.
- Nicht Leistungs- oder Geschwindigkeitslogik ueber den Zielbildkern stellen.
- Keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen.

## 5. Abschlussauftrag
Das Modell soll nur noch diese Fragen beantworten:
1. Ist der Abschlussstand in sich konsistent?
2. Ist die rekursive Pruefung aller Elemente vollstaendig genug?
3. Sind Deprekationen, Umklassifikationen und Neuaufnahmen sauber gespiegelt?
4. Gibt es noch echte Restkollisionen, Verwaisungen oder Fehlklassifikationen?
5. Fehlt noch etwas, das fuer den **Abschluss** und nicht fuer spaetere Weiterentwicklung unverzichtbar ist?

## 6. Erwartete Ausgabestruktur
1. Voranalyse
2. Abschlusskonsistenz
3. Rekursive Vollstaendigkeitspruefung
4. Spiegelung von Abschlussdokument und Deprekationslog
5. Verbleibende Abschlussmaengel
6. Endurteil
7. Falls noetig: minimaler Korrekturauftrag
8. Selbstpruefung

## 7. Direktprompt fuer das Pro-Modell

``\`text
Analysiere das vorliegende Abschlusspaket als finale Selbstverbesserungsschleife.

Pflichtdokumente:
- ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V1.md
- ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V1.md
- ASWE_Deprekations_Umschichtungslog_20260423_V1.md
- ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V1.md

Ziel:
Nicht neue Kernaxiome oder offene Verbesserungskaskaden erzeugen, sondern den Abschlussstand final pruefen und nur noch echte verbleibende Abschlussmaengel markieren.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bisherigen Leitplanken bindend.

PHASE 1 – ABSCHLUSSKONSISTENZ
- Pruefe, ob das Abschlussdokument in sich widerspruchsfrei ist.
- Pruefe, ob Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen sauber getrennt bleiben.
- Pruefe, ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet gefuehrt werden.

PHASE 2 – REKURSIVE VOLLSTAENDIGKEITSPRUEFUNG
- Pruefe anhand der rekursiven Pruefmatrix, ob fuer alle Elemente von Kernaxiom bis operative Regel mindestens hinreichend vorliegen:
  - Funktion
  - Rueckbindung
  - Trennschaerfe
  - Evidenzstatus
  - Nicht-Geltung
  - Konfliktlage
  - Mehrfachableitung
  - finale Entscheidung
- Markiere nur echte Luecken.

PHASE 3 – SPIEGELUNG MIT DEM DEPREKATIONS- UND UMSCHICHTUNGSLOG
- Pruefe, ob alle Umklassifikationen, Streichungen, Verengungen und Neuaufnahmen konsistent zwischen Abschlussdokument und Log gespiegelt sind.
- Markiere jede Inkonsistenz explizit.

PHASE 4 – KEINE FALSCHE REPO-INTEGRATION
- Pruefe, ob das Adapterkonzept konsequent verhindert, dass aus dem Abschlusspaket direkt Repo-Materialisierung oder SSOT-Umschreibung abgeleitet wird.
- Markiere nur echte Restfehler.

PHASE 5 – VERBLEIBENDE ABSCHLUSSMAENGEL
- Liste nur Maengel, die fuer den Abschluss unverzichtbar sind.
- Trenne:
  - Muss vor Abschluss korrigiert werden
  - kann bewusst als spaetere Weiterentwicklung offen bleiben

PHASE 6 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich
- Wenn ein Korrekturpaket noetig ist, gib nur den kleinsten moeglichen Korrekturauftrag an.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Abschlusspruefung_ProModel_20260423_V1.md
``\`

## 8. Schlussregel
Diese Schleife ist die **letzte offene Selbstverbesserungsschleife** dieses Pakets. Jeder darueber hinausgehende Schritt ist entweder:
- minimaler Korrekturabschluss,
- oder ein neuer, separat begruendeter Arbeitsstrang.

```

---

## RAW_RECORD_044: ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_20260423_V1.zip!ASWE_Abschlusspaket_Axiomraum_20260423_V1/ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V1.md`
- sha256: `04c26bd64cd65e1a0702e6e949b84649c2a040f4696d243fa2ec1a8cba120438`
- chars: 6754
- approx_tokens: 1689

```markdown
# ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V1

## 1. Voranalyse

### Zielbild
Dieses Dokument fixiert den **kanonischen Endstand** des bisherigen Revisions- und Verbesserungslaufs fuer den gesamten Kernaxiomen- und Folgeebenenraum.

Der Raum bleibt:
- begrifflich diszipliniert,
- extern primaer gestuetzt,
- rekursiv geprueft,
- und auf Konsolidierung statt Expansion ausgerichtet.

### Gegenstand
Gegenstand sind:
- Kernaxiome,
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen,
- sowie deren finale Trennung, Rueckbindung und nachgeordnete Leistungslogik.

### Geltungsbereich
Dieses Dokument gilt als kanonischer Abschlussstand fuer den bisherigen Diskursraum, nicht als Repo-Write oder Implementierungsauftrag.

### Nicht-Geltung
Nicht Gegenstand sind:
- neue breite Kernaxiomensammlung,
- direkte Repo-Materialisierung,
- lokale Implementierung,
- Betriebsoptimierung als Leitbildersatz.

## 2. Leitplanken des Endstands
1. Kernaxiome bleiben Kernaxiome.
2. Externe wissenschaftliche Quellen bleiben primaer.
3. A, B und Kopplung bleiben getrennt.
4. Governierte statt freie Selbstverbesserung bleibt bindend.
5. Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
6. Leistungs- und Geschwindigkeitsaspekte optimieren nur nachgeordnet; sie steuern nicht den Zielbildkern.

## 3. Finaler Kernaxiomenraum

### A. Kernaxiome fuer LLM-Verhaltenssteuerung
- **A1 Ziel- und Geltungsbindung**  
  Jede verhaltenssteuernde Instruktion bindet Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung vor Ausfuehrung.
- **A2 Epistemische Trennung**  
  Beobachtung, Aussage, Beleg, Hypothese, Kriterium und Empfehlung duerfen nicht stillschweigend kollabieren.
- **A3 Auditierbarkeit und Unsicherheitsmarkierung**  
  Pruefpflichtige Arbeit markiert Annahmen, Unsicherheiten, Belegbasis und Entscheidungsschritte.
- **A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht**  
  Mehrstufige Arbeit wird nur in begrenzten, rueckgabefaehigen und uebersteuerbaren Schritten ausgefuehrt.
- **A5 Verhaltenstestbarkeit**  
  Verhalten wird anhand expliziter, reproduzierbarer und verifizierbarer Tests bewertet.

### B. Kernaxiome fuer ASWE_KnowledgeOS-Architektur
- **B1 Terminologische Primaerordnung**  
  Begriff vor Benennung, Benennung vor Regelung, Regelung vor Prozess.
- **B2 Ontologische Trennschaerfe**  
  Kategorie, Instanz, Beobachtung, Aussage, Beleg, Regel, Rolle und Adapterflaeche duerfen nicht kollabieren.
- **B3 Provenienz und Referenzierbarkeit**  
  Wissen, Zustaende, Entscheidungen und Belege muessen adressierbar und herkunftsgebunden sein.
- **B4 Pfad- und Schnittstellenexplizitheit**  
  Uebergaenge zwischen Erkenntnis-, Steuerungs- und Ausfuehrungspfaden duerfen nur explizit erfolgen.
- **B5 Governierte Evolvierbarkeit**  
  Veraenderung bleibt moeglich, aber nur unter Drift-Sichtbarkeit, Pruefbarkeit und Revisionsfaehigkeit.

### K. Kopplungsaxiome
- **K1 Beobachtung-Aussage-Beleg**  
  Beobachtung ist nicht Aussage, Aussage ist nicht Beleg.
- **K2 Evaluation vor Operationalisierung**  
  Vorpruefung und Bewertung gehen Materialisierung und Operationalisierung voraus.
- **K3 Spiegel-/Adapter-Asymmetrie**  
  Spiegelungen und Adapter sind abgeleitete Flaechen, nicht semantischer Ursprung.

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

## 5. Nachgeordnete Leistungs- und Geschwindigkeitslogik
Leistungs- und Geschwindigkeitsaspekte sind in diesem Endstand **nicht basal**, sondern nachgeordnet.

### Zugelassene Formen
- **Ausfuehrungseffizienz** als sekundaeres Qualitaetsattribut
- **Prueftiefenangemessenheit** als operative Regel

### Nicht als eigenstaendige feste Raumkandidaten gefuehrt
- Antwortzeitangemessenheit
- Leistungsstabilitaet
- leitplankenkonforme Leistungsoptimierung

### Harte Grenze
Beschleunigung, verringerte Prueftiefe oder Effizienzsteigerung sind unzulaessig, wenn sie:
- Rueckbindung,
- Trennschaerfe,
- Leitplanken,
- Konfliktklaerung,
- oder Zielbildschutz
unterlaufen.

## 6. Offene Restrisiken
- duale Lesbarkeit kann unter hoeherem Automationsgrad spaeter an Rang gewinnen.
- Kontrollierbarkeit bleibt bewusst eng und nicht als Sammelbegriff stabilisiert.
- evaluator-kritische Testdisziplin braucht bei weiterer Reifung moeglicherweise feinere Unterdefinition.
- Repo-Integration und Materialisierung sind absichtlich noch **nicht** aus diesem Dokument heraus entschieden.

## 7. Abschlussurteil
Der Raum ist mit diesem Dokument:
- **konsolidiert**,
- **rekursiv geprueft**,
- **trennschaerfer als im Vorlauf**,
- und als **selbststaendiges Abschlusspaket** belastbar.

```

---

## RAW_RECORD_045: ASWE_Abschlusspaket_README_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_20260423_V1.zip!ASWE_Abschlusspaket_Axiomraum_20260423_V1/ASWE_Abschlusspaket_README_20260423_V1.md`
- sha256: `8a49171ef284fc6dcba3ec36ca01539e3027c0edb6868b4cd90eda33ffa750da`
- chars: 2230
- approx_tokens: 558

```markdown
# ASWE_Abschlusspaket_Axiomraum_20260423_V1

## Zweck
Dieses Abschlusspaket fuehrt den bisherigen Verbesserungs- und Revisionslauf in einen **selbstkonsistenten, eigenstaendigen Paketstand** ueber. Das Paket ist absichtlich **repo-unabhaengig** geschlossen und trennt:

1. den **kanonischen Endstand** des Kernaxiomen- und Folgeebenenraums,
2. den **rekursiven Pruefstand** aller Elemente von Kernaxiom bis operative Regel,
3. das **Deprekations- und Umschichtungslog**,
4. die **Repo- und Materialisierungs-Neuausrichtung** als Adapterproblem,
5. die **abschliessende Selbstverbesserungsschleife** fuer ein Pro-Modell.

## Paketinhalt
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V1.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V1.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V1.md`
4. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V1.md`
5. `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V1.md`

## Paketlogik
- Das Abschlussdokument ist der **kanonische Ergebnisstand**.
- Die rekursive Pruefmatrix ist der **vollstaendige Audit- und Nachweisstand**.
- Das Deprekations- und Umschichtungslog sichert **Revisionsprovenienz**.
- Das Adapterkonzept ersetzt die zuvor verworfene direkte Repo-Integrationslogik.
- Das Pro-Model-Dokument ist die **abschliessende Selbstverbesserungsschleife** inkl. Direktprompt.

## Harte Entscheidungen dieses Pakets
- Keine weitere breite Expansion des Kernaxiomenraums.
- Folgeebenen werden nur selektiv erweitert.
- Leistungs- und Geschwindigkeitsaspekte bleiben **nachgeordnet**.
- Keine implizite Aufwertung von Folgeelementen zu Kernaxiomen.
- Keine direkte Repo-Materialisierung aus diesem Paket heraus.

## Nutzung
1. Zuerst das Abschlussdokument lesen.
2. Danach die rekursive Pruefmatrix fuer Audit und Vollstaendigkeitskontrolle nutzen.
3. Anschliessend das Deprekations- und Umschichtungslog fuer alle Grenz- und Aenderungsfaelle konsultieren.
4. Repo-Integration nur ueber das Adapterkonzept denken.
5. Abschliessende Pruefung mit dem Pro-Model-Dokument ausfuehren.

## Nicht-Ziel
Dieses Paket ist **kein** direkter Repo-Write, **keine** SSOT-Umschreibung und **keine** Runtime- oder Rollenmaterialisierung.

```

---

## RAW_RECORD_046: ASWE_Deprekations_Umschichtungslog_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_20260423_V1.zip!ASWE_Abschlusspaket_Axiomraum_20260423_V1/ASWE_Deprekations_Umschichtungslog_20260423_V1.md`
- sha256: `6fab7e0d7e63faa75d969ec1ec7d49a912045149f705195c4e0e5d57c1e99b82`
- chars: 3770
- approx_tokens: 943

```markdown
# ASWE_Deprekations_Umschichtungslog_20260423_V1

## Zweck
Dieses Dokument protokolliert alle relevanten Aenderungen zwischen frueheren Zwischenstaenden und dem kanonischen Abschlussstand.

## 1. Umklassifizierungen

### Materialisierungsdisziplin
- **Bisher:** sekundaeres Qualitaetsattribut oder grenzwertiger Begriff
- **Final:** starkes Designprinzip
- **Grund:** beschreibt Konstruktions- und Uebernahmelogik, nicht primaer eine bewertende Gueteeigenschaft

### Deprekationsdisziplin
- **Bisher:** moegliches Designprinzip
- **Final:** operative Regel in der Form "Deprekation statt stiller Entfernung markieren"
- **Grund:** handlungsnaher als strukturleitender Begriff

## 2. Verengungen

### Kontrollierbarkeit
- **Bisher:** zu breiter Sammelbegriff
- **Final:** sekundaeres Qualitaetsattribut in enger Fassung
- **Grund:** nur evaluative Eigenschaft von Eingriffs- und Steuerbarkeit; kein Basalbegriff

### Persistenz
- **Bisher:** breit und unscharf
- **Final:** sekundaeres Qualitaetsattribut in enger Fassung
- **Grund:** gilt nur fuer persistenzpflichtige Artefakte, nicht fuer fluechtige Hilfsnotizen

### duale Lesbarkeit
- **Bisher:** indirekt rueckgebunden, rangnah
- **Final:** sekundaeres Qualitaetsattribut in enger Fassung
- **Grund:** relevant, aber nicht basal; stark automationssensitiv

### Wahrheitsquellenstabilitaet
- **Bisher:** grenznah zu Designprinzip
- **Final:** sekundaeres Qualitaetsattribut in enger Fassung
- **Grund:** evaluatives Ergebnis aus K3/B2/B3, kein eigenstaendiger Konstruktionsgrundsatz

### driftwachsame Revisionsdisziplin
- **Bisher:** diffus und mehrfach rueckgebunden
- **Final:** starkes Designprinzip in enger Fassung
- **Grund:** auf driftbezogene Revisionspruefung beschraenkt

### evaluator-kritische Testdisziplin
- **Bisher:** breit
- **Final:** starkes Designprinzip in enger Fassung
- **Grund:** auf evaluator-bezogene Prueffehler fokussiert

## 3. Entfernung aus dem festen Raum

### Portierbarkeit
- **Bisher:** starkes Designprinzip
- **Final:** nicht mehr als festes eigenstaendiges Raumelement gefuehrt
- **Grund:** zu unscharf; eher Nutzungseffekt oder abgeleitete Uebertragbarkeit

### Evidenzdisziplin
- **Bisher:** sekundaeres Qualitaetsattribut
- **Final:** nicht mehr als eigenstaendiges festes Attribut gefuehrt
- **Grund:** funktional von epistemischer Staffelung, argumentativer Nachvollziehbarkeit, K1/K2 und operativen Regeln absorbiert

### Antwortzeitangemessenheit
- **Bisher:** moeglicher neuer Kandidat
- **Final:** nicht als eigenstaendiger Raumkandidat
- **Grund:** zu kontextnah; Unterfall von Ausfuehrungseffizienz

### Leistungsstabilitaet
- **Bisher:** moeglicher neuer Kandidat
- **Final:** nicht aufgenommen
- **Grund:** zu spaetphasig und derzeit ohne zwingenden Mehrwert

## 4. Aufnahme neuer finaler Raumkandidaten

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

## 5. Begriffe, die bewusst nur Audit- oder Reservebegriffe bleiben
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

## 6. Schlussregel
Jeder kuenftige neue Begriff muss gegen dieses Log geprueft werden:
- Ist er wirklich neuer Raumkandidat?
- Oder nur Auditkriterium, Unterfall, Sammelbegriff oder Nutzungseffekt?

```

---

## RAW_RECORD_047: ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_20260423_V1.zip!ASWE_Abschlusspaket_Axiomraum_20260423_V1/ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V1.md`
- sha256: `93a50f4eabbfba3c62b809d5346da4336331718fbdee52654c79218acbd23b3a`
- chars: 12925
- approx_tokens: 3232

```markdown
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
```

---

## RAW_RECORD_048: ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_20260423_V1.zip!ASWE_Abschlusspaket_Axiomraum_20260423_V1/ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V1.md`
- sha256: `6131721251eecda0532480f2f3d60bc7232ea9f44e906925b97cc333d31ee9a8`
- chars: 3034
- approx_tokens: 759

```markdown
# ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V1

## 1. Ausgangspunkt
Die zuvor vorgeschlagene direkte Repo-Integrationslogik wird in diesem Paket **nicht** weiterverfolgt. Dieses Dokument setzt daher absichtlich einen **anderen Grundsatz**:

> Erst konzeptionelle Schliessung als selbststaendiges Paket, dann explizite Adapter- und Materialisierungsentscheidung.

## 2. Grundsatzentscheidung
Repo-Integration ist **nicht** die direkte Fortschreibung des Dokumentenraums in bestehende Pfade, Writer oder SSOT-Artefakte.  
Stattdessen ist Repo-Integration ein **separates Adapterproblem** mit eigenem Vertrag.

## 3. Was nicht getan wird
Aus diesem Paket heraus werden **nicht** vorgenommen:
- direkte SSOT-Umschreibung
- direkte Architecture-Canonicalization
- direkte Writer- oder Runtime-Materialisierung
- direkte `.codex`-Rollenmaterialisierung
- direkte Einspeisung in bestehende Pfade ohne Adaptervertrag

## 4. Neue Integrationslogik
Vor jeder Repo-Integration muessen zuerst fuenf Adapterfragen explizit beantwortet werden:

### A. Zielobjektfrage
In welches konkrete Repo-Artefakt oder welche Artefaktfamilie soll ueberhaupt integriert werden?

### B. Aequivalenzfrage
Welcher Teil des Abschlussraums ist:
- kanonischer Inhalt,
- Aenderungslog,
- Auditbeleg,
- Reserve-/Nichtaufnahmebegriff,
- oder Integrationsanweisung?

### C. Transformationsfrage
Welche inhaltliche Umformung ist fuer das Zielobjekt zulaessig?
- 1:1 Uebernahme
- Verdichtung
- Zerlegung in mehrere Artefakte
- Umformung in Payload/Schema
- vorlaeufige Nicht-Integration

### D. Autorisationsfrage
Wer oder welches Verfahren darf den Uebergang in Repo-Artefakte freigeben?

### E. Rueckrollfrage
Wie wird eine fehlerhafte Materialisierung dokumentiert, ruecknehmbar gemacht und vom konzeptionellen Paketstand getrennt?

## 5. Mindestartefakte fuer spaetere Repo-Integration
Eine spaetere Repo-Integration sollte **erst dann** erfolgen, wenn mindestens diese Zusatzartefakte existieren:

1. **Integrations-Mapping**
   - Quellelement
   - Zielartefakt
   - Transformationsmodus
   - Autorisationsstatus

2. **Materialisierungs-Allowlist**
   - was darf jetzt materialisiert werden
   - was darf ausdruecklich noch nicht materialisiert werden

3. **Rueckroll- und Deprekationsprotokoll**
   - wie werden Fehluebernahmen rueckgaengig gemacht
   - wie werden ersetzte Begriffe protokolliert

4. **Abnahmekriterien**
   - inhaltliche Aequivalenz
   - Trennschaerfeerhalt
   - Rueckbindungs- und Leitplankenschutz
   - keine implizite Rangverschiebung

## 6. Konzeptionelle Folgeentscheidung
Die naechste sinnvolle Arbeit ist **nicht** Repo-Write, sondern ein **separates Integrations-Adapterdokument**, falls und nur falls eine konkrete Materialisierung wirklich benoetigt wird.

## 7. Schlussurteil
Dieses Abschlusspaket ist absichtlich:
- **selbststaendig**
- **repo-unabhaengig geschlossen**
- **materialisierungsfrei**
- und damit erst sinnvoll in einen spaeteren, ausdruecklich vertraglich geregelten Integrationsschritt ueberfuehrbar.

```

---

## RAW_RECORD_049: ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4.zip!ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4.md`
- sha256: `fdbd07cbb848cdcc4474b1b98c5ebce57af2ef40842d0459a513e6f3a6eb00c0`
- chars: 3993
- approx_tokens: 999

```markdown
# ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4

## 1. Zweck
Dieses Dokument ist die abschliessende Selbstverbesserungsschleife fuer das finale, repo-materialisierbare Korrekturabschlusspaket. Es dient nicht der offenen Weiterentwicklung, sondern der letzten Freigabepruefung.

## 2. Pflichtdokumente
1. `ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md`
2. `ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md`
3. `ASWE_Finaler_Korrekturauftrag_20260423_V1.md`

## 3. Harte Leitplanken
- Nicht neue Kernaxiome sammeln.
- Nicht neue offene Verbesserungskaskaden erzeugen.
- Nicht Leistungs- oder Geschwindigkeitslogik ueber den Zielbildkern stellen.
- Keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen.
- Nur echte Abschlussmaengel markieren.
- Repo-Materialisierbarkeit heisst: Das Dokument ist alleinstehend und commit-faehig; die konkrete Einbringung in ein Repo bleibt ein bewusster Pfad-/Commitentscheid.

## 4. Direktprompt fuer die Abschlusspruefung

``\`text
Analysiere das finale Korrekturabschlusspaket als letzte Selbstverbesserungsschleife.

Pflichtdokumente:
- ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md
- ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md
- ASWE_Finaler_Korrekturauftrag_20260423_V1.md

Ziel:
Nicht neue Kernaxiome oder offene Verbesserungskaskaden erzeugen, sondern nur pruefen, ob der finale Korrekturauftrag vollstaendig umgesetzt wurde und das materialisierbare Abschlussdokument alleinstehend tragfaehig ist.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bisherigen Leitplanken bindend.

PHASE 1 – UMSETZUNG DES FINALEN KORREKTURAUFTRAGS
- Pruefe, ob M1, M2 und M3 voll umgesetzt wurden:
  - M1: Konfliktlage vs. Spannungen terminologisch harmonisiert
  - M2: Neuaufnahmeroutine um Kollapstest/Aufwertung, Unterordnungstest und Revisionsfolgen erweitert
  - M3: Nachzugsroutine um Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze erweitert

PHASE 2 – ABSCHLUSSKONSISTENZ
- Pruefe, ob das materialisierbare Abschlussdokument in sich widerspruchsfrei ist.
- Pruefe, ob Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen sauber getrennt bleiben.
- Pruefe, ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet gefuehrt werden.

PHASE 3 – REKURSIVE VOLLSTAENDIGKEIT
- Pruefe, ob die enthaltene Matrix oder ihr kanonischer Pruefstandard mindestens folgende Achsen umfasst:
  - Funktion
  - Rueckbindung
  - Trennschaerfe
  - Ebenenangemessenheit
  - Evidenzstatus
  - Quellenrolle
  - Nicht-Geltung
  - vererbte Nicht-Geltung
  - Spannungen
  - vererbte Spannungen
  - Konfliktlage
  - Mehrfachableitung
  - Typ Mehrfachableitung
  - Redundanzstatus
  - Orthogonalitaet
  - Verwaisungsstatus
  - Kollapstest / Aufwertung
  - Unterordnungstest
  - Leistungs- / Geschwindigkeitsgrenze
  - Revisionsfolgen
  - finale Entscheidung

PHASE 4 – PROZESSNACHVOLLZIEHBARKEIT
- Pruefe, ob die Chronik den Selbstverbesserungsprozess von der ersten bis zur letzten Dokumentversion nachvollziehbar dokumentiert.
- Markiere nur echte Luecken, die fuer den Abschluss unverzichtbar sind.

PHASE 5 – REPO-MATERIALISIERBARKEIT
- Pruefe, ob das Dokument alleinstehend in ein Repo uebernommen werden kann.
- Pruefe zugleich, dass die konkrete Pfad- und Commitentscheidung nicht implizit aus dem Dokument erzwungen wird.

PHASE 6 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich
- Wenn ein Korrekturpaket noetig ist, gib nur den kleinsten moeglichen Korrekturauftrag an.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Finalfreigabepruefung_20260423_V1.md
``\`

```

---

## RAW_RECORD_050: ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4.zip!ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V3.md`
- sha256: `47c6af647bdf6f59e0c3d25c3d754abc1b2a4bb7c8caf58b9c5b56a452d20cce`
- chars: 2704
- approx_tokens: 676

```markdown
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

```

---

## RAW_RECORD_051: ASWE_Abschlusspaket_README_20260423_V4.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4.zip!ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Abschlusspaket_README_20260423_V4.md`
- sha256: `9f918ba4f8d147315465d9a5de7d8a290cd746fd8894a45bddbe29701f563668`
- chars: 1002
- approx_tokens: 251

```markdown
# ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4

## Zweck
Dieses Paket ist der finale Korrekturabschluss des Axiomraum-Selbstverbesserungslaufs.

## Kernartefakte
1. `ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md` – alleinstehendes, repo-materialisierbares Hauptdokument.
2. `ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md` – Prozesschronik von der ersten bis zur letzten Dokumentversion.
3. `ASWE_Finaler_Korrekturauftrag_20260423_V1.md` – Ableitung und Umsetzung der letzten Massnahmen.
4. `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V4.md` – finaler Pruefprompt.

## Final umgesetzte Massnahmen
- M1: Konfliktlage vs. Spannungen harmonisiert.
- M2: Neuaufnahmeroutine voll auf Matrixstandard erweitert.
- M3: Nachzugsroutine voll auf Matrixstandard erweitert.

## Materialisierungsstatus
Das Hauptdokument ist als einzelnes Markdown-Artefakt materialisierbar. Die konkrete Repo-Pfad- und Commitentscheidung bleibt ein separater Umsetzungsschritt.

```

---

## RAW_RECORD_052: ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4.zip!ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md`
- sha256: `e84c05e6d4f03b74c09da653b37f8856018e7a32250dcecbddfd1266ed5874c9`
- chars: 56303
- approx_tokens: 14076

```markdown
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

```

---

## RAW_RECORD_053: ASWE_Finaler_Korrekturauftrag_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4.zip!ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Finaler_Korrekturauftrag_20260423_V1.md`
- sha256: `bb7ab183e6000cc5dbd4279dea730a410a556ba43fcea24cabe12b8fe6c6f010`
- chars: 1851
- approx_tokens: 463

```markdown
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

```

---

## RAW_RECORD_054: ASWE_Routinenblatt_Axiomraum_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4.zip!ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Routinenblatt_Axiomraum_20260423_V3.md`
- sha256: `0b17c348c60df8b956001b5009426542b6da56dbac49ad4b18545ef8ae9810b0`
- chars: 3570
- approx_tokens: 893

```markdown
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

```

---

## RAW_RECORD_055: ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4.zip!ASWE_Abschlusspaket_Axiomraum_Final_Materialisierbar_20260423_V4/ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md`
- sha256: `d0541dd85ffbd00b2c4bd55efdbbd7791ff1e0c0932798ea36a069e8dbf473f2`
- chars: 5591
- approx_tokens: 1398

```markdown
# ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1

## Zweck
Dieses Dokument macht den Selbstverbesserungsprozess des Axiomraum-Pakets von der ersten Idee bis zur finalen, repo-materialisierbaren Korrekturfassung nachvollziehbar.

## 1. Ausgangsimpuls
Der Lauf begann mit der Idee, aus Begriffen zur LLM-Verhaltenssteuerung und zur ASWE_KnowledgeOS-Architektur zentrale Gruendungsaxiome abzuleiten. Frueh standen OCR-/Brainstorming-Impulse, Sprachdisziplin, Promptanalyse und die Unterscheidung von LLM-Verhaltenssteuerung einerseits und Architekturbegriffen andererseits im Vordergrund.

## 2. Erste Prompt- und Axiomphasen
Zunaechst wurden Prompts analysiert und verbessert:
- Zielbild,
- Gegenstand,
- Geltungsbereich,
- epistemischer Status,
- Abstraktionsniveau,
- Phasentrennung,
- Quellenregel,
- Ausgabekontrakt.

Die fruehen Axiomdokumente fuehrten die Grundtrennung ein:
- A: LLM-Verhaltenssteuerung
- B: ASWE_KnowledgeOS-Architektur
- K: Kopplung zwischen A und B

## 3. Sprachgovernance und Selbstanwendung
Im weiteren Lauf wurde deutlich, dass der Raum nicht nur inhaltlich, sondern auch sprachlich und methodisch kontrolliert werden muss:
- deutsche Primaerbegriffe,
- englische Aliase nur begruendet,
- Vermeidung schwacher Hybridformen,
- Terminologiepolitik,
- Selbstanwendung der eigenen Standards auf das Dokument selbst.

## 4. Hauptdokument-Revisionen
Das Hauptdokument D1 wurde unter Rueckgriff auf mehrere Verbesserungsschleifen revidiert. Zentrale Zielbildkriterien wurden stabilisiert:
- Kernaxiome bleiben Kernaxiome.
- Externe wissenschaftliche Quellen bleiben primaer.
- A und B bleiben getrennt; Kopplungen nur explizit.
- Governierte statt freie Selbstverbesserung bleibt bindend.
- Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.

## 5. Metaqualitaet des Kandidatenraums
Danach wurde der Kandidatenraum selbst entlang von Metaqualitaetsachsen geprueft:
- Vollstaendigkeit
- Saettigung
- Redundanzarmut / Minimalitaet
- Widerspruchsfreiheit / Konsistenz
- Orthogonalitaet
- Ableitungsgeschlossenheit
- Verwaisung

Der Befund: Der Kernaxiomenraum war nicht mehr primaer expansionsbeduerftig, sondern konsolidierungsreif.

## 6. Ausweitung auf Folgeebenen
Ein wichtiger Wendepunkt war die Einsicht, dass dieselben Standards auch fuer Folgeebenen gelten muessen:
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen.

Daraus entstanden Pruefrahmen und Folgeebenen-Audits. Der Engpass verlagerte sich von neuen Axiomen zu:
- Trennschaerfe,
- Rueckbindung,
- Ebenenangemessenheit,
- Mehrfachableitung,
- Vererbungslogik,
- Umklassifizierung.

## 7. Handlungsfolgen, Leistungslogik und Kandidatensiebung
Weitere Schleifen leiteten Handlungsfolgen ab:
- Folgeebenen-Inventar stabilisieren,
- Fehlklassifikationen entscheiden,
- indirekte Rueckbindungen aufloesen,
- Mehrfachableitungen typisieren,
- Nicht-Geltung und Spannungen vererben,
- Leistungs- und Geschwindigkeitsaspekte nachgeordnet behandeln.

Dabei wurden unter anderem eingefuehrt:
- Ausfuehrungseffizienz,
- Prueftiefenangemessenheit,
- Ausnahmebehandlungs-Explizitheit,
- Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision,
- Ableitungsnachvollziehbarkeit,
- Vererbungskonsistenz,
- Rueckrollbarkeit.

## 8. Erste Abschlusspakete
Ein erstes Abschlusspaket fuehrte zusammen:
- Abschlussdokument,
- rekursive Pruefmatrix,
- Deprekations- und Umschichtungslog,
- Adapterkonzept,
- Pro-Model-Schleife.

Die erneute Pruefung zeigte aber, dass noch nicht alle Matrixachsen, Routinen und Ablaeufe vollstaendig rekursiv geschlossen waren.

## 9. Nachruestfassung V2
Die Nachruestfassung V2 ergaenzte:
- eine erweiterte Matrix,
- Routinenblatt,
- Ablaufblatt,
- Abschlusscheckliste,
- verbessertes Adapterkonzept,
- Pro-Model-Pruefprompt.

Sie war stark, aber die Abschlusspruefung identifizierte noch Restmaengel:
- Konfliktlage war nicht sauber gegen Spannungen harmonisiert.
- Neuaufnahmeroutine fehlten Kollapstest/Aufwertung, Unterordnungstest und Revisionsfolgen.
- Nachzugsroutine fehlten erneute Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze.

## 10. Korrekturabschluss V3
Das V3-Paket korrigierte bereits:
- die Spiegelung der Kopplungsfolge `Axiomrevision erzwingt Folgeebenen-Nachzug` im Deprekationslog,
- die Matrixdeckung im Pro-Model-Prompt,
- grosse Teile der Routinenlogik.

Die finale Abschlusspruefung V2 zeigte jedoch noch drei punktuelle Restmassnahmen.

## 11. Finaler materialisierbarer Abschluss V4
Das finale Paket V4 setzt diese Restmassnahmen um:
- `Konfliktlage` wird als Oberbegriff fuer Spannungen, vererbte Spannungen, konflikttraechtige Mehrfachableitungen und Regel-/Ebenen-/Zielbildkollisionen definiert.
- Die Neuaufnahmeroutine erhaelt Kollapstest/Aufwertung, Unterordnungstest und Revisionsfolgen.
- Die Nachzugsroutine erhaelt erneute Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze.
- Das Abschlussdokument wird als alleinstehendes, repo-materialisierbares Markdown-Artefakt konsolidiert.

## 12. Prozessurteil
Der Prozess ist von Expansion zu Konsolidierung, von Konsolidierung zu rekursiver Vollpruefung und von rekursiver Vollpruefung zu materialisierbarer Abschlussfaehigkeit uebergegangen.

Das finale Zielbild bleibt:
- interne Konsistenz,
- rekursive Vollstaendigkeit,
- saubere Spiegelung,
- Vollabdeckung der Pruefparameter,
- klare Routinen,
- dokumentierte Prozessprovenienz,
- kontrollierte Materialisierbarkeit ohne implizite Repo-Schreibentscheidung.

```

---

## RAW_RECORD_056: ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md`
- sha256: `edb81ae0d644d7ce74e4c09429e30e8c962f5deae7dd23b8cb4fb6d386c7258f`
- chars: 1709
- approx_tokens: 428

```markdown
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

```

---

## RAW_RECORD_057: ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3.md`
- sha256: `3e7c9ac92266e5f7cb98a4ba88da65ca42f3a398ddea6fa0fbc270ec1ddd83c3`
- chars: 4858
- approx_tokens: 1215

```markdown
# ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3

## 1. Zweck
Dieses Dokument ist die abschliessende Selbstverbesserungsschleife fuer ein starkes Modell im Pro-Kontext. Es dient nicht der offenen Weiterentwicklung, sondern der finalen, rekursiven Pruefung des Korrekturabschlusspakets.

## 2. Pflichtdokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V3.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V2.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md`
8. `ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md`

## 3. Harte Leitplanken
- Nicht neue Kernaxiome sammeln.
- Nicht neue offene Verbesserungskaskaden erzeugen.
- Nicht direkte Repo-Integration vorschlagen.
- Nicht Leistungs- oder Geschwindigkeitslogik ueber den Zielbildkern stellen.
- Keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen.
- Nur echte Abschlussmaengel markieren.

## 4. Direktprompt fuer das Pro-Modell

``\`text
Analysiere das vorliegende Abschlusspaket als finale Selbstverbesserungsschleife.

Pflichtdokumente:
- ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md
- ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md
- ASWE_Deprekations_Umschichtungslog_20260423_V3.md
- ASWE_Routinenblatt_Axiomraum_20260423_V2.md
- ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md
- ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md
- ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md
- ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md

Ziel:
Nicht neue Kernaxiome oder offene Verbesserungskaskaden erzeugen, sondern den Abschlussstand final pruefen und nur echte verbleibende Abschlussmaengel markieren.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bisherigen Leitplanken bindend.

PHASE 1 – ABSCHLUSSKONSISTENZ
- Pruefe, ob das Abschlussdokument in sich widerspruchsfrei ist.
- Pruefe, ob Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen sauber getrennt bleiben.
- Pruefe, ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet gefuehrt werden.

PHASE 2 – REKURSIVE VOLLSTAENDIGKEITSPRUEFUNG
- Pruefe anhand der rekursiven Pruefmatrix, ob fuer alle Elemente von Kernaxiom bis operative Regel mindestens hinreichend vorliegen:
  - Funktion
  - Rueckbindung
  - Trennschaerfe
  - Ebenenangemessenheit
  - Evidenzstatus
  - Quellenrolle
  - Nicht-Geltung
  - vererbte Nicht-Geltung
  - Spannungen
  - vererbte Spannungen
  - Konfliktlage
  - Mehrfachableitung
  - Typ Mehrfachableitung
  - Redundanzstatus
  - Orthogonalitaet
  - Verwaisungsstatus
  - Kollapstest / Aufwertung
  - Unterordnungstest
  - Leistungs- / Geschwindigkeitsgrenze
  - Revisionsfolgen
  - finale Entscheidung
- Markiere nur echte Luecken.

PHASE 3 – SPIEGELUNG MIT DEM DEPREKATIONS- UND UMSCHICHTUNGSLOG
- Pruefe, ob alle Umklassifikationen, Streichungen, Verengungen und Neuaufnahmen konsistent zwischen Abschlussdokument und Log gespiegelt sind.
- Markiere jede Inkonsistenz explizit.

PHASE 4 – ROUTINEN- UND ABLAUFEINHALTUNG
- Pruefe, ob Routinenblatt, Ablaufblatt und Abschlusscheckliste gemeinsam den Paketstand voll abdecken.
- Pruefe insbesondere, ob Routinen und Direktprompt den Matrixstandard explizit spiegeln.
- Markiere fehlende oder nicht eingehaltene Routinen.

PHASE 5 – KEINE FALSCHE REPO-INTEGRATION
- Pruefe, ob das Adapterkonzept konsequent verhindert, dass aus dem Abschlusspaket direkt Repo-Materialisierung oder SSOT-Umschreibung abgeleitet wird.
- Markiere nur echte Restfehler.

PHASE 6 – VERBLEIBENDE ABSCHLUSSMAENGEL
- Liste nur Maengel, die fuer den Abschluss unverzichtbar sind.
- Trenne:
  - Muss vor Abschluss korrigiert werden
  - kann bewusst als spaetere Weiterentwicklung offen bleiben

PHASE 7 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich
- Wenn ein Korrekturpaket noetig ist, gib nur den kleinsten moeglichen Korrekturauftrag an.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Abschlusspruefung_ProModel_20260423_V2.md
``\`

## 5. Schlussregel
Diese Schleife ist die letzte offene Selbstverbesserungsschleife dieses Pakets. Jeder darueber hinausgehende Schritt ist entweder minimaler Korrekturabschluss oder ein neuer, separat begruendeter Arbeitsstrang.

```

---

## RAW_RECORD_058: ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md`
- sha256: `56c76685ff4111d542887596384932f30101a6c3c993815bd652f550e55a1ea7`
- chars: 1849
- approx_tokens: 463

```markdown
# ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2

## Zweck
Diese Checkliste schliesst die globalen Metaqualitaetsachsen des Pakets.

## 1. Vollstaendigkeit
- Sind alle Kernaxiome explizit gelistet?
- Sind alle final zugelassenen Folgeelemente gelistet?
- Sind Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet enthalten?
- Sind offene Reserve- und Auditbegriffe explizit ausgelagert?

## 2. Saettigung
- Wurde weitere breite Expansion gestoppt?
- Werden neue Kandidaten nur noch ueber die Routine Neuaufnahme zugelassen?

## 3. Redundanzarmut / Minimalitaet
- Gibt es doppelte Folgeelemente?
- Wurden absorbierte Begriffe entfernt oder deklassiert?
- Sind Sammelbegriffe verengt worden?

## 4. Widerspruchsfreiheit / Konsistenz
- Widersprechen Abschlussdokument, Matrix und Deprekationslog einander?
- Wurden konflikttraechtige Mehrfachableitungen markiert?

## 5. Orthogonalitaet
- Sind Designprinzipien, Qualitaetsattribute und Regeln funktional unterscheidbar?
- Sind Reservebegriffe nicht ungeprueft in den Raum gerutscht?

## 6. Ableitungsgeschlossenheit
- Hat jedes Folgeelement eine explizite Rueckbindung?
- Sind indirekte Rueckbindungen expliziert oder entschieden?

## 7. Verwaisung
- Gibt es verwaiste Begriffe?
- Gibt es Elemente ohne klare finale Entscheidung?

## 8. Rekursive Standardeinhaltung
- Wurden die Standards von Kernaxiom bis operative Regel angewandt?
- Sind Ebenenangemessenheit, Konfliktlage, Revisionsfolgen und Leistungsgrenzen enthalten?
- Deckt der Pro-Model-Direktprompt die bindenden Matrixachsen explizit ab?

## 9. Repo- und Materialisierungsschutz
- Verhindert das Paket direkte Materialisierung?
- Ist Adapterlogik statt Direktintegration gesetzt?

## 10. Abschlussentscheidung
- abschlusstauglich ohne weitere Aenderung
- abschlusstauglich mit minimalem Korrekturpaket
- noch nicht abschlusstauglich

```

---

## RAW_RECORD_059: ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md`
- sha256: `c380b676ad33f60f5d38b6b347caa3d198566ff927724e2d26c7afd7f248f287`
- chars: 5561
- approx_tokens: 1391

```markdown
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

```

---

## RAW_RECORD_060: ASWE_Abschlusspaket_README_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Abschlusspaket_README_20260423_V3.md`
- sha256: `f0b5a093631405919b0bb1a70e34f7f96751ee1b6e9a4011533c15ccd59f4014`
- chars: 2036
- approx_tokens: 509

```markdown
# ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3

## Zweck
Dieses Paket ist kein weiteres offenes Verbesserungsprojekt, sondern der Korrekturabschluss des Nachruestpakets V2.

Es schliesst die in der finalen Abschlusspruefung identifizierten Restmaengel:
- Spiegelungsluecke im Deprekations- und Umschichtungslog
- unvollstaendige Matrixdeckung im Pro-Model-Direktprompt
- unterabgedeckte Neuaufnahmeroutine
- unterabgedeckte Umklassifizierungsroutine

## Paketlogik
Das Paket bleibt in sich geschlossen und trennt:
1. kanonischen Endstand
2. rekursive Vollpruefung aller Elemente
3. Deprekations- und Umschichtungsprovenienz
4. Routinen
5. Ablaufsteuerung
6. globale Abschluss-Checkliste
7. Repo-/Materialisierungs-Adapterkonzept
8. abschliessende Selbstverbesserungsschleife fuer ein Pro-Modell
9. Kritikableitung und Paketdelta

## Enthaltene Dokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V3.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V3.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V2.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V2.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V2.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md`
8. `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V3.md`
9. `ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md`

## Harte Entscheidungen
- Keine weitere breite Expansion des Kernaxiomenraums.
- Folgeebenen werden primaer konsolidiert und nur selektiv erweitert.
- Leistungs- und Geschwindigkeitsaspekte bleiben nachgeordnet.
- Keine implizite Aufwertung von Folgeelementen zu Kernaxiomen.
- Keine direkte Repo-Materialisierung aus diesem Paket heraus.

## Paketinterne Lesereihenfolge
1. Kritikableitung und Paketdelta
2. Abschlussdokument
3. Rekursive Pruefmatrix
4. Deprekations- und Umschichtungslog
5. Routinenblatt
6. Ablaufblatt
7. Abschlusscheckliste
8. Adapterkonzept
9. Pro-Model-Schleife

```

---

## RAW_RECORD_061: ASWE_Deprekations_Umschichtungslog_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Deprekations_Umschichtungslog_20260423_V3.md`
- sha256: `131d41141f6e8da1c4d1eb69fd60f8e30a70bea92dab5140d7022473575390ff`
- chars: 3190
- approx_tokens: 798

```markdown
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

```

---

## RAW_RECORD_062: ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Kritikableitung_und_Paketdelta_20260423_V1.md`
- sha256: `bfdfe185a9f846c16e0b152e8d5ef3136775565aa8c64999aed1f562e9988f99`
- chars: 3095
- approx_tokens: 774

```markdown
# ASWE_Kritikableitung_und_Paketdelta_20260423_V1

## Zweck
Dieses Dokument leitet das Korrekturabschlusspaket V3 explizit aus den zuletzt festgestellten Abschlussmaengeln ab.

## Ausgangslage
Das Nachruestpaket V2 war bereits:
- strukturell stark,
- rekursiv weitgehend vollstaendig,
- und als konzeptioneller Paketstand beinahe abschlusstauglich.

Die finale Abschlusspruefung identifizierte jedoch vier echte Restmaengel, die vor einem wirklichen Korrekturabschluss geschlossen werden mussten.

## M1. Spiegelungsluecke im Deprekations- und Umschichtungslog
### Kritik
Die final gefuehrte Kopplungsfolge
- `Axiomrevision erzwingt Folgeebenen-Nachzug`
war im Abschlussdokument und in der rekursiven Matrix vorhanden, wurde aber im Deprekations- und Umschichtungslog nicht als Neuaufnahme gespiegelt.

### Paketreaktion
- Das Deprekations- und Umschichtungslog wird in V3 korrigiert.
- Die Kopplungsfolge wird explizit unter den Neuaufnahmen ergaenzt.

## M2. Unvollstaendige Matrixdeckung im Pro-Model-Direktprompt
### Kritik
Der Direktprompt der Pro-Schleife deckte nur einen Teil der in der rekursiven Matrix enthaltenen Pflichtachsen explizit ab.

Fehlende Achsen:
- Quellenrolle
- vererbte Nicht-Geltung
- vererbte Spannungen
- Redundanzstatus
- Orthogonalitaet
- Verwaisungsstatus
- Kollapstest / Aufwertung
- Unterordnungstest
- Leistungs- / Geschwindigkeitsgrenze

### Paketreaktion
- Das Pro-Model-Dokument wird in V3 so revidiert, dass Phase 2 die volle Matrixdeckung ausdruecklich fordert.

## M3. Unterabgedeckte Neuaufnahmeroutine
### Kritik
Die Routine Neuaufnahme eines Folgeelements spiegelte den erweiterten Matrixstandard noch nicht voll.

Fehlende explizite Pruefpunkte:
- Evidenzstatus
- Quellenrolle
- vererbte Nicht-Geltung
- vererbte Spannungen
- Verwaisungsstatus

### Paketreaktion
- Das Routinenblatt wird in V2 der Routinen nachgeruestet.
- Die Neuaufnahmeroutine wird auf den Matrixstandard gehoben.

## M4. Unterabgedeckte Umklassifizierungsroutine
### Kritik
Die Routine Umklassifizierung spiegelte ebenfalls den Matrixstandard noch nicht voll.

Fehlende explizite Pruefpunkte:
- Evidenzstatus / Quellenrolle aktualisieren
- Leistungs- / Geschwindigkeitsgrenze erneut pruefen
- Verwaisungsstatus erneut pruefen

### Paketreaktion
- Das Routinenblatt wird entsprechend erweitert.

## Zusatzentscheidung
Neben den vier Muss-Korrekturen wird das Ablaufblatt in V2 leicht nachgeschaerft:
- die paketinterne Abschlusspruefung erhaelt einen expliziten Matrix-Prompt-Deckungsabgleich,
- die Aenderungsreihenfolge schliesst nun die Kritikableitung und die Pro-Model-Schleife expliziter ein.

## Ergebnis
Das V3-Paket ist kein neues offenes Verbesserungsprojekt, sondern ein Korrekturabschluss mit vier Pflichtreparaturen und einer kleinen Ablaufnachschaerfung.

## Paketdelta
Gegenueber V2 sind inhaltlich geaendert:
1. Deprekations- und Umschichtungslog
2. Routinenblatt
3. Ablaufblatt
4. Pro-Model-Schleife
5. README

Substantiell unveraendert, aber paketkonsistent neu versioniert:
1. Abschlussdokument
2. Rekursive Pruefmatrix
3. Abschlusscheckliste
4. Adapterkonzept

```

---

## RAW_RECORD_063: ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V3.md`
- sha256: `dc7161f608b72dbe95fd317e340b06837e56b853384b1374129aeefb3b20109f`
- chars: 33745
- approx_tokens: 8437

```markdown
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
```

---

## RAW_RECORD_064: ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V3.md`
- sha256: `b9b78feb62a3954e36f1dfb056780a38b7212f8c088f12afa6e901938a589dd3`
- chars: 1650
- approx_tokens: 413

```markdown
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

```

---

## RAW_RECORD_065: ASWE_Routinenblatt_Axiomraum_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3.zip!ASWE_Abschlusspaket_Axiomraum_Korrekturabschluss_20260423_V3/ASWE_Routinenblatt_Axiomraum_20260423_V2.md`
- sha256: `020e22be91cd2393d32f1e060828e5355e850692aefafebbe875acca02b9645a`
- chars: 2493
- approx_tokens: 624

```markdown
# ASWE_Routinenblatt_Axiomraum_20260423_V2

## Zweck
Dieses Dokument standardisiert die Routinen des Korrekturabschlusspakets auf dem Niveau des rekursiven Matrixstandards.

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
12. Leistungs- und Geschwindigkeitsgrenze pruefen
13. Entscheidung:
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
11. Leistungs- und Geschwindigkeitsgrenze erneut pruefen
12. Revisionsfolgen aktualisieren
13. Deprekationslog aktualisieren
14. Matrix und Abschlussdokument spiegeln

## 3. Routine Axiomrevision -> Folgeebenen-Nachzug
1. Geaendertes Axiom markieren
2. Direkt abgeleitete Folgeelemente identifizieren
3. Indirekt betroffene Folgeelemente identifizieren
4. vererbte Nicht-Geltung und vererbte Spannungen neu pruefen
5. Mehrfachableitungen neu klassifizieren
6. Revisionsfolgen aktualisieren
7. Matrix aktualisieren
8. Deprekationslog aktualisieren
9. Abschlusscheckliste erneut anwenden

## 4. Routine Abschlussfreigabe
1. Abschlussdokument ist intern konsistent
2. Matrix enthaelt alle Pflichtparameter
3. Deprekationslog spiegelt alle Aenderungen
4. Routinen- und Ablaufblatt wurden eingehalten
5. Abschlusscheckliste ist ohne harte Restverletzung durchlaufen
6. Adapterkonzept verhindert direkte Materialisierung
7. Pro-Model-Schleife ergibt:
   - abschlusstauglich ohne weitere Aenderung
   - oder abschlusstauglich mit minimalem Korrekturpaket
8. Erst dann gilt das Paket als freigabereif

## 5. Routine Minimaler Korrekturabschluss
1. Nur echte Abschlussmaengel zulassen
2. Keine neue Expansion
3. Nur kleinstmoegliche Korrekturen an:
   - Abschlussdokument
   - Matrix
   - Deprekationslog
   - Routinen oder Promptdeckung
4. Abschlusscheckliste erneut durchlaufen
5. Pro-Model-Schleife erneut ausfuehren

```

---

## RAW_RECORD_066: ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md`
- sha256: `dd4a62b6c994b4901c42a07b53dd727263d70f4d57d16c76126e45fcb8cef30d`
- chars: 1332
- approx_tokens: 333

```markdown
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

```

---

## RAW_RECORD_067: ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2.md`
- sha256: `7ae13d7a134b2c547480145729506477c8d16a7e95d842d9eb66876b402252f5`
- chars: 4389
- approx_tokens: 1098

```markdown
# ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2

## 1. Zweck
Dieses Dokument ist die abschliessende Selbstverbesserungsschleife fuer ein starkes Modell im Pro-Kontext. Es dient nicht der offenen Weiterentwicklung, sondern der finalen, rekursiven Pruefung des Abschlussstandes.

## 2. Pflichtdokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V2.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V1.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md`

## 3. Harte Leitplanken
- Nicht neue Kernaxiome sammeln.
- Nicht neue offene Verbesserungskaskaden erzeugen.
- Nicht direkte Repo-Integration vorschlagen.
- Nicht Leistungs- oder Geschwindigkeitslogik ueber den Zielbildkern stellen.
- Keine implizite Rangverschiebung von Folgeelementen zu Kernaxiomen.
- Nur echte Abschlussmaengel markieren.

## 4. Direktprompt fuer das Pro-Modell

``\`text
Analysiere das vorliegende Abschlusspaket als finale Selbstverbesserungsschleife.

Pflichtdokumente:
- ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md
- ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md
- ASWE_Deprekations_Umschichtungslog_20260423_V2.md
- ASWE_Routinenblatt_Axiomraum_20260423_V1.md
- ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md
- ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md
- ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md

Ziel:
Nicht neue Kernaxiome oder offene Verbesserungskaskaden erzeugen, sondern den Abschlussstand final pruefen und nur echte verbleibende Abschlussmaengel markieren.

Arbeite strikt in folgenden Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die bisherigen Leitplanken bindend.

PHASE 1 – ABSCHLUSSKONSISTENZ
- Pruefe, ob das Abschlussdokument in sich widerspruchsfrei ist.
- Pruefe, ob Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen sauber getrennt bleiben.
- Pruefe, ob Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet gefuehrt werden.

PHASE 2 – REKURSIVE VOLLSTAENDIGKEITSPRUEFUNG
- Pruefe anhand der rekursiven Pruefmatrix, ob fuer alle Elemente von Kernaxiom bis operative Regel mindestens hinreichend vorliegen:
  - Funktion
  - Rueckbindung
  - Trennschaerfe
  - Ebenenangemessenheit
  - Evidenzstatus
  - Nicht-Geltung
  - Konfliktlage
  - Mehrfachableitung
  - Revisionsfolgen
  - finale Entscheidung
- Markiere nur echte Luecken.

PHASE 3 – SPIEGELUNG MIT DEM DEPREKATIONS- UND UMSCHICHTUNGSLOG
- Pruefe, ob alle Umklassifikationen, Streichungen, Verengungen und Neuaufnahmen konsistent zwischen Abschlussdokument und Log gespiegelt sind.
- Markiere jede Inkonsistenz explizit.

PHASE 4 – ROUTINEN- UND ABLAUFEINHALTUNG
- Pruefe, ob Routinenblatt, Ablaufblatt und Abschlusscheckliste gemeinsam den Paketstand voll abdecken.
- Markiere fehlende oder nicht eingehaltene Routinen.

PHASE 5 – KEINE FALSCHE REPO-INTEGRATION
- Pruefe, ob das Adapterkonzept konsequent verhindert, dass aus dem Abschlusspaket direkt Repo-Materialisierung oder SSOT-Umschreibung abgeleitet wird.
- Markiere nur echte Restfehler.

PHASE 6 – VERBLEIBENDE ABSCHLUSSMAENGEL
- Liste nur Maengel, die fuer den Abschluss unverzichtbar sind.
- Trenne:
  - Muss vor Abschluss korrigiert werden
  - kann bewusst als spaetere Weiterentwicklung offen bleiben

PHASE 7 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich
- Wenn ein Korrekturpaket noetig ist, gib nur den kleinsten moeglichen Korrekturauftrag an.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Abschlusspruefung_ProModel_20260423_V1.md
``\`

## 5. Schlussregel
Diese Schleife ist die letzte offene Selbstverbesserungsschleife dieses Pakets. Jeder darueber hinausgehende Schritt ist entweder minimaler Korrekturabschluss oder ein neuer, separat begruendeter Arbeitsstrang.

```

---

## RAW_RECORD_068: ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md`
- sha256: `79ef860b7118f65177260325961c7e6d9342612810d1fba1e844f3b8e088a914`
- chars: 1774
- approx_tokens: 444

```markdown
# ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1

## Zweck
Diese Checkliste schliesst die globalen Metaqualitaetsachsen des Pakets.

## 1. Vollstaendigkeit
- Sind alle Kernaxiome explizit gelistet?
- Sind alle final zugelassenen Folgeelemente gelistet?
- Sind Leistungs- und Geschwindigkeitsaspekte nur nachgeordnet enthalten?
- Sind offene Reserve- und Auditbegriffe explizit ausgelagert?

## 2. Saettigung
- Wurde weitere breite Expansion gestoppt?
- Werden neue Kandidaten nur noch ueber die Routine Neuaufnahme zugelassen?

## 3. Redundanzarmut / Minimalitaet
- Gibt es doppelte Folgeelemente?
- Wurden absorbierte Begriffe entfernt oder deklassiert?
- Sind Sammelbegriffe verengt worden?

## 4. Widerspruchsfreiheit / Konsistenz
- Widersprechen Abschlussdokument, Matrix und Deprekationslog einander?
- Wurden konflikttraechtige Mehrfachableitungen markiert?

## 5. Orthogonalitaet
- Sind Designprinzipien, Qualitaetsattribute und Regeln funktional unterscheidbar?
- Sind Reservebegriffe nicht ungeprueft in den Raum gerutscht?

## 6. Ableitungsgeschlossenheit
- Hat jedes Folgeelement eine explizite Rueckbindung?
- Sind indirekte Rueckbindungen expliziert oder entschieden?

## 7. Verwaisung
- Gibt es verwaiste Begriffe?
- Gibt es Elemente ohne klare finale Entscheidung?

## 8. Rekursive Standardeinhaltung
- Wurden die Standards von Kernaxiom bis operative Regel angewandt?
- Sind Ebenenangemessenheit, Konfliktlage, Revisionsfolgen und Leistungsgrenzen enthalten?

## 9. Repo- und Materialisierungsschutz
- Verhindert das Paket direkte Materialisierung?
- Ist Adapterlogik statt Direktintegration gesetzt?

## 10. Abschlussentscheidung
- abschlusstauglich ohne weitere Aenderung
- abschlusstauglich mit minimalem Korrekturpaket
- noch nicht abschlusstauglich

```

---

## RAW_RECORD_069: ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md`
- sha256: `c3ebaa8c5d78bcd30331666ab9024de12342915e8fe8ac82649bb031740513bc`
- chars: 5561
- approx_tokens: 1391

```markdown
# ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2

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

```

---

## RAW_RECORD_070: ASWE_Abschlusspaket_README_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Abschlusspaket_README_20260423_V2.md`
- sha256: `807bc18ec1114b8c8c8dda1d42e31e988760572c40eff0d6d1373bf2c5a84b30`
- chars: 1895
- approx_tokens: 474

```markdown
# ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2

## Zweck
Diese Nachruestfassung schliesst die im vorherigen Abschlusspaket identifizierten Luecken:
- fehlende Vollabdeckung aller Pruefungsparameter,
- fehlende Routinen fuer Neuaufnahme, Umklassifizierung, Nachzug und Abschlussfreigabe,
- fehlende explizite Ablaufsteuerung fuer Paketpruefung, Aenderung und spaetere Materialisierungsvorpruefung,
- fehlende globale Abschluss-Checkliste.

## Paketlogik
Das Paket ist in sich geschlossen und trennt:
1. kanonischen Endstand
2. rekursive Vollpruefung aller Elemente
3. Deprekations- und Umschichtungsprovenienz
4. Routinen
5. Ablaufsteuerung
6. globale Abschluss-Checkliste
7. Repo-/Materialisierungs-Adapterkonzept
8. abschliessende Selbstverbesserungsschleife fuer ein Pro-Modell

## Enthaltene Dokumente
1. `ASWE_Abschlussdokument_Kern_Folgeebenenraum_20260423_V2.md`
2. `ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md`
3. `ASWE_Deprekations_Umschichtungslog_20260423_V2.md`
4. `ASWE_Routinenblatt_Axiomraum_20260423_V1.md`
5. `ASWE_Ablaufblatt_Paketpruefung_Aenderung_Materialisierung_20260423_V1.md`
6. `ASWE_Abschlusscheckliste_Metaqualitaet_20260423_V1.md`
7. `ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md`
8. `ASWE_Abschluss_Selbstverbesserungsschleife_ProModel_20260423_V2.md`

## Harte Entscheidungen
- Keine weitere breite Expansion des Kernaxiomenraums.
- Folgeebenen werden primaer konsolidiert und nur selektiv erweitert.
- Leistungs- und Geschwindigkeitsaspekte bleiben nachgeordnet.
- Keine implizite Aufwertung von Folgeelementen zu Kernaxiomen.
- Keine direkte Repo-Materialisierung aus diesem Paket heraus.

## Paketinterne Lesereihenfolge
1. Abschlussdokument
2. Rekursive Pruefmatrix
3. Deprekations- und Umschichtungslog
4. Routinenblatt
5. Ablaufblatt
6. Abschlusscheckliste
7. Adapterkonzept
8. Pro-Model-Schleife

```

---

## RAW_RECORD_071: ASWE_Deprekations_Umschichtungslog_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Deprekations_Umschichtungslog_20260423_V2.md`
- sha256: `28bc8cbfb58f06f4d240962e5e602d63de0b334771704335758f0f90df5f7d66`
- chars: 3120
- approx_tokens: 780

```markdown
# ASWE_Deprekations_Umschichtungslog_20260423_V2

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

```

---

## RAW_RECORD_072: ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2.md`
- sha256: `1f843323b7c17740be3efefa38637d0cf266286233d3d24893a8cce925b462e1`
- chars: 33745
- approx_tokens: 8437

```markdown
# ASWE_Rekursive_Pruefmatrix_Kern_bis_Operative_Regeln_20260423_V2

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
```

---

## RAW_RECORD_073: ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2.md`
- sha256: `1832485d137f4099faa0af0c2149512f3b266998f54c2019895c76e0a2173cbc`
- chars: 1650
- approx_tokens: 413

```markdown
# ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2

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

```

---

## RAW_RECORD_074: ASWE_Routinenblatt_Axiomraum_20260423_V1.md

- source_kind: `zip_member_md`
- source_ref: `ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2.zip!ASWE_Abschlusspaket_Axiomraum_Nachruestfassung_20260423_V2/ASWE_Routinenblatt_Axiomraum_20260423_V1.md`
- sha256: `f3dc40d3c2cd7d29b36a5446397c477147e7b193e3e84d62b7fd12503a21f12e`
- chars: 1717
- approx_tokens: 430

```markdown
# ASWE_Routinenblatt_Axiomraum_20260423_V1

## Zweck
Dieses Dokument standardisiert die fehlenden Routinen des Abschlusspakets.

## 1. Routine Neuaufnahme eines Folgeelements
1. Ebenentest
2. Funktionsdefinition
3. Rueckbindungstest
4. Nicht-Geltung und Spannungen
5. Mehrfachableitungspruefung
6. Orthogonalitaets- und Redundanzpruefung
7. Leistungsgrenze
8. Entscheidung: aufnehmen / unterordnen / umklassifizieren / verwerfen

## 2. Routine Umklassifizierung
1. Aktuelle Ebene markieren
2. Ziel-Ebene markieren
3. Begruenden, warum aktuelle Ebene unpassend ist
4. Kollapstest pruefen
5. Rueckbindung, Nicht-Geltung, Spannungen und Revisionsfolgen nachziehen
6. Deprekationslog aktualisieren
7. Matrix und Abschlussdokument spiegeln

## 3. Routine Axiomrevision -> Folgeebenen-Nachzug
1. Geaendertes Axiom markieren
2. Direkt abgeleitete Folgeelemente identifizieren
3. Indirekt betroffene Folgeelemente identifizieren
4. Vererbte Nicht-Geltung und Spannungen neu pruefen
5. Mehrfachableitungen neu klassifizieren
6. Matrix aktualisieren
7. Deprekationslog aktualisieren
8. Abschlusscheckliste erneut anwenden

## 4. Routine Abschlussfreigabe
1. Abschlussdokument ist intern konsistent
2. Matrix enthaelt alle Pflichtparameter
3. Deprekationslog spiegelt alle Aenderungen
4. Ablaufblatt wurde befolgt
5. Adapterkonzept verhindert direkte Materialisierung
6. Pro-Model-Schleife ergibt Abschlusstauglichkeit oder minimales Korrekturpaket
7. Erst dann gilt das Paket als freigabereif

## 5. Routine Minimaler Korrekturabschluss
1. Nur echte Abschlussmaengel zulassen
2. Keine neue Expansion
3. Nur kleinstmoegliche Korrekturen an Abschlussdokument, Matrix und Deprekationslog
4. Abschlusscheckliste erneut durchlaufen

```
