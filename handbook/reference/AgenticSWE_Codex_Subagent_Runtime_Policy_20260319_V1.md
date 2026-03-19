---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-19
status: draft
audience: [human, llm]
intent: "Kleine Runtime-Policy fuer bounded Rollen, Closeout-Empfehlungen und zulaessige repo-lokale .codex-Materialisierung."
tags:
  - layer/handbook
  - artifact/reference
  - topic/subagents
  - topic/runtime-policy
  - topic/closeout
---

# Reference: Codex Subagent Runtime Policy

## Ziel

Diese Policy trennt drei Zustaende sauber:

1. bounded Rolle nur empfehlen
2. bounded Rolle als spawn-ready behandeln
3. repo-lokale `.codex`-Materialisierung zulaessig machen

## 1) Closeout darf bounded Rollen nur empfehlen, wenn

- ein klarer naechster technischer Slice existiert
- die Rolle Ambiguitaet, Verify-Risiko, Runtime-Unklarheit oder wording drift real reduziert
- der aktive technische Hauptworkstream unveraendert bleibt
- kein zweiter Writer-Pfad entsteht

## 2) Eine bounded Rolle ist spawn-ready, wenn

- der effektive Session-Contract explizit feststeht
- aktiver technischer Workstream und enger Scope benannt sind
- die benoetigte Evidence-Oberflaeche bekannt ist
- Shared Role / Output / Handoff / Failure Contracts anwendbar sind
- ein klarer Rueckgabe- oder Handoff-Punkt besteht

## 3) Repo-lokale `.codex`-Materialisierung ist zulaessig, wenn

- die Rolle auf einem aktiven technischen Slice wiederholt oder klar nachgewiesen Mehrwert bringt
- die Materialisierung nur additive Spiegelung bleibt und keinen Skill-Vertrag ersetzt
- Main Agent und one-writer-many-readers Governance unveraendert bleiben
- die Shared Contracts mit der Materialisierung kongruent sind

## Triager-Spezialregel

Der Triager darf repo-lokal materialisiert sein, bleibt aber nur dann spawn-ready, wenn:

- mehrere plausible Hypothesen konkurrieren
- Dead Ends sich zu wiederholen drohen
- oder Investigation-Priorisierung der Engpass ist

Ohne diese Bedingungen bleibt der Triager optional und nicht default.
