---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Vereinheitlicht das Rollenraster fuer bounded Codex-Subagents im ASWE_KnowledgeOS und trennt Rollenklassen, Schnittstellen und Nicht-Ziele klar voneinander."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/subagents
  - topic/roles
  - topic/orchestration
  - topic/evidence
---

# Reference: Rollenraster fuer bounded Codex-Subagents

## Zweck

Dieses Dokument definiert eine einheitliche Standardstruktur fuer bounded Rollen.
Es bildet die gemeinsame Vertragsbasis fuer:

- Rollenraster
- Skill-/Rollenvertraege
- spaetere `.codex/agents/*.toml`
- Closeout-Empfehlungen fuer bounded Rollen

## Standardstruktur pro Rolle

Jede Rolle wird mit genau diesen Feldern beschrieben:

1. **Rollenklasse**
2. **Primaerfrage**
3. **Zweck**
4. **Scope**
5. **Erlaubte Evidence-/Tool-Oberflaechen**
6. **Outputvertrag**
7. **Nicht-Ziele**
8. **Stop-&-Ask**
9. **Schnittstellen / Synergien**
10. **Aktuelle Repo-Abbildung**
11. **Skill-Ableitung**
12. **`.codex`-Ableitung**

## Gemeinsame Invarianten

- Main Agent bleibt Orchestrator, Synthese und finaler Writer.
- Default bleibt one-writer-many-readers.
- Bounded Rollen starten read-first.
- Keine Rolle darf einen verdeckten zweiten Writer erzeugen.
- Repo-lokale Artefakte haben Vorrang vor reinen Prompt-Konventionen.

## Gemeinsamer Minimal-Outputvertrag

Jede bounded Rolle liefert mindestens:

1. Key findings
2. Evidence anchors
3. Confidence
4. Open questions
5. Recommended next action

## Rollenraster

### Mapper
- **Primaerfrage:** Was ist betroffen?
- **Zweck:** Scope, betroffene Dateien, SSOT-Anker, versteckte Kopplungen und Thin-Slice-Grenzen sichtbar machen.
- **Scope:** aktueller Workstream, betroffene Pfade, Routing-/Governance-Anker.
- **Nicht-Ziele:** kein Verify-Plan, keine breiten Refactors, kein Schreiben.
- **Synergien:** speist Test-Agent und Doc-Agent mit Scope.
- **Aktuelle Repo-Abbildung:** `ws_mapper`.

### Test-Agent
- **Primaerfrage:** Was ist verifiziert oder widerlegt?
- **Zweck:** Verify-Ideen, Smoke-Checks, changed-files-orientierte Gates und negative Tests liefern.
- **Scope:** lokale Checks, sichere CLI-Checks, Gate-Evidence.
- **Nicht-Ziele:** kein eigener Doku- oder Mapping-Pfad, kein Schreiben.
- **Synergien:** nutzt Mapper-Scope und Observer-Evidence.
- **Aktuelle Repo-Abbildung:** `bridge_test_agent`.

### Doku-Agent
- **Primaerfrage:** Wie wird der bestaetigte Stand sauber formuliert?
- **Zweck:** README-/Runbook-/PR-Report-Wording und Doku-Nachzuege aus bestaetigter Evidence ableiten.
- **Scope:** wording-nahe Doku-Artefakte, Frontmatter-/Strukturfolgen, Terminologie.
- **Nicht-Ziele:** keine Architekturentscheidung, kein eigener Routing-Pfad, kein Schreiben.
- **Synergien:** braucht bestaetigte Findings von Mapper/Test-Agent/Observer/Triager.
- **Aktuelle Repo-Abbildung:** `bridge_doc_agent`.

### Observer
- **Primaerfrage:** Was zeigen externe Systeme gerade?
- **Zweck:** Status-, Log- und Runtime-Signale read-only zusammenfassen.
- **Scope:** Hoster-/Runtime-/Service-/Log-Evidence.
- **Nicht-Ziele:** keine Mutation, kein Redeploy, kein Operator-Pfad.
- **Synergien:** speist Test-Agent und Triager mit Laufzeit-Evidence.
- **Aktuelle Repo-Abbildung:** `railway_observer`.

### Triager
- **Primaerfrage:** Welche Spur ist als Naechstes die sinnvollste?
- **Zweck:** konkurrierende Hypothesen, Fehlversuche und Diagnosepfade ordnen.
- **Scope:** Problemcluster, Hypothesenordnung, Entscheidung fuer den naechsten sicheren Untersuchungsschritt.
- **Nicht-Ziele:** kein Scope-Mapping als Hauptleistung, keine Runtime-Beobachtung als Hauptleistung, kein Schreiben.
- **Synergien:** nutzt Findings aus Mapper/Test-Agent/Observer und gibt priorisierte Naechstschritte an Main Agent oder Closeout.
- **Aktuelle Repo-Abbildung:** noch keine materialisierte `.codex`-Rolle.

## Priorisierte Einfuehrung

1. Mapper
2. Test-Agent
3. Doku-Agent
4. Observer
5. Triager

## Ableitungsregel fuer neue Rollen

Neue Rollen nur einfuehren, wenn mindestens drei Bedingungen erfuellt sind:

- wiederkehrende Teilaufgabe
- enger Werkzeug- oder Evidenzraum
- klarer Outputvertrag
- keine Konkurrenz zum Main Agent oder Writer
