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

```text
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
```

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
