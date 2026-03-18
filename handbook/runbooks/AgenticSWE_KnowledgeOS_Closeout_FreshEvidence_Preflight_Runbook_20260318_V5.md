---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V5
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Ergaenzt den harmonisierten Session-Contract und den V4-Closeout um einen optionalen, evidenzbasierten Empfehlungsblock fuer bounded Rollen des naechsten technischen Slices."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/closeout
  - topic/evidence
  - topic/status
  - topic/router
  - topic/codex
  - topic/chatgpt
---

# Runbook: Closeout mit Fresh-Evidence-Preflight, Writingslice und optionaler Rollenempfehlung

## Zweck

Der harmonisierte Session-Contract bleibt bestehen.
Dieses Runbook fuegt vor dem Closeout einen verpflichtenden Fresh-Evidence-Preflight, danach einen expliziten Artefaktentscheid und anschliessend bei Bedarf eine optionale bounded Rollenempfehlung fuer den naechsten technischen Slice hinzu.

## Pflicht-Preflight

Vor jedem Closeout explizit pruefen:
1. neuestes `RepoStatusUpdate`
2. aktuell von `ENTRY_LATEST` referenzierten Status
3. betroffenen Workstream und benachbarte frische Workstream-Artefakte
4. relevante runbook- oder routing-nahe Artefakte fuer den laufenden Slice
5. commits oder generierte Artefakte, die operative Wahrheit verschieben

## Dual-Status-Regel

Immer getrennt bestimmen:
- `latest status update found`
- `status referenced by entry`

## Neuer Pflichtschritt: Artefaktentscheid

Nach dem Preflight und vor dem finalen Closeout aktiv entscheiden:

### 1) RepoStatusUpdate
- `update` oder `create`, wenn operative Wahrheit hinzugekommen ist
- sonst explizit `no-change`

### 2) Workstream
- `update` oder `create`, wenn Ziel, Scope, DoD, Slice-Plan oder Next Focus betroffen sind
- sonst explizit `no-change`

### 3) Struktur-/Runbook-/Reference-Artefakte
- nur bei echter Struktur-, Routing-, Betriebsmodell- oder Dokumentationsaenderung
- sonst explizit `no-change`

### 4) ENTRY_LATEST
- erst nach stabilen Zielartefakten entscheiden
- refreshen, wenn der naechste kanonische Start von neuen Ankern profitieren soll
- sonst explizit `no-change`

### 5) NextChat-Handoff
- nur anlegen oder aktualisieren, wenn Resume-Kontext bewusst nicht in Status oder Workstream gehoert
- sonst explizit `not-needed`

## Optionaler Empfehlungsblock: Recommended bounded roles for next slice

Diesen Block nur ausgeben, wenn:
- ein klarer technischer Slice vorliegt
- der naechste Fokus nicht rein narrativ oder rein dokumentarisch ist
- eine bounded Rolle einen klaren Mehrwert liefert, ohne den Main Agent oder Writer-Pfad zu duplizieren

Pro empfohlener Rolle knapp ausgeben:
- empfohlene Rolle
- warum jetzt
- betrachteter Scope
- erwarteter Output
- was die Rolle ausdruecklich nicht darf

Zulaessige Standardrollen:
- Mapper
- Test-Agent
- Doku-Agent
- Observer
- Triager

## Kanonischer Closeout danach

1. Status schreiben
2. Workstream schreiben
3. Struktur-/Runbook-/Reference-Artefakte nur bei echtem Bedarf schreiben
4. `ENTRY_LATEST` zuletzt refreshen
5. Handoff nur bei echtem Resume-Bedarf
6. optional bounded Rollenempfehlung fuer den naechsten Slice ausgeben
7. Closeout-Checkpoint + Next-Start-Paket liefern

## Mindestinhalt des Writingslice-Outputs

- PATCH-SPEC
- FILES TOUCHED
- PLANNED DIFF
- fuer jede Artefaktklasse `create` / `update` / `no-change`
- Begruendung fuer jede bewusst nicht geaenderte Artefaktklasse
- optional `Recommended bounded roles for next slice`

## Anti-Regressionsregel

Ein Closeout ist unvollstaendig, wenn:
- plausible neuere Evidence nicht geprueft wurde
- latest status und entry-referenced status vermischt wurden
- nur ein narrativer Checkpoint geliefert wurde, obwohl neue operative Wahrheit oder Workstream-Intent bereits materialisiert werden sollten
- bounded Rollen pauschal oder gewohnheitsmaessig empfohlen werden, ohne klaren technischen Slice oder klaren Mehrwert
