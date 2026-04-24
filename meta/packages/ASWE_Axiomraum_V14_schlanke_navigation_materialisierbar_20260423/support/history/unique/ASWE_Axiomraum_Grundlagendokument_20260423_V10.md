---
document_id: ASWE_Axiomraum_Grundlagendokument_20260423_V10
document_role: repo_materialisierbares_grundlagendokument
status: foundation_candidate_with_binding_matrix_and_quality_evaluation_logic
scope: LLM-Verhaltenssteuerung und ASWE_KnowledgeOS-Architektur
language_policy: Deutsch als Primaersprache; englische Aliase nur begruendet
version_date: 2026-04-23
---

# ASWE_Axiomraum_Grundlagendokument_20260423_V10

## 1. Zielbild

Dieses Dokument begruendet einen rekursiv pruefbaren Axiomraum fuer zwei gekoppelte Gegenstandsbereiche:

- **A: LLM-Verhaltenssteuerung**
- **B: ASWE_KnowledgeOS-Architektur**
- **K: explizite Kopplungen zwischen A und B**

Es ist als alleinstehendes Grundlagendokument formuliert. Es ist kein Pruefbericht, keine Prozesschronik, kein Korrekturauftrag und kein Rohdatenmanifest.

## 2. Gegenstand

Gegenstand sind:

- Kernaxiome,
- starke Designprinzipien,
- sekundaere Qualitaetsattribute,
- operative Regeln,
- Kopplungsfolgen,
- rekursive Pruefachsen,
- Pruefartefakte,
- und Routinen fuer Neuaufnahme, Umklassifizierung, Axiomrevision und Gesamt-Konsistenzaudit.

## 3. Geltungsbereich

Das Dokument gilt als fachlicher Grundlagenstand fuer spaetere Dokumentations-, Architektur-, Prompt-Governance- und Integrationsentscheidungen. Es kann in ein Repo integriert werden, erzwingt aber keine konkrete Pfad-, Commit- oder SSOT-Entscheidung.

## 4. Nicht-Geltung

Dieses Dokument ist nicht:

- eine abgeschlossene Pruefbewertung,
- eine Prozessdokumentation,
- ein Rohdatenkorpus,
- eine direkte Repo-Materialisierungsanweisung,
- eine Runtime-, Rollen- oder Tool-Spezifikation,
- ein Ersatz fuer spaetere repo-lokale Review- und Autorisationsregeln.

## 5. Epistemischer Status

Der Axiomraum ist ein konsolidierter, weiterentwickelbarer Grundlagenstand. Seine Elemente sind nach interner Konsistenz, rekursiver Pruefbarkeit, Trennschaerfe, Rueckbindung, Nicht-Geltung, Konfliktlage und Materialisierbarkeit strukturiert. Er beansprucht keine absolute Vollstaendigkeit, sondern einen belastbaren Ausgangspunkt fuer kontrollierte Weiterentwicklung.

## 6. Leitplanken

1. Kernaxiome bleiben Kernaxiome.
2. Designprinzipien, Qualitaetsattribute und operative Regeln bleiben abgeleitete Folgeebenen.
3. Externe wissenschaftliche Quellen und Standards bleiben primaere Begruendungsanker.
4. Repo-interne Referenzen dienen nur als Anwendungs-, Passungs- oder Materialisierungsbelege.
5. A, B und K bleiben getrennt; Kopplungen werden explizit gefuehrt.
6. Governierte Evolvierbarkeit hat Vorrang vor freier Selbstverbesserung.
7. Begriffe stehen vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
8. Leistungs- und Geschwindigkeitsaspekte sind nachgeordnet und duerfen Zielbild, Rueckbindung, Trennschaerfe oder Evidenzstatus nicht uebersteuern.
9. Pruefkriterien, Unterfaelle und Nutzungseffekte werden nicht ungeprueft als kanonische Raumelemente gefuehrt.

## 7. Begriffssystem

### 7.1 Elementklassen und Meta-Klassen

| Klasse | Funktion | Rang |
|---|---|---|
| Kernaxiom | Basale, nicht lokal abgeleitete Grundregel | basal |
| Starkes Designprinzip | Konstruktionsleitendes, aus Kernaxiomen abgeleitetes Prinzip | Folgeebene |
| Sekundaeres Qualitaetsattribut | Bewertbare Gueteeigenschaft | Folgeebene |
| Operative Regel | Handlungsnahe Ausfuehrungsregel innerhalb des Axiomraums | Folgeebene |
| Kopplungsfolge | Explizite Folge aus Verbindung von A-, B- oder K-Elementen | Kopplung |
| Pruefartefakt | Nicht-kanonisches Meta-Artefakt zur Pruefung, Anwendung oder Dokumentation des Axiomraums | Metaebene |
| Reservebegriff | Bewusst nicht kanonisierter Begriff fuer spaetere Pruefung | Randbereich |

`Pruefartefakt` ist die Oberklasse fuer Pruefkriterium, Pruefstandard, Pruefalgorithmus, Pruefroutine, Suchspur, Pruefprotokoll und Pruefurteil. Pruefartefakte pruefen oder dokumentieren Raumelemente; sie sind selbst keine kanonischen Raumelemente.


### 7.2 Konfliktlage

`Konfliktlage` ist der Oberbegriff fuer:

- einfache Spannungen,
- vererbte Spannungen,
- konflikttraechtige Mehrfachableitungen,
- Regelkollisionen,
- Ebenenkollisionen,
- Zielbildkollisionen.

`Spannungen` und `vererbte Spannungen` sind operationalisierte Unterformen der Konfliktlage.

## 8. Definitorische Mindestschicht

### 8.1 Zweck

Die definitorische Mindestschicht reduziert die heuristische Last dieses Dokuments. Sie legt fest, **wie** Kernaxiome, Designprinzipien, Qualitaetsattribute, operative Regeln und Kopplungsfolgen logisch voneinander unterschieden und voneinander abgeleitet werden.

Sie ist kein neues Axiom und keine neue Folgeebene. Sie ist ein Zwischenartefakt zur Ebenenreinheit, Ableitungspruefung und spaeteren Operationalisierung.

### 8.2 Primitive Klassen

| Klasse | Prueffrage | Messbarkeit |
|---|---|---|
| Kernaxiom | Ist das Element basal, nicht lokal abgeleitet und grundordnend? | nein |
| Designprinzip | Leitet das Element eine Konstruktionshaltung aus Kernaxiomen ab? | nein |
| Qualitaetsattribut | Beschreibt das Element eine bewertbare Gueteeigenschaft? | ja, ueber Indikatoren |
| Operative Regel | Beschreibt das Element eine ausfuehrbare Handlung oder Pruefhandlung innerhalb des Axiomraums? | indirekt ueber Vollzug |
| Kopplungsfolge | Folgt das Element aus der expliziten Verbindung von A, B oder K? | fallabhaengig |
| Pruefartefakt | Prueft, steuert oder dokumentiert das Pruefen des Axiomraums? | ja, als Pruef- oder Protokollstruktur |
| Reservebegriff | Ist das Element noch nicht kanonisierbar? | nein |

`Pruefkriterium` ist keine eigene Raumelementklasse, sondern ein Untertyp von `Pruefartefakt`.


### 8.2.1 Begriffskorrektur: Pruefartefakte

Die fruehere Verwendung des Audit-Begriffs fuer einzelne Kriterien war mehrdeutig. Die Fehlerquelle war eine Vermischung von Einzelmassstab, Standard, Algorithmus, Routine, Suchspur und Urteil.

Daher gilt:

```text
Pruefartefakt
  ├─ Pruefkriterium
  ├─ Pruefstandard
  ├─ Pruefalgorithmus
  ├─ Pruefroutine
  ├─ Suchspur / Pruefprotokoll
  └─ Pruefurteil / Entscheidung
```

Begriffsordnung:

```text
Pruefkriterium  = einzelner Massstab
Pruefstandard   = geordnete Menge von Prueffragen und Pruefachsen
Pruefalgorithmus = determinierte Reihenfolge der Pruefschritte
Pruefroutine    = Anlass- und Ablaufmuster zur Anwendung des Pruefalgorithmus
Suchspur        = protokollierte Spur der Pruefentscheidungen
Pruefurteil     = Ergebnis einer Pruefung
Raumelement     = Kernaxiom, Designprinzip, Qualitaetsattribut, operative Regel oder Kopplungsfolge
```

Folge: Abschnitt 12 `Rekursiver Pruefstandard` ist ein Pruefartefakt, aber kein Raumelement. Abschnitt 13 `Routinen` sind Pruefartefakte in Form von Meta-Verfahren am Raum, nicht operative Regeln im Raum.


### 8.3 Relationstypen

| Relation | Bedeutung | Erlaubte Richtung |
|---|---|---|
| `leitet_ab` | Element wird aus anderem Element abgeleitet | Axiom -> Prinzip/Attribut/Regel; Prinzip -> Attribut/Regel |
| `operationalisiert` | Regel macht Prinzip oder Attribut handhabbar | Prinzip/Attribut -> Regel |
| `bewertet_durch` | Attribut wird ueber Indikator pruefbar | Attribut -> Indikator |
| `begrenzt_durch` | Element hat Nicht-Geltung oder Grenze | jedes kanonische Element -> Grenze |
| `steht_in_spannung_mit` | Element steht in produktiver oder kritischer Spannung | jedes Element -> jedes Element |
| `vererbt_an` | Nicht-Geltung oder Spannung wirkt in Folgeebene fort | Axiom/Prinzip -> Folgeelement |
| `deprekiert` | Element wird nicht mehr kanonisch gefuehrt | Element -> Reserve/Pruefstatus/Entfernung |
| `koppelt` | Verbindung zwischen A, B oder K wird explizit gemacht | A/B/K -> Kopplungsfolge |

### 8.4 Wohlgeformtheitsregeln

#### W1 Kernaxiom
Ein Kernaxiom ist wohlgeformt, wenn es:
1. basal fuer den Gegenstandsbereich ist,
2. nicht selbst als Qualitaetsattribut oder operative Regel formuliert ist,
3. Geltungsbereich und Nicht-Geltung erlaubt,
4. Folgeelemente begruenden kann,
5. nicht aus einem lokalen Folgeelement abgeleitet wird.

#### W2 Designprinzip
Ein Designprinzip ist wohlgeformt, wenn es:
1. aus mindestens einem Kernaxiom ableitbar ist,
2. eine konstruktionsleitende Funktion hat,
3. keine Messgroesse und keine blosse Handlungsanweisung ist,
4. seine Rolle gegen benachbarte Prinzipien abgrenzt,
5. Folgeattribute oder Regeln ermoeglicht.

#### W3 Qualitaetsattribut
Ein Qualitaetsattribut ist wohlgeformt, wenn es:
1. eine bewertbare Eigenschaft beschreibt,
2. aus Axiom oder Designprinzip ableitbar ist,
3. mindestens einen moeglichen Indikator oder Bewertungsmodus erlaubt,
4. nicht selbst als Normbefehl formuliert ist,
5. mit Nicht-Geltung und Konfliktlage versehen werden kann.

#### W4 Operative Regel
Eine operative Regel ist wohlgeformt, wenn sie:
1. eine ausfuehrbare Handlung, Pruefhandlung oder Stoppregel beschreibt,
2. einen Trigger oder Anwendungskontext hat,
3. ein erwartbares Pruefergebnis oder Vollzugskriterium hat,
4. aus Axiom, Prinzip oder Attribut ableitbar ist,
5. nicht selbst als Ausgangswahrheit behandelt wird.

#### W5 Kopplungsfolge
Eine Kopplungsfolge ist wohlgeformt, wenn sie:
1. mindestens zwei Bereiche aus A, B oder K explizit verbindet,
2. die Kopplungsrichtung oder Kopplungsasymmetrie sichtbar macht,
3. nicht bloss Analogie ist,
4. nicht stillschweigend eine Repo-Materialisierung erzwingt,
5. Nicht-Geltung, Spannung oder Grenze ausweisen kann.

#### W6 Pruefartefakt
Ein Pruefartefakt ist wohlgeformt, wenn es:
1. seine Unterart explizit benennt: Pruefkriterium, Pruefstandard, Pruefalgorithmus, Pruefroutine, Suchspur, Pruefprotokoll oder Pruefurteil,
2. den geprueften Gegenstand ausweist,
3. nicht als Raumelement behandelt wird,
4. keine Kernaxiome begruendet,
5. seinen Eingriffspunkt im Pruefablauf angibt.

### 8.5 Ableitungsregeln

1. **Keine Messung vor Ebenenreinheit:** Kernaxiome und Designprinzipien werden nicht gemessen, sondern logisch-definitorisch geprueft.
2. **Messbarkeit beginnt auf Attributebene:** Qualitaetsattribute muessen zumindest prinzipiell indikatorfaehig sein.
3. **Regeln sind Vollzugsformen:** Operative Regeln muessen ausfuehrbar und pruefbar sein, aber nicht selbst basal werden.
4. **Kopplung bleibt explizit:** Eine A/B/K-Verbindung darf nur als Kopplungsfolge oder explizite Relation auftreten.
5. **Deprekation statt stiller Entfernung:** Nicht tragfaehige Elemente werden begruendet umklassifiziert, verengt oder deprekiert.
6. **Axiomrevision zieht Folgeebenen nach:** Jede Aenderung eines Kernaxioms erzwingt eine Pruefung aller direkt und indirekt abgeleiteten Elemente.

### 8.6 Beurteilbarkeitsstatus

Jede Pruefaussage erhaelt einen der folgenden Status:

| Status | Bedeutung |
|---|---|
| objektiv artefaktbelegt | Aussage ist direkt in Datei, Abschnitt, Manifest oder Rohdaten belegbar |
| prozessual rekonstruierbar | Aussage folgt plausibel aus dokumentiertem Verlauf und Versionen |
| heuristisch plausibel | Aussage ist begruendet, aber nicht streng belegbar |
| nicht belastbar beurteilbar | Beleg- oder Ableitungsgrundlage fehlt |

### 8.7 Schnittstelle zur Anwendungsebene

Die definitorische Mindestschicht endet bei Typen, Relationen, Wohlgeformtheitsregeln, Ableitungsregeln und Beurteilbarkeitsstatus. Sie enthaelt keinen Pruefvollzug.

Pruefalgorithmus, Pruefstandard, Pruefroutine, Suchspur und Pruefurteil sind Pruefartefakte auf der Anwendungsebene. Sie werden in den Abschnitten 14 bis 16 gefuehrt.

## 9. Logische Konsistenzschicht

Diese Schicht ergaenzt die definitorische Mindestschicht. Sie dient dazu, Zirkularitaet, Ebenenvermischung und unkontrollierte Selbstbestaetigung zu vermeiden.

#### L1 Vorrang der Definition vor der Pruefung
Die definitorische Mindestschicht definiert Typen, Relationen und Ableitungsrichtungen. Der rekursive Pruefstandard wendet diese Definitionen an, ersetzt oder begruendet sie aber nicht.

#### L2 Strikte Primaertypisierung
Jedes Element erhaelt genau einen Primaertyp: Kernaxiom, Designprinzip, Qualitaetsattribut, operative Regel, Kopplungsfolge, Pruefkriterium oder Reservebegriff.

#### L3 Keine Ebenenvermischung
Kernaxiome werden nicht gemessen. Designprinzipien werden nicht als operative Regeln behandelt. Qualitaetsattribute sind bewertbar. Operative Regeln sind ausfuehrbar.

#### L4 Gerichtete azyklische Ableitung
Die regulaere Ableitungsrichtung lautet:

```text
Kernaxiom -> Designprinzip -> Qualitaetsattribut -> operative Regel
```

Rueckwaertsbegruedungen und Selbstableitungen sind unzulaessig.

#### L5 Mengenlogische Disjunktheit
Elementklassen werden als grundsaetzlich getrennte Mengen behandelt. Schnittmengen sind nur zulaessig, wenn sie als explizite Kopplungsfolge oder Relation modelliert werden.

#### L6 Zirkularitaetssperren
Unzulaessig sind:
1. Selbstableitung,
2. indirekte Ableitungszyklen,
3. Rueckwaertsbegruendung von Axiomen durch Folgeelemente,
4. Selbstvalidierung des Pruefstandards durch seine eigene Anwendung.

#### L7 Invarianten
Die folgenden Invarianten duerfen nicht verletzt werden:
1. Jedes kanonische Folgeelement hat eine Rueckbindung.
2. Jede Axiomrevision zieht Folgeebenenpruefung nach sich.
3. Keine operative Regel wird als Kernaxiom behandelt.
4. Kein Pruefartefakt wird ohne Neuaufnahmepruefung zum Raumelement.
5. Keine Kopplung bleibt implizit, wenn sie Geltung oder Materialisierung beeinflusst.

#### L8 Gegenmodellpruefung
Fuer jedes Element wird geprueft, ob es plausibel einem anderen Typ zugeordnet werden koennte. Falls ja, ist es enger zu fassen, zu unterordnen, umzuklassifizieren oder zu deprekieren.

#### L9 Beurteilbarkeitsstatus
Jede Pruefaussage erhaelt einen Status:
1. objektiv artefaktbelegt,
2. prozessual rekonstruierbar,
3. heuristisch plausibel,
4. nicht belastbar beurteilbar.

#### L10 Messbarkeit erst ab Qualitaetsattributen
Messrahmen setzen Ebenenreinheit voraus. Qualitaetsattribute erhalten Indikatoren; operative Regeln erhalten Vollzugs- oder Pruefkriterien. Kernaxiome und Designprinzipien werden logisch-definitorisch geprueft, nicht gemessen.

## 10. Diagrammatische Abbildung der logischen-relationalen Hierarchie

Diagramme sind hier **Pruef- und Orientierungswerkzeuge**, keine zusaetzlichen Axiome. Massgeblich bleiben die definitorische Mindestschicht, die logische Konsistenzschicht und der rekursive Pruefstandard.

#### Diagrammtyp 1: Gerichteter Ableitungsgraph
Dieser Diagrammtyp ist am wichtigsten, weil er Zirkularitaet, Rueckwaertsbegruendung und unzulaessige Selbstvalidierung sichtbar macht.

Die Darstellung trennt bewusst:
1. erlaubte Ableitungen,
2. Pruef- und Randartefakte,
3. Revision als Anlasslogik,
4. verbotene Relationen.

```mermaid
flowchart TD
  subgraph ERL["erlaubter Ableitungsraum"]
    KA["Kernaxiom"] --> DP["Designprinzip"]
    DP --> QA["Qualitaetsattribut"]
    QA --> OR["Operative Regel"]
    KA --> KF["Kopplungsfolge"]
    DP --> KF
  end

  subgraph META["Pruef- und Randartefakte"]
    PA["Pruefartefakt"] -. "prueft, begruendet nicht" .-> KA
    PA -. "prueft, begruendet nicht" .-> DP
    RB["Reservebegriff"] -. "nicht kanonisch" .-> PA
  end

  subgraph REV["Revision als Anlasslogik"]
    OR -. "Befund nur als Revisionsanlass" .-> RP["Revisionspruefung"]
    RP -. "prueft Nachzug" .-> FN["Folgeebenen-Nachzug"]
  end

  subgraph VERBOT["verbotene Relationen"]
    V1["Element begruendet sich selbst"]
    V2["Operative Regel begruendet Kernaxiom"]
    V3["Pruefstandard begruendet Axiomgueltigkeit"]
    V4["Pruefurteil ersetzt Definition"]
  end
```

Hinweis: Verbotene Relationen werden als eigene Sperrknoten dargestellt und nicht als reale Kanten modelliert. Dadurch erzeugt das Diagramm selbst keinen Scheinkreislauf.


#### Diagrammtyp 2: Mengenlogische Partition
Dieser Diagrammtyp eignet sich, um Ebenenreinheit und Disjunktheit der Elementklassen zu pruefen.

```mermaid
flowchart LR
  subgraph RE["kanonische Raumelemente"]
    KA2["Kernaxiome"]
    DP2["Designprinzipien"]
    QA2["Qualitaetsattribute"]
    OR2["Operative Regeln"]
    KF2["Kopplungsfolgen"]
  end

  PA2["Pruefartefakte"] -. "ausserhalb; pruefen" .-> RE
  RB2["Reservebegriffe"] -. "ausserhalb; nicht kanonisch" .-> RE

  KA2 ---|"disjunkt"| DP2
  DP2 ---|"disjunkt"| QA2
  QA2 ---|"disjunkt"| OR2
  KF2 -. "explizite Kopplung statt Schnittmenge" .-> KA2
  KF2 -. "explizite Kopplung statt Schnittmenge" .-> DP2
```

#### Diagrammtyp 3: Pruefalgorithmus mit Suchspur
Dieser Diagrammtyp macht die Anwendung des Algorithmus nachvollziehbar und reduziert nachtraegliche Heuristik.

```mermaid
flowchart TD
  S["Start: Element aufnehmen"] --> Q["Quellanker setzen"]
  Q --> T["Primaertyp bestimmen"]
  T --> W["Wohlgeformtheit W1-W5 pruefen"]
  W --> R["Relation und Ableitungskante setzen"]
  R --> A["Ableitungsrichtung pruefen"]
  A --> Z["Zykluspruefung"]
  Z --> E["Ebenenreinheit pruefen"]
  E --> N["Nicht-Geltung und Konfliktlage erfassen"]
  N --> G["Gegenmodell pruefen"]
  G --> O["Operationalisierungsgrenze setzen"]
  O --> B["Beurteilbarkeitsstatus vergeben"]
  B --> D{"Entscheidung"}
  D -->|tragfaehig| K["beibehalten"]
  D -->|unscharf| F["enger fassen"]
  D -->|falscher Typ| U["umklassifizieren"]
  D -->|nicht kanonisch| X["deprekieren oder verwerfen"]
  K --> P["Suchspur sichern"]
  F --> P
  U --> P
  X --> P
```

#### Priorisierung der Diagrammarten
1. **Gerichteter Ableitungsgraph:** primaer fuer Zirkularitaet, Rueckwaertsbegruendung und Ableitungsrichtung.
2. **Mengenlogische Partition:** primaer fuer Disjunktheit, Ebenenreinheit und Kopplungsgrenzen.
3. **Pruefalgorithmus mit Suchspur:** primaer fuer Nachvollziehbarkeit, Beurteilbarkeitsstatus und reproduzierbare Anwendung.

## 11. Kernaxiome

### 11.1 A – LLM-Verhaltenssteuerung

#### A1 Ziel- und Geltungsbindung
Jede verhaltenssteuernde Instruktion bindet Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung vor Ausfuehrung.

#### A2 Epistemische Trennung
Beobachtung, Aussage, Beleg, Hypothese, Kriterium und Empfehlung duerfen nicht stillschweigend kollabieren.

#### A3 Auditierbarkeit und Unsicherheitsmarkierung
Pruefpflichtige Arbeit markiert Annahmen, Unsicherheiten, Belegbasis und Entscheidungsschritte.

#### A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht
Mehrstufige Arbeit wird nur in begrenzten, rueckgabefaehigen und uebersteuerbaren Schritten ausgefuehrt.

#### A5 Verhaltenstestbarkeit
Verhalten wird anhand expliziter, reproduzierbarer und verifizierbarer Tests bewertet.

### 11.2 B – ASWE_KnowledgeOS-Architektur

#### B1 Terminologische Primaerordnung
Begriff vor Benennung, Benennung vor Regelung, Regelung vor Prozess.

#### B2 Ontologische Trennschaerfe
Kategorie, Instanz, Beobachtung, Aussage, Beleg, Regel, Rolle und Adapterflaeche duerfen nicht kollabieren.

#### B3 Provenienz und Referenzierbarkeit
Wissen, Zustaende, Entscheidungen und Belege muessen adressierbar und herkunftsgebunden sein.

#### B4 Pfad- und Schnittstellenexplizitheit
Uebergaenge zwischen Erkenntnis-, Steuerungs- und Ausfuehrungspfaden duerfen nur explizit erfolgen.

#### B5 Governierte Evolvierbarkeit
Veraenderung bleibt moeglich, aber nur unter Drift-Sichtbarkeit, Pruefbarkeit und Revisionsfaehigkeit.

### 11.3 K – Kopplungsaxiome

#### K1 Beobachtung-Aussage-Beleg
Beobachtung ist nicht Aussage; Aussage ist nicht Beleg.

#### K2 Evaluation vor Operationalisierung
Vorpruefung und Bewertung gehen Materialisierung und Operationalisierung voraus.

#### K3 Spiegel-/Adapter-Asymmetrie
Spiegelungen und Adapter sind abgeleitete Flaechen, nicht semantischer Ursprung.

## 12. Folgeebenen

### 12.1 Starke Designprinzipien

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

### 12.2 Sekundaere Qualitaetsattribute

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

### 12.3 Operative Regeln

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

### 12.4 Kopplungsfolgen

- Scope-Bindung wirkt bis in Materialisierung und Operationalisierung.
- Epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal.
- Auditierbarkeit braucht Provenienz und Referenzierbarkeit.
- Rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik.
- Testbarkeit muss vor operative Uebernahme treten.
- Ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie.
- Governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik.
- Axiomrevision erzwingt Folgeebenen-Nachzug.

## 13. Verhaeltnis von Dokumentstruktur und logisch-inhaltlicher Struktur

### 13.1 Strukturprinzip

Die Dokumentstruktur folgt der logisch-inhaltlichen Ordnung. Definitionen, Konsistenzsperren, Darstellungen, Gegenstandsraum, Pruefartefakte und Routinen duerfen nicht in derselben Abschnittsrolle vermischt werden.

```text
Begriffssystem
  -> Definitorische Mindestschicht
  -> Logische Konsistenzschicht
  -> Diagrammatische Darstellung
  -> Gegenstandsraum
  -> Pruefstandard
  -> Pruefalgorithmus
  -> Pruefroutinen
  -> Pruefurteil
```

### 13.2 Abschnittsrollen

| Abschnitt | Rolle | Darf definieren? | Darf pruefen? | Darf entscheiden? |
|---|---|---:|---:|---:|
| 7 Begriffssystem | Begriffs- und Klassenuebersicht | ja | nein | nein |
| 8 Definitorische Mindestschicht | Typen, Relationen, Wohlgeformtheit | ja | nein | nein |
| 9 Logische Konsistenzschicht | Zirkularitaets- und Ebenensperren | ja | nein | nein |
| 10 Diagramme | Darstellungs- und Orientierungshilfe | nein | nein | nein |
| 11 Kernaxiome | basaler Gegenstandsraum | ja, basal | nein | nein |
| 12 Folgeebenen | abgeleiteter Gegenstandsraum | nein | nein | nein |
| 14 Rekursiver Pruefstandard | allgemeines Pruefschema | nein | ja | nein |
| 15 Pruefalgorithmus und Suchspur | determinierte Anwendung | nein | ja | nein |
| 16 Routinen | anlassgebundene Pruef- und Aenderungsablaeufe | nein | ja | ja, prozedural |

### 13.3 Pruefartefaktordnung

```text
Pruefkriterium  = einzelner Massstab
Pruefstandard   = geordnete Menge von Prueffragen und Pruefachsen
Pruefalgorithmus = determinierte Reihenfolge der Pruefschritte
Pruefroutine    = Anlass- und Ablaufmuster zur Anwendung des Pruefalgorithmus
Suchspur        = protokollierte Spur der Pruefentscheidungen
Pruefurteil     = Ergebnis einer Pruefung
```

### 13.4 Nicht-Gleichsetzungen

| Begriff | Nicht gleichzusetzen mit |
|---|---|
| Pruefkriterium | Pruefstandard |
| Pruefstandard | Pruefalgorithmus |
| Pruefalgorithmus | Pruefroutine |
| Pruefroutine | operative Regel |
| operative Regel | Pruefroutine |
| Pruefurteil | Definition |
| Pruefartefakt | kanonisches Raumelement |

### 13.5 Zirkularitaetsschutz

Zulaessig:

```text
Definitorische Mindestschicht -> Pruefstandard -> Pruefalgorithmus -> Pruefroutine -> Pruefurteil
```

Unzulaessig:

```text
Pruefroutine -> Pruefstandard -> Definition
Pruefstandard -> Axiomgueltigkeit
Pruefurteil -> Definition
operative Regel -> Kernaxiom
```

### 13.6 Verhaeltnis zum Gesamt-Konsistenzaudit

Der Gesamt-Konsistenzaudit ist eine Pruefroutine. Er ist kein einzelnes Pruefkriterium, kein Pruefstandard, kein Pruefalgorithmus und kein Raumelement. Er wendet den Pruefalgorithmus auf den gesamten Elementbestand an.

## 14. Rekursiver Pruefstandard

Jedes Raumelement wird bei Neuaufnahme, Umklassifizierung, Revision oder Materialisierung mindestens gegen folgende Achsen geprueft:

1. Funktion
2. Rueckbindung
3. Trennschaerfe
4. Ebenenangemessenheit
5. Evidenzstatus
6. Quellenrolle
7. Nicht-Geltung
8. vererbte Nicht-Geltung
9. Spannungen
10. vererbte Spannungen
11. Konfliktlage
12. Mehrfachableitung
13. Typ der Mehrfachableitung
14. Redundanzstatus
15. Orthogonalitaet
16. Verwaisungsstatus
17. Kollapstest / Aufwertung
18. Unterordnungstest
19. Leistungs- / Geschwindigkeitsgrenze
20. Revisionsfolgen
21. finale Entscheidung

## 15. Pruefalgorithmus und Suchspur

Der Pruefalgorithmus ist ein Pruefartefakt auf der Anwendungsebene. Er gehoert nicht zur definitorischen Mindestschicht, sondern bestimmt die Reihenfolge, in der deren Typen, Relationen und Wohlgeformtheitsregeln angewendet werden.


### 15.1 Aktualitaetsbefund
Der bisherige Pruefalgorithmus war fuer Typisierung, Rueckbindung, Wohlgeformtheit, Konfliktlage und Entscheidung brauchbar. Nach Integration der logischen Konsistenzschicht muss er jedoch ausdruecklich auch Zirkularitaet, Ableitungsrichtung, Ebenenreinheit, Gegenmodellpruefung und Suchspur abdecken.

### 15.2 Algorithmus
Ein Element wird in folgender Reihenfolge geprueft:

1. **Quellanker setzen:** Element, Fundstelle, Version und Kontext notieren.
2. **Primaertyp bestimmen:** genau einen Primaertyp zuweisen: Kernaxiom, Designprinzip, Qualitaetsattribut, operative Regel, Kopplungsfolge, Pruefartefakt oder Reservebegriff.
3. **Wohlgeformtheit pruefen:** je nach Typ W1 bis W5 anwenden.
4. **Ableitungskante setzen:** erlaubte Relation bestimmen, etwa `leitet_ab`, `operationalisiert`, `bewertet_durch`, `begrenzt_durch`, `vererbt_an`, `koppelt`.
5. **Ableitungsrichtung pruefen:** regulaere Richtung ist `Kernaxiom -> Designprinzip -> Qualitaetsattribut -> operative Regel`; Rueckwaertsbegruendung ist unzulaessig.
6. **Zykluspruefung durchfuehren:** direkte Selbstableitung und indirekte Ableitungszyklen ausschliessen.
7. **Ebenenreinheit pruefen:** kein Axiom als Messgroesse, kein Prinzip als Regel, kein Attribut als Normbefehl, keine Regel als Ausgangswahrheit.
8. **Nicht-Geltung und Konfliktlage erfassen:** Grenzen, Spannungen, vererbte Spannungen und Regelkollisionen notieren.
9. **Gegenmodell pruefen:** fragen, ob das Element plausibel einem anderen Typ zugeordnet werden koennte.
10. **Operationalisierungsgrenze setzen:** Messbarkeit erst ab Qualitaetsattributen; Vollzug erst bei operativen Regeln.
11. **Beurteilbarkeitsstatus vergeben:** objektiv artefaktbelegt, prozessual rekonstruierbar, heuristisch plausibel oder nicht belastbar beurteilbar.
12. **Entscheidung treffen:** beibehalten, enger fassen, unterordnen, umklassifizieren, deprekieren oder verwerfen.
13. **Suchspur sichern:** alle relevanten Pruefentscheidungen in einer nachvollziehbaren Spur dokumentieren.

### 15.3 Suchspur-Minimum
Jede Pruefung erzeugt mindestens folgende Spur:

| Feld | Inhalt |
|---|---|
| Suchspur-ID | eindeutige Pruefkennung |
| Element | gepruefter Begriff oder Satz |
| Fundstelle | Datei, Abschnitt oder Rohdatenanker |
| Primaertyp | gewaehlter Elementtyp |
| Rueckbindung | Axiom, Prinzip oder Relation |
| angewendete Regeln | W-Regeln, L-Regeln, Invarianten |
| Ableitungskanten | gerichtete Relationen |
| Zyklusbefund | kein Zyklus / Zyklusverdacht / Zyklus |
| Gegenmodell | alternative Typisierung oder Gegenbeispiel |
| Beurteilbarkeitsstatus | objektiv / rekonstruierbar / heuristisch / nicht belastbar |
| Entscheidung | beibehalten, enger fassen, umklassifizieren, deprekieren, verwerfen |
| Restunsicherheit | offen, begrenzt oder keine |

### 15.4 Verhaeltnis zum rekursiven Pruefstandard
Der rekursive Pruefstandard in Abschnitt 14 ist der allgemeine Fragenkatalog. Die definitorische Mindestschicht und die logische Konsistenzschicht liefern die Grammatik, nach der dieser Fragenkatalog angewendet wird. Der Pruefstandard prueft also innerhalb dieser Grammatik; er begruendet sie nicht selbst.

## 16. Routinen

### 16.1 Neuaufnahme eines Folgeelements

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
16. Entscheidung: aufnehmen, unterordnen, umklassifizieren oder verwerfen

### 16.2 Umklassifizierung

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
15. Matrix und Grundlagendokument spiegeln

### 16.3 Axiomrevision -> Folgeebenen-Nachzug

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

### 16.4 Gesamt-Konsistenzaudit

Der Gesamt-Konsistenzaudit ist eine Pruefroutine fuer den gesamten Elementbestand.

#### Anlass
Er ist auszufuehren:
1. vor der Bildung eines Messrahmens fuer Qualitaetsattribute,
2. vor der Uebersetzung operativer Regeln in Pruefverfahren,
3. nach Aenderungen an definitorischer Mindestschicht oder logischer Konsistenzschicht,
4. vor Repo-Architekturmapping oder Materialisierungsentscheidungen.

#### Zweck
Er prueft:
1. Primaertypisierung,
2. Rueckbindung,
3. Ableitungsrichtung,
4. Zirkularitaetsfreiheit,
5. Ebenenreinheit,
6. Gegenmodellrisiko,
7. Konfliktlage,
8. Beurteilbarkeitsstatus.

#### Ablauf
1. Elementinventar erstellen.
2. Primaertyp je Element bestimmen.
3. Rueckbindung je Folgeelement pruefen.
4. Ableitungsgraph erstellen.
5. Zyklus- und Rueckwaertsbegruendung pruefen.
6. Gegenmodell je Element formulieren.
7. Fehler als beibehalten, enger fassen, unterordnen, umklassifizieren, deprekieren oder verwerfen entscheiden.
8. Suchspur je Entscheidung sichern.

#### Ergebnis
Das Ergebnis ist eine Prueftabelle, kein neues Raumelement.

## 17. Elementgenaue Rueckbindung, Bewertungslogik und Redundanzpruefung

### 17.1 Zweck

Dieser Abschnitt beseitigt drei logisch-definitorische Maengel aus dem Pruefartefakt `ASWE_Axiomraum_Schritte_1_bis_4_Pruefung_20260423_V3.md`:

1. fehlende elementgenaue Rueckbindungsmatrix,
2. fehlende Schwellen- beziehungsweise Bewertungslogik fuer Qualitaetsattribute,
3. begrenzt entscheidbare Redundanz zwischen Folgeelementen.

Er erzeugt keine neuen Kernaxiome, keine neuen Folgeebenen und keine neuen Raumelemente. Die Tabellen sind Pruef- und Ordnungsartefakte. Unsichere Zuordnungen werden markiert statt als Scheingenauigkeit formuliert.

### 17.2 Elementgenaue Rueckbindungsmatrix

| Element | Primaertyp | Rueckbindung auf Kernaxiom | Rueckbindung auf Folgeelement | Rueckbindungsstatus | Ableitungsrichtung | Beurteilbarkeitsstatus | Entscheidung |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Explizitheit kritischer Annahmen | Designprinzip | A1, A3 | Unsicherheiten markieren | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| regelgebundene Selbstkritik | Designprinzip | A3, A5, B5 | Gegenbeispiele und Testfaelle anfuehren | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| adversariale Pruefbarkeit | Designprinzip | A5, K2 | Gegenbeispiele und Testfaelle anfuehren | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| evaluator-kritische Testdisziplin | Designprinzip | A5, K2 | Prueftiefe an Tragweite und Reversibilitaet ausrichten | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| definitorische Priorisierung | Designprinzip | B1, B2 | Begriff vor Benennung, Benennung vor Regelung | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| Rollen- und Relationsreinheit | Designprinzip | B2, K3 | Spiegel und Adapter nicht als semantischen Ursprung behandeln | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| kontrollierte Kopplung | Designprinzip | B4, K3 | Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| driftwachsame Revisionsdisziplin | Designprinzip | B5, A3 | Aenderungen gegen Drift und Revisionsfaehigkeit pruefen | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| Verifikationsfaehigkeit | Designprinzip | A5, K2 | Bewertung vor Materialisierung | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| epistemische Staffelung | Designprinzip | A2, K1 | Aussagearten trennen | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| Materialisierungsdisziplin | Designprinzip | K2, B4, K3 | Bewertung vor Materialisierung | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| keine konkurrierende Wahrheitsquelle | Designprinzip | B3, K3 | Herkunft und Referenzen mitfuehren | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| Ausnahmebehandlungs-Explizitheit | Designprinzip | A1, A3, B4 | Unsicherheiten markieren | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision | Designprinzip | B5, K2 | Aenderungen gegen Drift und Revisionsfaehigkeit pruefen | strukturimplizit rekonstruierbar | Kernaxiom -> Designprinzip | strukturimplizit rekonstruierbar | beibehalten |
| Driftresistenz | Qualitaetsattribut | B5 | driftwachsame Revisionsdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Kontrollierbarkeit in enger Fassung | Qualitaetsattribut | A4, B5 | regelgebundene Selbstkritik | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Reproduzierbarkeit | Qualitaetsattribut | A5 | Verifikationsfaehigkeit | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| argumentative Nachvollziehbarkeit | Qualitaetsattribut | A2, K1 | epistemische Staffelung | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Wiederauffindbarkeit | Qualitaetsattribut | B3 | keine konkurrierende Wahrheitsquelle | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Persistenz in enger Fassung | Qualitaetsattribut | B3, B5 | Materialisierungsdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Reparierbarkeit | Qualitaetsattribut | B5, A4 | driftwachsame Revisionsdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Wartbarkeit | Qualitaetsattribut | B5, B4 | kontrollierte Kopplung | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| duale Lesbarkeit in enger Fassung | Qualitaetsattribut | B3, B4 | Rollen- und Relationsreinheit | heuristisch plausibel | Designprinzip -> Qualitaetsattribut | heuristisch plausibel | beibehalten; enger fassen |
| Wahrheitsquellenstabilitaet in enger Fassung | Qualitaetsattribut | B3, K3 | keine konkurrierende Wahrheitsquelle | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Ableitungsnachvollziehbarkeit | Qualitaetsattribut | A3, B3, K1 | epistemische Staffelung | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Vererbungskonsistenz | Qualitaetsattribut | B5, K2 | Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Rueckrollbarkeit | Qualitaetsattribut | A4, B5 | Materialisierungsdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> Qualitaetsattribut | strukturimplizit rekonstruierbar | beibehalten |
| Ausfuehrungseffizienz | Qualitaetsattribut | A4 | Prueftiefe an Tragweite und Reversibilitaet ausrichten | heuristisch plausibel | Qualitaetsattribut bleibt nachgeordnet | heuristisch plausibel | beibehalten; nicht zielbildsteuernd |
| Zielbild vor Ausfuehrung explizieren | Operative Regel | A1 | Explizitheit kritischer Annahmen | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Aussagearten trennen | Operative Regel | A2, K1 | epistemische Staffelung | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Unsicherheiten markieren | Operative Regel | A3 | Explizitheit kritischer Annahmen | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| kleinsten sicheren naechsten Schritt waehlen | Operative Regel | A4 | regelgebundene Selbstkritik | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Gegenbeispiele und Testfaelle anfuehren | Operative Regel | A5 | adversariale Pruefbarkeit | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Begriff vor Benennung, Benennung vor Regelung | Operative Regel | B1 | definitorische Priorisierung | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Herkunft und Referenzen mitfuehren | Operative Regel | B3 | keine konkurrierende Wahrheitsquelle | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Pfadwechsel nur ueber explizite Schnittstellen | Operative Regel | B4 | kontrollierte Kopplung | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Aenderungen gegen Drift und Revisionsfaehigkeit pruefen | Operative Regel | B5 | driftwachsame Revisionsdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Bewertung vor Materialisierung | Operative Regel | K2 | Materialisierungsdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Spiegel und Adapter nicht als semantischen Ursprung behandeln | Operative Regel | K3 | Rollen- und Relationsreinheit | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Kopplungen explizit markieren und asymmetrische Kopplungen kennzeichnen | Operative Regel | K3, B4 | kontrollierte Kopplung | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Deprekation statt stiller Entfernung markieren | Operative Regel | B5, A3 | driftwachsame Revisionsdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Prueftiefe an Tragweite und Reversibilitaet ausrichten | Operative Regel | A4, K2 | evaluator-kritische Testdisziplin | strukturimplizit rekonstruierbar | Designprinzip -> operative Regel | strukturimplizit rekonstruierbar | beibehalten |
| Scope-Bindung wirkt bis in Materialisierung und Operationalisierung. | Kopplungsfolge | A1, K2 | Materialisierungsdisziplin | strukturimplizit rekonstruierbar | A/K -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |
| Epistemische Reinheit ist in Verhalten und Architektur gemeinsam basal. | Kopplungsfolge | A2, B2, K1 | epistemische Staffelung | strukturimplizit rekonstruierbar | A/B/K -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |
| Auditierbarkeit braucht Provenienz und Referenzierbarkeit. | Kopplungsfolge | A3, B3 | keine konkurrierende Wahrheitsquelle | strukturimplizit rekonstruierbar | A/B -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |
| Rueckgabefaehige Schrittlogik braucht explizite Pfad- und Schnittstellenlogik. | Kopplungsfolge | A4, B4 | kontrollierte Kopplung | strukturimplizit rekonstruierbar | A/B -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |
| Testbarkeit muss vor operative Uebernahme treten. | Kopplungsfolge | A5, K2 | Verifikationsfaehigkeit | strukturimplizit rekonstruierbar | A/K -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |
| Ontologische Trennschaerfe stabilisiert Spiegel-/Adapter-Asymmetrie. | Kopplungsfolge | B2, K3 | Rollen- und Relationsreinheit | strukturimplizit rekonstruierbar | B/K -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |
| Governierte Evolvierbarkeit verlangt begrenzte Ausfuehrungs- und Rueckgabelogik. | Kopplungsfolge | B5, A4 | driftwachsame Revisionsdisziplin | strukturimplizit rekonstruierbar | B/A -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |
| Axiomrevision erzwingt Folgeebenen-Nachzug. | Kopplungsfolge | B5, K2 | Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision | strukturimplizit rekonstruierbar | Axiomrevision -> Kopplungsfolge | strukturimplizit rekonstruierbar | beibehalten |

### 17.3 Bewertungslogik fuer Qualitaetsattribute

Die folgenden Schwellen sind qualitative Mindest-, Warn- und Korrekturschwellen. Quantitative Schwellen werden nicht erzwungen, wenn sie aus dem Dokument nicht belastbar ableitbar sind.

| Qualitaetsattribut | Bewertungsgegenstand | Indikator | Bewertungsmodus | Mindestschwelle | Warnschwelle | Korrekturschwelle | Nicht-Geltung | Konfliktlage | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Driftresistenz | Dokument- oder Begriffsstand | unbegruendete Bedeutungs-/Statusverschiebung | qualitativ ordinal; Driftfaelle zaehlen | keine unbegruendete Drift in kanonischen Elementen | ein ungepruefter Driftverdacht | unklaerbare oder wiederholte Drift | nicht fuer bewusst dokumentierte Revision | Effizienz kann Driftpruefung verkuerzen | heuristisch plausibel |
| Kontrollierbarkeit in enger Fassung | Pruef- oder Aenderungsprozess | Rueckgabe-, Stopp- oder Korrekturpunkt vorhanden | binaer je nichttrivialer Entscheidung | Entscheidung hat Kontrollpunkt | Kontrollpunkt nur implizit | kein Kontrollpunkt bei weitreichender Entscheidung | nicht fuer rein lesende Beobachtung | Kontrolle vs. Ausfuehrungseffizienz | heuristisch plausibel |
| Reproduzierbarkeit | Pruefergebnis | gleiche Eingabe fuehrt zu gleicher Klassifikation/Entscheidung | ordinal: gleich / abweichend / nicht pruefbar | gleiche Klassifikation bei Wiederholung | abweichende Begruendung bei gleicher Entscheidung | abweichende Entscheidung ohne neue Evidenz | nicht fuer explorative Ideation | Reproduzierbarkeit vs. Deutungsspielraum | heuristisch plausibel |
| argumentative Nachvollziehbarkeit | Bewertungsabschnitt | explizite Begruendung und Statusangabe | Anteil begruendeter Urteile | jedes Urteil hat Begruendung und Status | Begruendung ohne Status | Urteil ohne Begruendung | nicht fuer reine Listenuebernahme | Kuerze vs. Begruendungstiefe | heuristisch plausibel |
| Wiederauffindbarkeit | Referenz oder Element | Datei-, Abschnitts- oder Tabellenanker | binaer je Element | kanonisches Element hat Fundstelle | Fundstelle nur Abschnittsebene | keine Fundstelle | nicht fuer nichtmaterialisierte Chatfragmente | Granularitaet vs. Pflegeaufwand | heuristisch plausibel |
| Persistenz in enger Fassung | persistenzpflichtige Entscheidung | dauerhafte Ablage im Dokument oder Support-Artefakt | binaer je Entscheidung | kanonische Entscheidung ist persistiert | Support-Beleg statt Hauptdokument | kanonische Entscheidung nur transient | nicht fuer Arbeitshypothesen | Persistenz vs. Ueberdokumentation | heuristisch plausibel |
| Reparierbarkeit | Fehler oder Mangel | lokalisierbarer Korrekturpunkt | ordinal: lokal / verteilt / unklar | Mangel ist lokal korrigierbar | Korrektur beruehrt mehrere Abschnitte | Mangel ohne lokalisierbare Ursache | nicht fuer offene Forschungsfragen | Reparatur vs. Neuentwurf | heuristisch plausibel |
| Wartbarkeit | Dokumentstruktur | Aenderung betrifft klare Abschnittsrolle | ordinal | Aenderungsort eindeutig | mehrere konsistente Nachzuege noetig | unklare Aenderungsstelle | nicht fuer einmalige Belegsammlung | Modularitaet vs. Lesefluss | heuristisch plausibel |
| duale Lesbarkeit in enger Fassung | Dokument und Pruefartefakt | Prosa plus strukturierte Tabelle/Diagramm | qualitativ | pruefkritische Inhalte strukturiert greifbar | nur teilweise strukturiert | nur Fliesstext fuer pruefkritische Inhalte | nicht fuer rein erklaerende Abschnitte | Lesbarkeit vs. Formalisierung | heuristisch plausibel |
| Wahrheitsquellenstabilitaet in enger Fassung | Wahrheitsquelle | eindeutiges Primaerartefakt je Entscheidung | binaer je Entscheidung | Primaerartefakt eindeutig | Support-Artefakt konkurriert scheinbar | mehrere konkurrierende Primaerquellen | nicht fuer bewusst parallele Belege | Stabilitaet vs. Aktualisierung | heuristisch plausibel |
| Ableitungsnachvollziehbarkeit | Folgeelement | Rueckbindung in Matrix | Anteil Folgeelemente mit Rueckbindung | alle Folgeelemente mit Status und Entscheidung | Rueckbindung nur strukturimplizit | keine Rueckbindung | nicht fuer Reservebegriffe | Strenge vs. Scheingenauigkeit | heuristisch plausibel |
| Vererbungskonsistenz | Folgeelement nach Axiomrevision | nachgezogene Nicht-Geltung/Spannung | binaer je betroffener Folge | betroffene Folgen geprueft | Nachzug nur auf Cluster-Ebene | kein Nachzug trotz Aenderung | nicht ohne Aenderungsanlass | Nachzugspflicht vs. Aufwand | heuristisch plausibel |
| Rueckrollbarkeit | Aenderung/Materialisierung | Ruecknahmeoption vorhanden | binaer je Aenderung | Rueckrollpfad oder Vorversion vorhanden | Rueckroll nur manuell rekonstruierbar | keine Rueckrollmoeglichkeit bei materialisierter Aenderung | nicht fuer rein lesende Pruefung | Rueckrollbarkeit vs. Persistenz | heuristisch plausibel |
| Ausfuehrungseffizienz | Pruefablauf | Aufwand pro belastbarem Urteil | qualitativ oder zaehlend | Effizienz unterlaeuft keine Pruefpflicht | Effizienz reduziert nur Detailtiefe | Effizienz ersetzt Pruefpflicht | nicht bei hohem Zielbildrisiko | Effizienz vs. Prueftiefe | heuristisch plausibel |

### 17.4 Redundanz- und Orthogonalitaetspruefung

| Element A | Element B/Cluster | Redundanztyp | Konfliktlage | Rueckbindungsvergleich | Entscheidung | Begruendung | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Explizitheit kritischer Annahmen | Ausnahmebehandlungs-Explizitheit | funktionale Ueberlappung | produktive Spannung | A1/A3 vs. A1/A3/B4 | beibehalten; Ausnahmebezug enger | Ausnahmebehandlung ist Unterfall kritischer Annahmen mit Schnittstellenbezug; keine Dublette | heuristisch plausibel |
| regelgebundene Selbstkritik | adversariale Pruefbarkeit / evaluator-kritische Testdisziplin | komplementaere Mehrfachableitung | produktive Spannung | A3/A5/B5 vs. A5/K2 | beibehalten; Rollen getrennt | Selbstkritik ist Haltung, adversarialer Test Gegenmodelllogik, evaluator-kritische Disziplin prueft Verfahren | heuristisch plausibel |
| Rollen- und Relationsreinheit | kontrollierte Kopplung | komplementaere Mehrfachableitung | keine Dublette | B2/K3 vs. B4/K3 | beibehalten | Rollenreinheit trennt Klassen; kontrollierte Kopplung regelt erlaubte Verbindungen | strukturimplizit rekonstruierbar |
| definitorische Priorisierung | epistemische Staffelung | semantische Naehe | keine Dublette | B1/B2 vs. A2/K1 | beibehalten | Definition ordnet Begriffe; Staffelung ordnet Aussagearten | strukturimplizit rekonstruierbar |
| Materialisierungsdisziplin | Bewertung vor Materialisierung | Prinzip-Regel-Ableitung | keine Redundanz | K2/B4/K3 vs. K2 | beibehalten; Regel operationalisiert Prinzip | Designprinzip und operative Regel sind verschiedene Ebenen | strukturimplizit rekonstruierbar |
| keine konkurrierende Wahrheitsquelle | Wahrheitsquellenstabilitaet in enger Fassung | Prinzip-Attribut-Ableitung | keine Redundanz | B3/K3 vs. B3/K3 | beibehalten | Prinzip fordert keine Konkurrenz; Attribut bewertet Stabilitaet | strukturimplizit rekonstruierbar |
| driftwachsame Revisionsdisziplin | Driftresistenz | Prinzip-Attribut-Ableitung | keine Redundanz | B5/A3 vs. B5 | beibehalten | Prinzip steuert Revision; Attribut bewertet Driftarmut | strukturimplizit rekonstruierbar |
| Wiederauffindbarkeit | Persistenz in enger Fassung | semantische Naehe | echte Spannung | B3 vs. B3/B5 | beibehalten; Persistenz enger | Persistenz bedeutet dauerhafte Ablage; Wiederauffindbarkeit bedeutet adressierbare Auffindung | heuristisch plausibel |
| Reparierbarkeit | Rueckrollbarkeit | funktionale Naehe | komplementaer | B5/A4 vs. A4/B5 | beibehalten | Reparierbarkeit behebt Fehler; Rueckrollbarkeit stellt Zustand wieder her | heuristisch plausibel |
| Wartbarkeit | Reparierbarkeit / Rueckrollbarkeit | funktionale Naehe | komplementaer | B5/B4 vs. B5/A4 | beibehalten | Wartbarkeit ist dauerhafte Aenderbarkeit; Reparatur/Rueckroll sind spezifische Faelle | heuristisch plausibel |
| duale Lesbarkeit in enger Fassung | Wiederauffindbarkeit | Scheinkonflikt | keine Dublette | B3/B4 vs. B3 | beibehalten; duale Lesbarkeit eng fuehren | Lesbarkeit fuer Mensch/Maschine ist nicht identisch mit Auffindbarkeit | heuristisch plausibel |
| Ableitungsnachvollziehbarkeit | argumentative Nachvollziehbarkeit | semantische Naehe | komplementaer | A3/B3/K1 vs. A2/K1 | beibehalten | Ableitung betrifft Herkunft von Elementen; Argumentation betrifft Begruendung von Urteilen | strukturimplizit rekonstruierbar |
| Vererbungskonsistenz | Nachzugsdisziplin fuer Folgeebenen bei Axiomrevision | Prinzip-Attribut-Ableitung | keine Redundanz | B5/K2 vs. B5/K2 | beibehalten | Prinzip fordert Nachzug; Attribut bewertet konsistenten Nachzug | strukturimplizit rekonstruierbar |
| Ausfuehrungseffizienz | Prueftiefe an Tragweite und Reversibilitaet ausrichten | Attribut-Regel-Spannung | echte Spannung | A4 vs. A4/K2 | beibehalten; Effizienz nachgeordnet | Effizienz darf Prueftiefe nicht uebersteuern | strukturimplizit rekonstruierbar |
| Axiomrevision erzwingt Folgeebenen-Nachzug | Nachzugsdisziplin / Vererbungskonsistenz | Kopplungsfolge-Prinzip-Attribut-Cluster | komplementaer | B5/K2 | beibehalten | Kopplungsfolge setzt Pflicht, Prinzip fuehrt Haltung, Attribut bewertet Ergebnis | strukturimplizit rekonstruierbar |

### 17.5 Ergebnis der Maengelbeseitigung

| Mangel | Status | Begruendung |
| --- | --- | --- |
| fehlende elementgenaue Rueckbindungsmatrix | beseitigt mit Statusmarkierung | jedes Folgeelement hat Rueckbindung, Rueckbindungsstatus und Entscheidung |
| fehlende Schwellen-/Bewertungslogik fuer Qualitaetsattribute | beseitigt qualitativ | jedes Qualitaetsattribut hat Bewertungsgegenstand, Indikator, Bewertungsmodus und Schwellenlogik |
| begrenzt entscheidbare Redundanz | ueberwiegend beseitigt | zentrale auffaellige Paare/Cluster sind entschieden; vollstaendige formale Redundanzpruefung bleibt von kuenftiger Graphauswertung abhaengig |

## 18. Leistungs- und Geschwindigkeitslogik

Leistungs- und Geschwindigkeitsaspekte sind nicht basal.

Kanonisch zugelassen sind:

- **Ausfuehrungseffizienz** als sekundaeres Qualitaetsattribut.
- **Prueftiefenangemessenheit** als operative Regel.

Nicht kanonisiert sind:

- Antwortzeitangemessenheit
- Leistungsstabilitaet
- leitplankenkonforme Leistungsoptimierung

Beschleunigung, verringerte Prueftiefe oder Effizienzsteigerung sind unzulaessig, wenn sie Rueckbindung, Trennschaerfe, Leitplanken, Konfliktklaerung, Vererbungslogik oder Zielbildschutz unterlaufen.

## 19. Bewusst nicht kanonisierte Reserve- und Pruefbegriffe

Nicht als feste Raumelemente gefuehrt werden:

- Portierbarkeit
- Evidenzdisziplin
- Antwortzeitangemessenheit
- Leistungsstabilitaet
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

## 20. Materialisierungsregel

Dieses Dokument ist repo-materialisierbar, weil es alleinstehend ist. Die konkrete Repo-Integration bleibt dennoch an eine separate Entscheidung gebunden:

1. Zielpfad bestimmen.
2. Artefaktrolle bestimmen.
3. Abgleich mit bestehender Repo-Governance.
4. Review- oder Commit-Verfahren festlegen.
5. Rueckrollmoeglichkeit definieren.

## 21. Minimaler Begruendungsrahmen

Die folgenden Referenzklassen bleiben fuer Weiterentwicklung primaer:

- Terminologie- und Begriffsarbeit: ISO 704
- Architektur- und Systembeschreibung: ISO/IEC/IEEE 42010
- Wissensorganisation und semantische Relationen: SKOS
- Provenienzmodellierung: PROV-O
- Beobachtungs- und Sensormodellierung: SOSA/SSN
- LLM-Verhaltenspruefung und Evaluationsmethodik: behaviorale Tests, adversariale Pruefung und evaluator-kritische Pruefansaetze
- Selbstadaptive Systeme und governierte Evolvierbarkeit: Arbeiten zu selbstadaptiven Systemen und autonomer Systemsteuerung

Dieses Dokument setzt diese Referenzen nicht als vollstaendigen Literaturapparat, sondern als stabile Begruendungsklassen fuer spaetere Ausarbeitung.

## 22. Revisionsregel

Eine spaetere Revision dieses Dokuments ist nur zulaessig, wenn sie:

- Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung erneut expliziert,
- A, B und K getrennt behandelt,
- Folgeebenen nicht implizit zu Kernaxiomen aufwertet,
- Axiomrevisionen bis in Folgeebenen nachzieht,
- Konfliktlagen sichtbar macht,
- Deprekation statt stiller Entfernung nutzt,
- und die Materialisierungsregel erhaelt.

## 22.1 Selbstpruefung der Maengelbeseitigung

| Pruefpunkt | Ergebnis |
| --- | --- |
| Rueckbindungsmatrix fuer alle Folgeelemente vorhanden | erfuellt |
| jedes Folgeelement hat Rueckbindungsstatus | erfuellt |
| kein Folgeelement ohne Entscheidung | erfuellt |
| Qualitaetsattribute haben Bewertungslogik | erfuellt |
| keine Messung von Kernaxiomen oder Designprinzipien | erfuellt |
| Redundanzpruefung durchgefuehrt | erfuellt fuer zentrale auffaellige Paare/Cluster |
| keine neuen Axiome erzeugt | erfuellt |
| keine neuen Folgeebenen erzeugt | erfuellt |
| Pruefartefakte nicht als Raumelemente behandelt | erfuellt |
| keine Rueckwaertsbegruendung | erfuellt |
| keine Zirkularitaet | kein belegter Fall |
| Unsicherheiten statt Scheingenauigkeit markiert | erfuellt durch Rueckbindungs- und Beurteilbarkeitsstatus |

**Endurteil:** Maengel beseitigt, mit verbleibender methodischer Grenze: Die Rueckbindungen sind ueberwiegend strukturimplizit rekonstruierbar und nicht objektiv zeilen- oder quellenextern belegt.


## 23. Schlussstatus

Dieses Grundlagendokument ist ein repo-materialisierbarer, aber weiter entwickelbarer Ausgangspunkt. Es ist kein Abschlussbericht, sondern ein kanonischer Grundlagenstand fuer spaetere Integration, Anwendung und kontrollierte Revision.
