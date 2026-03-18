---
project: ASWE_KnowledgeOS
doc_type: workstream
version: V1
date: 2026-03-18
status: proposed
audience: [human, llm]
intent: "Additiver Workstream fuer die bounded Materialisierung von Codex-Subagenten auf Basis des gemeinsamen GPT-Pro-Rollenvertrags."
tags:
  - layer/blackboard
  - artifact/workstream
  - topic/codex
  - topic/subagents
  - topic/model-routing
---

# Workstream: Codex Subagent Materialization - 2026-03-18

## Einordnung

Dieser Workstream ist **Enabler**, nicht Ersatz des aktiven technischen Hauptfokus.
Der aktuelle technische Hauptanker bleibt `WS_MCPWriter_Railway_20260318_V1`.

## Ziel

Die bereits harmonisierte Skill- und Rollenlogik wird additive in `.codex`-Artefakte,
Modellprofile und Autonomie-Gap-Dokumente gespiegelt.

## Lieferumfang

- shared role contract
- shared output contract
- handoff- und failure-mode docs
- Modellprofile und Routing-Empfehlungen
- `.codex/agents/*.toml` fuer bounded Rollen
- Autonomie-Gap-Analyse und Materialisierungsempfehlung

## Nicht-Ziele

- keine Ueberschreibung bestehender Skill-Dateien
- keine Verschiebung des aktiven technischen Hauptfokus
- kein impliziter Claim, dass Langlauf-Autonomie bereits geloest ist

## Materialisierte Rollen

- `ws_mapper`
- `bridge_test_agent`
- `bridge_doc_agent`
- `railway_observer`
- `issue_triager`

## Modellstrategie

- ChatGPT Pro / Thinking / Instant bleiben die ChatGPT-seitigen Main-/bounded Profile
- Codex-spezifische bounded Rollen bekommen eigene Modellprofile
- `nano` bleibt Off-Path-Helper, nicht Primaerprofil fuer bounded Codex-Reasoning

## Bekannte Gaps

- progress ledger fehlt noch
- supervisor routing fehlt noch als Artefakt
- verify gate contract fehlt noch
- resume / sidecar / dead-end registry fehlen noch
- iteration budget governance fehlt noch

## Naechster sinnvoller Slice

Nach Einfuegen dieses Pakets sollte die naechste additive Iteration sich auf **Autonomie-Infrastruktur** konzentrieren:
- progress ledger
- supervisor router
- verify gate
- resume sidecar
- dead-end registry
