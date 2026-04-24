# Analyse und Optimierung des Prompts zur Axiomenarbeit unter LLM-Verhaltenssteuerung

## Einordnung

- **Gegenstandsbereich:** Systemgegenstand
- **Wissensebene:** operatives Vorgehen mit begrifflicher Vorstufe
- **Abstraktionsgrad:** kontextgebundene Arbeitsregel

Primärer Bezugspunkt sind die im Repo inzwischen explizit modellierten Prompt-Schichten **Prompt-Preflight**, **PromptEval-Contract** und **PromptPack-Rendering**. Diese trennen Vorprüfung, Qualitätsbewertung und Renderableitung und verlangen u. a. Zielbildklarheit, Scope-Disziplin, Ebenentrennung, Explizitheit, Operationalisierbarkeit und Auditierbarkeit. Außerdem darf Personalisierung nur als Verhaltensdisziplin, Prioritätsregel, Strukturhilfe oder Adapterhilfe portiert werden und keine zweite Governancequelle erzeugen. fileciteturn2file0 fileciteturn2file9

---

## Präzisionsdiagnose des Ausgangsprompts

### Ausgangsprompt

> Setze das Brainstorming der Axiomkandidaten für A und B fort, identifiziere also weitere mögliche Kandidaten. Halte dich an deutsche Sprachvorgaben. Überprüfe deine Axiomendefinition auf Gültigkeit. Entwickle ein umsetzbares Konzept zur Identifikation von Kernaxiomen. Ermittle Kernaxiomen aus den Kandidaten und begründe die Abgrenzung. Überprüfe dein gesamtes Vorgehen. Zitiere belastbare Quellen. Schreibe keinen Text, liefere eine Datei.

### Hauptdefizite

#### 1. Gegenstandsunterschreitung
„A und B“ sind nicht im Prompt selbst gebunden. Für einen robusten Lauf müssen die Gegenstände lokal explizit werden:
- **A = LLM-Verhaltenssteuerung**
- **B = ASWE_KnowledgeOS-Architektur**

Ohne diese Re-Bindung hängt die Ausführung an implizitem Chatgedächtnis und wird schlechter portierbar.

#### 2. Fehlende Scope-Grenze
„Setze das Brainstorming fort“ ist zu offen. Unklar bleibt:
- welches Kandidateninventar als Startmenge gilt,
- ob neue Kandidaten nur aus dem bisherigen Chatmaterial oder auch aus externer Literatur gewonnen werden dürfen,
- ob die Aufgabe nur begrifflich oder bereits normativ-architektonisch ist.

Das verletzt Scope-Disziplin und erhöht Driftgefahr. Genau diese Trennung wird im internen PromptEval-Contract explizit gefordert. fileciteturn2file0

#### 3. Ungenauer Validitätsbegriff
„Überprüfe deine Axiomendefinition auf Gültigkeit“ ist epistemisch unscharf. Für Axiome gibt es keine einfache globale „Gültigkeit“. Erforderlich ist die Zerlegung in prüfbare Dimensionen:
- begriffliche Kohärenz,
- Nicht-Zirkularität,
- Gegenstandsadäquanz,
- Abgrenzbarkeit,
- Widerspruchsarmut,
- Operationalisierbarkeit,
- Tragfähigkeit als Gründungsaxiom statt bloßes Qualitätsattribut.

#### 4. Ebenenvermischung
Der Prompt mischt mindestens vier Arbeitsarten:
- Kandidatenexpansion,
- Definitionsprüfung,
- Kernaxiomen-Selektion,
- Verfahrensaudit.

Ohne Phasentrennung steigt die Wahrscheinlichkeit, dass das Modell zu früh von Begriffen auf Auswahlentscheidungen oder Architekturfolgen springt. Das Repo fordert gerade hier die Trennung von Analyse, Preflight und Rendering sowie eine deduktive Reihenfolge. fileciteturn2file11 fileciteturn2file7

#### 5. Fehlende Entscheidungsregel für „Kernaxiome“
„Ermittle Kernaxiome aus den Kandidaten“ benennt kein Auswahlkriterium. Es fehlt ein Selektionsmaßstab, etwa:
- konstitutive Notwendigkeit,
- hohe Reichweite über A und B,
- geringe Ersetzbarkeit,
- starke Kopplungswirkung,
- hohe Verletzungsfolgen,
- gute Prüfbarkeit.

Ohne explizite Selektionslogik bleibt die Kernaxiomen-Menge willkürlich.

#### 6. Selbstprüfung ohne Auditvertrag
„Überprüfe dein gesamtes Vorgehen“ ist zu breit. Nötig ist ein explizites Self-Audit-Schema mit Prüfpunkten statt einer ungebundenen Selbstversicherung.

#### 7. Quellenanforderung zu unspezifisch
„Zitiere belastbare Quellen“ sagt nicht:
- welche Quellklassen zulässig sind,
- wie interne und externe Quellen zu gewichten sind,
- wie viele Quellen mindestens einzubeziehen sind,
- ob Primärquellen bevorzugt werden sollen.

Für robuste LLM-Steuerung ist das relevant, weil Risiko-, Mess- und Governancefragen stark kontextabhängig sind. NIST fordert genau solche kontext- und lebenszyklusbezogenen Risikobetrachtungen; Risiken variieren nach Lebenszyklusphase, Scope, Quelle und Einsatzkontext. citeturn113986view0

#### 8. Ausgabekontrakt unvollständig
„Schreibe keinen Text, liefere eine Datei“ bestimmt nur den Kanal, nicht die Artefaktklasse. Es fehlt:
- Dateiformat,
- Dateiname,
- interne Struktur,
- minimale Pflichtblöcke.

Das widerspricht der repo-internen Forderung, nur Artefakte mit klaren Zielpfaden und expliziter Ableitungslogik zu materialisieren. fileciteturn2file6 fileciteturn2file8

---

## Optimierungsprinzipien für diesen Prompt

Der optimierte Prompt sollte folgende Verhaltensdisziplinen erzwingen:

1. **Explizite Gegenstandsbindung**  
   A und B im Prompt selbst definieren.

2. **Preflight vor Ausführung**  
   Vor der eigentlichen Bearbeitung Ziel, Gegenstand, Scope, epistemischen Status und Abstraktionsniveau explizieren. Das entspricht der internen Preflight-Operationalisierung. fileciteturn2file9

3. **Begriffe vor Auswahlentscheidungen**  
   Erst Kandidatenraum erweitern und prüfen, dann Kernaxiome selektieren.

4. **Phasentrennung**  
   Kandidatenexpansion, Definitionsprüfung, Selektionsverfahren, Kernaxiomen-Selektion, Self-Audit trennen.

5. **Explizite Selektionskriterien**  
   Kernaxiome nicht bloß „ermitteln“, sondern über definierte Kriterien auswählen.

6. **Quellendisziplin**  
   Interne ASWE-Referenzen plus belastbare externe Primär-/Standardquellen getrennt führen.

7. **Artefaktklarheit**  
   Genau eine Datei mit festem Format und festen Blöcken ausgeben.

Diese Regeln passen zur im Repo festgelegten Architektur, nach der Rendering nur Ableitung sein darf, keine neue Governancewirkung tragen darf und bei Drift der Eval-/Preflight-Contract führend bleibt. fileciteturn2file7

---

## Optimierter Prompt – präzise Arbeitsfassung

```text
Arbeite an der Fortsetzung und Konsolidierung des bisherigen Axiomkandidatenraums in zwei explizit gebundenen Gegenstandsbereichen:

A) LLM-Verhaltenssteuerung
B) ASWE_KnowledgeOS-Architektur

Nutze das bisherige Kandidateninventar aus diesem Chat als Ausgangsbasis. Falls einzelne Vorbegriffe im aktuellen Kontext nicht eindeutig rekonstruierbar sind, markiere dies explizit als Rekonstruktionsunsicherheit statt stillschweigend zu ergänzen.

Arbeite strikt in folgender Reihenfolge und trenne die Phasen sichtbar:

PHASE 0 – PRE-FLIGHT
- Bestimme explizit:
  - Zielbild
  - Gegenstand
  - Geltungsbereich und Nicht-Geltung
  - epistemischen Status
  - Abstraktionsniveau
- Markiere:
  - Implizites
  - Vages
  - Nicht-Operationalisierbares
  - mögliche Ebenenvermischungen

PHASE 1 – KANDIDATENRAUM ERWEITERN
- Setze das Brainstorming der Axiomkandidaten für A und B fort.
- Identifiziere zusätzliche Kandidaten aus:
  1. dem bisherigen Chatkontext,
  2. internen ASWE-Referenzen,
  3. belastbaren externen Quellen.
- Trenne neue Kandidaten sauber nach:
  - A-spezifisch
  - B-spezifisch
  - gemeinsame Kopplungskandidaten

PHASE 2 – DEFINITIONS- UND GÜTEPRÜFUNG
- Prüfe jeden Kandidaten nicht pauschal auf „Gültigkeit“, sondern entlang folgender Kriterien:
  - begriffliche Kohärenz
  - Nicht-Zirkularität
  - Gegenstandsadäquanz
  - Abgrenzbarkeit zu Nachbarbegriffen
  - Widerspruchsarmut
  - Operationalisierbarkeit
  - Eignung als Gründungsaxiom statt bloßes Qualitätsattribut, Designprinzip oder Prozessmerkmal
- Markiere pro Kandidat:
  - tragfähig
  - unscharf
  - redundant
  - konfliktträchtig
  - nur sekundäres Qualitätsattribut
  - verwerfen

PHASE 3 – KONZEPT ZUR IDENTIFIKATION VON KERNAXIOMEN
- Entwickle ein umsetzbares Selektionskonzept zur Bestimmung von Kernaxiomen.
- Das Konzept muss mindestens explizieren:
  - Selektionskriterien
  - Ausschlusskriterien
  - Umgang mit Redundanz
  - Umgang mit Spannungen
  - Priorisierungslogik
  - minimale Prüfbarkeit
- Verwende keine bloß intuitive Auswahl ohne expliziten Maßstab.

PHASE 4 – ERMITTLUNG DER KERNAXIOME
- Leite aus dem geprüften Kandidatenraum die Kernaxiome ab.
- Begründe die Abgrenzung jedes Kernaxioms gegenüber:
  - nahen Alternativkandidaten
  - untergeordneten Qualitätsattributen
  - bloßen Architektur- oder Prozessregeln
- Trenne:
  - Kernaxiome für A
  - Kernaxiome für B
  - gemeinsame Kopplungsaxiome

PHASE 5 – SELF-AUDIT
- Prüfe dein eigenes Vorgehen explizit gegen folgende Fragen:
  - Wurden Beobachtung, Aussage, Hypothese, Maßstab, Kriterium und Empfehlung getrennt?
  - Wurden Begriffe vor Strukturen, Strukturen vor Prozessen und Prozesse vor Implementierung behandelt?
  - Wurden Selektionsentscheidungen explizit begründet?
  - Gibt es verbliebene Unsicherheiten, blinde Flecken oder nicht aufgelöste Spannungen?

QUELLENREGEL
- Zitiere belastbare Quellen.
- Bevorzuge:
  1. interne ASWE-Referenzen für lokale Architektur- und Verhaltenssteuerungslogik,
  2. externe Primärquellen, Standards oder anerkannte institutionelle Leitdokumente für allgemeine LLM-/GenAI-Risikologik.
- Trenne interne und externe Quellen sichtbar.

SPRACHREGEL
- Schreibe auf Deutsch.
- Englische Aliase nur knapp in Klammern direkt nach dem ersten relevanten deutschen Fachbegriff.

AUSGABEKONTRAKT
- Gib genau eine Datei aus, keine Chat-Zusammenfassung.
- Dateiformat: Markdown
- Dateiname:
  ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md

PFLICHTSTRUKTUR DER DATEI
1. Pre-Flight
2. Erweiterter Kandidatenraum
3. Prüfmatrix der Kandidaten
4. Selektionskonzept für Kernaxiome
5. Abgeleitete Kernaxiome
6. Abgrenzungsbegründungen
7. Self-Audit
8. Quellen
```

---

## Warum diese Fassung verhaltenssteuernd besser ist

- Sie erzwingt **Preflight statt Direktantwort** und operationalisiert damit die im Repo bereits formulierte Eingangsprüfung von Zielbild, Gegenstand, Geltung, epistemischem Status und Abstraktionsniveau. fileciteturn2file9
- Sie trennt **Eval, Preflight und Rendering**, statt die Ausgabeaufforderung selbst semantisch führend werden zu lassen. Genau diese Ableitungslogik ist inzwischen repo-intern festgeschrieben. fileciteturn2file7 fileciteturn2file8
- Sie begrenzt **verdeckte Governance durch Personalisierung**, weil Personalisierung nur als Verhaltensdisziplin bzw. Strukturhilfe portiert werden darf. fileciteturn2file9 fileciteturn2file2
- Sie reduziert Risiko aus **Prompt Injection**, **Excessive Agency** und **Overreliance**, weil Scope, Ableitungsdisziplin, Quellenpflicht und Self-Audit explizit gemacht werden. OWASP führt genau diese drei Risikoklassen für LLM-Anwendungen als zentrale Problemfelder. citeturn168119view1turn168119view2
- Sie ist risikologischer tragfähiger, weil NIST für GenAI-Kontexte fordert, Risiken nach Lebenszyklusphase, Scope, Quelle und Nutzungskontext zu unterscheiden und Maßnahmen entsprechend zu strukturieren. citeturn113986view0

---

## Noch schärfere Kompaktfassung

```text
Analysiere und erweitere den bisherigen Axiomkandidatenraum in den zwei explizit gebundenen Gegenstandsbereichen A) LLM-Verhaltenssteuerung und B) ASWE_KnowledgeOS-Architektur.

Arbeite strikt in fünf Phasen:
1. Pre-Flight: Zielbild, Gegenstand, Geltungsbereich, epistemischen Status und Abstraktionsniveau explizieren; Implizites, Vages und Ebenenvermischungen markieren.
2. Kandidatenraum erweitern: zusätzliche Kandidaten aus Chatkontext, internen ASWE-Referenzen und belastbaren externen Quellen identifizieren; trennen in A-spezifisch, B-spezifisch und gemeinsame Kopplungskandidaten.
3. Kandidaten prüfen: pro Kandidat begriffliche Kohärenz, Nicht-Zirkularität, Gegenstandsadäquanz, Abgrenzbarkeit, Widerspruchsarmut, Operationalisierbarkeit und Eignung als Gründungsaxiom prüfen; Ergebnis markieren als tragfähig, unscharf, redundant, konfliktträchtig, sekundäres Qualitätsattribut oder verwerfen.
4. Kernaxiome bestimmen: ein explizites Selektionskonzept entwickeln und daraus Kernaxiome für A, B und gemeinsame Kopplungen ableiten; jede Auswahl gegen benachbarte Kandidaten begründen.
5. Self-Audit: prüfen, ob Beobachtung, Aussage, Hypothese, Maßstab, Kriterium und Empfehlung getrennt wurden und ob Begriffe vor Strukturen, Strukturen vor Prozessen und Prozesse vor Implementierung behandelt wurden.

Quellenregel:
- interne ASWE-Referenzen und externe belastbare Primär-/Standardquellen getrennt ausweisen
- Deutsch als Hauptsprache, englische Aliase nur knapp in Klammern

Ausgabekontrakt:
- genau eine Markdown-Datei
- keine Chat-Zusammenfassung
- Pflichtblöcke:
  Pre-Flight
  Kandidatenraum
  Prüfmatrix
  Selektionskonzept
  Kernaxiome
  Abgrenzungsbegründungen
  Self-Audit
  Quellen
```

---

## Kurzfazit

Der Ausgangsprompt ist inhaltlich brauchbar, aber für eine robuste LLM-Verhaltenssteuerung noch zu implizit, zu selektionsschwach und zu wenig phasendiszipliniert. Die optimierte Fassung bindet Gegenstand, Scope, Validitätskriterien, Selektionslogik, Self-Audit und Artefaktform explizit und ist damit deutlich besser mit der inzwischen repo-intern etablierten Prompt-Architektur kompatibel. fileciteturn2file0 fileciteturn2file7
