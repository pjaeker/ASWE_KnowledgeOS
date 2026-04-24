# ASWE_Axiomraum_Repo_Integrationsoptionen_20260423_V1

## Zielbild
Dieses Dokument sammelt Repo-Integrationsoptionen als Ausgangspunkt fuer spaetere Repoabgleichsanalysen, Erweiterungen und Operationalisierungen.

## Gegenstand
Gegenstand ist das Paket `ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423` mit aktuellem Zielartefakt, Zeilenbelegmatrix, duplettenfreier Historie und Paketnavigation.

## Nicht-Geltung
Dieses Dokument fuehrt keine Repo-Integration aus, schreibt keine SSOT-Datei um, erzeugt keine Gates und veraendert keine Repo-Struktur.

## Leitregel
Zuerst read-only Repoabgleich, dann Integrationsentscheidung, erst danach Materialisierung.

## Integrationsoptionen

| Option | Integrationsmodus | Beschreibung | Risiko | Nutzen | kleinster naechster Schritt |
| --- | --- | --- | --- | --- | --- |
| Option 1 | Referenzdokument | Grundlagendokument als nicht-normative Architekturreferenz ablegen | niedrig | hoch | Read-only Pfadabgleich |
| Option 2 | Architektur-Review-Kandidat | Paket als Kandidat fuer Architekturevolution behandeln | mittel | hoch | Kompatibilitaetsanalyse gegen bestehende Architekturpfade |
| Option 3 | Pruefartefakt-Bibliothek | Zeilenbelegmatrix, Deduplizierung und Chronik als Pruefartefakte auslagern | niedrig | mittel | Dokumentrollen mit Repo-Konventionen abgleichen |
| Option 4 | Operationalisierungsadapter | Pruefstandard, Algorithmus und Routinen spaeter in Prompts oder Skills ueberfuehren | mittel | mittel bis hoch | erst Abgleich der Skill-/Prompt-Konventionen |
| Option 5 | Governance-Erweiterung | Axiomraum als Grundlage fuer Review- oder Aenderungsregeln verwenden | hoch | hoch | nur nach expliziter Architekturentscheidung |
| Option 6 | Keine Materialisierung, nur externer Arbeitsstand | Paket bleibt ausserhalb des Repos als Analyseartefakt | niedrig | mittel | nur Link-/Referenzstrategie klaeren |


## Empfohlene Reihenfolge fuer weitere Repoabgleichsanalysen

1. Bestehende Repo-Dokumentrollen und Architekturpfade lesen.
2. Pruefen, ob ein Ort fuer Grundlagen-/Referenzdokumente existiert.
3. Pruefen, ob Pruefartefakte getrennt von Zielartefakten gefuehrt werden koennen.
4. Pruefen, ob Historienpakete im Repo erwuenscht sind oder nur referenziert werden sollen.
5. Erst danach entscheiden, ob Option 1, 2 oder 3 als kleinster materialisierbarer Schritt geeignet ist.

## Vorlaeufiges Urteil
Die naechste sachgerechte Handlung ist keine Materialisierung, sondern ein read-only Integrationsmapping gegen die reale Repo-Struktur.
