# ASWE_Axiomraum_Repo_Integrationsoptionen_20260423_V2

## 0. Voranalyse

### Zielbild
Das ASWE-Axiomraum-Paket soll nicht nur als historisch nachvollziehbares Paket materialisiert werden. Das Grundlagendokument soll als zukuenftiges Referenzdokument den bisherigen Stand der Architekturevolution pruefbar ausrichten und perspektivisch das gesamte Architekturevolutionsgeruest praegen.

### Gegenstand
Gegenstand ist die Planung moeglicher Repo-Integrationen fuer:

- `ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423`
- `final/ASWE_Axiomraum_Grundlagendokument_20260423_V11.md`
- `support/current/ASWE_Axiomraum_Zeilenbelegmatrix_20260423_V1.md`
- duplettenfreie Historie, Paketnavigation und Integrationsoptionen

### Geltungsbereich
Dieses Dokument erweitert ausschliesslich die Integrationsoptionen. Es fuehrt keine Repo-Integration aus und schreibt keine bestehende Repo-Wahrheitsquelle um.

### Nicht-Geltung
Nicht Gegenstand sind:

- direkte Repo-Mutation,
- automatische SSOT-Umschreibung,
- neue Kernaxiome,
- neue Folgeebenen,
- quellenexterne Belegung,
- automatische Gate- oder Skill-Kanonisierung,
- Aenderung des Grundlagendokuments.

### Epistemischer Status
Die Integrationsoptionen sind Planungs- und Pruefartefakte. Die tragenden Repo-Dokumente sind aus aktuell verfuegbaren repo-internen Suchergebnissen ermittelt. Vor Materialisierung ist ein read-only Repoabgleich gegen den tatsaechlichen Zielbranch erforderlich.

### Grundregel
Zuerst Referenzmaterialisierung und Kompatibilitaetspruefung, dann Architekturabgleich, dann gezielte Nachzuege. Keine direkte Architekturumschreibung ohne explizite Abgleichsentscheidung.

---

## 1. Tragende Architekturdokumente

### 1.1 Fuehrende operative Start- und Zustandsanker

| Rang | Dokument / Pfad | Rolle | Integrationsbedeutung |
|---|---|---|---|
| 1 | `AGENTS.md` | repo-lokale Arbeits- und Agentenregeln | vor jeder Repo-Materialisierung lesen |
| 2 | `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260415_V2.md` | aktueller Einstieg / Pointer-Bund | bestimmt aktuelle Startreihenfolge |
| 3 | `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260415_V2.md` | aktueller operativer Wahrheitsstand | bestimmt, was als aktuelle Repo-Lage gilt |
| 4 | `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_20260415_V2.md` | Umbrella-Hauptanker | primaerer Anschluss fuer Integrationsanalyse |
| 5 | `blackboard/workstreams/ASWE_WS_EvidenceIntake_20260415_V2.md` | erster produktiver Primaerpfad | prueft Evidenz-/Aussage-/Beleganschluss |
| 6 | `blackboard/workstreams/ASWE_WS_SemanticEvolution_20260408_V1.md` | paralleler semantischer Primaerpfad | prueft Begriffs-, Definitions- und Relationsanschluss |

### 1.2 Tragende Referenz- und Zielarchitekturdokumente

| Rang | Dokument / Pfad | Rolle | Integrationsbedeutung |
|---|---|---|---|
| 1 | `handbook/reference/ASWE_ArchitectureEvolution_Framework_20260402_V1.md` | stabiler Planungsrahmen der Architekturevolution | direkt vom Axiomraum zu ueberpraegen |
| 2 | `handbook/reference/ASWE_ExecutionSystem_Target_Contract_20260413_V1.md` | Zielvertrag des selbst-evolvierbaren Ausfuehrungssystems | Objektklassen, Pfad-Interfaces und Evolvierbarkeit abgleichen |
| 3 | `handbook/reference/ASWE_EvalGate_Authority_Contract_20260413_V1.md` | Eval-/Gate- und Autoritaetslogik | Qualitaetsattribute und Pruefartefakte anbinden |
| 4 | `handbook/reference/ASWE_AutonomyInfrastructure_20260413_V1.md` | Autonomieinfrastruktur | Routinen, Suchspuren und Kontrollpunkte abgleichen |
| 5 | `handbook/reference/ASWE_CodexApp_AdapterEnvironment_Contract_20260413_V1.md` | Adapter-/Umgebungskontrakt | Chat/Codex/CLI-Oberflaechen trennen |
| 6 | `handbook/reference/ASWE_CodexApp_StartContract_20260415_V2.md` | aktueller Codex-App-Startvertrag | operationalisierende Startschicht anbinden |
| 7 | `handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md` | E2E-Protokoll | prueft startfaehige Ausfuehrungslogik |
| 8 | `handbook/reference/ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260415_V2.md` | UI-/Adapter-Runbook | Oberflaechenintegration ohne Semantikverschiebung |
| 9 | `handbook/reference/ASWE_ChatGPTApp_SingleChat_SelfEvolution_Foundation_20260416_V7.md` | Einzelchat-Selbstevolution | Chat-adapterseitiger Vergleichsanker |

### 1.3 Pfadspezifische Disziplinierungsdokumente

| Pfad | Dokumente | Integrationsbedeutung |
|---|---|---|
| EvidenceIntake | `ASWE_EvidenceIntake_Methodenmodell_*`, `ASWE_EvidenceIntake_RoleContract_*`, `ASWE_EvidenceIntake_OperationalizationEval_*` | Beobachtung, Aussage, Beleg, Konflikt, Trigger und Evidenzguete mit Axiomraum abgleichen |
| SemanticEvolution | `ASWE_SemanticEvolution_Methodenmodell_*`, `ASWE_SemanticEvolution_RoleContract_*` | Begriff, Definition, Relation, Kategorie, Ebenenordnung und Driftlogik mit Axiomraum abgleichen |
| ArchitectureCanonicalization | bisher nachgelagert bzw. nicht voll operationalisiert | Axiomraum kann hier als Ausloeser fuer eine eigenstaendige Kanonisierungsphase dienen |
| HarnessOperationalization | bisher nachgelagert | erst nach Referenz- und Architekturfreigabe in Skills, Prompts, Runbooks oder `.codex`-Ableitungen uebersetzen |
| SecurityEvolution | bisher mitlaufend / spaeter auszuarbeiten | Zirkularitaets-, Beleg- und Kontrolllogik mit Sicherheits- und Write-Grenzen abgleichen |

### 1.4 Plan-, Paket- und Patchdokumente als Anschlussanker

| Dokument / Familie | Rolle | Integrationsbedeutung |
|---|---|---|
| `ASWE_DocumentPlan_SelfEvolutionContracts_20260415_V2.md` | Paketplan fuer Self-Evolution-Contracts | zeigt deduktive Reihenfolge und Zielpfadlogik |
| `ASWE_DocumentPlan_SelfImprovementCriteria_20260420_V2.md` | Paketplan fuer Selbstverbesserungskriterien | naher Vorlaeufer fuer Kriterien-/Axiomraum-Integration |
| `ASWE_DocumentPlan_PromptArchitecture_20260420_V1.md` | Prompt-Architektur-Plan | Anschluss fuer spaetere Prompt-/Skill-Operationalisierung |
| `meta/packages/ASWE_ProModel_AutonomousStart_20260414_V3/` | historisches ProModel-Support-Paket | Vergleichsanker fuer Paketmaterialisierung |
| `.codex/*` und `scripts/aswe_e2e_start_readiness_check.sh` | Laufzeit-/Readiness-Flaechen | nur nachgelagert, nicht Ursprung der Semantik |

---

## 2. Repozielpfad-Entscheidung

### 2.1 Primaerer Zielpfad fuer das Grundlagendokument

Empfohlener Zielpfad:

```text
handbook/reference/ASWE_Axiomraum_Grundlagendokument_20260423_V11.md
```

Begruendung:

- Das Dokument ist ein Referenzdokument, nicht Workstream, Runbook oder Protokoll.
- Es definiert Grundbegriffe, Axiome, Folgeebenen, Pruefartefakte, Rueckbindung, Bewertungslogik und Materialisierungsvorbehalt.
- Es soll die Architekturevolution praegen, aber nicht selbst operative Session-Wahrheit werden.

### 2.2 Primaerer Zielpfad fuer das Gesamtpaket

Empfohlener Zielpfad:

```text
meta/packages/ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423/
```

Begruendung:

- Das Paket enthaelt Historie, Deduplizierung, Zeilenbelegung, Navigation und Materialisierungsbelege.
- Diese Artefakte sind wichtig fuer Nachvollziehbarkeit, aber nicht alle gehoeren in den normativen Handbook-Kern.
- Das Muster entspricht bereits vorhandenen paketfoermigen ProModel-/Support-Strukturen.

### 2.3 Arbeitsflaeche fuer Integrations- und Kompatibilitaetsanalysen

Empfohlener Zielpfad fuer Folgeanalysen:

```text
blackboard/workstreams/architecture-evolution/axiomraum-integration/
```

Empfohlene Startartefakte:

```text
blackboard/workstreams/architecture-evolution/axiomraum-integration/ASWE_Axiomraum_ArchitectureCompatibility_Audit_20260423_V1.md
blackboard/workstreams/architecture-evolution/axiomraum-integration/ASWE_Axiomraum_ArchitectureAlignment_PatchPlan_20260423_V1.md
blackboard/workstreams/architecture-evolution/axiomraum-integration/ASWE_Axiomraum_Operationalization_Options_20260423_V1.md
```

### 2.4 Nachgelagerte Zielpfade bei Freigabe

| Artefakttyp | moeglicher Zielpfad | Bedingung |
|---|---|---|
| Architekturabgleich / Plan | `handbook/explanation/ASWE_Axiomraum_ArchitectureEvolution_IntegrationPlan_20260423_V1.md` | nach read-only Kompatibilitaetsaudit |
| aktualisiertes Framework | `handbook/reference/ASWE_ArchitectureEvolution_Framework_20260402_V2.md` | nur nach expliziter Architekturentscheidung |
| aktualisierter Zielvertrag | `handbook/reference/ASWE_ExecutionSystem_Target_Contract_20260413_V2.md` | nur wenn Objektklassen/Pfadinterfaces angepasst werden |
| Protokoll / Ausfuehrung | `handbook/protocol/ASWE_Axiomraum_ArchitectureAlignment_Protocol_20260423_V1.md` | nur bei reproduzierbarer Ausfuehrungslogik |
| Skill-/Prompt-Adapter | `handbook/reference/ASWE_Axiomraum_PromptSkill_Operationalization_20260423_V1.md` | erst nach evaluiertem Operationalisierungsplan |
| aktualisierte Workstreams | `blackboard/workstreams/ASWE_WS_ArchitectureEvolution_*.md` und Child-Workstreams | erst bei neuer operativer Wahrheit |
| Status / Entry | `meta/state/...` | nur im Closeout nach materieller Repo-Aenderung |

---

## 3. Integrationsoptionen

### 3.1 Optionsmatrix

| Option | Integrationsmodus | Ziel | primaere Zielpfade | Risiko | Nutzen | kleinster naechster Schritt |
|---|---|---|---|---|---|---|
| A | Referenzmaterialisierung | Grundlagendokument als Reference setzen | `handbook/reference/ASWE_Axiomraum_Grundlagendokument_20260423_V11.md` | niedrig | hoch | Datei mit Frontmatter an Repo-Konventionen angleichen |
| B | Paketmaterialisierung | gesamte nachvollziehbare Historie repo-lokal halten | `meta/packages/ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423/` | niedrig-mittel | hoch | Paket ohne ZIP-in-ZIP in Zielpfad kopieren |
| C | Read-only Kompatibilitaetsaudit | Axiomraum gegen Architekturframework, Zielvertrag, Workstreams spiegeln | `blackboard/workstreams/architecture-evolution/axiomraum-integration/` | niedrig | sehr hoch | Auditdokument anlegen |
| D | Framework-Ausrichtung | `ASWE_ArchitectureEvolution_Framework` unter Axiomraumlogik ueberarbeiten | `handbook/reference/ASWE_ArchitectureEvolution_Framework_20260402_V2.md` | hoch | sehr hoch | Patchplan, keine direkte Umschreibung |
| E | Execution-System-Ausrichtung | Objektklassen und Pfadinterfaces mit Axiomraum abgleichen | `handbook/reference/ASWE_ExecutionSystem_Target_Contract_20260413_V2.md` | hoch | sehr hoch | Objektklassen-Kontrastmatrix |
| F | EvidenceIntake-Angleichung | Beobachtung/Aussage/Beleg/Unsicherheit mit Axiomraum konsolidieren | `ASWE_EvidenceIntake_*` | mittel | hoch | Mapping: Axiomraum A/K -> EvidenceIntake-Objekte |
| G | SemanticEvolution-Angleichung | Begriff/Definition/Relation/Ebenenordnung mit Axiomraum konsolidieren | `ASWE_SemanticEvolution_*` | mittel-hoch | sehr hoch | Mapping: Axiomraum B/K -> SemanticEvolution-Objekte |
| H | ArchitectureCanonicalization-Aktivierung | Axiomraum als Startsignal fuer Kanonisierungsphase nutzen | neuer Workstream / Protocol | hoch | sehr hoch | klaeren, ob eigener Child-Workstream noetig |
| I | Eval-/Gate-Ableitung | Qualitaetsattribute und Pruefartefakte in Eval-/Gate-Logik ueberfuehren | `ASWE_EvalGate_Authority_Contract_*` | mittel-hoch | hoch | Schwellenlogik gegen bestehende Gates pruefen |
| J | Prompt-/Skill-Operationalisierung | Pruefstandard, Algorithmus, Routinen in Prompts/Skills ableiten | Prompt-/Skill-Referenzen | mittel | hoch | erst pruefen, welche Artefakte reine Pruefartefakte bleiben |
| K | Adapter-/Oberflaechenabgleich | ChatGPT/Codex/CLI-Adapter an Axiomraum binden | `ASWE_CodexApp_*`, `ASWE_ChatGPTApp_*` | mittel | hoch | Adapter-Asymmetrie gegen K3 pruefen |
| L | Laufzeit-/`.codex`-Nachzug | Pruef-/Startlogik spaeter in Runtime-Flaeche spiegeln | `.codex/*`, Scripts | hoch | mittel-hoch | nur nach Reference- und Contract-Freigabe |
| M | Security-/Control-Plane-Abgleich | Zirkularitaets-, Beleg- und Write-Grenzen sicherheitsseitig pruefen | Security-Evolution / Control Plane | hoch | hoch | Read-only Bedrohungs-/Write-Grenzen-Mapping |
| N | State-/Entry-Refresh | neue operative Wahrheit nach Materialisierung setzen | `meta/state/entry/*`, `RepoStatusUpdate` | hoch | hoch | erst im Closeout nach tatsaechlicher Repo-Aenderung |
| O | Historie nur referenzieren | Paket extern lassen, nur Grundlagendokument materialisieren | `handbook/reference/` | niedrig | mittel | dokumentieren, warum Paket nicht im Repo landet |
| P | Keine Materialisierung | Arbeitsstand bleibt ausserhalb des Repos | keiner | niedrig | niedrig-mittel | nur begruenden, wenn Architekturabgleich blockiert |

### 3.2 Empfohlene Optionskombination

#### Minimal belastbare Kombination

1. **A Referenzmaterialisierung**
2. **B Paketmaterialisierung**
3. **C Read-only Kompatibilitaetsaudit**

Diese Kombination bringt den Axiomraum ins Repo, ohne bestehende Architektur sofort umzuschreiben.

#### Wahrscheinlich notwendige Folgekombination

4. **D Framework-Ausrichtung**
5. **E Execution-System-Ausrichtung**
6. **F EvidenceIntake-Angleichung**
7. **G SemanticEvolution-Angleichung**

Diese Kombination prueft, wie tief der Axiomraum das bestehende Architekturevolutionsgeruest veraendern muss.

#### Operationalisierende Nachfolge

8. **I Eval-/Gate-Ableitung**
9. **J Prompt-/Skill-Operationalisierung**
10. **K Adapter-/Oberflaechenabgleich**
11. **L Laufzeit-/`.codex`-Nachzug**

Nur ausfuehren, wenn Referenz- und Architekturabgleich belastbar sind.

---

## 4. Architekturabgleichungsfragen

### 4.1 Gegen das ArchitectureEvolution Framework

1. Werden die vier Primaerpfade durch Axiomraum-Logik nur praezisiert oder strukturell veraendert?
2. Muss `SemanticEvolution` von einem einzelnen Pfad zu einer allgemeinen definitorischen Vorpruefschicht erweitert werden?
3. Muss `ArchitectureCanonicalization` frueher aktiviert werden, weil der Axiomraum bereits kanonische Regeln und Folgeebenen enthaelt?
4. Muss der Eval-/Observability-Querpfad um Zeilenbelegung, Beurteilbarkeitsstatus und Pruefartefakte erweitert werden?
5. Muss der Adapter-/Oberflaechenpfad K3-Spiegel-/Adapter-Asymmetrie als harte Regel aufnehmen?

### 4.2 Gegen den Execution System Target Contract

1. Passen `Raumelement`, `Pruefartefakt`, `Pruefroutine`, `Suchspur` und `Pruefurteil` zu den bestehenden kanonischen Objektklassen?
2. Muessen Pfad-Payloads um Rueckbindung, Beurteilbarkeitsstatus und Zeilenbelegstatus erweitert werden?
3. Darf der Axiomraum ein eigenstaendiger Referenzkern werden oder bleibt er nur Input fuer Semantic/Architecture?
4. Welche bestehenden harten Trennungen werden durch den Axiomraum bestaetigt, praezisiert oder erweitert?
5. Welche Nicht-Ueberspringen-Regeln muessen aktualisiert werden?

### 4.3 Gegen EvidenceIntake

1. Wie werden `Beobachtung`, `Aussage`, `Beleg`, `Konflikt`, `Trigger` und `Pattern-Kandidat` mit den Axiomraum-Aussagearten verbunden?
2. Kann die Zeilenbelegmatrix als interne Evidence-Form gelten?
3. Welche Axiomraum-Qualitaetsattribute werden zu EvidenceIntake-Bewertungskriterien?
4. Wo bleibt quellenexterne Belegung nachgelagert?

### 4.4 Gegen SemanticEvolution

1. Muss die definitorische Mindestschicht als generisches SemanticEvolution-Muster uebernommen werden?
2. Werden Begriff, Benennung, Definition, Relation und Ebenenordnung durch den Axiomraum praeziser?
3. Wie werden Zirkularitaetssperren und Gegenmodellpruefung in SemanticEvolution operationalisiert?
4. Muss SemanticEvolution selbst selbstverbessernd und folgeebenenfaehig modelliert werden?

### 4.5 Gegen ArchitectureCanonicalization

1. Welche Axiomraum-Elemente sind nur Referenz, welche koennen Policy/Contract/Gate werden?
2. Welche Axiomraum-Regeln sind kanonisierungsreif?
3. Welche bleiben Pruefartefakte?
4. Welche Architekturentscheidungen brauchen ADR- oder ADR-Lite-Form?

### 4.6 Gegen HarnessOperationalization

1. Welche Routinen koennen als Checklisten, Prompts oder Skills operationalisiert werden?
2. Welche Qualitaetsattribute duerfen zu Mess- oder Bewertungsfeldern werden?
3. Welche Schwellenlogik ist fuer automatisierte Pruefung noch zu qualitativ?
4. Welche Teile duerfen keinesfalls in Runtime-Spiegelungen zu semantischen Urspruengen werden?

---

## 5. Vorgeschlagene Materialisierungsreihenfolge

### Phase 1 – Paketlanding ohne Architekturumschreibung

```text
create handbook/reference/ASWE_Axiomraum_Grundlagendokument_20260423_V11.md
create meta/packages/ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423/**
```

Nicht in dieser Phase:

- keine Aenderung an `ENTRY_LATEST`,
- keine Aenderung an `RepoStatusUpdate`,
- keine Aenderung an `.codex`,
- keine Aenderung am ArchitectureEvolution Framework.

### Phase 2 – Read-only Architekturabgleich

```text
create blackboard/workstreams/architecture-evolution/axiomraum-integration/ASWE_Axiomraum_ArchitectureCompatibility_Audit_20260423_V1.md
create blackboard/workstreams/architecture-evolution/axiomraum-integration/ASWE_Axiomraum_ArchitectureAlignment_PatchPlan_20260423_V1.md
```

### Phase 3 – Referenz- und Contract-Nachzug

Nur wenn Phase 2 ergibt, dass Nachzug notwendig und trennscharf ist:

```text
update handbook/reference/ASWE_ArchitectureEvolution_Framework_20260402_V2.md
update handbook/reference/ASWE_ExecutionSystem_Target_Contract_20260413_V2.md
```

### Phase 4 – Pfad- und Workstream-Nachzug

```text
update ASWE_WS_ArchitectureEvolution
update ASWE_WS_EvidenceIntake
update ASWE_WS_SemanticEvolution
optional create ASWE_WS_ArchitectureCanonicalization
```

### Phase 5 – Operationalisierung

```text
create/update Eval-/Gate-Artefakte
create Prompt-/Skill-Adapter
create Protocol/Runbook
only then consider .codex/script/runtime mirrors
```

### Phase 6 – Closeout

```text
update RepoStatusUpdate
update ENTRY_LATEST
```

---

## 6. Aktualisierte Repozielpfad-Empfehlung

### 6.1 Sofort empfohlene Zielpfade

```text
handbook/reference/ASWE_Axiomraum_Grundlagendokument_20260423_V11.md
meta/packages/ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423/
```

### 6.2 Empfohlene Arbeitszielpfade fuer Folgeanalyse

```text
blackboard/workstreams/architecture-evolution/axiomraum-integration/
```

### 6.3 Wahrscheinliche spaetere Zielpfade

```text
handbook/explanation/ASWE_Axiomraum_ArchitectureEvolution_IntegrationPlan_20260423_V1.md
handbook/reference/ASWE_ArchitectureEvolution_Framework_20260402_V2.md
handbook/reference/ASWE_ExecutionSystem_Target_Contract_20260413_V2.md
handbook/protocol/ASWE_Axiomraum_ArchitectureAlignment_Protocol_20260423_V1.md
handbook/reference/ASWE_Axiomraum_PromptSkill_Operationalization_20260423_V1.md
```

---

## 7. Endurteil

Das Paket ist nicht nur als historisches Supportpaket zu behandeln. Das Grundlagendokument ist integrationslogisch ein zukuenftiges Referenzdokument. Es sollte zunaechst als Reference materialisiert und gemeinsam mit dem vollstaendigen Paket in `meta/packages/` abgelegt werden.

Die Architektur selbst sollte danach nicht punktuell, sondern systematisch gegen den Axiomraum geprueft werden. Wahrscheinlich betroffen sind:

1. ArchitectureEvolution Framework,
2. ExecutionSystem Target Contract,
3. EvidenceIntake,
4. SemanticEvolution,
5. Eval-/Gate-Logik,
6. Adapter-/Oberflaechenlogik,
7. Harness-/Prompt-/Skill-Operationalisierung,
8. Entry-/Status-Closeout.

Kleinster sauberer naechster Schritt: **Reference + Paket materialisieren, danach read-only Architekturkompatibilitaetsaudit anlegen.**
