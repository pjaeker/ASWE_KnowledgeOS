# ASWE_Rohdatenbasierte_Abschlusspruefung_ProModel_20260423_V1

## Zweck
Dieses Dokument enthaelt einen Direktprompt fuer eine Abschlusspruefung, die nicht nur die Chronik, sondern den gesamten verfuegbaren Rohdatenkorpus nutzt.

## Datengrundlage
- Rohdatensaetze: 74
- eindeutig unterschiedliche Inhalte nach SHA-256: 48
- Gesamtumfang nicht dedupliziert: ca. 185,414 Tokens
- Gesamtumfang dedupliziert: ca. 137,806 Tokens

## Direktprompt

```text
Analysiere das finale ASWE-Axiomraum-Paket rohdatengestuetzt.

Pflichtdateien:
- ASWE_Axiomraum_Kanon_Materialisierbar_20260423_V4.md
- ASWE_Rohdatenkorpus_Alle_Verfuegbaren_Dokumente_20260423_V1.md
- ASWE_Rohdaten_Manifest_20260423_V1.md
- ASWE_Selbstverbesserungsprozess_Chronik_20260423_V1.md
- ASWE_Finaler_Korrekturauftrag_20260423_V1.md

Ziel:
Pruefe, ob das finale materialisierbare Hauptdokument den gesamten dokumentierten Selbstverbesserungslauf ohne kritischen Informationsverlust, ohne unerklaerte Umklassifizierung und ohne Verletzung der finalen Zielbildkriterien konsolidiert.

Arbeite in Phasen:

PHASE 0 – VORANALYSE
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Trenne Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.
- Halte die finalen Leitplanken bindend.

PHASE 1 – ROHDATENABDECKUNG
- Pruefe anhand des Manifests, ob der Rohkorpus vollstaendig und plausibel ist.
- Markiere fehlende Ursprungstexte nur, wenn der Korpus selbst eindeutige Hinweise auf nicht enthaltene, aber benoetigte Dokumente gibt.

PHASE 2 – CHRONIK GEGEN ROHDATEN
- Pruefe, ob die Chronik den Verlauf korrekt verdichtet.
- Markiere nur Verdichtungsverluste, die fuer Abschlusskonsistenz, rekursive Vollstaendigkeit oder Materialisierbarkeit relevant sind.

PHASE 3 – FINALDOKUMENT GEGEN ROHDATEN
- Pruefe, ob das materialisierbare Hauptdokument alle final tragenden Entscheidungen aus den Rohdaten enthaelt:
  - Kernaxiome
  - Folgeebenen
  - Deprekationen
  - Umklassifizierungen
  - Leistungs- und Geschwindigkeitslogik
  - Konfliktlage/Spannungen
  - Routinen
  - Abschlusscheckliste
  - Materialisierungsstatus

PHASE 4 – KRITISCHE ABWEICHUNGEN
- Markiere nur echte Abschlussmaengel:
  - nicht gespiegelte Entscheidung
  - widerspruechliche finale Entscheidung
  - fehlende Rueckbindung
  - fehlende Routine
  - nicht nachvollziehbare Deprekation
  - unzulaessige Repo-Materialisierungsannahme

PHASE 5 – ENDURTEIL
- Entscheide:
  - abschlusstauglich ohne weitere Aenderung
  - abschlusstauglich mit minimalem Korrekturpaket
  - noch nicht abschlusstauglich

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Rohdatenbasierte_Finalfreigabepruefung_20260423_V1.md
```
