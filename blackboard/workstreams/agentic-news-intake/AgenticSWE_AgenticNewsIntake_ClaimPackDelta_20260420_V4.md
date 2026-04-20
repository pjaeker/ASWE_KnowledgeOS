---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V4
date: 2026-04-20
status: draft
audience:
  - human
  - llm
intent: "Delta-Claims, Konflikte, Promotion-Kandidaten und TODOs nach dem Chat-Intake vom 2026-04-20."
tags:
  - layer/blackboard
  - artifact/conflict-cluster
  - topic/deep-research
  - topic/governance
  - topic/promotion-policy
---

# Claim Pack Delta — Agentic News Intake

## Arbeitsstatus

Dies ist **kein** finales Normdokument.

Es materialisiert nur den neuen V4-Delta-Stand gegenueber V3, damit spaetere Promotion in `library/`, `handbook/` und `templates/` sauber vorbereitet werden kann.

## Neue Delta-Claims 2026-04-20

### D11 — Verifier und Evaluator sind eigene Architekturhebel, nicht nur Nachkontrolle

Neue Quellen staerken das Muster, dass leistungsfaehige agentische Systeme eigene Verifier- oder Evaluator-Schichten brauchen:

- Rubriken, Prozess-vs-Outcome-Signale und kontrollierbare Fehler
- Generator- und Evaluator-Trennung
- Sprint-Contracts und verifizierbare Done-Kriterien

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Handbook-Policy fuer verifier-driven harness design

### D12 — Externalisierung ist ein tragfaehiges Ordnungsmodell fuer ASWE-nahe Agentensysteme

Die neue Quellengruppe staerkt die Sicht, dass Memory, Skills, Protocols und Harness nicht Beiwerk, sondern **externalisierte kognitive Infrastruktur** sind.

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Literaturanker plus Glossar-/Taxonomie-Mapping fuer Externalization, Harness, Protocol und Skill

### D13 — Context-Optimierung zerfaellt in mehrere technisch verschiedene Hebel

Die Token- und Context-Quellen zeigen mindestens vier getrennte Hebel:

- Output-Kompression und Tool-Rewrite
- Strukturhygiene fuer Startkontext und Dokumente
- Repo-Navigation und Blast-Radius-Reduktion
- Persistente Memory, Compaction-Survival und Quality-Scoring

**Status:** stark gestuetzt  
**Promotion-Hinweis:** nicht als ein einziges Pattern behandeln; lieber als Cluster mit sauberen Unterbegriffen

### D14 — Termination Governance ist eine eigene Runtime-Frage

Long-running und Codex-zentrierte Quellen staerken, dass Stoppen, Weiterlaufen, Await-Reply, Completion-Checks und bounded extra turns eigene Kontrollmechanismen brauchen.

**Status:** mittel bis stark  
**Promotion-Hinweis:** Template fuer continue-until-green / wait-for-approval / bounded continuation

### D15 — Code-Wachstum ohne Verstaendnissicherung erzeugt codebase cognitive debt

Das Thoughtworks- und Harness-Cluster staerkt die These, dass KI-beschleunigte Produktion den Engpass in Richtung **Verstehen, Kontextpflege und Review-Harness** verschiebt.

**Status:** stark gestuetzt  
**Promotion-Hinweis:** Handbook-Abschnitt zu codebase cognitive debt, harnessed understanding und structural safeguards

## Neue Conflict Cluster

### K12 — Groesseres Modell vs besserer Verifier/Harness

**Spannung:**

- ein Teil des Leistungsgewinns kommt aus Modellstaerke
- andere Quellen zeigen deutliche Gewinne durch besseren Verifier, besseren Harness oder bessere Runtime-Struktur

**Arbeitsregel fuer spaeter:** Modellleistung und Harnessleistung getrennt bewerten.

### K13 — Output-Kompression vs Kontextqualitaet und Cache-Stabilitaet

**Spannung:**

- aggressive Kompression spart Tokens
- zu starke oder cache-brechende Eingriffe koennen Qualitaet oder Wirtschaftlichkeit verschlechtern

**Arbeitsregel fuer spaeter:** zwischen verlustarmer Re-Read-Deduplizierung, lossy Kompression und struktureller Optimierung sauber unterscheiden.

### K14 — Repo-lokale Minimalstruktur vs verwaltete Runtime-Schichten

**Spannung:**

- einige Muster optimieren ueber `CLAUDE.md`, Ignore-Dateien und repo-lokale Regeln
- andere fuehren eigenstaendige Runtime-Schichten fuer Checkpoints, Restore, Session Quality und Kompaktionsresistenz ein

**Arbeitsregel fuer spaeter:** beide als verschiedene Loesungsebenen behandeln, nicht als direkte Substitute.

### K15 — Autonomie-Fortsetzung vs bounded stop authority

**Spannung:**

- einige Systeme druecken auf kontinuierliche Autonomie
- andere erzwingen bounded extra turns, Completion-Checks oder menschliches Await-Reply

**Arbeitsregel fuer spaeter:** Stop- und Continue-Politik als Governance-Frage modellieren, nicht als Komfortfeature.

## Promotion Candidates

### Handbook Candidates
- verifier- und evaluator-zentrierte harness architecture
- externalization als Literatur- und Strukturanker
- context quality as system property
- codebase cognitive debt und understanding bottleneck
- versionierte self-evolving resource protocols
- durable continuation und termination governance

### Template Candidates
- completion-check controller
- minimal-doc-load repo pattern
- token/runtime optimizer classification template
- context optimization decomposition template
- unresolved-social-surface handling rule

## Offene TODOs

1. `src_arxiv_2604_08224_20260409` als Literaturanker gegen internes Glossar und Taxonomie mappen
2. OpenAI Agents SDK evolution, Anthropic harness design und Dive into Claude Code als Runtime-Cluster triangulieren
3. verifier / evaluator / sprint-contract / completion-check Begriffe scharf gegeneinander abgrenzen
4. context-mode, token-savior und alexgreensh token-optimizer als Context-Runtime-Cluster ausarbeiten
5. Thoughtworks cognitive debt zusammen mit Harness Engineering gegen interne Governance- und Review-Muster mappen

## Promotion Gate

Keine Promotion aus diesem Delta, wenn mindestens einer der folgenden Punkte offen bleibt:

- unresolved social post ohne belastbaren Inhalt
- Primaerquelle zu schwach
- Begriff nicht sauber auf Glossar oder Taxonomie abbildbar
- runtime- oder optimizer-source ohne klare Ebenentrennung
- self-evolving oder continuation-heavy Quelle ohne nachvollziehbare Governance- oder Stop-Logik
