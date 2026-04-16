---
project: ASWE_KnowledgeOS
doc_type: reference
version: V7
date: 2026-04-16
status: draft
audience: [human, llm]
intent: "Universelles Grundlagendokument fuer selbstevolvierbare Arbeitsprozesse in genau einem ChatGPT-Chatfenster; mit explizitem State-Kern, Metriken, Gate-/Signalmodell, Wiedereintrittslogik, Schedule-Adaptern und ableitbaren Systempromptvorlagen."
tags:
  - layer/handbook
  - artifact/reference
  - topic/chatgpt
  - topic/self-evolution
  - topic/tasks
---

# ASWE ChatGPT-App Single-Chat Self-Evolution Foundation

## 1. Zweck

Dieses Dokument definiert die kleinste tragfaehige Adapterarchitektur fuer selbstevolvierbare Arbeitsprozesse in **genau einem** ChatGPT-Chatfenster.

Es ist **universell**: keine Falllogik, keine Pfadlogik, keine Domänenspezifik.  
Es ist **lokal**: es modelliert nur, was in einem Einzelchat mit terminierter Folgearbeit legitim und stabil abbildbar ist.  
Es ist **abgeleitet**: der Chat bleibt Adapter, nicht semantischer Ursprung.

## 2. Geltung und Invarianten

Es gelten durchgehend:

- kein Multi-Thread-Modell
- kein impliziter Inter-Thread-Zustand
- kein zweiter Writer-Pfad
- keine stillschweigende Autoritaetsverschiebung
- Folgearbeit nur ueber expliziten Zustand, Gate-Logik und terminierten Wiedereintritt

Repo-fuehrend bleiben:

- `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`
- Main Agent als finale Synthese-, Geltungs- und Schreibinstanz
- bounded Autonomie nur bei explizitem Scope, Input, Return-Punkt und Contract
- Routing-, Gate- und Resume-Wirkung nur ueber expliziten Orchestrierungszustand

## 3. Explizite Einsatzannahmen

Dieses Dokument ist **allein nicht voll ausreichend**, wenn folgende Annahmen nur implizit bleiben. Sie muessen vor Einsatz explizit gesetzt sein.

### 3.1 Arbeitsraumannahmen
- genau ein persistenter Chat ist die primäre Arbeitsflaeche
- derselbe Chat traegt den autoritativen lokalen State-Kern
- implizite Historie darf nie als alleinige Steuerflaeche dienen

### 3.2 Autoritaetsannahmen
- es gibt eine benannte finale Autoritaet fuer `G5`
- es ist geklaert, welche externen Quellen normativ sind
- es ist geklaert, wann externe Eskalation den Chatpfad beendet

### 3.3 Messannahmen
- fuer den Gegenstand existieren mindestens minimale Qualitaetssignale
- ohne mess- oder argumentativ pruefbare Deltas darf keine Verbesserung behauptet werden

### 3.4 Schedule-Annahmen
- terminierte Folgearbeit ist nur Wiederanlauf, nicht zweiter Hauptpfad
- terminierte Laeufe duerfen nur den letzten gueltigen State-Kern benutzen
- initiale Datenbasis fuer terminierte Laeufe muss textuell im Chat vorliegen

### 3.5 Nicht-Annahmen
Es wird **nicht** angenommen:
- dass Datei-Uploads im terminierten Lauf verfuegbar sind
- dass mehrere terminierte Anweisungen echte Parallelrollen erzeugen
- dass Chat-Historie ohne explizite Verdichtung stabil rekonstruierbar ist
- dass jeder Gegenstand sinnvoll im Einzelchat geschlossen werden kann

## 4. Universelles epistemisches Phasenmodell

Fuehrend ist das generische Rollenmodell:

- `R1` Beobachtung / Messung
- `R2` Analyse / Auswertung
- `R3` Interpretation / Modellbildung
- `R4` Umsetzung / Intervention
- `R5` Test / Bestaetigung
- `R6` Synthese / Governance

Standarduebergaenge:

- `R1 -> R2`
- `R2 -> R3`
- `R3 -> R4`
- `R4 -> R5`
- `R5 -> R6`
- `R3 -> R6`
- `R2 -> R6`

Nicht als Default:

- `R1 -> R4`
- `R1 -> R6`
- `R2 -> R4` ohne interpretative Bruecke
- jede Autoritaetsverschiebung ohne explizite Gate-Begruendung

Pfadbegriffe wie `EvidenceIntake` oder `SemanticEvolution` sind nur Spezialisierungen dieses Modells, nie dessen Oberbau.

## 5. Informationsmodell des Einzelchats

- `S1` statischer Startkontext
- `S2` kanonischer externer Sachstand
- `S3` implizite Chat-Historie
- `S4` expliziter Orchestrierungszustand

Kurzformel:

- `S1` orientiert
- `S2` autorisiert extern
- `S3` speichert roh
- `S4` steuert

Nur `S4` ist fuer Folgearbeit verbindlich.

## 6. State-Kern

Der **State-Kern** ist die kleinste fuer Wiedereintritt und Folgeentscheidungen autoritative Menge.

Er besteht aus:

1. `Anchor Block`
   - `session_id`
   - `object_id`
   - `active_phase`
   - `active_slice`
   - `state_version`
   - `last_valid_gate`
   - `last_valid_ledger_entry`
   - `last_valid_resume_point`

2. `Input Block`
   - Gegenstand
   - Quelle(n)
   - Zeitbezug
   - Scope
   - offene Datenluecken
   - Ausschluesse

3. `Observation Block`
   - nur Beobachtetes

4. `Analysis Block`
   - Cluster, Vergleich, Guete, Konfliktvorformen

5. `Model Block`
   - Claims, Kategorien, Hypothesen, Relationen, Deltas
   - immer mit Reichweite und Unsicherheitsraum

6. `Action/Test Block`
   - nur in `R4` oder `R5`

7. `Gate Block`
   - Gate-Typ
   - Outcome
   - Begruendung
   - naechster erlaubter Phasenraum
   - Stop-/Return-Grund

8. `Ledger Block`
   - Schritt
   - Erkenntnisgewinn
   - Restunsicherheit
   - naechster kleinster Schritt

9. `Resume Block`
   - letzter gueltiger Zustand
   - offene Entscheidungsfrage
   - verbotene Wiederholungen
   - kleinster sicherer Wiedereintritt

10. `Dead-End Block`
    - verworfene Route
    - Verwerfungsgrund
    - Wiederholungsverbot oder Wiederholungsbedingung

## 7. Evaluationsmodell

Bewertet wird primaer die **Guete des Verfahrens unter Wiederholung**, nicht zuerst der fachliche Inhalt.

### 7.1 Quantitative Metriken

- `M1` Schema-Vollstaendigkeit  
  `ausgefuellte Pflichtfelder / gesamte Pflichtfelder`  
  Ziel: produktiv `>= 0.95`, gate-reif `= 1.00`

- `M2` Ebenentrennungsfehlerquote  
  `fehlerhafte Einheiten / alle Einheiten`  
  Ziel: stabil `<= 0.05`, kritisch `> 0.10`

- `M3` Unbelegte-Claim-Rate  
  `Claims ohne explizite Stuetzung / alle Claims`  
  Ziel: `<= 0.10`

- `M4` Konflikttypisierungsquote  
  `typisierte Konflikte / erkannte Konflikte`  
  Ziel: `>= 0.90`

- `M5` Trigger-Praezisions-Proxyrate  
  `spaeter bestaetigte oder weiterverfolgbare Trigger / alle Trigger`  
  Ziel: `>= 0.70`

- `M6` Resume-Erfolgsrate  
  `Folgezyklen ohne Rekonstruktion aus S3 / alle Folgezyklen`  
  Ziel: `>= 0.90`

- `M7` Fortschrittsrate  
  `Zyklen mit Erkenntnisgewinn oder Verfahrensdelta / alle Zyklen`  
  Ziel: `>= 0.60`

- `M8` Dead-End-Wiederholungsrate  
  `wiederholte verworfene Routen / alle neuen Routen`  
  Ziel: `0`

- `M9` Redundanzrate  
  `redundante Aussagen ohne neue Funktion / alle Aussagen im State-Modell`  
  Ziel: `<= 0.05`

### 7.2 Qualitative Kriterien

- Begriffsstabilitaet
- argumentative Stringenz
- Nachvollziehbarkeit der Gate-Begruendungen
- Sauberkeit der Phasenuebergaenge
- Driftresistenz
- Widerstand gegen Scheinfortschritt

### 7.3 Zyklusausgabe

Jeder Zyklus liefert:

- `M1..M9`
- qualitative Kurzbeurteilung
- Delta zum Vorzyklus
- naechstes Verfahrensdelta
- Gate-Vorschlag

## 8. Gate-System

- `G0` Initialisierung
- `G1` Separation Gate
- `G2` Trigger/Test Gate
- `G3` Resume Gate
- `G4` Improvement Gate
- `G5` Governance Gate

Mindestbedingungen:

- `G0 pass`: Anchor, Input, bounded Scope, Return-Punkt
- `G1 pass`: `M2 <= 0.05`, `M3 <= 0.10`
- `G2 pass`: explizite Begruendung, `M4 >= 0.90`
- `G3 pass`: `M6 >= 0.90`
- `G4 pass`: explizites Verfahrensdelta, `M7 >= 0.60`, `M8 = 0`
- `G5`: nur bei Autoritaets- oder Schreibwirkung

## 9. Signalmodell

### 9.1 Ruecksetzsignal
Negatives, aber korrigierbares Stopsignal.  
Beendet nur den aktuellen Slice. Erzwingt Wiedereintritt mit modifizierten Schleifenelementen.

Typische Faelle:

- partielle Zustandsinsuffizienz
- nichtpersistente Ebenenvermischung
- frueher Trigger
- lokaler Scheinfortschritt
- dekomponierbarer Konflikt
- Dead-End ohne Blockeintrag
- Modus-Ziel-Mismatch mit klarer externer Teiloperation

### 9.2 Abbruchsignal
Negatives, terminales Stopsignal fuer den aktuellen Modus.

Typische Faelle:

- Autoritaetsbruch
- nichtbehebbare Zustandsinsuffizienz
- persistente Ebenenvermischung ueber 2 Zyklen
- persistenter Scheinfortschritt ueber 3 Zyklen
- Dead-End-Rekurrenz trotz Blockeintrag
- unaufgeloester kritischer Konflikt ohne Zerlegbarkeit
- Modus-Ziel-Unvereinbarkeit
- Sicherheits-/Hochrisikoeskalation

### 9.3 Abschlusssignal
Positives Stopsignal.

Klassen:

- `A1` Konvergenzabschluss
- `A2` Entscheidungsabschluss
- `A3` Uebergabeabschluss
- `A4` Negativergebnisabschluss

`A1` liegt nur vor, wenn:
- `M2 <= 0.05`
- `M3 <= 0.10`
- `M4 >= 0.90`
- `M7 > 0`
- keine neuen kritischen Konflikte
- zwei aufeinanderfolgende Zyklen nur subkritisches Zustandsdelta zeigen

## 10. Wiedereintrittsprotokoll

Jeder Wiedereintritt basiert **nur** auf dem letzten gueltigen State-Kern:

- letzter `Anchor Block`
- letzter `Gate Block`
- letzter `Ledger Block`
- letzter `Resume Block`
- letzter `Dead-End Block`

Pflichtfolge:

1. State-Kern validieren
2. Ruecksetzsignal klassifizieren
3. modifizierte Schleifenelemente anwenden
4. aktiven Slice enger schneiden
5. Wiedereintritt mit neuer `state_version` starten

Verboten:

- Rekonstruktion aus `S3`
- Wiederbetreten einer geblockten Route
- Wiederholung ohne explizites Verfahrensdelta

## 11. Schleifenmodifikationen gegen Fehlstopps

Pflichtmodifikationen:

1. **Missingness-Register**  
   trennt fehlenden Input von inhaltlichem Scheitern

2. **Phasenreinheitscheck**  
   blockiert Modell- und Governance-Schritte bei Ebenenvermischung

3. **Trigger-Minimum**  
   kein Trigger ohne Konflikttyp, Reichweite, Stuetzung, Alternativenlage

4. **Delta-Pruefung**  
   kein neuer Zyklus ohne neues Objekt, neue Evidenz oder neues Verfahrensdelta

5. **Dead-End-Preflight**  
   jede neue Route wird gegen den `Dead-End Block` geprueft

6. **Konfliktzerlegung**  
   Konflikte werden vor Terminalisierung maximal bounded zerlegt

7. **Outputklassen-Whitelist**  
   pro Phase sind nur definierte Outputklassen zulaessig

## 12. Schedule-Adapter

Terminierte Anweisungen sind **Schedule-Adapter**. Sie sind keine Rolleninstanzen und keine zweite Hauptschleife.

### 12.1 Taktvariablen
- `U` Dringlichkeit
- `V` Veraenderungsdynamik
- `L` erwartete Evidenzlatenz

Zuordnung:

- `T0`: kein Task; sofortige Rueckgabe oder Eskalation
- `T1`: taeglich; bei `U hoch` oder `V hoch`
- `T2`: alle 3 Tage; bei `U mittel` und `V mittel`
- `T3`: woechentlich; bei `U niedrig` und `L hoch`
- `T4`: ereignisgebunden; bei neuer externer Evidenz

### 12.2 Zulaessige Funktionsprofile
- Drift-Review
- Schema-Refit
- Follow-up auf offene Fragen
- Dead-End-Pruefung
- Resume-Konsistenzcheck

### 12.3 Mehrere terminierte Anweisungen im selben Chat
Mehrere terminierte Anweisungen sind zulaessig, aber:
- alle lesen denselben letzten gueltigen State-Kern
- keine darf stillschweigend eine andere ueberschreiben
- Konflikte werden nur ueber explizite Prioritaetsregel oder `G5` geloest
- Phasenwechsel bleibt gate-pflichtig

## 13. Ausgabeformatpolitik

### 13.1 Kanonische Regel
Kanonischer Zustandstraeger ist **Text im Chat**.  
Nur Text kann Teil des lokalen State-Kerns sein.

### 13.2 Dateiausgabe
Dateien sind abgeleitet. Sie dienen:
- Snapshot
- Export
- externer Revision
- Repo-Materialisierung
- laengerem Audit-Trail

### 13.3 Ableitungsregel
- **loop-kritisch**: Text in `S4`
- **export-kritisch**: Datei
- **beides noetig**: erst Text, dann Datei als Spiegelung

## 14. Systemprompt-Vorlagen

Abschnitt 14 ist **nicht** die Anwendung selbst, sondern die deterministische Ableitung einer Anwendungsvorlage.

### 14.1 Kernprompt, invariant

```text
Arbeite in genau einem Chatfenster. Nutze ausschliesslich den expliziten Orchestrierungszustand S4 als verbindliche Steuerflaeche. Fuehre den Gegenstand phasenrein entlang R1..R6. Erzeuge nur die normierten State-Bloecke. Bewerte jede Iteration mit M1..M9. Setze Gates und Signale nur explizit. Nutze terminierte Anweisungen nur als Schedule-Adapter ueber dem letzten gueltigen State-Kern. Beende den Lauf nur ueber Ruecksetzsignal, Abbruchsignal oder Abschlusssignal gemaess Regelwerk.
```

### 14.2 Falladapter, vom Nutzer auszufuellen

```text
Wende das Grundlagendokument "ASWE ChatGPT-App Single-Chat Self-Evolution Foundation" auf folgenden Gegenstand an.

object_id:
Gegenstand:
Ziel:
Scope in:
Scope out:
Startphase: R1 | R2 | R3 | R4 | R5 | R6
Externe Autoritaetsgrenzen:
Zulaessige Outputklassen:
```

### 14.3 Initiale Datenbasis, task-sicher

Da terminierte Folgearbeit keine Datei-Uploads voraussetzen darf, muss die initiale Datenbasis **im Chattext** vorliegen. Minimal erforderlich sind:

```text
Initiale Datenbasis
1. Gegenstandsbeschreibung
2. autoritative Quellenliste oder "keine externe Normquelle"
3. aktueller Befund-/Inputstand
4. bekannte Konflikte
5. offene Datenluecken
6. Erfolgs- und Stopkriterien
7. Eskalationskanal
8. erste Taktvariablen U, V, L
```

Ohne diese Datenbasis ist nur `G0 hold`, nicht produktiver Start, legitim.

Zusätzlich soll der Initialisierungslauf einen knappen `contract_basis_ref`-Block ausgeben:
- `entry_ref`
- `status_ref`
- `workstream_ref`
- `gui_adapter_ref`
- `derived_contract_refs`
- `contract_basis_date`

### 14.4 Schedule-Adapter-Vorlage

```text
Erzeuge einen terminierten Wiedereintritt fuer dasselbe Chatfenster auf Basis des letzten gueltigen State-Kerns.

Funktionsprofil:
Taktklasse: T1 | T2 | T3 | T4
Prioritaet:
Nur erlaubt:
Nicht erlaubt:
```

### 14.5 Vollstaendige Nutzeraufforderung, minimal

```text
Nutze das Grundlagendokument "ASWE ChatGPT-App Single-Chat Self-Evolution Foundation" als Arbeitsvertrag fuer diesen Chat. Wandle meinen Fall eigenstaendig in einen vollstaendigen, knappen, terminierbaren Schleifenvorschlag um. Wenn die initiale Datenbasis fuer einen task-sicheren Start noch nicht textuell vorliegt, fordere zuerst nur die minimale Datenbasis in Textform an. Leite danach ohne weitere Struktur-Rueckfragen den ersten Vollentwurf ab: object_id, Gegenstand, Ziel, Scope, Startphase, State-Kern, M1..M9, Gates, Signalmodell, Taktklasse, Schedule-Adapter, zulaessige Outputklassen, erster Wiedereintritt. Markiere nur unvermeidliche Annahmen explizit. Liefere einen sofort verbesserbaren Vollvorschlag, keine bloeße Teilskizze.
```

## 15. Sprach- und Dokumentregeln

- Begriffsmonosemie
- Ebenentrennung
- minimale Wiederholung
- hohe Informationsdichte
- explizite Modalitaet
- Quantifizierung vor Wertung
- Begruendungspflicht

Daraus folgen fuer dieses Dokument:

- Reference-Stil, nicht How-to-Stil
- keine freie Motivationsprosa
- keine Fallbeispiele im kanonischen Text
- normative Regel vor Beispiel
- Example- oder Prompt-Bloecke nur als abgeleitete Schablonen

## 16. Repo-Einordnung und Referenzsatz

### 16.1 Geeigneter Zielpfad
`handbook/reference/ASWE_ChatGPTApp_SingleChat_SelfEvolution_Foundation_20260416_V7.md`

### 16.2 Repo-Konformitaet
- Dokumenttyp: `reference`
- Frontmatter: minimale Pflichtfelder
- Tags: genau 1× `layer/*`, 1× `artifact/*`, 3× `topic/*`
- Benennung: `ASWE_<Kerngegenstand>_<Dokumentklasse>_YYYYMMDD_Vn.md`

### 16.3 Konkreter Referenzsatz dieses Dokuments

Dieses Dokument ist **nicht** gegen unbestimmte Muster wie `*ENTRY_LATEST*` oder `*RepoStatusUpdate*` gebunden, sondern gegen den folgenden **konkret versionierten Vertragsstand**:

- `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260415_V2.md`  
  primaerer GUI-Startpointer zum Erstellungszeitpunkt dieses Dokuments
- `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260415_V2.md`  
  operativer Vertragsstand zum Erstellungszeitpunkt dieses Dokuments
- `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260415_V2.md`  
  aktiver Umbrella-Workstream des gebundenen Vertragsstands
- `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260415_V2.md`  
  erster produktiver Primaerpfad des gebundenen Vertragsstands
- `handbook/reference/ASWE_CodexApp_StartContract_20260415_V2.md`  
  gebundener Startvertrag des aktiven Sonderpfads
- `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md`  
  gebundenes E2E-Protokoll des aktiven Sonderpfads
- `meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260311_V2.md`  
  normative GUI-Adapterbeschreibung
- `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`  
  Tiefenanker fuer Routing-, Struktur- und Auditkontext
- `handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260311_V2.md`  
  Source-Map fuer Status-, Governance-, Gate- und Evidence-Bezuege
- `AGENTS.md`  
  Codex-/Copilot-Adapterpfad; fuer GUI nicht primaerer Erstzugriff

### 16.4 Semantische und terminologische Referenzen
- `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
- `handbook/reference/AgenticSWE_KnowledgeOS_Ontologische_Basis_20260326_V1.md`
- `handbook/reference/AgenticSWE_KnowledgeOS_Relationsmatrix_20260326_V1.md`
- `handbook/reference/AgenticSWE_KnowledgeOS_Abstraktions_und_Ebenenrouter_20260326_V1.md`
- `handbook/reference/AgenticSWE_GPTPro_Shared_Output_Contract_20260318_V1.md`

### 16.5 Dokumentations- und Formatreferenzen
- `meta/AgenticSWE_KnowledgeOS_DocTypes_20260213_V2.md`
- `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`

### 16.6 Vertragszeitpunkt dieses Dokuments und Rueckfuehrungsregel

Der **konkret gebundene Vertragszeitpunkt dieses Dokuments** ist:

- `contract_basis_date: 2026-04-15`
- `entry_ref: meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260415_V2.md`
- `status_ref: meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260415_V2.md`
- `workstream_ref_primary: blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260415_V2.md`
- `workstream_ref_secondary: blackboard/workstreams/ASWE_WS_EvidenceIntake_20260415_V2.md`
- `gui_adapter_ref: meta/state/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260311_V2.md`
- `meaningmap_ref: meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`
- `status_runbook_ref: handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260311_V2.md`

Rueckfuehrungsregel:

1. Dieses Dokument ist inhaltlich an den oben genannten Vertragsstand gebunden.
2. Spaetere Entry-, Status- oder Workstream-Versionen aendern **nicht rueckwirkend** die Vertragsgrundlage dieses Dokuments.
3. Eine neue Vertragsgrundlage erfordert eine neue Dokumentversion.
4. Nicht direkt genannte Vertragsfamilien duerfen fuer die Interpretation dieses Dokuments nur herangezogen werden, wenn sie mit `contract_basis_date = 2026-04-15` vereinbar sind oder im konkret gebundenen Status-/Workstream-Satz explizit getragen werden.
5. Bei Anwendung in einem neuen Chat darf der dort aktuelle Vertragsstand zusaetzlich ausgewiesen werden; er ersetzt jedoch nicht den hier dokumentierten Erstellungsstand.

## 17. Konsequenz

Die universelle Form des Einzelchat-Systems ist:

- expliziter State-Kern
- epistemische Phasenfuehrung `R1..R6`
- metrisch und qualitativ bewertete Selbstverbesserung
- Ruecksetz-, Abbruch- und Abschlusssignale
- deterministische Wiedereintrittslogik
- Schedule-Adapter statt Parallelrollen
- Text als kanonischer Zustandstraeger
- Datei nur als Spiegelung oder Export

Pfadspezifische Modelle bleiben ableitbar, aber nicht fuehrend.
