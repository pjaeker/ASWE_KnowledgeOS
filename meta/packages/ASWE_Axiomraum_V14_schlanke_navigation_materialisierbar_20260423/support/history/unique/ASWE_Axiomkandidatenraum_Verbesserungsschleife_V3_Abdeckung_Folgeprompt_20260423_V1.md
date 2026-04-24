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
```text
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
```

---

## 8. Schlussurteil

D1/V2 ist bereits **deutlich trennschaerfer und reifer** als fruehere Fassungen.  
Die wichtigste noch offene Reifestufe ist jetzt **nicht** weitere grobe Expansion, sondern die **Metaqualitaetspruefung des vorhandenen Raums**.

Der naechste entscheidende Schritt ist daher:
- von Statusklarheit zu **Ableitungsclosure**,
- von Spannungsbeschreibung zu **Konsistenzaudit**,
- von breiter Kandidatensammlung zu **Saettigungs- und Vollstaendigkeitsurteil**.
