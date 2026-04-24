# ASWE Axiomkandidatenraum – Analyse, Erweiterung und Kernaxiome (2026-04-23, V1)

## Pre-Flight

### Zielbild
Ein **begrifflich disziplinierter, extern priorisiert begründeter und operationalisierbarer Kernaxiomensatz** für zwei explizit gebundene Gegenstandsbereiche:

- **A)** LLM-Verhaltenssteuerung
- **B)** ASWE_KnowledgeOS-Architektur

Gesucht ist **nicht** bloß ein Wunschkatalog von Gütemerkmalen, sondern ein Satz von **konstitutiven Gründungsaxiomen**, aus denen sich sekundäre Qualitätsattribute, Designprinzipien und lokale Governance-Regeln ableiten lassen.

### Gegenstand
Gegenstand sind keine einzelnen Workstreams, Dateien oder Tools als solche, sondern:

- bei **A**: Prinzipien, die LLM-Ausführung, Instruktionsbindung, epistemische Disziplin, Prüfbarkeit und kontrollierte Verbesserung strukturieren;
- bei **B**: Prinzipien, die semantische Stabilität, Pfadtrennung, Provenienz, Evolvierbarkeit, Governance-Klarheit und operative Anschlussfähigkeit der ASWE_KnowledgeOS-Architektur tragen;
- zusätzlich: **Kopplungsaxiome**, die beide Bereiche verbinden.

### Geltungsbereich
Geltung beanspruchen die vorgeschlagenen Axiome für:

- konzeptionelle Grundlegung,
- Architektur- und Prompt-Verträge,
- Evaluations- und Preflight-Logik,
- spätere Operationalisierung und Materialisierung.

**Nicht-Geltung** bzw. nicht primärer Gegenstand:

- konkrete UI-Aktionen,
- konkrete Dateipfade als letzte Wahrheit,
- konkrete Tool- oder Modellwahl,
- produktive Leistungsmetriken wie Latenz oder Kosten als Primärbasis,
- rein lokale Sonderregeln, sofern sie nicht aus allgemeineren Prinzipien ableitbar sind.

### Epistemischer Status
- **Beobachtung:** bisheriger Brainstorming-Rohraum enthält viele relevante Begriffe, aber stark gemischte Ebenen.
- **Aussage:** ein belastbarer Kern ist ableitbar.
- **Hypothese:** einige bisher genannte Begriffe sind keine Kernaxiome, sondern abgeleitete Qualitätsattribute.
- **Maßstab:** Axiomtauglichkeit = konstitutiv, invariantennah, nicht bloß outcome-orientiert, abgrenzbar, operationalisierbar.
- **Empfehlung:** Kernaxiome knapp halten; sekundäre Qualitäten nachgeordnet führen.

### Abstraktionsniveau
- primär: **Grundsatz**
- sekundär: **systemisches Strukturmodell**
- noch nicht: konkrete lokale Implementierung

### Explizit gemachtes Implizites, Vages und Ebenenvermischung
Die bisherige Kandidatenliste mischt mindestens sechs Klassen:

1. **Gründungsaxiome / Invarianten**  
   z. B. Ebenentrennung, Provenienzfähigkeit, Pfadgrenzen.
2. **Designprinzipien**  
   z. B. Modularität, Adapter-Asymmetrie, Mirror-Disziplin.
3. **Qualitätsattribute**  
   z. B. Wiederauffindbarkeit, Menschenlesbarkeit, Maschinenlesbarkeit.
4. **Steuerbarkeitsanforderungen**  
   z. B. Kontrollierbarkeit, Regelbarkeit, boundedness.
5. **Betriebs- und Leistungsattribute**  
   z. B. schnell, effizient, leistungsfähig.
6. **Outcome-Wörter**  
   z. B. selbstoptimierend, adaptiv, selbstverbessernd.

Vage bzw. ohne Präzisierung nicht axiomtauglich sind insbesondere:

- „gültig“ als pauschales Prädikat für Axiomdefinitionen,
- „selbstoptimierend“ ohne Governance- und Stopbedingungen,
- „determinierbar“ als Absolutforderung für stochastische LLM-Systeme,
- „unabhängig“ ohne explizite Aussage, wovon unabhängig und wozu gekoppelt.

---

## Kandidatenraum

### Ausgangsbasis aus dem bisherigen Brainstorming
Die bisherige Chatbasis enthält u. a. folgende Rohkandidaten oder Rohcluster:

- evolvierbar
- weiterentwicklungstauglich
- weiterentwicklungsfähig
- optimierbar
- selbstverbessernd
- selbstoptimierend
- adaptiv
- nachvollziehbar
- beobachtbar
- suchbar
- wiederauffindbar
- navigierbar
- strukturierbar
- maschinenlesbar
- menschenlesbar
- persistent
- effizient
- schnell
- leistungsfähig
- belastbar
- stabil
- kontrollierbar
- regelbar
- steuerbar
- redundanzfrei
- widerspruchsfrei
- modular
- reparierbar
- zusammenhängend
- automatisierbar
- wiederholbar
- algorithmisierbar
- determinierbar

Diese Liste wurde im Folgenden **normalisiert, disambiguiert und erweitert**.

---

### A) Zusätzliche Kandidaten für LLM-Verhaltenssteuerung

| Kandidat | Kurzbeschreibung | Herkunft |
|---|---|---|
| Zweck- und Geltungsbindung | Zielbild, Scope und Nicht-Geltung müssen explizit sein | repo + NIST + PromptEval |
| Epistemische Ebenentrennung | Beobachtung, Beleg, Hypothese, Kriterium, Empfehlung, Schritt trennen | repo + CheckList + NIST |
| Explizitheit kritischer Annahmen | implizite Vorannahmen sichtbar machen | repo + PromptEval |
| Vorfestlegungsdisziplin | nicht vorschnell festschreiben, was selbst Analysegegenstand ist | repo |
| Auditierbarkeit | Entscheidungen, Annahmen, Blocker später rekonstruierbar | repo + NIST |
| Bounded Operationalisierbarkeit | Arbeit in begrenzte, prüfbare Schritte zerlegbar | repo + scalable oversight |
| Unsicherheitsmarkierung | Unsicherheit sprachlich und kalibriert ausdrücken | Lin et al.; Kadavath et al. |
| Verhaltenstestbarkeit | Verhalten nicht nur nach Freitextqualität, sondern mit verifizierbaren Tests prüfen | CheckList; IFEval |
| Adversarial prüfbare Robustheit | Verhalten auch gegen red-teaming / hostile inputs prüfen | Perez et al.; NIST |
| Oversight-Fähigkeit | menschliche oder governance-seitige Übersteuerung bleibt möglich | Bowman et al.; NIST |
| Regelgebundene Selbstkritik | Selbstkorrektur nur unter expliziten Regeln/Prinzipien | Bai et al. |
| Portierbarkeit | unterscheiden, was global, threadnah oder bloß Rendering ist | repo |
| Driftresistenz | Verhalten darf sich nicht unbemerkt von führenden Verträgen lösen | repo + technical debt |
| Kein zweiter semantischer Ursprung | gerenderte Prompts oder UI-Hinweise dürfen keine konkurrierende Wahrheit werden | repo |

### B) Zusätzliche Kandidaten für ASWE_KnowledgeOS-Architektur

| Kandidat | Kurzbeschreibung | Herkunft |
|---|---|---|
| Terminologische Primärordnung | Begriff vor Benennung vor Klassifikation vor Regelung | repo + ISO 704/1087 |
| Ontologische Trennschärfe | Kategorie, Instanz, Beobachtung, Aussage, Beleg usw. nicht kollabieren | repo + OWL + PROV-O |
| Provenienzfähigkeit | Herkunft, Stützung und Zeitbezug explizit modellierbar | PROV-O + repo |
| Beobachtung–Aussage–Beleg-Staffel | epistemische Minimalordnung der Erkenntnisrepräsentation | repo + PROV/SSN |
| Adressierbarkeit / Referenzierbarkeit | Zustände, Artefakte und Entscheidungen eindeutig verweisbar | repo + Architekturdisziplin |
| Wiederauffindbarkeit | relevante Artefakte später auffindbar | Brainstorming + repo |
| Pfad- und Interface-Explizitheit | Übergänge nur über explizite Payloads, Handoffs, Gates | repo + 42010 + autonomic systems |
| Autoritätsgrenzen | semantische, architektonische und operative Geltung nicht vermischen | repo |
| Mirror-/Adapter-Asymmetrie | Spiegelungen und Adapter sind nicht semantischer Ursprung | repo |
| Governierte Evolvierbarkeit | Verbesserung nur unter Erhalt der Kerninvarianten | self-adaptive systems + repo |
| Modularität mit expliziter Kopplung | nicht absolute Unabhängigkeit, sondern kontrollierte Kopplung | 42010 + technical debt + repo |
| Verifikationsfähigkeit | Regeln, Übergänge und Zustände prüfbar machen | repo + architecture quality |
| Reparierbarkeit | lokale Korrektur möglich, ohne Gesamtsemantik zu destabilisieren | technical debt + autonomic |
| Budget- und Schleifendisziplin | Iteration und Selbstverbesserung brauchen Abbruch- und Rückgaberegeln | repo + autonomic |

### Gemeinsame Kopplungskandidaten

| Kandidat | Kurzbeschreibung | Herkunft |
|---|---|---|
| Evaluation vor Operationalisierung | erst prüfen, dann rendern oder materialisieren | repo + CheckList + NIST |
| Kontrollierte Selbstverbesserung | Verbesserung nur unter Beobachtung, Gate-Logik und Rückgabepflicht | repo + autonomic systems |
| Keine direkte Kurzschlussableitung | keine direkte Ableitung von Evidenz zu Policy oder von Delta zu finaler Kanonisierung | repo |
| Explizite Rückgabepunkte | jeder Teilpfad braucht Rückgabeziel und Stopregel | repo + oversight |
| Nicht-Kollaps von Spiegel und Ursprung | gerenderte Oberfläche, Mirror oder thread-lokale Guidance bleibt abgeleitet | repo |
| Prüfbare Traceability | Änderung, Entscheidung und Begründung verknüpfbar | 42010 + PROV-O + repo |
| Lesbarkeit dualer Art | maschinen- und menschenlesbar, aber als Folgeprinzip, nicht als alleiniger Ursprung | SKOS/OWL/Repo |
| Governance-vorrangige Adaptivität | Adaptivität nie ohne Governance- und Autoritätsrahmen | NIST + autonomic + repo |

### Vorläufig sekundäre oder abgeleitete Qualitätsattribute
Diese Begriffe sind relevant, aber **nicht prima facie kernaxiomatisch**:

- schnell
- effizient
- leistungsfähig
- belastbar
- stabil
- redundanzfrei
- menschenlesbar
- maschinenlesbar
- persistent
- navigierbar
- suchbar
- wiederauffindbar
- automatisierbar
- wiederholbar
- algorithmisierbar
- determinierbar

Begründung: Sie sind meist **Folgeanforderungen**, **Designziele** oder **prüfbare Qualitätsattribute**, nicht notwendigerweise **konstitutive Gründungsbedingungen**.

---

## Prüfmatrix

Bewertungsskala:

- **H** = hoch / stark erfüllt
- **M** = mittel / teilweise erfüllt
- **N** = niedrig / unzureichend

Axiomtauglichkeit bedeutet hier: konstitutive Tragfähigkeit als Gründungsaxiom.

| Kandidat | Bereich | Kohärenz | Nicht-Zirkularität | Abgrenzbarkeit | Operationalisierbarkeit | Axiomtauglichkeit | Befund |
|---|---|---:|---:|---:|---:|---:|---|
| Zweck- und Geltungsbindung | A | H | H | H | H | H | tragfähig |
| Epistemische Ebenentrennung | A/K | H | H | H | H | H | tragfähig |
| Auditierbarkeit | A/K | H | H | H | H | H | tragfähig |
| Bounded Operationalisierbarkeit | A/K | H | H | H | H | H | tragfähig |
| Verhaltenstestbarkeit | A | H | H | H | H | H | tragfähig |
| Unsicherheitsmarkierung | A | H | H | H | M | M-H | tragfähig, aber kalibrierungsabhängig |
| Explizitheit | A | H | H | M | M | M | besser als Unterprinzip führen |
| Vorfestlegungsdisziplin | A | H | H | M | M | M | Unterprinzip von Zweck-/Scope-Bindung |
| Red-Teamability | A | H | H | H | H | M-H | als Unterfall von Verhaltenstestbarkeit |
| Oversight-Fähigkeit | A/K | H | H | H | M | H | tragfähig |
| Terminologische Primärordnung | B | H | H | H | H | H | tragfähig |
| Ontologische Trennschärfe | B | H | H | H | H | H | tragfähig |
| Provenienzfähigkeit | B/K | H | H | H | H | H | tragfähig |
| Beobachtung–Aussage–Beleg-Staffel | B/K | H | H | H | H | H | tragfähig |
| Adressierbarkeit / Referenzierbarkeit | B | H | H | H | H | H | tragfähig |
| Pfad- und Interface-Explizitheit | B/K | H | H | H | H | H | tragfähig |
| Mirror-/Adapter-Asymmetrie | B/K | H | H | H | H | H | tragfähig |
| Governierte Evolvierbarkeit | B/K | H | M | H | M | H | tragfähig |
| Modularität mit expliziter Kopplung | B | H | H | M | M | M-H | tragfähig, aber als Strukturprinzip |
| Reparierbarkeit | B | H | H | M | M | M | eher Design-/Qualitätsprinzip |
| Stabilität | B | M | H | M | M | M | abgeleitetes Ziel |
| Effizienz / Schnelligkeit | A/B | H | H | H | H | N | sekundäres Qualitätsattribut |
| Selbstoptimierung | A/B | M | M | M | N | N-M | nur governiert akzeptabel |
| Determinierbarkeit | A/B | M | H | H | M | N-M | zu absolut; konflikthaft zu Adaptivität |
| Maschinen-/Menschenlesbarkeit | B/K | H | H | M | H | M | Folgeprinzipien aus Referenzierbarkeit + Explizitheit |

### Zwischenbefund
Die stärksten Kandidaten clustern in drei Familien:

1. **epistemische Disziplin**  
   Zweck-/Scope-Bindung, Ebenentrennung, Beobachtung–Aussage–Beleg, Unsicherheitsmarkierung;
2. **architektonische Explizitheit**  
   Terminologische Primärordnung, ontologische Trennschärfe, Pfad- und Interface-Explizitheit, Referenzierbarkeit;
3. **governierte Veränderung**  
   Auditierbarkeit, boundedness, Oversight, governierte Evolvierbarkeit, Mirror-/Adapter-Asymmetrie.

---

## Selektionskonzept

### 1. Normalisierungsschritt
Vor Selektion werden Kandidaten in vier Klassen zerlegt:

- **Kernaxiom**
- **Designprinzip**
- **Qualitätsattribut**
- **lokale Governance-/Implementierungsregel**

Beispiele:

- „schnell“ → Qualitätsattribut
- „ein Writer-Pfad“ → lokale Governance-/Implementierungsregel
- „Beobachtung ≠ Aussage ≠ Beleg“ → Kernaxiom
- „Mirror ist nicht Ursprung“ → Kernaxiom oder starkes Designprinzip mit axiomatischer Funktion

### 2. Positivkriterien für Kernaxiome
Ein Kandidat wird nur dann als Kernaxiom geführt, wenn er die meisten der folgenden Kriterien erfüllt:

1. **Konstitutive Notwendigkeit**  
   Ohne ihn kollabiert die Ordnung des Gegenstands.
2. **Invarianzcharakter**  
   Er bleibt über Workstreams, Tools und konkrete Implementierungen hinweg tragfähig.
3. **Nicht-Derivativität**  
   Er ist nicht bloß Folge eines anderen Prinzips.
4. **Hohe Reichweite**  
   Er erklärt mehrere andere Regeln oder Qualitätsattribute.
5. **Governance-Relevanz**  
   Seine Verletzung erzeugt nicht nur lokale Unschärfe, sondern strukturelle Fehlsteuerung.
6. **Prüfbare Proxy-Operationalisierung**  
   Es gibt beobachtbare Indikatoren oder Gates.
7. **Abgrenzbarkeit**  
   Er lässt sich von Nachbarbegriffen sauber unterscheiden.

### 3. Ausschlusskriterien
Ein Kandidat wird **nicht** Kernaxiom, wenn er primär:

- Leistungsoptimierung ausdrückt,
- nur ein Tool-/Adapterdetail beschreibt,
- rein lokal aus einem bestehenden Vertrag stammt,
- ohne weitere Begriffe nicht operationalisierbar ist,
- mit weniger grundlegenden Axiomen hinreichend erklärbar ist.

### 4. Umgang mit Redundanz
Synonyme und nahe Nachbarn werden geclustert:

- weiterentwicklungstauglich / weiterentwicklungsfähig / evolvierbar  
  → **Governierte Evolvierbarkeit**
- suchbar / navigierbar / wiederauffindbar  
  → **Adressierbarkeit / Referenzierbarkeit / Wiederauffindbarkeit**
- kontrollierbar / regelbar / steuerbar  
  → **Steuerbarkeit unter Oversight**
- menschenlesbar / maschinenlesbar  
  → **duale Lesbarkeit**, nachgeordnet zu Explizitheit und Referenzierbarkeit

### 5. Umgang mit Spannungen
Spannungen werden **nicht** durch Wahl eines Pols gelöst, sondern durch präzisierende Oberbegriffe:

- adaptiv vs. determinierbar  
  → **governierte Adaptivität**, nicht absolute Determiniertheit
- unabhängig vs. zusammenhängend  
  → **Modularität mit expliziter Kopplung**
- schnell vs. auditierbar  
  → Auditierbarkeit ist primär; Geschwindigkeit ist sekundäres Optimierungsziel
- selbstoptimierend vs. kontrollierbar  
  → **kontrollierte Selbstverbesserung** statt freier Selbstoptimierung

### 6. Selektionsregel
Ein Kandidat wird als Kernaxiom übernommen, wenn er:

- mindestens **5 von 7 Positivkriterien stark** erfüllt,
- nicht unter ein stärkeres Axiom subsumierbar ist,
- keine unaufgelöste Kollision mit einem bereits ausgewählten Kernaxiom erzeugt,
- über mindestens einen beobachtbaren Prüfpfad verfügt.

---

## Kernaxiome

## A) Kernaxiome für LLM-Verhaltenssteuerung

### A1. Zweck- und Geltungsbindungsaxiom
**Definition:**  
Jede verhaltenssteuernde Instruktion muss Zielbild, Gegenstand, Geltungsbereich und Nicht-Geltung explizit binden, bevor operative Ausführung oder Optimierung erfolgt.

**Warum Kernaxiom:**  
Ohne explizite Zweck- und Scope-Bindung kollabieren Promptarbeit, Evaluationslogik und Governance in unscharfe, driftanfällige Direktantworten.

**Operationale Indikatoren:**  
- Zielbild ist vom Mittel getrennt;
- Nicht-Geltung ist benannt;
- Scope-Drift wird als Fehlerklasse behandelt.

---

### A2. Epistemisches Trennungsaxiom
**Definition:**  
Beobachtung, Beleg, Hypothese, Maßstab, Kriterium, Empfehlung und Implementierungsschritt dürfen nicht stillschweigend ineinander übergehen.

**Warum Kernaxiom:**  
Dieses Axiom verhindert Scheinklarheit, verdeckte Vorentscheidungen und unprüfbare Begründungsketten.

**Operationale Indikatoren:**  
- explizite Abschnittstrennung;
- getrennte Markierung von Annahmen und Befunden;
- keine Belegsimulation durch Stil oder Autoritätsrhetorik.

---

### A3. Auditierbarkeits- und Unsicherheitsaxiom
**Definition:**  
LLM-Verhalten muss seine tragenden Annahmen, Unsicherheiten, Belegbasis und Entscheidungsschritte so markieren, dass spätere Prüfung, Revision und Fehlersuche möglich bleiben.

**Warum Kernaxiom:**  
Auditierbarkeit macht Verhalten nicht automatisch richtig, aber ohne Auditierbarkeit ist Fehlsteuerung weder lokalisierbar noch lernfähig.

**Operationale Indikatoren:**  
- Unsicherheitsmarkierung vorhanden;
- Belegbasis benannt;
- offene Punkte bleiben sichtbar;
- Revision ist semantisch anschlussfähig.

---

### A4. Boundedness- und Oversight-Axiom
**Definition:**  
LLM-Arbeit darf nur in bounded, rückgabefähigen und übersteuerbaren Schritten stattfinden; freie Entgrenzung ist kein zulässiger Default.

**Warum Kernaxiom:**  
Es sichert Kontrollierbarkeit, minimiert Drift und erhält menschliche oder systemische Autorität über irreversible Entscheidungen.

**Operationale Indikatoren:**  
- kleinster sicherer nächster Schritt benennbar;
- Stop- bzw. Return-Bedingungen explizit;
- keine implizite Autoritätsausweitung.

---

### A5. Verhaltenstestbarkeitsaxiom
**Definition:**  
LLM-Verhalten muss anhand expliziter, reproduzierbarer und möglichst verifizierbarer Tests überprüfbar sein, nicht nur anhand subjektiver Antwortqualität.

**Warum Kernaxiom:**  
Ohne Verhaltenstestbarkeit bleibt Verhaltenssteuerung rhetorisch statt technisch überprüfbar.

**Operationale Indikatoren:**  
- verifizierbare Instruktionskriterien;
- Gegenbeispielfälle / red-team-Fälle;
- wiederholbare Prüffälle statt nur Einzelfalleindruck.

---

## B) Kernaxiome für ASWE_KnowledgeOS-Architektur

### B1. Terminologische Primärordnung
**Definition:**  
Im System wird zuerst geklärt, was ein Begriff bedeutet; erst danach folgen Benennung, Klassifikation, Regelung, Prozess und Implementierung.

**Warum Kernaxiom:**  
Es verhindert, dass lokale Artefakte oder Toolstrukturen rückwirkend Begriffe definieren.

**Operationale Indikatoren:**  
- Begriff vor Taxonomie;
- Definition vor Gate;
- keine Governanceentscheidung auf ungeklärter Terminologie.

---

### B2. Ontologisches Trennschärfeaxiom
**Definition:**  
Kategorie, Instanz, Beobachtung, Aussage, Beleg, Regel, Prüfung, Rolle und Mirror sind als verschiedene Objektklassen bzw. Relationen zu behandeln und dürfen nicht kollabieren.

**Warum Kernaxiom:**  
Dieses Axiom stabilisiert die semantische Architektur und macht spätere Ableitungen überhaupt erst sauber.

**Operationale Indikatoren:**  
- kanonische Nicht-Gleichsetzungen;
- getrennte Artefaktrollen;
- keine Verwechslung von SSOT, Objektklasse und Autoritätsrelation.

---

### B3. Provenienz- und Referenzierbarkeitsaxiom
**Definition:**  
Wissen, Zustände, Entscheidungen und Belege müssen adressierbar, referenzierbar und mit Herkunft versehen sein.

**Warum Kernaxiom:**  
Ohne Provenienz und Referenzierbarkeit gibt es keine belastbare Wiederauffindbarkeit, kein sauberes Handoff und keine belastbare Prüfung.

**Operationale Indikatoren:**  
- eindeutige Anker;
- Herkunft / Zeitbezug;
- verlinkbare oder eindeutig benennbare Artefakte;
- Traceability zwischen Aussage und Beleg.

---

### B4. Pfad- und Interface-Explizitheitsaxiom
**Definition:**  
Übergänge zwischen Erkenntnispfaden dürfen nur über explizite Interfaces, Payloads, Gates und Rückgabepunkte erfolgen; Kurzschlussableitungen sind unzulässig.

**Warum Kernaxiom:**  
Es schützt vor semantischer, architektonischer und operativer Kurzschlussbildung.

**Operationale Indikatoren:**  
- zulässige Übergänge benannt;
- verbotene Sprünge benannt;
- Pfadwechsel nur mit Payload und Rückgabeziel.

---

### B5. Governierte Evolvierbarkeitsaxiom
**Definition:**  
Die Architektur muss evolvierbar sein, aber nur so, dass Kerninvarianten erhalten, Drift sichtbar und Änderungen prüf- sowie reversionsfähig bleiben.

**Warum Kernaxiom:**  
Evolvierbarkeit ohne Governance erzeugt Drift; Governance ohne Evolvierbarkeit erzeugt Erstarrung.

**Operationale Indikatoren:**  
- definierte Änderungsobjekte;
- Stop-/Gate-Logik für Verbesserung;
- explizite Nicht-Evolvierbarkeiten;
- lernfähige Nachzugslogik.

---

## Gemeinsame Kopplungsaxiome

### K1. Beobachtung–Aussage–Beleg-Axiom
**Definition:**  
Sowohl im LLM-Verhalten als auch in der Architektur gilt eine minimale epistemische Staffel: Beobachtung ist nicht Aussage, Aussage ist nicht Beleg.

**Funktion:**  
Es ist die gemeinsame Minimalbedingung für Erkenntnisdisziplin, Evidenzaufnahme, Promptanalyse und spätere Governance.

---

### K2. Evaluations-vor-Operationalisierungs-Axiom
**Definition:**  
Bewertung, Vorprüfung und Trennschärfung gehen Rendering, Materialisierung, Operationalisierung oder Automation voraus.

**Funktion:**  
Es schützt beide Bereiche davor, unreife oder mehrdeutige Semantik zu früh in operative Wirklichkeit zu übersetzen.

---

### K3. Adapter-/Mirror-Asymmetrieaxiom
**Definition:**  
Adapterflächen, gerenderte Prompts und Runtime-Mirrors sind abgeleitete Arbeitsflächen, nicht semantischer Ursprung.

**Funktion:**  
Es verhindert konkurrierende Wahrheitsquellen und hält Primärlogik, Governance und Materialisierung auseinander.

---

## Abgrenzungsbegründungen

### 1. Warum „Effizienz“, „Schnelligkeit“ und „Leistungsfähigkeit“ keine Kernaxiome sind
Diese Begriffe sind wichtig, aber sie sind **Outcome- oder Optimierungsgrößen**.  
Sie sagen nicht, **wodurch** das System konstitutiv geordnet wird, sondern **wie gut** es unter dieser Ordnung performt. Ein System kann schnell und zugleich semantisch falsch strukturiert sein.

### 2. Warum „Selbstoptimierung“ nicht als unqualifiziertes Kernaxiom taugt
„Selbstoptimierung“ beschreibt ein gewünschtes Ergebnis, nicht die zulässige Form der Verbesserung.  
Ohne Gate-, Oversight- und Rückgaberegeln würde daraus freie, potenziell driftende Autonomie. Deshalb wird der Begriff nur in der Form **kontrollierte Selbstverbesserung** akzeptiert.

### 3. Warum „Determinierbarkeit“ kein Kernaxiom ist
Für stochastische LLM-Systeme ist absolute Determiniertheit weder realistisch noch zwingend wünschenswert. Kernrelevant ist stattdessen:

- boundedness,
- Auditierbarkeit,
- Verhaltenstestbarkeit,
- klare Stop- und Rückgabebedingungen.

Deterministische Teilprüfungen können wichtig sein, aber absolute Determiniertheit ist kein sinnvoller universeller Gründungssatz.

### 4. Warum „Menschenlesbarkeit“ und „Maschinenlesbarkeit“ sekundär bleiben
Beide sind hochrelevante Qualitätsziele, aber sie hängen von grundlegenderen Prinzipien ab:

- Explizitheit,
- Referenzierbarkeit,
- Provenienzfähigkeit,
- ontologischer Trennschärfe.

Ohne diese Basen bleiben „lesbar“ und „maschinenlesbar“ zu oberflächlich.

### 5. Warum „Modularität“ nicht allein steht
Modularität ist notwendig, aber nicht als absolute Entkopplung. In komplexen Wissens- und Agentensystemen ist nicht maximale Unabhängigkeit das Ziel, sondern **kontrollierte Kopplung über explizite Interfaces**. Deshalb wurde Modularität in B4 und B5 mitgeführt statt isoliert verabsolutiert.

### 6. Warum „ein Writer-Pfad“ oder konkrete Gate-Namen keine Kernaxiome sind
Dies sind **starke lokale Governance-Instanziierungen**, aber keine allgemeingültigen Gründungsaxiome.  
Sie lassen sich aus tieferen Prinzipien ableiten:

- Autoritätsgrenzen,
- Pfad- und Interface-Explizitheit,
- Adapter-/Mirror-Asymmetrie,
- Evaluations-vor-Operationalisierungs-Logik.

### 7. Warum „Persistenz“, „Wiederholbarkeit“ und „Automatisierbarkeit“ sekundär bleiben
Sie sind operative und systemische Qualitätsanforderungen, aber nicht notwendig basal.  
Ein System kann konzeptuell korrekt axiombasiert sein, auch bevor Persistenz- oder Automationsschichten vollständig ausgereift sind.

### 8. Warum „Governierte Evolvierbarkeit“ Kernstatus erhält
Der bisherige Brainstorming-Raum zielt stark auf Selbstverbesserung, Weiterentwicklung und Adaptivität. Die Literatur zu selbstadaptiven und autonomen Systemen zeigt aber, dass Adaptivität nur dann tragfähig ist, wenn Modelle, Feedback, Assurance, Ziele und Kontrollschleifen explizit bleiben. Deshalb ist nicht bloße Evolvierbarkeit, sondern **governierte** Evolvierbarkeit der belastbare Kern.

---

## Self-Audit

### Trennung der Ebenen
- **Beobachtung:** bisheriger Brainstorming-Raum ist heterogen und ebenengemischt.
- **Aussage:** ein belastbarer axiomatischer Kern ist durch Normalisierung und Selektion ableitbar.
- **Hypothese:** Verhaltenstestbarkeit und bounded Oversight sind für A konstitutiver als bloße Explizitheit.
- **Maßstab/Kriterium:** Konstitutivität, Invarianzcharakter, Reichweite, Abgrenzbarkeit, Operationalisierbarkeit.
- **Empfehlung:** Kern klein halten, Sekundärattribute separat führen.

### Begriffe vor Strukturen vor Prozessen vor Implementierung
Erfüllt:
- zuerst Begriffe und Kandidatenraum,
- dann Prüfmatrix und Selektionslogik,
- erst danach Kernaxiome und deren operative Konsequenzen,
- keine Festschreibung auf konkrete Implementierungsartefakte als Ursprung.

### Selektionsentscheidungen explizit begründet?
Ja:
- Positiv- und Ausschlusskriterien benannt,
- Synonymcluster aufgelöst,
- Spannungen explizit behandelt,
- sekundäre Qualitätsattribute von Kernaxiomen getrennt.

### Verbliebene Unsicherheiten
1. **LLM-verhaltenssteuernde Literatur ist epistemisch ungleichmäßig.**  
   Ein Teil der einschlägigen Evidenz liegt in starken Preprints oder institutionellen Reports, nicht ausschließlich in lang etablierten peer-reviewten Standards.
2. **„Axiom“ ist in diesem Feld kein kanonisch standardisierter Fachbegriff.**  
   Die hier vorgeschlagene Verwendung ist systemtheoretisch und architekturmethodisch, nicht mathematisch streng-formal.
3. **Einige Kandidaten könnten in späteren Repo-Phasen ihren Rang wechseln.**  
   Etwa könnte duale Lesbarkeit unter stärkerem Automationsgrad von sekundär zu quasi-konstitutiv aufsteigen.

### Gesamturteil
Das Vorgehen ist für den aktuellen Zweck **tragfähig**, **begrifflich diszipliniert** und **anschlussfähig**.  
Die stärkste noch verbleibende Unsicherheit liegt nicht in der internen Architektur, sondern in der noch jungen externen LLM-spezifischen Literaturbasis zur Prompt- und Verhaltenssteuerung.

---

## Quellen

### Bewertungslegende
- **S** = Standard / normative Referenz
- **P** = peer-reviewte wissenschaftliche Primärquelle
- **R** = institutioneller Report
- **PP** = Preprint / noch nicht oder nicht primär peer-reviewt
- **I** = repo-interner Anwendungsbeleg

---

### 1) Externe akademische Primärquellen und Standards – vorrangig

1. **ISO/IEC/IEEE 42010:2022** – *Software, systems and enterprise — Architecture description*.  
   Typ: **S**  
   Relevanz: trennt Architektur von Architekturbeschreibung; stark für B1, B4, B5.  
   URL: https://www.iso.org/standard/74393.html

2. **Ribeiro, Wu, Guestrin, Singh (2020)** – *Beyond Accuracy: Behavioral Testing of NLP Models with CheckList*. ACL 2020.  
   Typ: **P**  
   Relevanz: zentrale Stütze für A5 Verhaltenstestbarkeit.  
   URL: https://aclanthology.org/2020.acl-main.442/

3. **Weidinger et al. (2022)** – *Taxonomy of Risks posed by Language Models*. FAccT 2022. DOI: 10.1145/3531146.3533088  
   Typ: **P**  
   Relevanz: Stütze für A1, A3, A4; macht Risikofelder und Mitigationslogik explizit.  
   URL: https://www.research.ed.ac.uk/en/publications/taxonomy-of-risks-posed-by-language-models/

4. **Cheng et al. (2009)** – *Software Engineering for Self-Adaptive Systems: A Research Roadmap*. LNCS 5525. DOI: 10.1007/978-3-642-02161-9_1  
   Typ: **P**  
   Relevanz: starke Basis für B5 governierte Evolvierbarkeit und kontrollierte Adaptivität.  
   URL: https://research.monash.edu/en/publications/software-engineering-for-self-adaptive-systems-a-research-roadmap

5. **White et al. (2006)** – *Autonomic computing: Architectural approach and prototype*. Integrated Computer-Aided Engineering. DOI: 10.3233/ICA-2006-13206  
   Typ: **P**  
   Relevanz: starke Basis für kontrollierte Selbstverbesserung, High-level objectives, self-* unter Architekturprinzipien.  
   URL: https://research.ibm.com/publications/autonomic-computing-architectural-approach-and-prototype

6. **Sculley et al. (2015)** – *Hidden Technical Debt in Machine Learning Systems*. NeurIPS 2015.  
   Typ: **P**  
   Relevanz: Drift, Entanglement, versteckte Kopplungen; relevant für B4/B5 und A-Driftresistenz.  
   URL: https://research.google/pubs/hidden-technical-debt-in-machine-learning-systems/

7. **SKOS Simple Knowledge Organization System Reference (W3C Recommendation, 2009)**  
   Typ: **S**  
   Relevanz: Stütze für B1 und B2; Taxonomie ≠ volle Ontologie.  
   URL: https://www.w3.org/TR/skos-reference

8. **PROV-O: The PROV Ontology (W3C Recommendation, 2013)**  
   Typ: **S**  
   Relevanz: Stütze für B3 und K1; Provenienz, Ableitungen, Herkunft.  
   URL: https://www.w3.org/TR/prov-o/

9. **Semantic Sensor Network Ontology / SOSA (W3C Recommendation, 2017)**  
   Typ: **S**  
   Relevanz: Stütze für Beobachtungsmodellierung und Trennung von Beobachtung/Gegenstand/Eigenschaft.  
   URL: https://www.w3.org/TR/vocab-ssn/

10. **OWL 2 Web Ontology Language Primer (Second Edition)**  
    Typ: **S**  
    Relevanz: Stütze für Klassen/Individuen/Relationen und ontologische Trennschärfe.  
    URL: https://www.w3.org/standards/history/owl2-primer/

---

### 2) Externe ergänzende Preprints / institutionelle Reports

11. **Bai et al. (2022)** – *Constitutional AI: Harmlessness from AI Feedback*. arXiv:2212.08073  
    Typ: **PP**  
    Relevanz: Regelgebundene Selbstkritik, Prinzipienlisten, kontrollierte Selbstverbesserung.  
    URL: https://arxiv.org/abs/2212.08073

12. **Zhou et al. (2023)** – *Instruction-Following Evaluation for Large Language Models*. arXiv:2311.07911  
    Typ: **PP**  
    Relevanz: verifizierbare Instruktionsbefolgung; relevant für A5.  
    URL: https://arxiv.org/abs/2311.07911

13. **Lin, Hilton, Evans (2022)** – *Teaching Models to Express Their Uncertainty in Words*. arXiv:2205.14334  
    Typ: **PP**  
    Relevanz: Unsicherheitsmarkierung und Kalibrierungsargumente für A3.  
    URL: https://arxiv.org/abs/2205.14334

14. **Bowman et al. (2022)** – *Measuring Progress on Scalable Oversight for Large Language Models*. arXiv:2211.03540  
    Typ: **PP**  
    Relevanz: Oversight-Logik und bounded Assistenz; relevant für A4.  
    URL: https://arxiv.org/abs/2211.03540

15. **Perez et al. (2022)** – *Red Teaming Language Models with Language Models*. arXiv:2202.03286  
    Typ: **PP**  
    Relevanz: adversariale Prüfbarkeit; Unterbau für A5.  
    URL: https://arxiv.org/abs/2202.03286

16. **Bommasani et al. (2021)** – *On the Opportunities and Risks of Foundation Models*. arXiv:2108.07258  
    Typ: **PP / Überblick mit hoher Feldrelevanz**  
    Relevanz: breiter Risiko- und Systemkontext für A und K.  
    URL: https://arxiv.org/abs/2108.07258

17. **NIST AI 600-1 (2024)** – *Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile*  
    Typ: **R**  
    Relevanz: risikoorientierte Ergänzung, besonders zu Govern, Map, Measure, Manage; stark für A1, A3, A4 und K2.  
    URL: https://doi.org/10.6028/NIST.AI.600-1

---

### 3) Repo-interne Referenzen – Anwendungsbeleg, nicht Primärbeweis

18. **ASWE PromptEval Contract (2026-04-20)**  
    Typ: **I**  
    Relevanz: lokale Operationalisierung von Zielbildklarheit, Scope-Disziplin, Ebenentrennung, Auditierbarkeit, Portierbarkeit.

19. **ASWE Prompt Preflight Operationalization (2026-04-20)**  
    Typ: **I**  
    Relevanz: lokale Vorprüfregeln für Ziel, Gegenstand, Geltung, epistemischen Status und Abstraktionsniveau.

20. **ASWE KnowledgeOS Abstraktions- und Ebenenrouter V1 (2026-03-26)**  
    Typ: **I**  
    Relevanz: Gegenstandsbereich vor Wissensebene vor Abstraktionsgrad; zentrale lokale Strukturstütze.

21. **ASWE KnowledgeOS Ontologische Basis V1 (2026-03-26)**  
    Typ: **I**  
    Relevanz: primitive Grundbegriffe und kanonische Nicht-Gleichsetzungen.

22. **ASWE Execution System – Target Contract (2026-04-13)**  
    Typ: **I**  
    Relevanz: Pfadobjekte, harte Trennungen, evolvierbare Systemelemente.

23. **ASWE Autonomy Infrastructure V1 (2026-04-13)**  
    Typ: **I**  
    Relevanz: boundedness, Rückgabezwang, Resume, Dead-End- und Budgetlogik.

### Gesamtbewertung der Evidenzlage
- Für **B** ist die Evidenzlage stark: Standards + Architektur- und Selbstadaptionsliteratur + interne Anschlussbelege sind gut integrierbar.
- Für **A** ist die Evidenzlage brauchbar, aber heterogener: ein Teil ist peer-reviewed, ein relevanter Teil liegt in hochwertigen Preprints bzw. institutionellen Reports.
- Die vorgeschlagenen Kernaxiome sind daher **wissenschaftlich begründet, aber nicht als naturgesetzlich bewiesen zu lesen**; sie sind eine **theoriegeleitete Architektur- und Governance-Synthese**.
