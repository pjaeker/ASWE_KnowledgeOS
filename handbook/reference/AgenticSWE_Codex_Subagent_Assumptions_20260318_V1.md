---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Dokumentiert offene Annahmen, Luecken und bewusst abgeleitete Teile fuer das Rollenraster, die Skill-Vertraege und die vorbereiteten Skill-Pakete."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/subagents
  - topic/assumptions
---

# Reference: Annahmen und bewusst abgeleitete Teile

## Bestaetigt aus dem Repo

- Rollenklassen: Mapper, Test-Agent, Doku-Agent, Observer, Triager
- repo-lokales Codex-Schichtenmodell mit `AGENTS.md`, root-nahem `codex.toml`, `.codex/config.toml` und `.codex/agents/*.toml`
- konkrete `.codex`-Implementierungen fuer `ws_mapper`, `bridge_test_agent`, `bridge_doc_agent`, `railway_observer`
- Closeout soll bounded Rollen spaeter an aktive technische Workstreams anbinden, aber `.codex`-Artefakte nur bei direktem Bedarf materialisieren

## Bewusst abgeleitet

- standardisierte generische Rollennamen `aswe-mapper`, `aswe-test-agent`, `aswe-doc-agent`, `aswe-observer`, `aswe-triager`
- universelle Skill-Vertraege oberhalb der bestehenden Bridge-/Railway-spezifischen `.codex`-Dateien
- eigener Triager-Skill trotz fehlender aktueller `.codex`-Materialisierung

## Offene Luecken

- kein bestaetigter repo-lokaler `.codex/agents/triager.toml`
- keine bestaetigte repo-weite Skill-Ablagestrategie ausserhalb von `/skills`
- keine bestaetigte Runtime-Policy dafuer, wann Closeout bounded Rollen nur empfiehlt oder aktiv `.codex`-Spawnmuster materialisiert

## Arbeitsentscheidung fuer dieses Bundle

- Skill-Vertraege werden fuer alle fünf Rollen bereitgestellt
- vorbereitete `skill.zip`-Artefakte werden fuer alle fünf Rollen erzeugt
- Triager wird explizit als **vertraglich belastbar, aber `.codex`-seitig noch nicht materialisiert** markiert
