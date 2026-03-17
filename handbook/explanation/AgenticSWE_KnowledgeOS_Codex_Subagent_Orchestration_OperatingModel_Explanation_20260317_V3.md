---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V3
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Erklaert, warum Codex-Subagent-Orchestrierung als repo-weites Betriebsmodell behandelt werden soll und warum Closeout sauber zwischen neuestem Statusupdate und status referenced by entry unterscheiden muss."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/codex
  - topic/subagents
  - topic/orchestration
  - topic/session
  - topic/workstreams
  - topic/evidence
---

# Explanation: Codex-Subagent-Orchestrierung als repo-weites Betriebsmodell

## Leitfrage

Warum sollte Codex-Subagent-Orchestrierung im Repo nicht nur als lokaler Prompt-Trick, sondern als repo-weites Betriebsmodell verstanden werden?

## Ausgangslage

Das Repo besitzt bereits einen gemeinsamen Session-Kernfluss:
- `ENTRY_LATEST`
- `RepoStatusUpdate`
- `Workstream`
- Tiefenanker nur bei Bedarf

Gleichzeitig zeigt die Statusfortschreibung vom 2026-03-16 eine wichtige Unterscheidung:
- es gibt ein **latest status update found**
- und separat einen **status referenced by canonical entry**

Der 2026-03-16-Status ist neuer und operativ relevant, sagt aber selbst, dass der kanonische Arbeitsstand auf dem 2026-03-13-Anker bleibt.

## Warum ein repo-weites Modell sinnvoll ist

Sobald dieselben Orchestrierungsregeln mehrfach wiederverwendet werden, gehoeren sie nicht mehr nur in einen einzelnen Workstream.
Repo-weite Orchestrierung ist gerechtfertigt, wenn:

1. dieselben bounded Rollen ueber mehrere Workstreams wiederkehren
2. Closeout und Evidence-Handhabung davon beruehrt werden
3. der Main Agent nicht mehr nur implementiert, sondern explizit orchestriert, prueft und synthetisiert
4. der Repo-Prozess sauber mit dem Unterschied zwischen neuestem Status und Entry-Referenz umgehen muss

## Mentales Modell

- **Main Agent**
  - liest Pflichtkontext
  - bestimmt Slice-Grenzen
  - waehlt Nebenrollen
  - synthetisiert Befunde
  - bleibt finaler Writer

- **Subagents**
  - arbeiten eng begrenzt
  - liefern Evidence statt diffuse Ideen
  - besitzen einen klaren Outputvertrag
  - sollen den Main Agent entlasten, nicht verdoppeln

## Standardregel

Das Startmodell ist:
- one-writer-many-readers
- read-first
- keine parallelen Writer auf denselben Dateien
- keine versteckte Parallel-Governance nur ueber Prompts

## Bestehende Kontrollschichten und ihre Rollen

### `AGENTS.md`
Repo-lokale operative Startkarte.

### `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`
Kanonischer Session-Kernfluss fuer Start und Closeout.

### Runbooks
Definieren, wie das Repo arbeitet.

### Explanations
Erklaeren, warum ein Betriebsmodell existiert und welche Trennung es braucht.

### Repo-lokale `.codex`-Artefakte
Sind optional ausfuehrbare Implementierungen einzelner Rollen oder Orchestrierungsgrenzen.
Sie folgen dem Betriebsmodell, ersetzen es aber nicht.

## Rollenklassen

- Mapper
- Test-Agent
- Doku-Agent
- Observer
- Triager

## Ableitungsregeln fuer neue Rollen

Eine neue Rolle ist nur gerechtfertigt, wenn sie:
1. einen schmalen, stabilen Scope hat
2. eine klar erkennbare Evidence-Oberflaeche besitzt
3. einen festen Outputvertrag hat
4. den Main Writer nicht verdeckt dupliziert

## Outputvertrag

Jede Nebenrolle liefert mindestens:
- Key findings
- Evidence anchors
- Confidence
- Open questions
- Recommended next action

## Warum Closeout angepasst werden muss

Der 2026-03-16-Status zeigt: neues Statusupdate und kanonischer Entry koennen bewusst auseinanderliegen.
Darum muss ein sauberer Closeout nicht nur einen Status nennen, sondern mindestens getrennt ausweisen:

1. latest status update found
2. status referenced by entry
3. active workstream
4. handoff status
5. leading operational consequence

## Failure Modes

- Subagent wird zum verdeckten zweiten Writer
- Role count waechst schneller als die Governance
- Prompt-only-Konventionen konkurrieren mit Repo-Artefakten
- latest status update und status referenced by entry werden verwechselt
- repo-weite Strukturdateien werden ohne echte Routing-Aenderung mitgezogen

## Empfohlene Einfuehrungsreihenfolge

1. repo-weites Modell dokumentieren
2. Closeout gegen stale evidence und Status-Verwechslung haerten
3. bounded Rollen an aktiven technischen Workstreams verankern
4. `.codex`-Artefakte nur dann materialisieren, wenn ein konkreter technischer Slice sie wirklich braucht
