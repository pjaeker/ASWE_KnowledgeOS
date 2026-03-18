---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Gleicht bestehende repo-lokale bounded Rollen und `.codex`-Artefakte mit einem standardisierten Rollenraster und den daraus abgeleiteten Skill-Vertraegen ab."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/subagents
  - topic/roles
  - topic/alignment
---

# Reference: Rollenabgleich und Ueberlappungsschutz

## Zweck

Dieses Dokument verknuepft die bestehende Repo-Realitaet mit den standardisierten Rollenklassen.

## Abgleichsmatrix

| Standardrolle | Bestehende Repo-Abbildung | Status | Ueberlappung | Empfehlung |
|---|---|---|---|---|
| Mapper | `.codex/agents/ws_mapper.toml` | materialisiert | gering | unveraendert behalten, nur vertraglich verallgemeinern |
| Test-Agent | `.codex/agents/bridge_test_agent.toml` | materialisiert | gering | als generische Rollenklasse definieren, Bridge als erster Slice |
| Doku-Agent | `.codex/agents/bridge_doc_agent.toml` | materialisiert | gering | wording-fokussiert halten, kein zweiter Writer |
| Observer | `.codex/agents/railway_observer.toml` | materialisiert | mittel zu Test-Agent | read-only Runtime-/Log-Scope strikt trennen |
| Triager | nur repo-weite Rollenklasse | noch nicht materialisiert | mittel zu Mapper/Test-Agent/Observer | erst als Skill-/Rollenvertrag stabilisieren, spaeter optional `.codex` |

## Ueberlappungsschutz

### Mapper vs Triager
- Mapper beantwortet Scope und Kopplung.
- Triager priorisiert konkurrierende Problemspuren.

### Test-Agent vs Observer
- Test-Agent entwirft Verify und Gate-Evidence.
- Observer sammelt Live-/Runtime-Evidence read-only.

### Doku-Agent vs Main Agent
- Doku-Agent liefert wording-nahe Bausteine.
- Main Agent entscheidet, integriert und schreibt final.

## Schnittstellen

- **Mapper -> Test-Agent:** Scope, Anker, Hidden Coupling
- **Observer -> Triager:** Laufzeit-Signale und Hypothesenmaterial
- **Triager -> Main Agent:** priorisierte naechste Untersuchung
- **alle -> Doku-Agent:** bestaetigte Terminologie und Findings
- **Closeout -> Rollenempfehlung:** nur optional und evidenzbasiert

## Empfehlung fuer spaetere `.codex`-Einbindung

1. Rollenklasse und Skill-Vertrag stabilisieren
2. Erst dann repo-lokale `.codex`-Implementierung nachziehen
3. Bridge-/Railway-spezifische Ableitungen als erste konkrete Rollen nutzen
4. Triager erst materialisieren, wenn mehrere reale Debug-/Investigation-Slices dasselbe Muster bestaetigen
