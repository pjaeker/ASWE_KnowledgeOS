---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-16
status: draft
audience:
  - human
  - llm
intent: "Konsolidierte Claims, Konflikte, Promotion-Kandidaten und TODOs aus dem fortgefuehrten Agentic-News-Intake."
tags:
  - layer/blackboard
  - artifact/conflict-cluster
  - topic/deep-research
  - topic/governance
  - topic/promotion-policy
---

# Claim Pack — Agentic News Intake

## Arbeitsstatus

Dies ist **kein** finales Normdokument.
Es konsolidiert den bisherigen Chat-Arbeitsstand so, dass spaetere Promotion in `library/`, `handbook/` und
`templates/` systematisch vorbereitet werden kann.

## Konsolidierte Claims

### C1 — `AGENTS.md` sollte klein bleiben

Ein wiederkehrendes Muster aus mehreren Quellen ist:
`AGENTS.md` funktioniert besser als **Map / Pflichtregeln / Trigger-Datei** als als ausfuehrliches Manual.

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Handbook-Policy + Template moeglich

### C2 — Skills / Prozedurbuendel brauchen Routing-Metadaten

Skills oder skill-aehnliche Bausteine funktionieren nur dann robust, wenn Beschreibung und Trigger
praezise sagen:

- wann nutzen
- wann nicht nutzen
- welches Ergebnis erwartet wird
- ob die Nutzung verpflichtend ist

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Template-Kandidat fuer Skill-Description

### C3 — Harness / Verifier-Code ist ein echter Leistungshebel

Mehrere Quellen deuten darauf hin, dass **Verifier- oder Harness-Schichten** Modellleistung, Zuverlaessigkeit
und Kostenprofil stark beeinflussen koennen.

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Explanation + Harness-Template

### C4 — Shared Context sollte strukturiert und lifecycle-faehig sein

Monolithischer Kontext in einzelnen Dateien reicht fuer groessere agentische Systeme oft nicht aus.
Wiederkehrende bessere Muster sind:

- Knowledge Notes / Entity-gebundene Notizen
- persistent memory / vault
- graph- oder tool-gestuetzte Kontextinfrastruktur
- Session-Lifecycle-Operationen

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Explanation + Memory-/Context-Template

### C5 — Review- und Approval-Logik muss explizit sein

Ein konsistentes Muster lautet:
Routinehafte Korrektheitspruefung kann weit automatisiert werden,
wahrnehmungs- oder urteilsstarke Entscheidungen bleiben human-nah.

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Review-Leiter / Approval-Policy

## Chat Delta 2026-03-16

### D1 — Workflow-Contracts verdienen eine eigene Ebene neben `AGENTS.md`

Neue Quellen staerken das Muster, dass `AGENTS.md` eher kleine Map/Policy/Trigger-Datei bleiben sollte,
waehrend **`WORKFLOW.md` oder workflow-artige Vertragsdokumente** Ablauf, Zustandsuebergaenge,
Rollen und Handoffs definieren.

**Status:** wachsend stark  
**Promotion-Hinweis:** Handbook-Policy fuer Router-vs-Workflow-Vertrag

### D2 — Persistenter Kontext wird zunehmend modular und lifecycle-gesteuert

Neue Quellen aus der Delta-Session zeigen verstaerkt:

- projektweite Indizes plus modulare Wissensdateien
- auto-extracted project knowledge
- persistente Playbooks, Lessons, Reports und Snapshots
- session-uebergreifende Reinjektion relevanter Kontexte

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Shared-context / memory-layer explanation

### D3 — Selbstverbesserung ist nur mit Validation, Rollback und Harness belastbar

Mehrere neue Quellen verschieben den Fokus von statischen Skills zu:

- evolvierenden Skills
- selbstveraendernden Scaffolds
- closed-loop improvement
- runtime adaptation

Diese Muster sind nur dann promotionsfaehig, wenn **Validation, Gating, Rollback und Harness** explizit sind.

**Status:** wachsend stark  
**Promotion-Hinweis:** Review-/validation-first policy fuer self-improving systems

### D4 — Cross-tool Packaging ist ein eigenes Pattern

Mehrere Quellen zeigen, dass dieselben Arbeitsartefakte ueber **Claude, Codex und weitere Coding-Agent-Umgebungen**
anschlussfaehig gehalten werden koennen oder sollten.

**Status:** mittel bis stark  
**Promotion-Hinweis:** Template-/setup-runbook fuer cross-tool agent packaging

### D5 — Skill-Curation und Discovery brauchen explizite Bewertungslogik

Neue Meta-Quellen zeigen, dass Skill-/MCP-/Tool-Landschaften nicht nur gesammelt,
sondern nach **Agent-Readiness, Qualitaet, Recency und Struktur** bewertet werden koennen.

**Status:** mittel bis stark  
**Promotion-Hinweis:** Intake-/triage-policy fuer skill directories und marketplaces

## Conflict Cluster

### K1 — Speed-first Merge vs Approval-first Governance

**Spannung:**

- hohe Agenten-Throughput-Systeme bevorzugen minimale blocking gates
- Governance-/Ops-orientierte Systeme bevorzugen explizite Human Approval / Review Gates

**Arbeitsregel fuer spaeter:**
nicht allgemein entscheiden, sondern ueber Risiko-Klasse und Wirkungskreis differenzieren.

### K2 — Monolithisches `AGENTS.md` vs verteilte Kontextbausteine

**Spannung:**

- einzelne Kontextdatei ist leicht auffindbar
- zu viel Kontext in einer Datei verschlechtert oft Routing und Task-Erfolg

**Arbeitsregel fuer spaeter:**
`AGENTS.md` klein halten; tiefere Wahrheit in Notes / Docs / Register / Memory-Systemen verteilen.

### K3 — Skill / Role / Workflow / Template / Harness Begriffsdrift

Der Chat hat mehrfach gezeigt, dass externe Oekosysteme dieselben oder nahe Begriffe unterschiedlich nutzen.

**Arbeitsregel fuer spaeter:**
keine fremde Terminologie direkt uebernehmen; zuerst auf interne Canonicals mappen.

### K4 — Auto-Merge / hohe Autonomie vs Safety / Secrets / Untrusted Inputs

Mehrere Quellen machen klar:
Technischer Autonomiegewinn ohne Eingrenzung von Triggern, Privilegien, Secrets und untrusted inputs ist riskant.

**Arbeitsregel fuer spaeter:**
Autonomie immer zusammen mit Privilegien, Triggern und Rollback denken.

### K5 — `AGENTS.md` vs `WORKFLOW.md`

**Spannung:**

- eine einzige Datei ist als Einstieg bequem
- Workflow-Vertraege brauchen oft mehr Struktur, Statuslogik und Rollenbezug als eine kleine Router-Datei tragen sollte

**Arbeitsregel fuer spaeter:**
`AGENTS.md`/`START_HERE` fuer Map und Trigger klein halten; Workflow-Vertraege separat und explizit modellieren.

### K6 — Self-evolving Systems vs Auditability

**Spannung:**

- adaptive Systeme versprechen hoehere Leistung und schnellere Iteration
- jede Selbstveraenderung erhoeht Anforderungen an Traceability, Rollback und Evaluation

**Arbeitsregel fuer spaeter:**
Self-improvement nur zusammen mit Harness, Validation, Rollback und Artefaktspur denken.

### K7 — Skill-Directory / Marketplace / Surface vs Primaerartefakt

**Spannung:**

- Discovery-Plattformen sind fuer Intake und Scouting nuetzlich
- sie sind nicht automatisch gleichwertig mit dem zugrunde liegenden Repo oder der primaeren Methode

**Arbeitsregel fuer spaeter:**
Directory, Deployment-Surface und Primaerartefakt sauber trennen; derived surfaces nicht doppelt eintragen.

## Promotion Candidates

### Handbook Candidates

- Minimal-Policy fuer `AGENTS.md`
- Review-/Approval-Leiter
- Harness als Leistungshebel
- Kontexttechnik fuer terminal-native und long-running Agents
- Shared-Context / Memory-Layer
- Workflow-Contract / `WORKFLOW.md`-Policy
- Self-improvement mit Validation / Rollback / Auditability

### Template Candidates

- Skill-Description Template
- Verification-/Verifier-Harness Template
- Session-Lifecycle Runbook
- Review-Gate Policy
- Source Card Template fuer neue Intake-Sessions
- Cross-tool Setup / Packaging Template

## Offene TODOs

1. `needs_recheck = yes` Quellen systematisch nachpriorisieren
1. Vendor-/Hackathon-/Social-Claims von belastbaren Patterns trennen
1. Begriffs-Mapping fuer Skill / Role / Workflow / Template / Harness explizit machen
1. pruefen, welche dieser Claims schon durch neuere Repo-Dateien im Ziel-Repo teilweise abgedeckt sind
1. derived surfaces und discovery-platforms konsequent von Primaerartefakten trennen

## Promotion Gate

Keine Promotion aus diesem Workstream, wenn mindestens einer der folgenden Punkte offen bleibt:

- dedupe ungeklaert
- Primaerquelle zu schwach
- Begriff nicht sauber auf Glossar/Taxonomie abbildbar
- Konfliktcluster ohne Risiko-Klassen-Regel
- self-improving oder workflow-heavy Quelle ohne nachvollziehbare Validation-/Rollback-Logik
