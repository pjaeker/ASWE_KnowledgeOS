---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Beschreibt, wie standardisierte bounded Rollen spaeter kontrolliert an repo-lokale `.codex`-Subagents angebunden werden, ohne Ueberlappung oder einen zweiten Writer-Pfad zu erzeugen."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/codex
  - topic/subagents
  - topic/roles
  - topic/runbook
---

# Runbook: Role Binding fuer Codex-Subagents

## Zweck

Dieses Runbook beschreibt die spaetere Anbindung standardisierter Rollenvertraege an repo-lokale `.codex`-Artefakte.

## Leitregeln

- Erst Vertrag, dann Implementierung.
- Main Agent bleibt finaler Writer.
- `.codex`-Artefakte nur materialisieren, wenn der technische Slice sie direkt braucht.
- Role Binding ist workstream-spezifisch, nicht global.

## Empfohlene Reihenfolge

1. Rollenklasse und Skill-Vertrag pruefen
2. Workstream-Scope bestimmen
3. Allowed Evidence / Forbidden Surfaces festlegen
4. read-only `.codex/agents/*.toml` ableiten
5. Spawn-Muster im betroffenen Runbook dokumentieren
6. Closeout nur um Rollenempfehlung ergaenzen, nicht um autonomen Spawnzwang

## Minimaler Bindungscheck pro Rolle

- Primaerfrage stabil?
- eigener Evidence-/Tool-Raum vorhanden?
- Outputvertrag klar?
- kein Overlap mit Main Agent / Writer?
- Stop-&-Ask kongruent mit Repo-Governance?

## Empfohlene Bindung je Rolle

- Mapper -> frueh im Slice, vor Verify
- Test-Agent -> nach Scope-Klaerung, vor oder waehrend VERIFY
- Doku-Agent -> spaet, wenn geplante Aenderung stabil ist
- Observer -> nur bei Runtime-/Host-/Log-Bedarf
- Triager -> nur bei konkurrierenden technischen Spuren, Fehlversuchen oder Investigation-Threads

## Closeout-Schnittstelle

Ein spaeterer Closeout-Skill darf bounded Rollen **empfehlen**, aber nicht als Default materialisieren.

Empfohlener optionaler Closeout-Block:
- recommended bounded role
- why now
- evidence/tool scope
- expected output
- not allowed

## Nicht tun

- kein paralleler schreibender Doku-Agent
- kein autonomer Observer/Operator
- kein mehrstufiger Spawn-Baum als Default
- keine `.codex`-Materialisierung ohne bestaetigten Nutzen im aktiven Workstream
