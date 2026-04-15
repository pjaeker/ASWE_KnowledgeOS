---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Ueberlappungspruefung, deduktive Priorisierung und Ausarbeitungsplan fuer das naechste Dokumentenset zur bounded Evidence-Intake-Selbstevolution."
tags:
  - layer/handbook
  - artifact/reference
  - topic/architecture-evolution
  - topic/documentation
  - topic/governance
---

# ASWE Document Plan - SelfEvolution Contracts

## 0. Kurzfassung

Die offenen Aufgaben bilden keine additive Liste, sondern fuenf Schichten mit klarer Abhaengigkeitsrichtung:
1. Governance und Informationsfluss
2. Eval und Operationalisierung
3. Adapter und Environment
4. bounded Verify-Rolle
5. Automation Scheduling

Die Reihenfolge ist deduktiv, nicht organisatorisch begruendet.
Zuerst muss gelten, wer was darf und welcher Zustand Wirkung traegt.
Erst danach darf operationalisiert werden, wie geprueft, geschedult oder materialisiert wird.

## 1. Ausgangspunkt

Die offenen Aufgaben enthalten starke thematische Ueberlappungen.
Vor weiterer Dokumentvermehrung ist der Gegenstand deshalb in Schichten zu zerlegen.
Fuehrend sind dabei:
- Begriffe vor Strukturen,
- Strukturen vor Prozessen,
- Prozesse vor Implementierung,
- K5-Wirkung vor lokaler Dateisicht,
- epistemische Rollen vor Runtime-Materialisierung.

## 2. Ueberlappungspruefung

### Cluster A - Governance, Informationsfluss, Autoritaet
Gehoeren zusammen:
- Helper-Autoritaet aus Mutterthread und Rollenmodell ableiten
- Interaktionsprotokoll zwischen Umbrella, Evidence Intake, Semantic und bounded Helpern
- Spawn-/Return-Regeln
- Main-Agent-, Writer- und Gate-Grenzen
- K5-fuehrende Thread-Kopplung in M2

Nicht identisch, aber eng gekoppelt:
- Thread-Topologie
- Handoff-Disziplin
- Autoritaetsmatrix
- Write-Klassen

### Cluster B - Eval, Operationalisierung, Optimierungsende
Gehoeren zusammen:
- qualitative, quantitative und hybride Kriterien
- OI-/OE-Logik
- Endbedingungen und Optimierungsabbruch
- Meta-Evaluation der Selbstverbesserung
- Verify-Bedarf und Gate-Schwellen

Nicht identisch, aber eng gekoppelt:
- Inhaltsguete einer Evidenz
- Prozessguete der Operationalisierung
- Promotionsgrenze Richtung Semantic Evolution

### Cluster C - Adapter, Environment, Wissensarbeitsfit
Gehoeren zusammen:
- Codex als Wissensarbeits-Runtime statt coding-first Nutzung
- ChatGPT-App vs. Codex-App als Adapter-/Umgebungsfrage
- Environment-Trennung read-first vs. mutation
- Modell-/Reasoning-Profil als nachgelagerte Runtime-Frage
- Fallback-Architektur ausserhalb Codex

Nicht identisch, aber eng gekoppelt:
- Produktoberflaeche
- Reasoning-Profil
- lokale Environment-Konfiguration
- `.codex`-Mirror-Disziplin

### Cluster D - Automations- und Langlaufsteuerung
Gehoeren zusammen:
- zeitgesteuerte Folgearbeit
- Queue-/Run-Record-/Resume-Zustaende
- Scheduling-Taktung und Zeitstempelstandard
- 5h-Tokenlimit-Streckung
- Produktfrage, ob Codex Automationen nur auf Befehl oder auch initiativ anlegt

Nicht identisch, aber eng gekoppelt:
- technischer Scheduler
- K5-Zustand
- Langlaufkontinuitaet
- UI-/Produktverhalten

### Cluster E - Rollen-Neuschnitt fuer bounded Helfer
Gehoeren zusammen:
- `ei_verify_analyst`
- spaetere `resume/ledger`- und `adapter/environment`-Steward-Rollen
- Spawn-Readiness statt sofortiger Materialisierung

Nicht identisch, aber abhaengig von A und B:
- epistemischer Rollenfit
- konkrete Runtime-Rolle
- Mirror-/Materialisierungsentscheidung

## 3. Elemente hoeherer deduktiver Prioritaet

### P1 - Governance- und Informationsflusskern
Warum zuerst:
Ohne explizite Autoritaets- und K5-Kopplungslogik sind bounded Helper, Semantic-Promotion und Automationen unterbestimmt.
Erst muss feststehen, wer was darf, was als Rueckgabe gilt und welche Zustandsklasse Wirkung traegt.

### P2 - Eval-/Gate- und Operationalisierungskern
Warum direkt danach:
Triggerpromotion, Stop-Regeln, Resume-Reife und Verify-Arbeit haengen von einer expliziten Prozessguete- und Gate-Logik ab.
Sonst bleibt unklar, wonach ueberhaupt verbessert oder abgebrochen wird.

### P3 - Adapter-/Environment-Kern
Warum vor Scheduling, aber nach P1/P2:
Erst wenn Governance und Eval klar sind, kann entschieden werden, wie Codex als Wissensarbeits-Runtime zu schneiden ist und welche Produktunterschiede architektonisch relevant sind.

### P4 - Rollenvertrag `ei_verify_analyst`
Warum erst hier:
Der Rollenvertrag darf nicht frei erfunden werden.
Er muss aus epistemischer Rolle, Autoritaetsgrenze, K5-Handoff und Eval-/Verify-Zweck abgeleitet werden.

### P5 - Automation Scheduling Contract
Warum zuletzt:
Scheduling operationalisiert nur bereits geklaerte K5-Zustaende, Autoritaetsgrenzen, Gate-Zustaende und Runtime-Modi.
Es ist wichtig, aber deduktiv nachgelagert.

## 4. Minimales Soll-Dokumentenset

1. `ASWE_GovernanceInteraction_AuthorityContract_20260415_V1.md`
2. `ASWE_EvalGate_OperationalizationContract_20260415_V1.md`
3. `ASWE_CodexApp_KnowledgeWork_AdapterEnvironment_20260415_V1.md`
4. `ASWE_EvalVerifyAnalyst_RoleContract_20260415_V1.md`
5. `ASWE_CodexApp_AutomationScheduling_Contract_20260415_V1.md`

## 5. Ausarbeitungsplan

### Schritt 1 - Governance zuerst
Ziel:
Thread-, Helper- und Main-Agent-Interaktion als K5-gefuehrtes Autoritaetsmodell explizieren.

Output:
- klare Zustands- und Write-Klassen
- Handoff-/Return-Regeln
- Ableitungslinie vom Erkenntnisprozess-Rollenmodell zu bounded Rollen

### Schritt 2 - Eval-/Gate-Kern ausformulieren
Ziel:
OE-/OI-Logik, hybride Kriterien, Stop-Regeln und Meta-Evaluation zu einem operativen Vertrag verdichten.

Output:
- Kriterienachsen
- Schwellenlogik
- Stop-/Return-Regeln
- explizite Trennung Prozessguete vs. Evidenzinhalt

### Schritt 3 - Adapter-/Environment-Schnitt definieren
Ziel:
Codex als Wissensarbeits-Runtime beschreiben, ohne Coding-Harness mit Erkenntnislogik zu verwechseln.

Output:
- read-first vs. mutation
- ChatGPT-/Codex-Abgrenzung als Adapterfrage
- Reasoning-/Profilprinzipien
- Fallback-Grenzen

### Schritt 4 - bounded Verify-Rolle schneiden
Ziel:
`ei_verify_analyst` als R5-zentrierte bounded Rolle unter Umbrella definieren.

Output:
- Input-/Output-Contract
- Spawn-Readiness
- Non-Goals
- Return-Ziel

### Schritt 5 - Scheduling operationalisieren
Ziel:
Zeitversetzte Folgearbeit mit UTC-Timestamps, Trigger-Revalidierung, Run Records und UI-Test zur Automationsfrage definieren.

Output:
- Scheduling-Klassen
- Zeitstempelstandard
- Pflichtfelder
- Verifikationstest fuer Produktverhalten

## 6. Dokumentations-, Glossar-, Taxonomie- und Ontologie-Check

Dieses Paket ist nach folgenden Normen zu schneiden:
- YAML Frontmatter mit `project`, `doc_type`, `version`, `date`, `status`, `audience`, `intent`, `tags`
- genau 1x `layer/*` und 1x `artifact/*`
- begriffliche Disziplin nach Glossar und Ebenenrouter
- ontologische Trennung von Begriff, Benennung, Definition, Kategorie, Instanz, Relation, Beobachtung, Claim/Aussage und Beleg
- keine Gleichsetzung von SSOT mit einer Dingklasse
- Rollen nicht als primitive Grundbegriffe behandeln
- `See also` als explizite Anschlussstelle statt Intent-Mix im selben Dokument

## 7. Umsetzungsstatus dieses Pakets

Der Plan ist umgesetzt durch die begleitenden vier Vertragsentwuerfe plus den Scheduling-Entwurf in diesem Dokumentenpaket.

## See also
- `handbook/reference/ASWE_ExecutionSystem_Target_Contract_20260413_V1.md`
- `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260414_V1.md`
