# ASWE_Abschlusspaket_Axiomraum_Final_Rohdaten_20260423_V5

## Zweck
Dieses Paket erweitert das finale materialisierbare Abschlusspaket um alle in der aktuellen Arbeitsumgebung verfuegbaren Rohdokumente.

## Entscheidung
Die reine Chronik bleibt nuetzlich fuer Orientierung. Fuer die finale Pro-Modell-Pruefung ist der Rohdatenkorpus jedoch besser, weil er alle verfuegbaren Zwischenstaende, Umklassifizierungen, Deprekationen und Korrekturen pruefbar macht.

## Umfang
- rohe Markdown-Dokumentdatensaetze: 74
- eindeutig unterschiedliche Inhalte nach SHA-256: 48
- nicht dedupliziert: ca. 185,414 Tokens
- dedupliziert: ca. 137,806 Tokens

## Hauptdateien
1. `final_materializable_package/` – aktuelles materialisierbares V4-Paket.
2. `raw_documents/` – alle einzeln verfuegbaren Rohdokumente mit Provenienzheader.
3. `ASWE_Rohdatenkorpus_Alle_Verfuegbaren_Dokumente_20260423_V1.md` – konsolidierter Rohdatenkorpus als Einzeldatei.
4. `ASWE_Rohdaten_Manifest_20260423_V1.md` – Zaehlergebnis, Tokenabschaetzung, Quellenliste.
5. `ASWE_Rohdatenbasierte_Abschlusspruefung_ProModel_20260423_V1.md` – Prompt fuer rohdatengestuetzte Pro-Modell-Pruefung.

## Fehlende Rohdaten
Es wurden alle aktuell auffindbaren ASWE-Markdown-Dateien, Paketordner-Dateien und Markdown-Dateien aus ASWE-Paket-ZIP-Dateien aufgenommen. Nicht rekonstruierbar sind nur etwaige Chat-Zwischenantworten, die nie als Datei materialisiert wurden.
