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
