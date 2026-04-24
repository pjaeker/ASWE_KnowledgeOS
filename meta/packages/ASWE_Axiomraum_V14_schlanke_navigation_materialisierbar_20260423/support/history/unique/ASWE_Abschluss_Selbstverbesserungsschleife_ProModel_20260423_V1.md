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

```text
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
```

## 8. Schlussregel
Diese Schleife ist die **letzte offene Selbstverbesserungsschleife** dieses Pakets. Jeder darueber hinausgehende Schritt ist entweder:
- minimaler Korrekturabschluss,
- oder ein neuer, separat begruendeter Arbeitsstrang.
