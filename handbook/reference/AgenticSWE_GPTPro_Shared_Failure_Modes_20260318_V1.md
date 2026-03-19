---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Gemeinsame Failure Modes fuer modellportable bounded Rollen und Codex-Subagenten."
tags:
  - layer/handbook
  - artifact/reference
  - topic/failure-modes
  - topic/subagents
---

# Reference: Shared Failure Modes

## Ziel

Diese Liste beschreibt die wichtigsten Fehlmodi,
die bei GPT-Pro-first Skills und spaeteren Codex-Subagenten gemeinsam auftreten koennen.

## FM-01 Focus Drift
**Symptom:** Der bounded helper setzt stillschweigend einen neuen Hauptfokus.

**Gegenmassnahme:** Anchor-Handshake erzwingen und `session-anchor alignment` im Output nie auslassen.

## FM-02 Second Writer Path
**Symptom:** Ein Nebenagent formuliert oder entscheidet so, als waere er der finale Writer.

**Gegenmassnahme:** Finale Synthese, Merge-Entscheidungen und Fokuswechsel nur ueber Main Agent.

## FM-03 Ungrounded Live Claim
**Symptom:** Repo-Evidence oder alte Extracts werden als aktueller Live-Zustand ausgegeben.

**Gegenmassnahme:** work/observation mode sauber markieren und Provenienz explizit nennen.

## FM-04 Role Drift
**Symptom:** Mapper macht Verify, Test-Agent macht Root-Cause-Mapping, Doku-Agent macht Architektursteuerung.

**Gegenmassnahme:** Nicht-Ziele je Rolle hart halten und bei Grenzueberschreitung handoffen.

## FM-05 Model / Tool Mismatch
**Symptom:** Ein Modell wird fuer eine Aufgabe gewaehlt, deren Toolflaeche es nicht traegt.

**Beispiel:** ChatGPT Pro fuer einen Flow, der Apps, Memory, Canvas oder Bildgenerierung braucht.

**Gegenmassnahme:** Modellrouting zuerst an Toolanforderung, dann an reine Reasoning-Staerke koppeln.

## FM-06 Cheap Model Overreach
**Symptom:** Ein sehr guenstiges Modell wird fuer Aufgaben mit hoher Coupling-, Verify- oder Governance-Last genutzt.

**Gegenmassnahme:** guenstige Modelle nur fuer begrenzte, gut strukturierte Teilaufgaben einsetzen.

## FM-07 Verification Starvation
**Symptom:** Analyse, Mapping und wording laufen weiter, obwohl Verify-Gates fehlen.

**Gegenmassnahme:** Test-Agent oder Verify-Gate frueh einziehen.

## FM-08 Long-Run Memory Drift
**Symptom:** In iterativen Schleifen gehen Entscheidungen, Sackgassen oder bereits bestaetigte Fakten verloren.

**Gegenmassnahme:** progress ledger, resume sidecar, dead-end registry und closeout contract einfuehren.

## FM-09 Handoff Collapse
**Symptom:** Rollen geben unpraezise oder unvollstaendige Uebergaenge weiter.

**Gegenmassnahme:** Standard-Handoff-Packet verpflichtend machen.

## FM-10 Overmaterialized `.codex`
**Symptom:** `.codex`-Artefakte werden zu frueh als fuehrend behandelt und brechen den Skill-Vertrag.

**Gegenmassnahme:** Skill-Vertrag und shared governance bleiben fuehrend; `.codex` ist Spiegelung, nicht Ursprung.

## FM-10b Mirror Drift
**Symptom:** Repo-Contracts, Skills und `.codex`-Artefakte tragen unterschiedliche Anker, Statusannahmen oder Materialisierungszustaende.

**Gegenmassnahme:** Mirror-Disziplin erzwingen; Anker- und Zustandsaussagen immer auf denselben aktuellen Stand harmonisieren.

## FM-11 Cost / Iteration Runaway
**Symptom:** Lange Schleifen verbrennen Budget ohne klare Fortschrittskriterien.

**Gegenmassnahme:** iteration budget, supervisor routing und explicit stop conditions pro Rolle.

## FM-12 Stale Model Map
**Symptom:** Modellzuordnungen beruhen auf veralteten ChatGPT- oder API-Modellen.

**Gegenmassnahme:** Model-Capability-Dokumente und Routing-Empfehlungen als eigene additive Artefakte pflegen.
