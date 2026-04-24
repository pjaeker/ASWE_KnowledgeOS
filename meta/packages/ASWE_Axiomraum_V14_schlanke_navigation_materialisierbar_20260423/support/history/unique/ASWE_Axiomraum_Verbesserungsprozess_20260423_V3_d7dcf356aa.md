---
document_id: ASWE_Axiomraum_Verbesserungsprozess_20260423_V3
document_role: ausgelagerte_prozessdokumentation
status: support_document
scope: Selbstverbesserungsprozess des Axiomraum-Pakets
version_date: 2026-04-23
---

# ASWE_Axiomraum_Verbesserungsprozess_20260423_V3

## 1. Zielbild

Dieses Dokument dokumentiert den Verbesserungsprozess, der zum Grundlagendokument `final/ASWE_Axiomraum_Grundlagendokument_20260423_V3.md` gefuehrt hat. Es ist selbst nach den Kernaxiomen strukturiert, soweit dies fuer eine Prozessdokumentation sinnvoll ist.

## 2. Gegenstand

Gegenstand ist der gesamte dokumentierte Entwicklungslauf:

- erste Prompt- und Begriffsklaerung,
- Axiomkandidatenraum,
- Sprach- und Terminologiegovernance,
- Hauptdokumentrevisionen,
- Folgeebenenpruefung,
- Metaqualitaetspruefung,
- Abschluss- und Korrekturpakete,
- Auslagerung der Prozessdokumentation,
- Herstellung eines alleinstehenden Grundlagendokuments.

## 3. Geltungsbereich

Das Dokument gilt als ausgelagerte Prozess- und Provenienzdokumentation. Es stuetzt Nachvollziehbarkeit, ersetzt aber nicht das Grundlagendokument.

## 4. Nicht-Geltung

Dieses Dokument ist nicht:

- das repo-materialisierbare Grundlagendokument selbst,
- ein Rohdatenkorpus,
- eine neue Verbesserungskaskade,
- eine direkte Repo-Integrationsanweisung.

## 5. Epistemischer Status

### Beobachtung
Der Verlauf zeigt eine schrittweise Verschiebung von Expansion zu Konsolidierung, dann zu rekursiver Vollpruefung und schliesslich zu Materialisierbarkeit.

### Aussage
Die finale Zielstruktur verlangt zwei getrennte Artefakte: ein Grundlagendokument und eine Prozessdokumentation.

### Hypothese
Die Trennung erhoeht repo-seitige Materialisierbarkeit, weil das Hauptdokument von Prozess-, Pruef- und Rohdatenlogik entlastet wird.

### Kriterium
Der Prozess ist hinreichend dokumentiert, wenn zentrale Entscheidungen, Umklassifizierungen, Deprekationen, Korrekturen und Pruefmassstaebe nachvollziehbar bleiben.

### Empfehlung
Spaetere Revisionen sollen Prozessbelege weiterhin auslagern und das Grundlagendokument als fachlichen Grundlagenstand schlank halten.

## 6. Axiomrekursive Prozessbindung

### A1 Ziel- und Geltungsbindung
Jede Verbesserungsphase wurde zunehmend an Ziel, Gegenstand, Geltungsbereich und Nicht-Geltung gebunden.

### A2 Epistemische Trennung
Der Prozess trennte zunehmend Beobachtung, Aussage, Hypothese, Kriterium und Empfehlung.

### A3 Auditierbarkeit und Unsicherheitsmarkierung
Unsicherheiten wurden in Folgeversionen als Pruefluecken, Restmaengel oder Korrekturauftraege markiert.

### A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht
Der Prozess arbeitete in Schleifen: Analyse, Korrektur, Paketbildung, Pruefung, erneute Korrektur.

### A5 Verhaltenstestbarkeit
Die finalen Pro-Prompts wurden als pruefbare Ausfuehrungsanweisungen formuliert.

### B1 Terminologische Primaerordnung
Sprachgovernance, deutsche Primaerbegriffe und Alias-Regeln wurden als eigene Standards eingefuehrt.

### B2 Ontologische Trennschaerfe
Kernaxiom, Designprinzip, Qualitaetsattribut, operative Regel, Kopplungsfolge, Auditkriterium und Reservebegriff wurden getrennt.

### B3 Provenienz und Referenzierbarkeit
Rohdaten, Manifest, Prozessdokumentation und Grundlagendokument wurden getrennt vernetzt.

### B4 Pfad- und Schnittstellenexplizitheit
Die Paketstruktur trennt `final/`, `support/` und `meta/`.

### B5 Governierte Evolvierbarkeit
Weiterentwicklung bleibt moeglich, aber nur ueber explizite Revisions- und Nachzugsroutinen.

### K1 Beobachtung-Aussage-Beleg
Der Prozess hielt zunehmend auseinander, was beobachteter Befund, interpretierende Aussage und beleggestuetzte Entscheidung ist.

### K2 Evaluation vor Operationalisierung
Jede Materialisierung wurde nachgelagert zur Pruefung behandelt; insbesondere wurden Paketbildung, Manifestkorrektur und Repo-Materialisierbarkeit erst nach wiederholter Pruefung festgelegt.

### K3 Spiegel-/Adapter-Asymmetrie
Manifest, Rohdaten, Chronik und Pro-Prompt wurden als abgeleitete Orientierungs- und Pruefflaechen behandelt; das Grundlagendokument bleibt das materialisierbare Zielartefakt.

## 7. Prozessphasen

| Phase | Beobachtung | Aussage | Kriterium | Ergebnis |
|---|---|---|---|---|
| Initiale Ideation | Begriffe und Axiomideen waren breit und unscharf | Erstes Ziel war Kandidatenraumerweiterung | A/B/K trennen | Grundtrennung von LLM-Verhaltenssteuerung, Architektur und Kopplung |
| Promptanalyse | Prompts enthielten implizite Ziele und unscharfe Ausfuehrungslogik | Ziel/Geltung/Status mussten explizit werden | Phasentrennung | standardisierte Voranalyse und Ausgabevertraege |
| Sprachgovernance | Mischsprache und Jargon waren nicht durchgehend begruendet | Terminologiepolitik wurde notwendig | Begriff vor Struktur | deutsche Primaerbegriffe und begruendete Aliase |
| Hauptdokumentrevision | Kernaxiome und Folgeelemente waren noch vermischt | Status- und Evidenzrollen mussten getrennt werden | Kernaxiom bleibt Kernaxiom | revidierter Kernaxiomenraum |
| Metaqualitaet | Kandidatenmenge allein reichte nicht | Vollstaendigkeit, Saettigung, Redundanzarmut und Widerspruchsfreiheit wurden Pruefachsen | Metaqualitaetsmatrix | Konsolidierung statt Expansion |
| Folgeebenenpruefung | Folgeelemente waren nicht voll rekursiv geprueft | Standards mussten bis Designprinzip, Attribut und Regel reichen | Rueckbindung, Ebenenangemessenheit | Folgeebenen-Audit |
| Leistungslogik | Geschwindigkeit war unterbelichtet | Effizienz darf nur nachgeordnet wirken | Leitplankenschutz | Ausfuehrungseffizienz und Prueftiefenangemessenheit |
| Abschlusspakete | Erste Pakete enthielten Prozess- und Prueflogik im Hauptdokument | Zielstruktur musste bereinigt werden | final/ nur Grundlagendokument | Auslagerung nach support/ und meta/ |
| Finalisierung | Manifest- und Promptvernetzung mussten konsistent werden | E2E-Startfaehigkeit braucht README, Manifest, Pro-Prompt | reale Pfade, keine veralteten Zielpfade | finale Paketstruktur |

## 8. Wesentliche Umklassifizierungen

| Element | Fruehere Lage | Finale Lage | Begruendung |
|---|---|---|---|
| Materialisierungsdisziplin | grenzwertig zwischen Attribut und Prinzip | starkes Designprinzip | beschreibt Uebernahmelogik |
| Deprekationsdisziplin | moegliches Designprinzip | operative Regel | handlungsnah |
| Kontrollierbarkeit | breiter Sammelbegriff | enges Qualitaetsattribut | sonst zu unscharf |
| Persistenz | breit | enges Qualitaetsattribut | nicht jede Notiz ist persistenzpflichtig |
| duale Lesbarkeit | rangnah | enges Qualitaetsattribut | automationssensitiv |
| Wahrheitsquellenstabilitaet | grenznah | enges Qualitaetsattribut | evaluative Folge von K3/B2/B3 |
| Portierbarkeit | moegliches Designprinzip | Reserve-/Nichtkanon-Begriff | zu unscharf |
| Evidenzdisziplin | moegliches Attribut | absorbiert | durch Staffelung, Nachvollziehbarkeit und Regeln abgedeckt |

## 9. Wesentliche Neuaufnahmen

- Ausnahmebehandlungs-Explizitheit
- Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision
- Ableitungsnachvollziehbarkeit
- Vererbungskonsistenz
- Rueckrollbarkeit
- Ausfuehrungseffizienz
- Deprekation statt stiller Entfernung markieren
- Prueftiefe an Tragweite und Reversibilitaet ausrichten
- Axiomrevision erzwingt Folgeebenen-Nachzug

## 10. Schlusskorrekturen

Die letzten Korrekturen betrafen:

1. Harmonisierung von `Konfliktlage`, `Spannungen` und `vererbten Spannungen`.
2. Erweiterung der Neuaufnahmeroutine um Kollapstest/Aufwertung, Unterordnungstest und Revisionsfolgen.
3. Erweiterung der Nachzugsroutine um Evidenz-/Quellenrollenpruefung, Verwaisungspruefung, Orthogonalitaets-/Redundanzpruefung und Leistungsgrenze.
4. Bereinigung der Paketstruktur, sodass das Hauptdokument ein Grundlagendokument bleibt.
5. Korrektur von Manifest, JSON-Manifest und Pro-Prompt auf reale Pfade.

## 11. Prozessauslagerung

Das Grundlagendokument enthaelt nur den fachlichen Grundlagenstand. Die Prozesslogik liegt hier. Rohdaten liegen im Korpus und in `support/raw/`. Manifest und Pruefprompt liegen in `meta/`.

## 12. Abschluss der Prozessdokumentation

Diese Prozessdokumentation ist selbst kein neuer Arbeitsauftrag. Sie schliesst die Nachvollziehbarkeit des Verbesserungsprozesses ab und dient als ausgelagerter Beleg fuer das Grundlagendokument.
