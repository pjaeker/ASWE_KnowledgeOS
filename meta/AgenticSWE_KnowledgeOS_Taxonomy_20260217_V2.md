---
project: AgenticSWE_KnowledgeOS
doc_type: taxonomy
version: V2
date: 2026-02-17
status: draft
tags:
  - layer/glossar
  - topic/knowledge-os
  - topic/governance
---

# ASWE Knowledge-OS – Taxonomy (V2)

## 1) Regeln

### 1.1 Tag-Naming (hart)
- Format: `facet/kebab-case` (ASCII, keine Leerzeichen).
- Deutsche Umlaute normalisieren: `ä->ae`, `ö->oe`, `ü->ue`, `ß->ss`.
- Maximal **2 Ebenen nach Facet** (z. B. `risk/risk-class/a` ist ok, aber kein tieferer Baum).

### 1.2 Glossar-Mapping (normativ)
- Jeder Taxonomie-Tag muss auf **genau einen** Glossar-**Term (canonical)** mappen.
- Wenn ein Mapping fehlt: `maps_to_canonical_term = TBD` und ein TODO erzeugen (Glossar erweitern **oder** Tag verwerfen).

### 1.3 Disambiguation-Pflicht (A/B/C)
- `a|b|c` darf nie allein stehen.
- Verwende:
  - `risk/risk-class/a|b|c` für **Risiko-Klasse (A/B/C)**
  - `topic/research-tier/a|b|c` für **Tier (Research)**

### 1.4 Minimal-Tagging-Konvention (für Artefakte)
- Pro Artefakt (Datei/Eintrag) **immer**:
  - **genau 1** `layer/*`
  - **genau 1** `artifact/*`
- Zusätzlich:
  - **0–3** `topic/*` (Backbone/Router-Signale)
  - **0–2** `risk/*` (nur wenn Außenwirkung/Risiko relevant)

### 1.5 Alias-Regeln (keine Alias-Tags)
- Tags bleiben ASCII; Akzente/Zeichen werden nur im Mapping auf den Glossar-Term abgebildet:
  - `topic/diataxis` mappt auf **Diátaxis**
  - `risk/stop-ask` mappt auf **Stop-&-Ask**
- Keine Synonym-Tags anlegen. Synonyme gehören ausschließlich ins Glossar.

### 1.6 Deprecation (Tag-Ebene)
- Tags werden nicht gelöscht; sie werden als „deprecated“ behandelt, indem:
  - im Tag-Intent (oder in einer späteren Taxonomie-Version) ein Nachfolger-Tag genannt wird,
  - und in Coverage-Beispielen nicht mehr verwendet wird.
- Diese V1 enthält **keine** deprecated Tags.

---

## 2) Facetten (V0.1)

### 2.1 layer/…
**Intent:** Wo lebt das Artefakt im 4-Schichtenmodell?  
**Allowed values:**
- `layer/library`
- `layer/blackboard`
- `layer/handbook`
- `layer/glossar`
- `layer/templates-harness` (TBD Mapping; siehe TODO)

### 2.2 artifact/…
**Intent:** Welche Artefaktform ist es (Routing/Expectations/Gates)?  
**Allowed values (V1):**
- `artifact/template`
- `artifact/checklist`
- `artifact/policy`
- `artifact/adr`
- `artifact/adr-lite`
- `artifact/runbook`
- `artifact/pr-report`
- `artifact/search-log`
- `artifact/literaturdatenbank`
- `artifact/reading-queue`
- `artifact/control-sheet`
- `artifact/copy-plan`
- `artifact/harness`
- `artifact/eval`
- `artifact/scorecard`
- `artifact/patch`
- `artifact/diff`
- `artifact/tutorial`
- `artifact/how-to`
- `artifact/reference`
- `artifact/explanation`
- `artifact/claim`
- `artifact/conflict-cluster`

### 2.3 topic/…
**Intent:** Backbone-Themen für Findability & deterministisches Routing.  
**Allowed values (V1):**
- `topic/knowledge-os`
- `topic/ssot`
- `topic/diataxis`
- `topic/findability`
- `topic/actionability`
- `topic/consistency`
- `topic/disambiguation`
- `topic/dedupe`
- `topic/governance`
- `topic/promotion-policy`
- `topic/gate`
- `topic/hardgates`
- `topic/stop-condition`
- `topic/observability`
- `topic/opentelemetry`
- `topic/deep-research`
- `topic/research-tier/a`
- `topic/research-tier/b`
- `topic/research-tier/c`
- `topic/drive-reorganisation`
- `topic/dry-run`
- `topic/human-approval`
- `topic/autonomie-leiter`
- `topic/aussenwirkung`
- `topic/secrets`
- `topic/thin-slice`
- `topic/topologie`
- `topic/pipeline`
- `topic/router`
- `topic/event-schema`
- `topic/run-id`

### 2.4 risk/…
**Intent:** Außenwirkung/Risiko-Signale (Stop-&-Ask, Risiko-Klasse).  
**Allowed values:**
- `risk/risk-class/a`
- `risk/risk-class/b`
- `risk/risk-class/c`
- `risk/stop-ask`

---

## 3) Tag-Liste (V1)

> Format: `tag` → `maps_to_canonical_term` → `short_intent`

| tag | maps_to_canonical_term | short_intent |
|---|---|---|
| layer/library | Library | Markiert Artefakte als Quellen-/Evidenz-Schicht (roh, versioniert, zitierbar). |
| layer/blackboard | Blackboard | Markiert Artefakte als Claims/Conflicts/TODOs-Schicht (Entscheidungsraum). |
| layer/handbook | Handbook | Markiert kuratierte, handlungsfähige Inhalte (Diátaxis-konform). |
| layer/glossar | Glossar | Markiert normative Begriffsbasis (Canonical Terms + Synonympolitik). |
| layer/templates-harness | Templates & Harness | Reserviert für „Templates & Harness“ als eigene Schicht; Mapping fehlt im Glossar. |
| artifact/template | Template | Standardisierte Struktur mit Pflichtfeldern zur Erhöhung von Konsistenz/Verifizierbarkeit. |
| artifact/checklist | Checklist | Binäre Prüfliste zur Operationalisierung eines Gates. |
| artifact/policy | Policy | Normative Regel: Grenzen/Verhalten verbindlich festlegen. |
| artifact/adr | ADR (Architecture Decision Record) | Vollständiger Architekturentscheid mit Kontext/Optionen/Entscheid/Konsequenzen. |
| artifact/adr-lite | ADR-Lite | Minimale Entscheidungsform inkl. Revisit-When für schnelle, überprüfbare Standards. |
| artifact/runbook | Runbook | Start-/Betriebsanleitung: Inputs, Start, erwartete Outputs, Fallback. |
| artifact/pr-report | PR Report | Standardisierter PR-Text inkl. Risk Class, Evidence, Commands, Rollback. |
| artifact/search-log | Search Log | Reproduzierbares Protokoll von Queries/Seeds/Schneeballpfaden mit Notizen. |
| artifact/literaturdatenbank | Literaturdatenbank | Versionierter Katalog deduplizierter Quellen inkl. Metadaten/Tags. |
| artifact/reading-queue | Reading Queue | Priorisierte Leseliste nach Tier/Volltextstatus zur Arbeitssteuerung. |
| artifact/control-sheet | Control-Sheet | Tabellarische Steuerzentrale für Pläne, Status, Freigaben. |
| artifact/copy-plan | Copy Plan | Vollständiger, überprüfbarer Kopier-Plan vor Ausführung (Drive Reorg). |
| artifact/harness | Harness | Ausführbarer Prüf-/Eval-Wrapper, der deterministisch Inputs → Outputs produziert. |
| artifact/eval | Eval | Bewertungslauf (Qualität/Regression/Gates) mit messbaren Ergebnissen. |
| artifact/scorecard | Scorecard | Bewertungsmatrix mit Kriterien/Scoring zur Vergleichbarkeit. |
| artifact/patch | Patch | Kleine, additive Änderungseinheit (Thin slice), leicht zu reviewen und zu testen. |
| artifact/diff | Diff | Änderungsdarstellung als Review-/Audit-Grundlage (was hat sich geändert). |
| artifact/tutorial | Tutorial | Lernpfad: schrittweise zum Verständnisziel (Diátaxis). |
| artifact/how-to | How-to | Knappes Vorgehen zum konkreten Ziel (Diátaxis). |
| artifact/reference | Reference | Präzises Nachschlageformat (Definitionen/Schemas) ohne Prozessanteil. |
| artifact/explanation | Explanation | Hintergrund/Begründung, ohne Schritt-für-Schritt Anspruch. |
| artifact/claim | Claim | Test-/prüfbare Behauptung/Regel, die im Blackboard verwaltet wird. |
| artifact/conflict-cluster | Conflict Cluster | Bündelt widersprüchliche Claims/Quellen; dokumentiert Entscheidungsstand. |
| topic/knowledge-os | Knowledge-OS | Backbone-Tag für Artefakte, die das Knowledge-OS selbst betreffen. |
| topic/ssot | Single Source of Truth (SSOT) | Markiert SSOT-relevante Regeln/Artefakte (Wahrheit liegt in Repo-Dateien). |
| topic/diataxis | Diátaxis | Markiert Diátaxis-Strukturierung (tutorial/how-to/reference/explanation). |
| topic/findability | Findability | Markiert Inhalte, die Suchbarkeit/Auffindbarkeit direkt verbessern. |
| topic/actionability | Actionability | Markiert Inhalte, die unmittelbar zu ausführbaren Schritten führen. |
| topic/consistency | Consistency | Markiert Konsistenzregeln/-prüfungen (Widerspruchsvermeidung). |
| topic/disambiguation | Disambiguation | Markiert Bedeutungsauflösungen/Begriffstrennungen (keine Mehrdeutigkeit). |
| topic/dedupe | Dedupe | Markiert Zusammenführung/Entfernung redundanter Artefakte/Quellen. |
| topic/governance | Governance | Markiert Rollen/Regeln/Entscheidungswege für kontrollierte Änderungen. |
| topic/promotion-policy | Promotion Policy | Markiert Regeln, wann/wie Rohes in kuratiertes Wissen promoted wird. |
| topic/gate | Gate | Markiert harte Prüfpunkte/Checks, die erfüllt sein müssen. |
| topic/hardgates | Hardgates | Markiert nicht-umgehbare Gates (serverseitig/CI enforced). |
| topic/stop-condition | Stop-Condition | Markiert vordefinierte Stop-Grenzen (Autopilot endet, Freigabe nötig). |
| topic/observability | Observability | Markiert Logs/Metriken/Traces zur Debugbarkeit von Workflows. |
| topic/opentelemetry | OpenTelemetry | Markiert OTel-konforme Instrumentierung (Traces/Spans/Attributes). |
| topic/deep-research | Deep Research | Markiert systematische Rechercheworkflows (Search Log/Policy/Gates). |
| topic/research-tier/a | Tier (Research) | Kennzeichnet Tier A im Research-Kontext (Publisher-Qualität/Praxisrelevanz). |
| topic/research-tier/b | Tier (Research) | Kennzeichnet Tier B im Research-Kontext (Publisher-Qualität/Praxisrelevanz). |
| topic/research-tier/c | Tier (Research) | Kennzeichnet Tier C im Research-Kontext (Publisher-Qualität/Praxisrelevanz). |
| topic/drive-reorganisation | Drive Reorganisation | Markiert kontrollierten Strukturaufbau per Kopie (kein Move/Delete zuerst). |
| topic/dry-run | Dry Run | Markiert Probeläufe ohne schreibende Aktionen (Plan/Validierung zuerst). |
| topic/human-approval | Human Approval | Markiert explizite menschliche Freigabe als Pflicht vor Ausführung. |
| topic/autonomie-leiter | Autonomie-Leiter | Markiert Autonomie-Stufen/Regeln (Autopilot vs. supervised). |
| topic/aussenwirkung | Außenwirkung | Markiert Außenwirkung/Impact nach außen (Risiko- und Stop-&-Ask-relevant). |
| topic/secrets | Secret (Credential) | Markiert Secret-Handling (Tokens/Keys) und Schutzregeln. |
| topic/thin-slice | Thin slice | Markiert kleine, additive Änderungseinheiten für schnelle Verifikation. |
| topic/topologie | Topologie (Team/Agenten) | Markiert Interaktionsstruktur von Rollen/Agenten (wer triggert wen). |
| topic/pipeline | Pipeline | Markiert eine sequenzielle Kette von Schritten/Stages (Workflow-Fluss). |
| topic/router | Router | Markiert deterministisches Routing (wer übernimmt welchen nächsten Schritt). |
| topic/event-schema | Event Schema | Markiert strukturierte Events für Trigger/Routing (event_type, payload, next_actions). |
| topic/run-id | run_id | Markiert die eindeutige Lauf-ID, die Artefakte/Events über Schritte verbindet. |
| risk/risk-class/a | Risiko-Klasse (A/B/C) | Risiko-Klasse A: niedrige Außenwirkung, Routineänderungen. |
| risk/risk-class/b | Risiko-Klasse (A/B/C) | Risiko-Klasse B: mittlere Außenwirkung, Review/Tests typischerweise nötig. |
| risk/risk-class/c | Risiko-Klasse (A/B/C) | Risiko-Klasse C: hohe Außenwirkung, strenge Gates + explizite Freigabe nötig. |
| risk/stop-ask | Stop-&-Ask | Markiert Stop-&-Ask: anhalten und explizit Freigabe/Klärung einholen. |

---

## 4) Coverage-Test Beispiele (kurz)

Regel: **2–5 Tags pro Archetyp**, ohne neue Tags.

| Artefakt-Archetyp | Beispiel-Tagging (2–5 Tags) |
|---|---|
| PR Report | `layer/templates-harness`, `artifact/pr-report`, `risk/risk-class/b`, `topic/aussenwirkung` |
| Copy Plan | `layer/handbook`, `artifact/copy-plan`, `topic/drive-reorganisation`, `risk/risk-class/c`, `risk/stop-ask` |
| Search Log | `layer/library`, `artifact/search-log`, `topic/deep-research`, `topic/findability` |
| Runbook | `layer/handbook`, `artifact/runbook`, `topic/actionability`, `topic/stop-condition` |
| Policy | `layer/handbook`, `artifact/policy`, `topic/governance`, `topic/ssot` |
| Harness | `layer/templates-harness`, `artifact/harness`, `topic/gate`, `topic/run-id` |
| Eval | `layer/templates-harness`, `artifact/eval`, `topic/gate`, `topic/observability` |
| ADR-Lite | `layer/blackboard`, `artifact/adr-lite`, `topic/governance`, `topic/disambiguation` |
| Checklist (Gate) | `layer/handbook`, `artifact/checklist`, `topic/gate`, `topic/consistency` |
| Literaturdatenbank | `layer/library`, `artifact/literaturdatenbank`, `topic/deep-research`, `topic/dedupe` |
| Reading Queue | `layer/library`, `artifact/reading-queue`, `topic/deep-research`, `topic/research-tier/b` |
| Control-Sheet | `layer/handbook`, `artifact/control-sheet`, `topic/drive-reorganisation`, `topic/human-approval` |
| Dry Run Plan | `layer/handbook`, `artifact/template`, `topic/dry-run`, `topic/gate` |
| Patch | `layer/templates-harness`, `artifact/patch`, `topic/thin-slice`, `topic/gate` |
| Diff | `layer/templates-harness`, `artifact/diff`, `topic/thin-slice`, `topic/consistency` |
| Event Schema Reference | `layer/handbook`, `artifact/reference`, `topic/event-schema`, `topic/router` |
| Claim (Blackboard) | `layer/blackboard`, `artifact/claim`, `topic/gate`, `topic/consistency` |
| Conflict Cluster | `layer/blackboard`, `artifact/conflict-cluster`, `topic/disambiguation`, `topic/dedupe` |

---

## 5) TODOs (max. 15)

1. **Glossar-Mapping schließen:** `layer/templates-harness` ist aktuell `TBD` → Glossar erweitern (Canonical Term) oder Tag verwerfen.
2. **DocType-Strategie festlegen:** DocType als eigenes Facet vs. Beibehalt von `artifact/tutorial|how-to|reference|explanation`.
3. **Topic-Set trimmen:** Nach echten Repo-Artefakten prüfen, ob alle `topic/*` gebraucht werden (Ziel weiterhin 30–60 Tags total).
4. **Layer-Policy präzisieren:** Regeln, wann ein Artefakt im Zweifel `handbook` vs. `blackboard` ist (Promotion Policy als Gate).
5. **Risk-Class Leitplanken:** Minimalregeln, wann `risk-class/b` oder `risk-class/c` verpflichtend sind (Außenwirkung-Heuristik).
6. **Research-Tier Leitplanken:** Minimalregeln, wann `topic/research-tier/*` bei Library-Artefakten gesetzt werden muss (Reading Queue/Literaturdatenbank).
7. **Router-Konventionen:** Festlegen, welche Topics primäre Routing-Signale sind (z. B. `topic/drive-reorganisation`, `topic/deep-research`).
8. **Deprecation-Mechanik dokumentieren:** Konkretes Feld/Notation für „deprecated_by“ in zukünftiger Taxonomie-Version.
9. **Coverage-Regressionstest:** 15–20 Archetypen als stabiler Check, wenn Tags geändert werden (keine neuen Tags im Test).
10. **Glossar↔Taxonomie Gate:** Gate-Regel definieren: kein neuer Tag ohne Glossar-Mapping (außer explizit `TBD` + TODO).