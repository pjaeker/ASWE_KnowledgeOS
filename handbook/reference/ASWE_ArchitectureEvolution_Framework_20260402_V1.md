# ASWE Architecture Evolution Framework

## 0. Zweck

Dieses Dokument beschreibt den Planungsrahmen fuer die Weiterentwicklung des ASWE-KnowledgeOS mit dem Ziel,

- das ASWE-KnowledgeOS als adaptive Architektur- und Wissensbasis weiterzuentwickeln und
- aus dieser Wissensbasis schnell ein nutzbares Template-Harness fuer autonome Softwareentwicklung abzuleiten.

Es ist ein Struktur- und Referenzdokument.  
Es beschreibt nicht den aktuellen operativen Arbeitsschnitt, sondern die stabile Architektur der Evolutionsarbeit.

## 1. Stellung im Repo

### 1.1 Dokumenttyp
Dieses Dokument ist eine **Reference**.  
Es beschreibt Struktur, Pfade, Kontrollflaechen, Uebergaenge und Ausbaurichtung.  
Es ist kein Runbook, kein einzelner ADR und keine Schritt-fuer-Schritt-Anleitung.

### 1.2 Repo-Ort
Kanonischer Ort:
- `handbook/reference/ASWE_ArchitectureEvolution_Framework_20260402_V1.md`

Operativer Spiegel:
- `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260402_V1.md`

### 1.3 Rolle relativ zu anderen Artefakten
- **Glossar / Taxonomie / Ontologie / Router** klaeren Begriffe, Klassen, Relationen und Einstiegsebenen.
- **Dieses Framework** verbindet diese Grundlagen mit der Evolutionsarbeit.
- **Workstreams** fuehren konkrete Arbeitsschnitte.
- **ADRs / Policies / Contracts** kanonisieren Teilentscheidungen.
- **Templates & Harness** operationalisieren reife Ergebnisse.

## 2. Zielbild der Architekturevolution

Das ASWE-KnowledgeOS ist ein semantisch diszipliniertes Evolutionssystem fuer agentische Softwareentwicklungsarchitektur.

Es verarbeitet:
- externe Evidenz,
- Hands-off-Erfahrungen,
- semantische Klaerung,
- Architekturentscheidungen,
- operative Ableitungen,

so, dass daraus driftarme, pruefbare und ausfuehrbare Bausteine entstehen.

Das Template-Harness ist kein paralleles Nebenprojekt und auch nicht der Erstzugriffspunkt.  
Es ist die am weitesten operationalisierte Form kanonisierter Architektur- und Wissensarbeit.

Die harte Reihenfolge lautet:

1. Evidenz erfassen
2. Beobachtungen und Claims sauber trennen
3. begriffliche oder kategoriale Auswirkungen pruefen
4. erst dann Regeln und Architektur anpassen
5. erst dann in Harness-Bausteine uebersetzen

## 3. Die vier Primaerpfade

## 3.1 Evidenz-Intakepfad

### Zweck
Neue Weltbezuege kontrolliert ins System bringen.

### Primargegenstand
- Beobachtung
- Claim / Aussage
- Beleg
- Quelle
- Konflikt
- Pattern-Kandidat

### Aufgabe
Der Evidenz-Intakepfad nimmt neue Signale auf, ohne sie vorschnell zu kanonisieren.  
Er zerlegt Hands-off-Erfahrungen, Agentic News Intake, DeepResearch-Ergebnisse und repo-interne Befunde in epistemisch saubere Bausteine.

### Typische Zielartefakte
- Library
- Blackboard
- Source Cards
- Claim Packs
- Konfliktcluster
- Pattern-Kandidaten
- Snapshot- und Derivat-Artefakte aus dem DeepResearch-Pfad

### Nicht-Ziel
- keine direkte Architekturregel
- kein direkter Harness-Baustein
- keine semantische Festlegung ohne weiteren Pfad

## 3.2 Semantischer Evolutionspfad

### Zweck
Den Bedeutungsraum stabilisieren und Drift minimieren.

### Primargegenstand
- Begriff
- Benennung
- Definition
- Kategorie
- Relation
- Abgrenzung
- Ebenenordnung

### Aufgabe
Dieser Pfad klaert, welche Begriffe kanonisch sind, wie Kategorien unterschieden werden und welche Relationen und Ebenenuebergaenge zulaessig sind.  
Er verhindert, dass Beobachtungen direkt als Regeln, Werkzeuge direkt als Architektur oder lokale Sonderbegriffe direkt als Kanon gesetzt werden.

### Typische Zielartefakte
- Glossar
- Taxonomie
- Ontologische Basis
- Relationsmatrix
- Router
- semantische Validierer und Mapping-Regeln

### Nicht-Ziel
- keine konkrete Implementierung
- keine operative Arbeitsanweisung
- keine direkte Policy-Geltung ohne Architekturpfad

## 3.3 Architektur-Kanonisierungspfad

### Zweck
Aus stabilisierter Evidenz und geklaerter Semantik verbindliche Systemregeln machen.

### Primargegenstand
- Regel
- Policy
- Contract
- Gate
- Rollenklasse
- Workflow-Grenze
- Schichtdefinition
- Promotion-Regel

### Aufgabe
Dieser Pfad uebersetzt belastbare Einsichten in verbindliche Architekturentscheidungen.  
Er definiert Schichtgrenzen, Rollen- und Outputvertraege, Geltungsregeln, Promotion-Bedingungen und kanonische Uebergaenge zwischen den Schichten.

### Typische Zielartefakte
- Architekturreferenz
- Policies
- ADR / ADR-Lite
- Output Contracts
- Handoff Contracts
- Gate-Definitionen
- Promotionsmatrix

### Nicht-Ziel
- keine rohen Befunde direkt verregeln
- keine Tool-Affordanz als automatische Architekturentscheidung behandeln

## 3.4 Harness-Operationalisierungspfad

### Zweck
Stabile Architektur- und Regelstrukturen in ausfuehrbare, testbare und wiederverwendbare Bausteine uebersetzen.

### Primargegenstand
- Template
- Harness
- Skill
- `.codex`-Ableitung
- Runbook
- Script
- Fixture
- Verify-/Eval-Baustein
- Profil

### Aufgabe
Dieser Pfad macht kanonisierte Architektur operational nutzbar.  
Er erzeugt das Referenzharness und spaeter profilierbare Ableitungen fuer konkrete Projektstarts.

### Typische Zielartefakte
- Harness-Core
- modulare Templates
- Skills
- `.codex`-Materialisierungen
- Verify-/Eval-/Smoke-Bausteine
- Fixtures
- Profile

### Nicht-Ziel
- keine unreife Semantik operationalisieren
- keine halbfertigen Architekturideen verfestigen

## 4. Die drei Querpfade

Diese Querpfade sind Enabler ueber den vier Primaerpfaden.  
Sie sind aktuell eingeplant, aber noch nicht im selben Detaillierungsgrad auszuarbeiten wie die Primaerpfade.

## 4.1 Querpfad A: Autonomie- und Orchestrierungsinfrastruktur

### Ziel
Bounded, pruefbare und langlaufende Zusammenarbeit mehrerer Agenten ueber die vier Primaerpfade hinweg ermoeglichen.

### Hohe Aufgabenklasse
- Supervisor Routing
- Progress Ledger
- Resume- und Handoff-Struktur
- Iterations- und Budgetgrenzen
- Dead-End-Management
- Spawn-Disziplin
- bounded Rollenkoordination

### Funktion relativ zu den Primaerpfaden
Dieser Querpfad ersetzt keinen fachlichen Pfad.  
Er sorgt dafuer, dass Arbeit ueber mehrere Agenten oder Sitzungen hinweg kontrolliert verbunden werden kann.

## 4.2 Querpfad B: Eval- und Observability-Pfad

### Ziel
Allen Primaerpfaden belastbare Mess-, Diagnose- und Freigabesignale liefern.

### Hohe Aufgabenklasse
- Qualitaetsmetriken
- Regression-Signale
- Coverage
- Laufzeitbeobachtung
- Evidence fuer Gates
- Diagnose und Rueckfuehrung von Fehlern

### Funktion relativ zu den Primaerpfaden
Dieser Querpfad liefert keine Bedeutung und keine Geltung, sondern Feedback ueber Verhalten, Qualitaet, Sicherheit und Rueckschritt.

## 4.3 Querpfad C: Adapter- und Oberflaechenpfad

### Ziel
Dieselbe Architektur ueber unterschiedliche Arbeitsumgebungen konsistent nutzbar machen.

### Hohe Aufgabenklasse
- ChatGPT GUI
- Codex App
- CLI / IDE
- Cloud Delegation
- Portal / UI
- andere Einstiegspfade und Adapter

### Funktion relativ zu den Primaerpfaden
Dieser Querpfad veraendert nicht die Architektur der Primaerpfade, sondern bildet sie in Umgebungen und Oberflaechen ab.

## 5. Sicherheitsarchitektur: Korrektur und Zielbild

### 5.1 Korrektur
Sicherheit und Berechtigungen duerfen nicht nur als statische Enforcement-Grenze verstanden werden.  
Weil sich Bedrohungslage, Standards, Abhaengigkeiten, Angriffsformen und Schutzmechanismen laufend veraendern, braucht das System neben einer festen Sicherheitsgrenze auch eine eigene Evolutionslogik.

### 5.2 Festes Architekturelement
Kanonisches Querschnittselement:

**Security, Trust & Permission Control Plane**

### 5.3 Zweck der Control Plane
Diese Control Plane deckt alle Fragen zu
- Berechtigungen,
- Schreibgrenzen,
- Secrets,
- Informationsfluss nach innen und aussen,
- untrusted content und Prompt Injection,
- Supply-Chain- und Runtime-Risiken,
- Detection, Response und Recovery

ab.

### 5.4 Subsysteme
1. Identity & Permission Control
2. Write Control
3. Ingress / Egress Protection
4. Secrets & Sensitive Data Protection
5. Supply Chain & Runtime Security
6. Detection, Response & Recovery

### 5.5 Zusaetzlicher Evolutionspfad
Neben der festen Control Plane wird ein eigener, spaeter auszuarbeitender **Security-Evolution-Pfad** eingeplant.

Sein Zweck ist:
- neue Bedrohungen, Standards, Schwachstellen und Abwehrmuster laufend aufzunehmen,
- ihre Auswirkungen auf Repo, Orchestrierung, Tools, Agentenrollen und Datenfluesse zu pruefen,
- noetige Aenderungen kontrolliert in Policies, Gates, Tooling, Harness und Betriebsregeln zu ueberfuehren.

### 5.6 Stellung relativ zu den Pfaden
- Die **Control Plane** bleibt die feste Schutz- und Enforcement-Grenze.
- Der **Security-Evolution-Pfad** ist die laufende Anpassungslogik fuer diese Schutzarchitektur.
- Er ist kein Ersatz der vier Primaerpfade, sondern ein spezialisierter, dauerhaft noetiger Evolutionsstrang mit Rueckwirkungen auf alle Pfade.

## 6. Multi-Agentische Orchestrierung

### 6.1 Grundsatz
Die Architekturevolution eignet sich fuer bounded Multi-Agent-Orchestrierung, aber nicht fuer freie Mesh-Koordination als Standardmodus.

### 6.2 Kanonisches Orchestrierungsmodell
- Main Agent bleibt primaerer Orchestrator und Syntheseinstanz.
- bounded Rollen arbeiten in eng begrenzten Slices.
- kein zweiter verdeckter Writer-Pfad.
- repo-lokale Governance bleibt uebergeordnet.
- Spawn und Materialisierung erfolgen nur bei klarem Nutzen.

### 6.3 Rolle der Codex App
Die Codex App ist aktuell die bevorzugte Orchestrierungsoberflaeche fuer spaetere bounded Multi-Agent-Ausfuehrung, insbesondere fuer:
- parallele Agentenarbeit
- Worktrees
- projektbezogene Threads
- Skills
- delegierte laenger laufende Aufgaben

Sie ist jedoch nicht selbst die letzte Sicherheits- oder Berechtigungsinstanz.  
Diese Rolle verbleibt bei der Security, Trust & Permission Control Plane und den repo-lokalen Enforcement-Mechanismen.

## 7. Sequenzierung der Ausarbeitung

### 7.1 Sofort hoch priorisiert
1. Evidenz-Intakepfad
2. Semantischer Evolutionspfad

### 7.2 Danach
3. Architektur-Kanonisierungspfad
4. Harness-Operationalisierungspfad

### 7.3 Mitlaufen lassen, aber spaeter ausdetaillieren
- Querpfad A
- Querpfad B
- Querpfad C
- Security-Evolution-Pfad

## 8. Offene Punkte fuer spaetere Ausarbeitung

- genaues Schema des Evidenz-Intakepfads
- genaue semantische Promotionsmatrix
- genaue Schicht-4-Untergliederung
- Detailmodell des Referenzharness
- technische Materialisierung der Querpfade
- konkrete Security-Mechanismen je Adapter und Umgebung
- konkrete Codex-App-Orchestrierung je Pfad
- genaue Kopplung zwischen Security-Evolution-Pfad und Control Plane

## 9. Kanonische Kurzformel

Die Architekturevolution des ASWE-KnowledgeOS folgt dieser Ordnung:

**Evidenz aufnehmen -> Bedeutungen stabilisieren -> Architektur kanonisieren -> Harness operationalisieren**

und wird ergaenzt durch:

**Orchestrierung, Eval/Observability und Adapter/Oberflaechen als Querpfade**

sowie durch:

**eine feste Security, Trust & Permission Control Plane plus einen laufenden Security-Evolution-Pfad**
