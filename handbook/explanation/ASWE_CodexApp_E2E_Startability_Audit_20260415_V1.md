---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Audit zur vollen E2E-Startfaehigkeit des Evidence-Intake-Selbstevolutionspfads in der Codex App entlang von Instruktion, Konfiguration, Promptkette, Scripts und Fuehrungsdokumenten."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/codex
  - topic/e2e
  - topic/audit
  - topic/evidence
  - topic/self-evolution
---

# ASWE Codex App E2E Startability Audit

## 0. Zweck

Dieses Dokument prueft die volle E2E-Startfaehigkeit der bounded Selbstevolution des Evidence-Intake-Pfads in der Codex App.

Gegenstand ist der reale Fuehrungspfad:
- Projektinstruktion
- `.codex`-Konfiguration und Environment
- Bootstrap Prompt Pack
- Start Contract
- E2E-Protokoll
- UI-Runbook
- Bootstrap- und Readiness-Scripts
- K5-Koordinations- und Packet-Referenzen

## 1. Pruefkriterien

Jeder Baustein wird mindestens gegen vier Kriterien geprueft:
1. Widerspruchsfreiheit
2. Redundanzfreiheit bei sauberer Schichtentrennung
3. Zieltauglichkeit fuer den realen Startablauf
4. Dokumentations- und Sprachstrukturkonformitaet

## 2. Kurzurteil

Der Satz ist **nahe startfaehig, aber noch nicht voll normalisiert**.

Der fachliche und operative Kern ist vorhanden:
- bounded Startziel,
- Umbrella als Fuehrungsinstanz,
- Evidence Intake als erster produktiver Pfad,
- Semantic Evolution nur nach `G1 pass`,
- M2-Bootstrap,
- K5-Flaechen,
- Scripts fuer Bootstrap und minimale Readiness.

Nicht voll startfaehig im strengen Sinn ist der Satz derzeit wegen **Normierungswiderspruechen im realen Fuehrungspfad**.

## 3. Positive Befunde

### 3.1 Kernlogik vorhanden
Der Start Contract, das E2E-Protokoll und das Bootstrap Prompt Pack beschreiben denselben Zielpfad:
- Umbrella zuerst,
- M1 oder M2 explizieren,
- Evidence Intake bounded starten,
- `G1` nur ueber Umbrella,
- Semantic Evolution nur nach `G1 pass`.

### 3.2 Minimale Tooling-Stuetzen vorhanden
Ein Bootstrap-Script erzeugt die M2-K5-Flaechen.
Ein Readiness-Script prueft das Minimalset.
Damit sind zumindest Runtime-Setup und ein Teil der deterministischen Vorpruefung bereits formalisiert.

### 3.3 K5- und Writer-Grenzen konsistent
Der Fuehrungspfad bleibt one-writer-many-readers-konform.
Die bounded Rollen erhalten keine finale Gate- oder Writer-Wirkung.

## 4. P0-Widersprueche und Startblocker

### W1 Dateinamensdrift bei der Projektinstruktion
Teile des Startsatzes verweisen auf `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V1.txt`.
Die reale `.codex/config.toml` verweist jedoch auf `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`.

Folge:
- Start Contract,
- UI-Runbook,
- Readiness-Script
und reale Config laufen nicht auf denselben Instruktionsanker.

### W2 Dateinamensdrift beim Readiness Report
Das E2E-Protokoll verweist auf `ASWE_CodexApp_E2E_StartReadiness_Report_20260414_V1.md`.
Vorhanden und aktuell genannt ist jedoch `..._V2.md`.

Folge:
Die Vor-App-Lesekette ist formal inkonsistent.

### W3 Approval-Regel widerspruechlich
Start Contract und E2E-Protokoll sprechen von einer interaktiv nicht hart blockierten Approval-Lage.
Die reale `.codex/config.toml`, `.codex/requirements.toml` und die Projektinstruktion fuehren aber `approval_policy = "never"` als absichtliche Autonomieregel.

Folge:
Die Betriebsannahme fuer den realen Start ist widerspruechlich formuliert.

### W4 Kommentarwiderspruch in realen `.codex`-Dateien
Die real unter `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` liegenden Dateien tragen weiterhin den Kommentar `Candidate ... not auto-loaded`.

Folge:
Die Dateiposition spricht fuer reale Fuehrungsdateien,
waehrend der Kommentar sie als blosse Review-Artefakte darstellt.
Das unterminiert Zieltauglichkeit und Lesedisziplin.

### W5 Readiness-Script veraltet gegenueber realer Config
Das Readiness-Script prueft die V1-Instruktionsdatei,
wenn die reale Config bereits V2 als Fallback-Datei fuehrt.

Folge:
Der deterministische Startcheck kann gegen einen bereits normalisierten Startzustand falsch-negativ laufen.

## 5. Redundanzlage

### R1 Start Contract vs. E2E-Protokoll vs. UI-Runbook
Die drei Dokumente sind nicht automatisch redundant.
Sie bleiben zulaessig, wenn die Schichttrennung gilt:
- Start Contract = normative Startvoraussetzungen,
- E2E-Protokoll = lueckenlose Sequenz,
- UI-Runbook = konkrete Bedienreihenfolge.

Derzeit ist die Trennung sachlich weitgehend gegeben,
aber durch die Dateinamens- und Approval-Drift nicht hinreichend sauber.

### R2 Bootstrap Prompt Pack
Das Prompt Pack ist zieltauglich,
weil es den Startablauf nicht ersetzt, sondern den initialen Lauf sprachlich operationalisiert.
Redundanz entsteht erst,
wenn abweichende Regelannahmen in Prompt und Contract stehen.

## 6. Dokumentations- und Sprachstrukturpruefung

### 6.1 Repo-Satz
Die 2026-04-13/14-Dokumente sind ueberwiegend sauber als `reference` oder `protocol` geschnitten.
Die groessten Probleme liegen nicht in der Schichtwahl,
sondern in Versions- und Betriebsmodusinkonsistenzen.

### 6.2 Paketdokumente 2026-04-15
Im Arbeits-Paket mussten drei Formprobleme korrigiert werden:
- unvollstaendiges Frontmatter,
- uneinheitlicher `doc_type`,
- fehlende Rueckverweise.

Diese Normalisierung ist in diesem Paket bereits nachgezogen.

## 7. Minimal-Remediation fuer volle E2E-Startfaehigkeit

### M1 Dateinamensnormalisierung
Auf **einen** kanonischen Projektinstruktionsanker normieren:
- bevorzugt `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`

Und auf **einen** Readiness-Report-Anker normieren:
- `ASWE_CodexApp_E2E_StartReadiness_Report_20260414_V2.md`

### M2 Approval-Normalisierung
Alle Fuehrungsdokumente auf dieselbe Betriebsannahme normieren.
Wenn der reale Start ueber `approval_policy = "never"` laufen soll,
muessen Start Contract, E2E-Protokoll und UI-Runbook genau diese Annahme ausdruecken.

### M3 Kommentarbereinigung in `.codex`-Dateien
Die Zeile `Candidate ... not auto-loaded` entfernen oder durch eine Zielsatzform ersetzen,
falls `.codex/config.toml`, `.codex/requirements.toml` und `.codex/environments/environment.toml` reale Fuehrungsdateien sind.

### M4 Readiness-Script aktualisieren
Das Script auf die reale Instruktionsversion und die realen Startartefakte normieren.

## 8. Exakte Ziel-Dateien fuer Remediation

- `.codex/config.toml`
- `.codex/requirements.toml`
- `.codex/environments/environment.toml`
- `PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt`
- `handbook/reference/ASWE_CodexApp_StartContract_20260414_V1.md`
- `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260414_V1.md`
- `handbook/reference/ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260414_V1.md`
- `handbook/reference/ASWE_CodexApp_E2E_StartReadiness_Report_20260414_V2.md`
- `scripts/aswe_e2e_start_readiness_check.sh`

## 9. Konkrete Soll-Aenderungen als wording blocks

### 9.1 Start Contract und E2E-Protokoll
Ersetze die Approval-Formulierung durch:

> `approval_policy = never` ist fuer diesen bounded Selbstevolutionsstart absichtlich gesetzt. Autonomie wird ueber K5-Artefakte, Main-Agent-Grenzen, Auditierbarkeit und paketisierte Rueckgabe kontrolliert, nicht ueber Approval-Dialoge.

### 9.2 Dateinormierung fuer Projektinstruktion
Ersetze alle Referenzen auf die V1-Instruktionsdatei durch die reale V2-Datei,
sofern V2 der wirksame Fallback- und Startanker bleibt.

### 9.3 Dateinormierung fuer Readiness Report
Ersetze im E2E-Protokoll die V1-Referenz auf den Start-Readiness-Report durch V2.

### 9.4 Kommentarbereinigung in `.codex`-Dateien
Ersetze den Kopfkommentar durch:

> Project-scoped Codex configuration for bounded Evidence-Intake self-evolution in ASWE_KnowledgeOS.

## 10. Urteil

**Volle E2E-Startfaehigkeit ist fachlich und strukturell fast erreicht, aber in der realen Startkette noch nicht strikt gegeben.**

Der Satz wird erst dann strikt startfaehig,
wenn Versionsanker, Approval-Annahme und Readiness-Checks auf denselben realen Fuehrungspfad normiert sind.

## 11. See also

- `ASWE_DocumentPlan_SelfEvolutionContracts_20260415_V1.md`
- `ASWE_CodexApp_KnowledgeWork_AdapterEnvironment_20260415_V1.md`
- `ASWE_CodexApp_PersonalizationPorting_Contract_20260415_V1.md`
- `ASWE_DeterministicTooling_ExecutionGuideline_20260415_V1.md`
- `ASWE_CodexApp_AutomationScheduling_Contract_20260415_V1.md`
- `ASWE_GovernanceInteraction_AuthorityContract_20260415_V1.md`
- `ASWE_EvalGate_OperationalizationContract_20260415_V1.md`
