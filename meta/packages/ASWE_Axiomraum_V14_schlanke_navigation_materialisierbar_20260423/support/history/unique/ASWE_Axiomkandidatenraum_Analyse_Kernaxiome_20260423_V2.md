# ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2

## 1. Pre-Flight

### Zielbild
Ziel bleibt ein **begrifflich disziplinierter, extern primaer gestuetzter und operationalisierbarer Kernaxiomensatz** fuer zwei explizit gebundene Gegenstandsbereiche:

- **A)** LLM-Verhaltenssteuerung
- **B)** ASWE_KnowledgeOS-Architektur

Gesucht ist weiterhin **kein allgemeiner Qualitaetskatalog**, sondern ein Satz von **Kernaxiomen**, aus denen sich starke Designprinzipien, sekundaere Qualitaetsattribute und operative Regeln ableiten lassen. Dieses Zielbild bleibt gegenueber D1 unveraendert und darf gemaess D2 und D3 nicht aufgeweicht werden. fileciteturn11file16 fileciteturn11file12

### Gegenstand
Gegenstand sind nicht einzelne Tools, Dateien oder Workflows, sondern:

- bei **A**: Prinzipien zur Zielbindung, epistemischen Disziplin, Pruefbarkeit, Unsicherheitsmarkierung und kontrollierten Ausfuehrung von LLM-Arbeit;
- bei **B**: Prinzipien zur begrifflichen Ordnung, ontologischen Trennschaerfe, Provenienz, Referenzierbarkeit, expliziten Pfaden und governierter Evolvierbarkeit der Architektur;
- zusaetzlich: **Kopplungsaxiome**, die beide Bereiche verbinden, ohne sie zu verschmelzen.

### Geltungsbereich
Die revidierten Aussagen beanspruchen Geltung fuer:

- konzeptionelle Grundlegung,
- Prompt- und Architekturvertraege,
- Vorpruefungs-, Evaluations- und Materialisierungslogik,
- spaetere Operationalisierung in ASWE-nahen, kontrollierten Umgebungen.

### Nicht-Geltung
Nicht primaerer Gegenstand sind:

- konkrete Oberflaechenentscheidungen,
- konkrete Dateipfade als semantischer Ursprung,
- konkrete Modellwahl,
- Kosten-, Latenz- oder Throughput-Optimierung als Primaerziel,
- lokale Governance-Instanzen, soweit sie nicht aus allgemeineren Prinzipien ableitbar sind.

### Epistemischer Status
- **Beobachtung:** D1 liefert bereits einen tragfaehigen ersten Kern und eine belastbare Trennung zwischen Kernaxiomen und sekundaeren Merkmalen. fileciteturn11file9 fileciteturn11file4
- **Aussage:** D3 verlangt eine Revision entlang von Terminologiepolitik, Statusklarheit, Nicht-Geltung, Grenzfaellen, Phasenrobustheit und Kopplungsstabilitaet. fileciteturn11file2 fileciteturn11file5
- **Hypothese:** Mehrere A-seitige Aussagen bleiben tragfaehig, muessen aber enger gefasst werden, wenn ihre primaere Stuetzung weiterhin aus Preprints oder Reports stammt. fileciteturn11file15 fileciteturn11file14
- **Massstab:** Kernaxiomtauglichkeit = konstitutive Notwendigkeit, Nicht-Derivativitaet, Reichweite, Abgrenzbarkeit, pruefbare Proxy-Operationalisierung.
- **Empfehlung:** D1 wird nicht neu erfunden, sondern entlang der in D2 und D3 definierten Revisionspflichten verschaerft.

### Abstraktionsniveau
- primaer: **Grundsatz**
- sekundaer: **systemisches Strukturmodell**
- noch nicht: lokale Implementierung

### Was aus D1 inhaltlich tragend bleibt
1. die Zielbildbindung auf Kernaxiome statt Wunschkatalog, fileciteturn11file9
2. die Dreiteilung in A, B und Kopplung, fileciteturn11file9
3. die Trennung zwischen Kernaxiomen, Designprinzipien und sekundaeren Qualitaetsattributen, fileciteturn11file6 fileciteturn11file4
4. die Einschaetzung, dass B evidenzmaessig staerker fundiert ist als A. fileciteturn11file1

### Was gemaess D3 zwingend zu ueberarbeiten ist
1. Terminologie-Register und Benennungsklassen, fileciteturn11file2
2. explizite Statusklasse fuer jeden Kandidaten, fileciteturn11file5
3. Quellenrollenkennzeichnung, fileciteturn11file14
4. Nicht-Geltung, Spannungen und Grenzfaelle je Kernaxiomcluster, fileciteturn11file5
5. Phasenrobustheit, Automationssensitivitaet und Kopplungsstabilitaet, fileciteturn11file5
6. sprachliche Bereinigung ungovernierter Mischformen. fileciteturn11file8

---

## 2. Terminologie-Register

### Benennungsklassen
1. **deutscher Primaerbegriff**  
2. **englischer Alias**  
3. **Eigenname**  
4. **literaturgebundener Originalterm**

| Begriff im Dokument | Benennungsklasse | Bevorzugte Form | Alias / Originalterm | Begründung |
|---|---|---|---|---|
| LLM-Verhaltenssteuerung | deutscher Primaerbegriff | LLM-Verhaltenssteuerung | – | scope-klaerend und lokal etabliert |
| ASWE_KnowledgeOS-Architektur | deutscher Primaerbegriff | ASWE_KnowledgeOS-Architektur | – | scope-klaerend und lokal etabliert |
| Geltungsbereich | deutscher Primaerbegriff | Geltungsbereich | scope | deutscher Begriff ausreichend; Alias nur punktuell |
| Nicht-Geltung | deutscher Primaerbegriff | Nicht-Geltung | out of scope | definitorisch klarer im Deutschen |
| Terminologische Primaerordnung | deutscher Primaerbegriff | Terminologische Primaerordnung | – | zentrale B-seitige Leitkategorie |
| Ontologische Trennschaerfe | deutscher Primaerbegriff | Ontologische Trennschaerfe | – | zentrale B-seitige Leitkategorie |
| Provenienz | deutscher Primaerbegriff | Provenienz | provenance | deutscher Begriff fachlich tragfaehig |
| Referenzierbarkeit | deutscher Primaerbegriff | Referenzierbarkeit | addressability | deutscher Begriff ausreichend |
| Spurverfolgbarkeit | deutscher Primaerbegriff | Spurverfolgbarkeit | traceability | deutscher Primaerbegriff; englischer Alias nur in Quellennaehe |
| Selbstpruefung | deutscher Primaerbegriff | Selbstpruefung | self-audit | englische Form nicht noetig |
| begrenzt-rueckgabefaehige Schrittlogik | deutscher Primaerbegriff | begrenzt-rueckgabefaehige Schrittlogik | bounded step logic | ersetzt unpraezises boundedness |
| Aufsichtsfaehigkeit | deutscher Primaerbegriff | Aufsichtsfaehigkeit | oversight | englischer Alias literaturnah, aber Deutsch primaer |
| adversariale Pruefbarkeit | deutscher Primaerbegriff | adversariale Pruefbarkeit | red teaming | funktional praeziser als Hybridformen |
| Aussage-Quellen-Passung | deutscher Primaerbegriff | Aussage-Quellen-Passung | claim-source fit | deutscher Begriff ausreichend |
| Spiegel-/Adapter-Asymmetrie | deutscher Primaerbegriff + Eigennamebezug | Spiegel-/Adapter-Asymmetrie | Mirror / Adapter | deutsche Funktionsbezeichnung, repo-lokale Eigennamen bleiben zitierbar |
| PromptEval | Eigenname | PromptEval | – | repo-lokaler Vertragsname |
| Preflight | Eigenname | Preflight | – | repo-lokaler Verfahrensname |
| PromptPack | Eigenname | PromptPack | – | repo-lokaler Artefaktname |
| CheckList | literaturgebundener Originalterm | CheckList | – | etablierter Benchmark-/Methodentitel |
| LLMBAR | literaturgebundener Originalterm | LLMBAR | – | Benchmarkname |
| IFEval | literaturgebundener Originalterm | IFEval | – | Benchmarkname |
| PROV-O | literaturgebundener Originalterm | PROV-O | – | W3C-Standardbezeichnung |
| SKOS | literaturgebundener Originalterm | SKOS | – | W3C-Standardbezeichnung |
| SOSA/SSN | literaturgebundener Originalterm | SOSA/SSN | – | W3C-Standardbezeichnung |

### Terminologiepolitische Revisionsentscheide
- **ersetzt:** Self-Audit → Selbstpruefung
- **ersetzt:** boundedness → begrenzt-rueckgabefaehige Schrittlogik
- **ersetzt:** Red-Teamability → adversariale Pruefbarkeit
- **ersetzt:** Claim-Source-Fit → Aussage-Quellen-Passung
- **beibehalten als Eigenname oder Originalterm:** PromptEval, Preflight, PromptPack, CheckList, LLMBAR, IFEval, PROV-O, SKOS, SOSA/SSN

---

## 3. Revidierter Kandidatenraum

### A) LLM-Verhaltenssteuerung

| Kandidat | Statusklasse | Revisionsbefund |
|---|---|---|
| Ziel- und Geltungsbindung | Kernaxiom | bleibt Kern; begrifflich geschaerft und enger an Scope-/Nicht-Geltung gebunden |
| Epistemische Trennung | Kernaxiom | bleibt Kern; jetzt explizit auf Beobachtung, Aussage, Beleg, Hypothese, Kriterium, Empfehlung bezogen |
| Auditierbarkeit | Kernaxiom | bleibt Kern; enger an Revision, Fehlersuche und Begruendungsketten gebunden |
| Unsicherheitsmarkierung | Kernaxiom mit engerem Geltungsanspruch | bleibt Kern fuer hochrelevante oder pruefpflichtige Arbeit; nicht jede alltaegliche Interaktion benoetigt dieselbe Strenge |
| begrenzt-rueckgabefaehige Schrittlogik | Kernaxiom mit engerem Geltungsanspruch | bleibt Kern fuer ASWE-nahe, kontrollierte LLM-Arbeit; nicht als universelles Naturgesetz aller LLM-Nutzung formulieren |
| Aufsichtsfaehigkeit | Kernaxiom mit engerem Geltungsanspruch | bleibt Kern fuer Systeme mit delegierter oder teilautonomer Wirkung |
| Verhaltenstestbarkeit | Kernaxiom | bleibt Kern; durch peer-reviewte Evaluationsliteratur besser abgestuetzt |
| Explizitheit kritischer Annahmen | starkes Designprinzip | in A1/A2 mitgefuehrt, nicht eigenstaendig konstitutiv |
| Vorfestlegungsdisziplin | operative Regel | aus Preflight-/Analysevertrag ableitbar, nicht basaler als A1/A2 |
| adversariale Pruefbarkeit | starkes Designprinzip | wichtiger Unterfall von Verhaltenstestbarkeit, aber nicht eigener Gründungssatz |
| Portierbarkeit | starkes Designprinzip | relevant fuer Prompt-/Artefakttrennung, aber abgeleitet |
| Driftresistenz | sekundaeres Qualitaetsattribut | Folge guter Bindungs-, Audit- und Testlogik |
| regelgebundene Selbstkritik | starkes Designprinzip | wichtig, aber als konkrete Instanziierung von A3/A4 zu lesen |
| kein zweiter semantischer Ursprung | Kopplungskandidat | wird in K3 gefuehrt |

### B) ASWE_KnowledgeOS-Architektur

| Kandidat | Statusklasse | Revisionsbefund |
|---|---|---|
| Terminologische Primaerordnung | Kernaxiom | bleibt Kern; jetzt mit ISO 704:2022 statt alterer Terminologiegrundlage schaerfer fundiert |
| Ontologische Trennschaerfe | Kernaxiom | bleibt Kern; W3C- und ontologische Standardlogik stützt den definitorischen Anspruch |
| Provenienz | Kernaxiom | bleibt Kern, aber in enger Bindung an Referenzierbarkeit und Spurverfolgbarkeit |
| Referenzierbarkeit | Kernaxiom | bleibt Kern; Wiederauffindbarkeit folgt daraus, ersetzt sie aber nicht vollstaendig |
| Pfad- und Schnittstellenexplizitheit | Kernaxiom | bleibt Kern; deutsche Form ersetzt ungefilterte Interface-Sprache |
| Governierte Evolvierbarkeit | Kernaxiom | bleibt Kern; Governierung wird noch expliziter gegen freie Selbstoptimierung abgegrenzt |
| Beobachtung-Aussage-Beleg-Staffel | Kopplungskandidat | wird als K1 gefuehrt |
| Spiegel-/Adapter-Asymmetrie | Kopplungskandidat mit B-Prioritaet | wird als K3 gefuehrt |
| Modularitaet mit expliziter Kopplung | starkes Designprinzip | bleibt wichtig, aber nicht basal genug fuer Kernstatus |
| Reparierbarkeit | sekundaeres Qualitaetsattribut | Folge guter Modularitaet, Pfadlogik und Referenzierbarkeit |
| Verifikationsfaehigkeit | starkes Designprinzip | starker Systemgrundsatz, aber aus Kernaxiomen mit ableitbar |
| Budget- und Schleifendisziplin | operative Regel | starke Governance-Regel, aber nicht architekturontologisch basal |
| Wiederauffindbarkeit | sekundaeres Qualitaetsattribut | abgeleitete Folge aus Provenienz + Referenzierbarkeit |
| Persistenz | sekundaeres Qualitaetsattribut | wichtig, aber nicht primaer konstitutiv |

### K) Gemeinsame Kopplungskandidaten

| Kandidat | Statusklasse | Revisionsbefund |
|---|---|---|
| Beobachtung-Aussage-Beleg-Trennung | Kernaxiom | bleibt Kern; als K1 explizit kopplend |
| Evaluation vor Operationalisierung | Kernaxiom | bleibt Kern; nun strikter gegen vorschnelle Materialisierung abgegrenzt |
| Spiegel-/Adapter-Asymmetrie | Kernaxiom mit asymmetrischer Kopplung | bleibt Kern, aber primaer architekturseitig verankert |
| kontrollierte Selbstverbesserung | starkes Designprinzip | wird nicht als eigener Kernsatz gefuehrt, sondern aus B5 + A4 + K2 abgeleitet |
| keine direkte Kurzschlussableitung | starkes Designprinzip | in K2 und B4 mitgefuehrt |
| explizite Rueckgabepunkte | operative Regel | aus A4 und B4 ableitbar |
| duale Lesbarkeit | sekundaeres Qualitaetsattribut | bleibt wichtig; kann spaeter rangsteigen |
| Leistungsmerkmale wie Effizienz oder Schnelligkeit | sekundaeres Qualitaetsattribut | bleiben explizit ausserhalb des Kernstatus |

---

## 4. Status- und Evidenzmatrix

### Bewertungslogik
- **Evidenzniveau hoch:** primaer durch Standards oder peer-reviewte Quellen gestuetzt
- **Evidenzniveau mittel:** gemischte Stuetzung aus peer-reviewten Quellen und Reports oder aus Architektur-Analogien
- **Evidenzniveau begrenzt:** primaer aus Reports, Preprints oder starker lokaler Governance-Synthese; Geltungsanspruch entsprechend enger

| Kandidat / Abschnitt | Statusklasse | Quellenrolle | Hauptquellen | Evidenzniveau | Geltungsanspruch nach Revision |
|---|---|---|---|---|---|
| Ziel- und Geltungsbindung | Kernaxiom | definitorisch, standardsetzend, repo-lokal anwendend | P2, R1, I1, I2 | mittel | stark fuer ASWE-nahe verhaltenssteuernde Arbeit, nicht als universale Eigenschaft aller Prompts formuliert |
| Epistemische Trennung | Kernaxiom | definitorisch, standardsetzend, repo-lokal anwendend | S4, S5, I1, I2 | hoch | breit fuer A und B tragfaehig |
| Auditierbarkeit | Kernaxiom | definitorisch, standardsetzend, empirisch, repo-lokal anwendend | S2, R1, P3, I1 | mittel bis hoch | breit fuer kontrollierte LLM-Arbeit und Architekturvertraege |
| Unsicherheitsmarkierung | Kernaxiom | empirisch, methodisch, repo-lokal anwendend | P7, PP2, I1 | mittel | enger: fuer pruefpflichtige, risikobehaftete oder begruendungssensitive Kommunikation |
| begrenzt-rueckgabefaehige Schrittlogik | Kernaxiom | standardsetzend, repo-lokal anwendend, theoretisch | R1, P4, P5, I2 | mittel | enger: fuer delegierte, mehrstufige oder teilautonome Arbeit |
| Aufsichtsfaehigkeit | Kernaxiom | standardsetzend, theoretisch, repo-lokal anwendend | R1, P4, P5, PP3, I2 | mittel | enger: fuer Systeme mit Rueckgabepflicht und Autoritaetsgrenzen |
| Verhaltenstestbarkeit | Kernaxiom | empirisch | P1, P6, PP1 | hoch bis mittel | breit; Benchmark- und Verifikationslogik klar gestuetzt |
| Terminologische Primaerordnung | Kernaxiom | standardsetzend | S1 | hoch | breit fuer Wissens- und Architekturordnung |
| Ontologische Trennschaerfe | Kernaxiom | standardsetzend, definitorisch | S3, S4, S5 | hoch | breit fuer semantische Architektur |
| Provenienz | Kernaxiom | standardsetzend | S4 | hoch | breit |
| Referenzierbarkeit | Kernaxiom | standardsetzend, architekturmethodisch | S2, S4, S3 | hoch | breit |
| Pfad- und Schnittstellenexplizitheit | Kernaxiom | standardsetzend, architekturmethodisch, repo-lokal anwendend | S2, P4, I2 | hoch bis mittel | breit fuer ASWE-Architektur |
| Governierte Evolvierbarkeit | Kernaxiom | theoretisch, architekturmethodisch, repo-lokal anwendend | P4, P5, P3, I2 | hoch bis mittel | breit, aber governance-gebunden |
| K1 Beobachtung-Aussage-Beleg-Trennung | Kernaxiom | definitorisch, standardsetzend | S4, S5, I1 | hoch | echt gemeinsam |
| K2 Evaluation vor Operationalisierung | Kernaxiom | empirisch, standardsetzend, repo-lokal anwendend | P1, R1, I1, I2 | mittel bis hoch | echt gemeinsam |
| K3 Spiegel-/Adapter-Asymmetrie | Kernaxiom | architekturmethodisch, repo-lokal anwendend | S2, I1, I2 | mittel | asymmetrisch gekoppelt; primaer B-seitig |

### Evidenzrevision gegenueber D1
1. **B1** wird auf **ISO 704:2022** aktualisiert; die aeltere 2009er Ausgabe ist nicht mehr noetig.  
2. **A5** wird nicht nur ueber CheckList, sondern zusaetzlich ueber **LLMBAR** gestuetzt; damit ist nicht nur Verhaltenstestung selbst, sondern auch die Vorsicht gegenueber LLM-als-Evaluator peer-reviewt adressiert.  
3. **A3** wird durch eine neue peer-reviewte Quelle zu sprachlicher Unsicherheitsschaetzung gestaerkt; der Geltungsanspruch bleibt dennoch enger als bei B-Kernaussagen.  
4. **A4** bleibt bewusst enger formuliert, weil die staerkste Evidenz hier weiterhin gemischt aus Standard-/Governance- und Selbstadaptionsliteratur stammt.

---

## 5. Kernaxiome

## A) Kernaxiome fuer LLM-Verhaltenssteuerung

### A1. Ziel- und Geltungsbindungsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Jede verhaltenssteuernde LLM-Instruktion muss Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung explizit binden, bevor operative Ausfuehrung oder Optimierung erfolgt.  
**Quellenrolle:** definitorisch, standardsetzend, repo-lokal anwendend  
**Quellen:** P2, R1, I1, I2  
**Revisionshinweis:** Gegenueber D1 wird der Scope-Aspekt nicht mehr nur implizit mitgefuehrt, sondern definitorisch mit dem Zielbild verschaltet.

### A2. Epistemisches Trennungsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Beobachtung, Beleg, Hypothese, Massstab, Kriterium, Empfehlung und Implementierungsschritt duerfen nicht stillschweigend ineinander uebergehen.  
**Quellenrolle:** definitorisch, standardsetzend, repo-lokal anwendend  
**Quellen:** S4, S5, I1, I2  
**Revisionshinweis:** Gegenueber D1 wird die Trennung expliziter auf die gesamte verhaltenssteuernde Argumentkette ausgedehnt.

### A3. Auditierbarkeits- und Unsicherheitsmarkierungsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** In pruefpflichtiger oder risikobehafteter LLM-Arbeit muessen tragende Annahmen, Unsicherheiten, Belegbasis und Entscheidungsschritte so markiert werden, dass spaetere Pruefung, Revision und Fehlersuche moeglich bleiben.  
**Quellenrolle:** empirisch, standardsetzend, repo-lokal anwendend  
**Quellen:** P7, R1, I1  
**Revisionshinweis:** Der Geltungsanspruch wird enger formuliert als in D1: nicht jede triviale Interaktion, wohl aber jede begruendungssensitive, delegierte oder revisionsrelevante Arbeit faellt darunter.

### A4. Axiom der begrenzt-rueckgabefaehigen Schrittlogik unter Aufsicht
**Statusklasse:** Kernaxiom  
**Definition:** In ASWE-naher, kontrollierter LLM-Arbeit duerfen mehrstufige Aufgaben nur in begrenzten, rueckgabefaehigen und uebersteuerbaren Schritten ausgefuehrt werden.  
**Quellenrolle:** standardsetzend, theoretisch, repo-lokal anwendend  
**Quellen:** R1, P4, P5, I2, PP3  
**Revisionshinweis:** Der fruehere Mischbegriff aus boundedness und oversight wird in eine deutsche Funktionsdefinition ueberfuehrt; der Geltungsanspruch bleibt bewusst enger und betriebsnah.

### A5. Verhaltenstestbarkeitsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** LLM-Verhalten muss anhand expliziter, reproduzierbarer und moeglichst verifizierbarer Tests bewertet werden, nicht nur anhand subjektiver Antwortguete.  
**Quellenrolle:** empirisch  
**Quellen:** P1, P6, PP1  
**Revisionshinweis:** D1 wird um peer-reviewte Evidenz dafuer ergaenzt, dass nicht nur Modelle, sondern auch LLM-basierte Evaluatoren selbst pruefbeduerftig sind.

## B) Kernaxiome fuer ASWE_KnowledgeOS-Architektur

### B1. Terminologische Primaerordnung
**Statusklasse:** Kernaxiom  
**Definition:** Im System wird zuerst geklaert, was ein Begriff bedeutet; erst danach folgen Benennung, Klassifikation, Regelung, Prozess und Implementierung.  
**Quellenrolle:** standardsetzend  
**Quellen:** S1  
**Revisionshinweis:** Gegenueber D1 wird die terminologische Basis auf die aktuelle ISO-704-Ausgabe aktualisiert.

### B2. Ontologische Trennschaerfe
**Statusklasse:** Kernaxiom  
**Definition:** Kategorie, Instanz, Beobachtung, Aussage, Beleg, Regel, Pruefung, Rolle und Spiegel-/Adapterflaeche sind als verschiedene Klassen oder Relationen zu behandeln und duerfen nicht kollabieren.  
**Quellenrolle:** standardsetzend, definitorisch  
**Quellen:** S3, S4, S5  
**Revisionshinweis:** Der Spiegel-/Adapter-Bezug wird hier bereits ontologisch vorbereitet, aber nicht vollstaendig konsumiert.

### B3. Provenienz- und Referenzierbarkeitsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Wissen, Zustaende, Entscheidungen und Belege muessen adressierbar, referenzierbar und mit Herkunft versehen sein.  
**Quellenrolle:** standardsetzend  
**Quellen:** S4, S2  
**Revisionshinweis:** D1s lose Verbindung von Provenienz und Wiederauffindbarkeit wird sauberer in Provenienz, Referenzierbarkeit und abgeleitete Folgeattribute getrennt.

### B4. Pfad- und Schnittstellenexplizitheitsaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Uebergaenge zwischen Erkenntnis-, Governance- und Ausfuehrungspfaden duerfen nur ueber explizite Schnittstellen, Payloads, Gates und Rueckgabepunkte erfolgen; Kurzschlussableitungen sind unzulaessig.  
**Quellenrolle:** standardsetzend, architekturmethodisch, repo-lokal anwendend  
**Quellen:** S2, P4, I2  
**Revisionshinweis:** Die Terminologie wird gegenueber D1 eingedeutscht und enger an Rueckgabelogik gebunden.

### B5. Governierte Evolvierbarkeit
**Statusklasse:** Kernaxiom  
**Definition:** Die Architektur muss veraenderbar und lernfaehig bleiben, aber nur so, dass Kerninvarianten erhalten, Drift sichtbar und Aenderungen pruef- sowie revidierbar bleiben.  
**Quellenrolle:** theoretisch, architekturmethodisch, repo-lokal anwendend  
**Quellen:** P4, P5, P3, I2  
**Revisionshinweis:** Gegenueber D1 wird der Gegensatz zu freier Selbstoptimierung staerker markiert.

## K) Gemeinsame Kopplungsaxiome

### K1. Beobachtung-Aussage-Beleg-Axiom
**Statusklasse:** Kernaxiom  
**Definition:** In beiden Gegenstandsbereichen gilt: Beobachtung ist nicht Aussage, Aussage ist nicht Beleg.  
**Quellenrolle:** definitorisch, standardsetzend  
**Quellen:** S4, S5, I1  
**Kopplungsstatus:** echt gemeinsam

### K2. Evaluations-vor-Operationalisierungs-Axiom
**Statusklasse:** Kernaxiom  
**Definition:** Vorpruefung, Bewertung und Trennschaerfung gehen Materialisierung, Operationalisierung oder Automation voraus.  
**Quellenrolle:** empirisch, standardsetzend, repo-lokal anwendend  
**Quellen:** P1, R1, I1, I2  
**Kopplungsstatus:** echt gemeinsam

### K3. Spiegel-/Adapter-Asymmetrieaxiom
**Statusklasse:** Kernaxiom  
**Definition:** Gerenderte Arbeitsflaechen, Adapter und Spiegelungen sind abgeleitete Schnittstellen, nicht semantischer Ursprung.  
**Quellenrolle:** architekturmethodisch, repo-lokal anwendend  
**Quellen:** S2, I1, I2  
**Kopplungsstatus:** asymmetrisch gekoppelt; primaer B-seitig verankert, A-seitig angewandt

---

## 6. Nicht-Geltung, Spannungen und Grenzfaelle

| Axiom | Nicht-Geltung | Spannungsbeziehung | Grenzfall / Gegenbeispiel |
|---|---|---|---|
| A1 Ziel- und Geltungsbindung | nicht erforderlich in rein privaten, folgenarmen Ein-Satz-Interaktionen ohne Delegationscharakter | Spannung zu explorativer Offenheit: zu enge Scope-Bindung kann Suchraeume verfrueht schliessen | Brainstorming ohne klares Erkenntnisziel; hier reicht eine weichere Zielbindung, nicht der volle Vertrag |
| A2 Epistemische Trennung | nicht jede alltaegliche Formulierung braucht formale Abschnittsetiketten | Spannung zu Lesefluss und knapper Darstellung | Kurze Warnhinweise oder einfache Statusabfragen, bei denen Volltrennung unverhaeltnismaessig waere |
| A3 Auditierbarkeit und Unsicherheitsmarkierung | nicht jeder Smalltalk oder unkritische Kreativoutput braucht explizite Unsicherheitsmarkierung | Spannung zu Nutzbarkeit und sprachlicher Fluessigkeit | Eine stark formalisierte Unsicherheitsmarkierung kann triviale Interaktion unnoetig sperrig machen |
| A4 begrenzt-rueckgabefaehige Schrittlogik unter Aufsicht | nicht jede einmalige, folgenarme Einzelantwort benoetigt Rueckgabe- und Aufsichtslogik | Spannung zu Bearbeitungsgeschwindigkeit und fluider Exploration | Ein einzelner, klar begrenzter Definitionshinweis ohne nachgelagerte Wirkung |
| A5 Verhaltenstestbarkeit | nicht jeder konzeptionelle Erkundungsschritt laesst sich sofort voll testen | Spannung zu frueher Ideengenerierung | Neue Begriffe koennen zunaechst heuristisch eingefuehrt werden, bevor ein Testregime sinnvoll ist |
| B1 Terminologische Primaerordnung | lokale Dateinamen oder Labels muessen nicht immer voll definitorisch ausgearbeitet sein | Spannung zu Arbeitsgeschwindigkeit | In fruehen Notizzustaenden darf ein Platzhalter existieren, sofern er nicht in Governance uebergeht |
| B2 Ontologische Trennschaerfe | nicht jedes informelle Memo braucht vollstaendige ontologische Modellierung | Spannung zu pragmatischer Dokumentation | Ein kurzes Handoff kann Begriffe zusammenziehen, solange der kanonische Bestand davon getrennt bleibt |
| B3 Provenienz und Referenzierbarkeit | fluechtige Hilfsnotizen koennen temporaer geringere Referenzdichte haben | Spannung zu Erstellungsaufwand | Ein lokaler Skizzenblock ohne sofortige Langzeitrelevanz |
| B4 Pfad- und Schnittstellenexplizitheit | spontane ideelle Vorerkundung kann voruebergehend ohne formales Gate stattfinden | Spannung zu kreativer Beweglichkeit | Fruhes Whiteboard-Mapping, das noch nicht in operative Pfade eingespeist wird |
| B5 Governierte Evolvierbarkeit | nicht jede Aenderung benoetigt schweren Prozessapparat | Spannung zu lokaler Reparaturgeschwindigkeit | Kleinkorrekturen an rein formalen Darstellungen, die keine Kernsemantik beruehren |
| K1 Beobachtung-Aussage-Beleg | rhetorische Alltagsform kann diese Ebenen sprachlich verschmelzen, ohne sofort Schaden zu stiften | Spannung zu kuerzerer Kommunikation | Sehr kurze Statusmeldungen, solange sie nicht als kanonischer Beleg weiterverwendet werden |
| K2 Evaluation vor Operationalisierung | bei reversiblen, folgenarmen Entwuerfen kann teilweise prototypische Operationalisierung vor voller Evaluation zulaessig sein | Spannung zu iterativer Geschwindigkeit | Ein lokaler Entwurf in einer Sandbox, der noch keine normative Wirkung entfaltet |
| K3 Spiegel-/Adapter-Asymmetrie | rein technische Spiegel duerfen lokale Bequemlichkeitsfunktionen haben | Spannung zu Nutzerkomfort und Spiegeltreue | Ein Mirror kann identische Inhalte anzeigen, wird aber problematisch, sobald er semantische Vorrangigkeit beansprucht |

### Verdichtete Spannungslogik
- **Geschwindigkeit vs. Explizitheit:** Nicht jede Explizitheitspflicht darf kreatives Denken blockieren; fuer operative, persistente oder governance-relevante Uebergaenge bleibt Explizitheit primaer.
- **Adaptivitaet vs. Governierung:** Verbesserungsfaehigkeit bleibt Ziel, aber nur unter Sichtbarkeit von Drift, Rueckgabe und Revision.
- **Nutzbarkeit vs. Formalisierung:** Die Revisionslogik muss stark genug fuer tragende Artefakte und leicht genug fuer Vorstufen bleiben.

---

## 7. Phasenrobustheit, Automationssensitivitaet und Kopplungsstabilitaet

### 7.1 Phasenrobustheit

| Cluster / Axiomfamilie | fruehe semantische Aufbauphase | Ordnungs- und Pfadphase | spaetere Automations- und Ausfuehrungsphase | Befund |
|---|---|---|---|---|
| Ziel- und Geltungsbindung (A1) | hoch | hoch | hoch | phasenrobust |
| Epistemische Trennung (A2, K1) | hoch | hoch | hoch | phasenrobust |
| Auditierbarkeit / Unsicherheitsmarkierung (A3) | mittel | hoch | hoch | steigt mit Wirkungstiefe |
| begrenzt-rueckgabefaehige Schrittlogik / Aufsicht (A4) | niedrig bis mittel | hoch | hoch | gewinnt mit Delegation und Automation stark an Rang |
| Verhaltenstestbarkeit (A5) | mittel | hoch | hoch | steigt mit Operationalisierung |
| Terminologische Primaerordnung (B1) | hoch | hoch | hoch | phasenrobust |
| Ontologische Trennschaerfe (B2) | hoch | hoch | hoch | phasenrobust |
| Provenienz / Referenzierbarkeit (B3) | mittel | hoch | hoch | steigt mit Persistenz und Handoff-Dichte |
| Pfad- und Schnittstellenexplizitheit (B4) | mittel | hoch | hoch | stark phasenabhaengig, spaeter nahezu unverzichtbar |
| Governierte Evolvierbarkeit (B5) | mittel | hoch | hoch | gewinnt mit Architekturreife an Gewicht |
| duale Lesbarkeit | niedrig bis mittel | mittel | hoch | derzeit sekundaer, spaeter moeglich quasi-konstitutiv |
| Persistenz | niedrig bis mittel | mittel | hoch | bleibt sekundaer, aber automationserhoeht relevant |

### 7.2 Automationssensitivitaet

| Begriff / Merkmal | derzeitiger Rang | Rang unter hoeherem Automationsgrad | Kommentar |
|---|---|---|---|
| duale Lesbarkeit | sekundaeres Qualitaetsattribut | moeglich starkes Designprinzip | Maschinen- und Menschenlesbarkeit werden bei agentischer Verarbeitung wichtiger |
| Persistenz | sekundaeres Qualitaetsattribut | moeglich starkes Designprinzip | relevant fuer Resume, Nachvollzug und reproduzierte Verarbeitung |
| Verhaltenstestbarkeit | Kernaxiom | Kernaxiom mit steigendem Druck | Tests werden mit steigendem Wirkungsgrad zwingender |
| Aufsichtsfaehigkeit | Kernaxiom mit engerem Geltungsanspruch | eindeutiger Kernstatus | je autonomer das System, desto weniger entbehrlich |
| Pfad- und Schnittstellenexplizitheit | Kernaxiom | noch staerkerer Kernstatus | Automation bestraft implizite Uebergaenge scharf |
| Wiederauffindbarkeit | sekundaeres Qualitaetsattribut | moeglich starkes Designprinzip | wächst mit Dokument- und Agentendichte |

### 7.3 Kopplungsstabilitaet zwischen A und B

| Kopplungsaxiom | Klassifikation | Begründung |
|---|---|---|
| K1 Beobachtung-Aussage-Beleg | echt gemeinsam | epistemische Mindestordnung ist fuer Verhalten und Architektur gleich basal |
| K2 Evaluation vor Operationalisierung | echt gemeinsam | beide Bereiche kippen bei vorschneller Materialisierung in Fehlsteuerung |
| K3 Spiegel-/Adapter-Asymmetrie | asymmetrisch gekoppelt | Ursprung in architektonischer Wahrheitsquellenlogik, dann auf LLM-Arbeitsflaechen uebertragen |
| kontrollierte Selbstverbesserung | nur analog uebertragen | in A und B wichtig, aber aus unterschiedlichen Mechanismen abgeleitet; kein eigenstaendiges gemeinsames Kernaxiom |
| keine direkte Kurzschlussableitung | asymmetrisch gekoppelt | primaer B-seitige Pfadlogik, A-seitig als Verhaltensregel nutzbar |

---

## 8. Selbstpruefung

### Terminologiepolitik eingehalten?
Ueberwiegend ja.
- Schwache Hybridformen aus D1 wurden ersetzt.
- Englische Formen erscheinen nun entweder als Eigenname, literaturgebundener Originalterm oder knapper Alias.
- Die verbleibenden englischen Begriffe sind im Terminologie-Register klassifiziert.

### Unkommentierte Mischsprache reduziert?
Ja.
- boundedness, Self-Audit, Claim-Source-Fit und Red-Teamability wurden ersetzt.
- CheckList, LLMBAR, IFEval, PROV-O, SKOS und SOSA/SSN bleiben begruendet erhalten.
- Mirror / Adapter erscheinen nur noch als repo-bezogene Eigennamen im Rahmen der deutschen Primaerbezeichnung.

### Kernaxiome klarer von abgeleiteten Begriffen getrennt?
Ja.
- Der revidierte Kandidatenraum trennt systematisch zwischen Kernaxiom, starkem Designprinzip, sekundaerem Qualitaetsattribut und operativer Regel.
- D1s sekundaere Leistungs- und Betriebsattribute bleiben explizit ausserhalb des Kernstatus. fileciteturn11file4

### Zielbild unversehrt geblieben?
Ja.
- Kernaxiome bleiben Kernaxiome.
- Externe Standards und peer-reviewte Quellen bleiben vorrangig.
- Repo-interne Referenzen werden nur anwendungsnah eingesetzt.
- A und B bleiben getrennt; Kopplungen sind explizit.
- Governierte statt freie Selbstverbesserung bleibt zentrale Guardrail. fileciteturn11file16

### Verbliebene Unsicherheiten
1. **A-seitige Literatur bleibt heterogener als B-seitige.**  
   Trotz neuer peer-reviewter Stuetzung fuer Verhaltenstestung und Unsicherheitskommunikation sind Aufsichts- und Schrittlogikfragen weiterhin staerker governance- und designtheoretisch als rein empirisch belegt.
2. **Einige rangnahe Begriffe koennen spaeter aufsteigen.**  
   Vor allem duale Lesbarkeit, Persistenz und Wiederauffindbarkeit koennen unter hoeherem Automationsgrad an basaler Bedeutung gewinnen.
3. **Der Axiombegriff bleibt architekturmethodisch, nicht mathematisch.**  
   Das Dokument behandelt Axiome als konstitutive, nicht-derivative Grundaussagen fuer ein Systemdesign, nicht als formal-axiomatische Theorie.

### Gesamturteil
Diese V2 verbessert D1 entlang der in D2 und D3 geforderten Achsen:
- sprachliche Governierung,
- explizite Statusklassen,
- engere Aussage-Quellen-Passung,
- Nicht-Geltung und Grenzfaelle,
- Phasen- und Kopplungsmodellierung.

Damit ist die Revision terminologisch sauberer, evidenzseitig differenzierter und operativ besser anschlussfaehig als D1, ohne das Zielbild zu verwaessern. fileciteturn11file17 fileciteturn11file0

---

## 9. Quellen

### Quellenlegende
- **S** = Standard / normative Referenz
- **P** = peer-reviewte wissenschaftliche Primaerquelle
- **R** = institutioneller Report
- **PP** = Preprint
- **I** = repo-interner Anwendungs- oder Passungsbeleg

### Standards und normative Referenzen
- **S1** ISO 704:2022. *Terminology work — Principles and methods*. ISO.  
  URL: https://www.iso.org/standard/79077.html  
  Rolle: definitorische und terminologische Grundlegung.

- **S2** ISO/IEC/IEEE 42010:2022. *Software, systems and enterprise — Architecture description*. ISO/IEC/IEEE.  
  URL: https://www.iso.org/standard/74393.html  
  Rolle: Architektur-, Schnittstellen- und Beschreibungslogik.

- **S3** W3C. *SKOS Simple Knowledge Organization System Reference* (2009).  
  URL: https://www.w3.org/TR/skos-reference/  
  Rolle: Taxonomie- und Wissensorganisationslogik.

- **S4** W3C. *PROV-O: The PROV Ontology* (2013).  
  URL: https://www.w3.org/TR/prov-o/  
  Rolle: Provenienz, Ableitung, Referenzierbarkeit.

- **S5** W3C. *Semantic Sensor Network Ontology / SOSA* (2017).  
  URL: https://www.w3.org/TR/vocab-ssn/  
  Rolle: Beobachtungsmodellierung und Trennung von Beobachtung, Eigenschaft und Gegenstand.

### Peer-reviewte wissenschaftliche Primaerquellen
- **P1** Ribeiro, M. T., Wu, T., Guestrin, C., Singh, S. (2020). *Beyond Accuracy: Behavioral Testing of NLP Models with CheckList*. ACL 2020.  
  URL: https://aclanthology.org/2020.acl-main.442/  
  Rolle: empirische Basis fuer Verhaltenstestbarkeit.

- **P2** Weidinger, L. et al. (2022). *Taxonomy of Risks posed by Language Models*. FAccT 2022. DOI: 10.1145/3531146.3533088  
  URL: https://www.research.ed.ac.uk/en/publications/taxonomy-of-risks-posed-by-language-models  
  Rolle: Risiko- und Mitigationsrahmen fuer A-seitige Geltungs- und Governanceaussagen.

- **P3** Sculley, D. et al. (2015). *Hidden Technical Debt in Machine Learning Systems*. NeurIPS 2015.  
  URL: https://research.google/pubs/hidden-technical-debt-in-machine-learning-systems/  
  Rolle: Drift, Kopplungen, Wartungs- und Architekturrisiken.

- **P4** Cheng, B. H. C. et al. (2009). *Software Engineering for Self-Adaptive Systems: A Research Roadmap*. LNCS 5525. DOI: 10.1007/978-3-642-02161-9_1  
  URL: https://research.monash.edu/en/publications/software-engineering-for-self-adaptive-systems-a-research-roadmap  
  Rolle: selbstadaptive Systeme und governierte Veraenderbarkeit.

- **P5** White, S. R. et al. (2006). *Autonomic computing: Architectural approach and prototype*. Integrated Computer-Aided Engineering. DOI: 10.3233/ICA-2006-13206  
  URL: https://research.ibm.com/publications/autonomic-computing-architectural-approach-and-prototype  
  Rolle: kontrollierte Selbstanpassung und Architekturprinzipien.

- **P6** Zeng, Z., Yu, J., Gao, T., Meng, Y., Goyal, T., Chen, D. (2024). *Evaluating Large Language Models at Evaluating Instruction Following*. ICLR 2024.  
  URL: https://collaborate.princeton.edu/en/publications/evaluating-large-language-models-at-evaluating-instruction-follow/  
  Rolle: peer-reviewte Evidenz dafuer, dass auch LLM-Evaluatoren fuer Instruktionsbefolgung selbst fehlbar und pruefbeduerftig sind.

- **P7** Tang, Z., Shen, K., Kejriwal, M. (2026). *An evaluation of estimative uncertainty in large language models*. npj Complexity 3, 8. DOI: 10.1038/s44260-026-00070-6  
  URL: https://www.nature.com/articles/s44260-026-00070-6  
  Rolle: peer-reviewte Evidenz fuer Grenzen und Kalibrierungsprobleme sprachlicher Unsicherheitsausdruecke.

### Institutionelle Reports
- **R1** NIST AI 600-1 (2024). *Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile*.  
  URL: https://doi.org/10.6028/NIST.AI.600-1  
  Rolle: Governance-, Risiko- und Aufsichtsrahmen.

### Ergaenzende Preprints
- **PP1** Zhou, J. et al. (2023). *Instruction-Following Evaluation for Large Language Models*. arXiv:2311.07911  
  URL: https://arxiv.org/abs/2311.07911  
  Rolle: Benchmark- und Evaluationskontext fuer Instruktionsbefolgung.

- **PP2** Bai, Y. et al. (2022). *Constitutional AI: Harmlessness from AI Feedback*. arXiv:2212.08073  
  URL: https://arxiv.org/abs/2212.08073  
  Rolle: regelgebundene Selbstkritik und prinzipiengeleitete Verbesserung.

- **PP3** Bowman, S. R. et al. (2022). *Measuring Progress on Scalable Oversight for Large Language Models*. arXiv:2211.03540  
  URL: https://arxiv.org/abs/2211.03540  
  Rolle: Aufsicht und skalenfaehige Uebersteuerung.

### Repo-interne Referenzen
- **I1** ASWE PromptEval Contract (2026-04-20).  
  Rolle: lokaler Anwendungsbeleg fuer Zielbildklarheit, Scope-Disziplin, Ebenentrennung, Auditierbarkeit.

- **I2** ASWE Prompt Preflight Operationalization / ASWE Autonomy Infrastructure / ASWE Execution System – Target Contract (2026-03-26 bis 2026-04-20).  
  Rolle: lokaler Anwendungsbeleg fuer Preflight, Rueckgabe, Pfadobjekte, Grenzlogik und Materialisierungsdisziplin.

### Gesamtbewertung der Evidenzlage in V2
- **B** bleibt evidenzseitig staerker abgesichert als **A**, weil zentrale B-Kernaussagen direkt auf Standards und etablierter Architektur- bzw. Ontologielogik aufliegen.
- **A** ist gegenueber D1 verbessert, weil Verhaltenstestbarkeit und Unsicherheitskommunikation nun staerker peer-reviewt abgestuetzt sind; dennoch bleiben Aufsichts- und Schrittlogikfragen partiell governance- und designtheoretisch.
- Die hier vorgeschlagenen Kernaxiome sind daher weiterhin **wissenschaftlich gestuetzte Architektur- und Governance-Synthesen**, nicht formal bewiesene Naturgesetze.
