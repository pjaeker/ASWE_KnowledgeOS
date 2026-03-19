---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V6
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Repo-weite Fortschreibung des Codex-Subagent-Orchestrierungs-Workstreams. Fuehrt eine bereits bestehende V5 sauber als V6 fort, integriert die naechsten Autonomie-Bausteine fuer groessere iterative Problemloesung innerhalb derselben Enabling-Linie und zieht eine explizite Skill-Drift-Pruefung gegen das Core-Skill-Paket aus Iteration V3 ein."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/codex
  - topic/subagents
  - topic/orchestration
  - topic/autonomy
  - topic/closeout
  - topic/evidence
  - topic/workstreams
  - topic/skills
  - topic/drift
---

# Workstream Capsule - WS-CODEX-SUBAGENT-ORCHESTRATION

## 1) Ziel

Ein repo-weites, wiederverwendbares Betriebsmodell fuer Codex-Subagent-Orchestrierung etablieren, das auf dem bestehenden Session-Contract aufsetzt, die Writer-Governance unveraendert laesst und aktive technische Workstreams gezielt unterstuetzt statt zu verdraengen.

## 2) Warum dieser bestehende Workstream auch fuer den naechsten Schritt geeignet ist

Die jetzt offenen Themen `Progress Ledger`, `Supervisor Routing`, `Verify Gates`, `Resume Sidecar` und `Dead-End Registry` sind keine neue technische Produktlinie, sondern die naechste Ausbaustufe derselben repo-weiten Enabling-Schicht:

- Sie betreffen die Orchestrierung von bounded Rollen ueber viele Iterationen hinweg.
- Sie verstaerken den bereits bestehenden Session-Contract, statt einen zweiten Hauptfokus zu eroeffnen.
- Sie passen direkt zu den bereits dokumentierten naechsten Slices `Role binding to active workstreams` und spaeteren `.codex`-Artefakten.
- Ein separater `WS-CODEX-AUTONOMY-INFRASTRUCTURE` wuerde das Risiko erhoehen, die Enabling-Logik kuenstlich von der bestehenden Subagent-Orchestrierung abzuspalten.

**Entscheidung dieses Dokuments:**  
Die Autonomie-Bausteine werden **in diesen bestehenden Workstream integriert**. Ein separater Workstream ist dafuer aktuell **nicht noetig**.

## 3) Aktueller Kontext

- Canonical Entry im aktuellen Startpfad: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260318_V2.md`
- Latest Status Update Found im aktuellen Startpfad: `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260318_V2.md`
- Primaerer technischer Fokus bleibt: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260318_V1.md`
- Repo-weite Enabling-Schicht: `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_Codex_Subagent_Orchestration_20260318_V6.md`
- Shared Contracts: `handbook/reference/AgenticSWE_GPTPro_Shared_Role_Contract_20260318_V1.md`, `handbook/reference/AgenticSWE_GPTPro_Shared_Output_Contract_20260318_V1.md`, `handbook/reference/AgenticSWE_GPTPro_Shared_Handoff_Patterns_20260318_V1.md`, `handbook/reference/AgenticSWE_GPTPro_Shared_Failure_Modes_20260318_V1.md`
- Runtime-Policy-Referenz: `handbook/reference/AgenticSWE_Codex_Subagent_Runtime_Policy_20260319_V1.md`
- ENTRY-LATEST verweist den Enabler nur bei bounded Rollen oder Closeout-/Orchestrierungsfragen nachzuziehen.
- Das Core-Skill-Paket wurde in der Refactor-Iteration V3 substantiell harmonisiert; spaetere additive Iterationen duerfen diese Skill-Basis nicht stillschweigend semantisch ueberholen.

## 4) In Scope

- repo-weites Operating Model fuer bounded Codex-Subagents
- Rollenableitung aus Skills und spaetere `.codex`-Materialisierung
- Role binding an aktive technische Workstreams
- supervisorische Routing-Regeln fuer mehrstufige Problemloesung
- Fortschritts- und Resume-Artefakte fuer iterative Laeufe
- Verify-Gates fuer bounded Rollen
- Dead-End-Erkennung und Rueckfuehrung an den Main Agent
- Closeout-/Resume-Kongruenz fuer laengere iterierte Sessions
- explizite Drift-Pruefung zwischen Core-Skill-Paket, spaeteren `.codex`-Artefakten und additiven Iterationspaketen

## 5) Out of Scope

- zweiter PR-Pfad neben dem Writer
- autonome Writer-Subagents als Default
- semantische Verdraengung des aktiven technischen Hauptfokus
- ungebundene `.codex`-Materialisierung ohne direkten technischen Mehrwert
- globale User-Settings als primaerer Steuerungspfad
- `.github/workflows/**`, Secrets, produktive GitHub-App-Permissions oder Governance-Aufweichungen

## 6) Betriebsprinzip bleibt unveraendert

- Main Agent = Orchestrator, Synthese, finaler Writer
- Subagents = schmale, evidence-orientierte Nebenrollen
- Default = one-writer-many-readers
- Read-first bei Unsicherheit
- Kein paralleler Schreibzugriff auf dieselben Dateien
- Repo-lokale Artefakte vor Prompt-only-Konventionen
- Aktive technische Workstreams bleiben kanonisch fuehrend; dieser Workstream bleibt Enabler
- Additive Iterationspakete duerfen das semantische Zentrum des Core-Skill-Pakets nicht implizit verschieben; moeglicher Drift ist explizit zu pruefen

## 7) Neue Bedeutung dieses V6-Slices

V4 hat den Closeout-Writingslice auf artefaktentscheidende Ebene gehoben.  
Die bereits bestehende V5 wird respektiert; dieses Dokument fuehrt die Linie deshalb als **V6** fort und erweitert den bestehenden Orchestrierungs-Workstream um die **Autonomie-Infrastruktur fuer laengere Iterationen**:

1. **Progress Ledger**  
   schlanker repo-lokaler Verlauf fuer Hypothesen, Versuche, Ergebnisse, Dead Ends und offene Kandidaten

2. **Supervisor Routing**  
   Regeln, wann der Main Agent bounded Rollen spawned, wann sie beendet werden und wann Rueckgabe an den Main Agent zwingend ist

3. **Verify Gates**  
   standardisierte Pruefpunkte, bevor ein bounded Slice als belastbar gilt oder in den Closeout uebergeht

4. **Resume Sidecar Policy fuer Langlaeufe**  
   klare Regel, wann normaler Status/Workstream ausreicht und wann ein zusaetzlicher Resume-/Handoff-Artefaktpfad sinnvoll wird

5. **Dead-End Registry**  
   explizite Erfassung verworfener Pfade, damit lange Iterationen nicht dieselben Fehlrichtungen erneut aufrollen

6. **Skill Drift Check**  
   explizite Pruefung, ob spaetere additive Iterationen, `.codex`-Artefakte oder Routing-/Reference-Dokumente den gemeinsamen Rollenvertrag des in Iteration V3 harmonisierten Core-Skill-Pakets semantisch unterlaufen, veralten oder inkonsistent spiegeln

## 8) Warum kein separater Workstream noetig ist

Ein separater Workstream waere nur dann gerechtfertigt, wenn:
- ein eigener technischer Produktpfad mit eigener Deliverable-Linie entstuende,
- der Hauptgegenstand nicht mehr Subagent-Orchestrierung, sondern z. B. eine eigenstaendige Runtime-/Infra-Schicht waere,
- oder die Enabling-Schicht mehrere bestehende Workstreams semantisch ueberholen muesste.

Das ist hier nicht der Fall.  
Die offenen Schritte sind die direkte Fortsetzung der bereits dokumentierten Slices:

- V4 nennt `Role binding to active workstreams` als naechsten Schritt.
- V4 nennt `.codex`-Artefakte spaeter und nur bei direktem technischem Bedarf.
- RepoStatusUpdate und Entry halten den Orchestrierungs-Workstream explizit als Enabler, nicht als separaten Hauptfokus.
- Die bereits vorhandene V5 bildet dieselbe Linie ab; V6 fuehrt sie nur versionell sauber fort, statt einen neuen Parallelpfad zu eroeffnen.

## 9) Neue Slice-Planung

### Slice A - Workstream + Operating Model
abgeschlossen

### Slice B - Closeout hardening
abgeschlossen

### Slice C - Closeout write-slice policy
abgeschlossen

### Slice D - Role binding to active workstreams
teilweise vorbereitet, jetzt konkretisieren

### Slice D1 - Active technical slice binding
neu, jetzt explizit festziehen

### Slice E - Executable repo-local artifacts
teilweise vorbereitet, jetzt gezielt fuer bounded Rollen materialisieren

### Slice F - Progress Ledger
neu

### Slice G - Supervisor Routing
neu

### Slice H - Verify Gates for bounded roles
neu

### Slice I - Resume Sidecar for long iterative runs
neu

### Slice J - Dead-End Registry
neu

### Slice K - Skill Drift Check against V3 core skill package
neu

## 10) Deliverables dieses erweiterten Workstreams

Neue additive Artefakte sollen spaeter in Zielpfaden wie diesen materialisiert werden:

- `handbook/reference/AgenticSWE_Codex_Subagent_ProgressLedger_*.md`
- `handbook/reference/AgenticSWE_Codex_Subagent_SupervisorRouting_*.md`
- `handbook/reference/AgenticSWE_Codex_Subagent_VerifyGates_*.md`
- `handbook/reference/AgenticSWE_Codex_Subagent_DeadEndRegistry_*.md`
- `handbook/reference/AgenticSWE_Codex_Subagent_ResumeSidecar_Policy_*.md`
- `handbook/reference/AgenticSWE_Codex_Subagent_SkillDriftCheck_*.md`
- `.codex/agents/*.md` oder `.codex/agents/*.toml`
- ggf. `notes/`-Artefakte fuer Iterations-Apply und Validierung

## 11) Definition of Done fuer dieses V6-Slice

- Es ist explizit entschieden und dokumentiert, dass **kein separater Autonomy-Infrastructure-Workstream** benoetigt wird.
- Die offenen Autonomie-Bausteine sind als naechste Slices dieses bestehenden Workstreams eingeordnet.
- Role binding, `.codex`-Materialisierung und Langlauf-Hilfsartefakte sind logisch unter einem gemeinsamen Enabler zusammengehalten.
- Die Writer-Governance bleibt unveraendert.
- Ein spaeterer Closeout kann diese Folgeartefakte als `create`/`update`/`no-change` entlang derselben Workstream-Linie entscheiden.
- Eine Drift-Pruefung gegen das in Iteration V3 harmonisierte Core-Skill-Paket ist als expliziter Folgebaustein vorgesehen.

## 12) Risiken / Stop-&-Ask

- Risiko: Der Enabler koennte den technischen Hauptfokus semantisch ueberholen.
- Risiko: Progress-/Resume-Artefakte koennten einen zweiten Writer-Pfad simulieren.
- Risiko: bounded Rollen koennten ohne echte Verify Gates in Schein-Fortschritt kippen.
- Risiko: `.codex`-Materialisierung koennte vor dem nachgewiesenen Bedarf stattfinden.
- Risiko: additive Pakete koennten schleichenden Drift in Rollenvertrag, Outputvertrag oder Spawn-/Handoff-Logik der Core-Skills erzeugen.
- Stop-&-Ask unveraendert:
  - `.github/workflows/**`
  - neue produktive GitHub-App-Permissions
  - Secrets / Credential-Handling
  - No-Auth-Bypaesse oder zweiter PR-Pfad

## 13) Naechster empfohlener Fokus

1. `Progress Ledger` als kleinstes gemeinsames Langlauf-Artefakt definieren.
2. Danach `Supervisor Routing` und `Verify Gates` fuer bounded Rollen standardisieren.
3. Anschliessend den `Skill Drift Check` gegen das Core-Skill-Paket aus Iteration V3 ausarbeiten.
4. Erst dann `Resume Sidecar` und `Dead-End Registry` materialisieren.
5. `.codex`-Artefakte weiter nur dort erzeugen, wo ein aktiver technischer Slice den Mehrwert belegt.

## 14) Runtime- und Binding-Entscheidung fuer den aktuellen Stand

- Closeout darf bounded Rollen nur empfehlen, wenn ein klarer naechster technischer Slice existiert.
- Spawn-ready ist eine bounded Rolle erst, wenn Session-Contract, aktiver technischer Slice, Evidence-Oberflaeche und Rueckgabegrenze explizit feststehen.
- Repo-lokale `.codex`-Materialisierung bleibt zulaessig, wenn sie additive Spiegelung eines aktiven technischen Slices ist und keinen zweiten Writer-Pfad eroeffnet.
- Der naechste konkrete Binding-Slice ist der aktive technische Workstream `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260318_V1.md`.
- Priorisierte bounded Rollenfolge fuer diesen Slice: `ws_mapper` -> `bridge_test_agent` -> `railway_observer` -> `issue_triager` -> `bridge_doc_agent`.

## 15) Triager-Status nach Materialisierungscheck

- Der Triager ist repo-lokal **materialized**.
- Spawn-Readiness des Triagers bleibt **conditional** und ist nicht default.
- Die Bedingung ist erfuellt, wenn konkurrierende Hypothesen, Dead-End-Wiederholung oder Priorisierungsengpass vorliegen.
