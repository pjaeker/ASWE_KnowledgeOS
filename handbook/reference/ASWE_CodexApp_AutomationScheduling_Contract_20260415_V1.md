---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-15
status: draft
intent: "Scheduling-Vertrag fuer zeitgesteuerte bounded Automationen im M2-shared-local-Modus."
---

# ASWE Codex App Automation Scheduling Contract

## 0. Zweck

Dieses Dokument operationalisiert den Einsatz zeitgesteuerter bounded Automationen fuer K5-gefuehrte Folgearbeit.

Es setzt keine neue Autoritaet,
sondern konkretisiert:
- Zeitstempelstandard,
- Scheduling-Klassen,
- Pflichtfelder,
- Revalidierung,
- Produktverifikation.

## 1. Geltungsbereich

Gilt nur, wenn:
- `M2-shared-local` explizit aktiviert wurde,
- K5-Flaechen benannt sind,
- Governance- und Eval-/Gate-Vertrag gelten.

## 2. Zeitstempelstandard

Fuehrender Standard:
- UTC
- ISO-8601
- Sekundenaufloesung
- `Z`-Suffix

Beispiel:
- `2026-04-15T18:30:00Z`

## 3. Scheduling-Klassen

### S1 Queue-/Review-Poller
Zweck:
- Queue lesen
- offenen K5-Zustand verdichten
- Run Record schreiben

Empfohlener Takt:
- alle 30 Minuten

### S2 Resume-/Stabilitaetslauf
Zweck:
- vor Sessiongrenzen offene Rueckgabe, Gate-Stand und Wiederaufnahmefaehigkeit konsolidieren

Empfohlener Takt:
- ereignisbasiert
- zusaetzlich einmal taeglich als Backup

### S3 Hygiene-/Revalidierungslauf
Zweck:
- verwaiste Queue-Eintraege
- Dead-End-/Wiederholungszustand
- Revalidierungsfaelligkeit

Empfohlener Takt:
- alle 6 Stunden

## 4. Pflichtfelder

### Trigger Queue Entry
- `queue_id`
- `created_at_utc`
- `earliest_start_at_utc`
- `expires_or_revalidate_at_utc`
- `trigger_class`
- `source_path`
- `allowed_target_path`
- `open_decision_question`

### Automation Run Record
- `run_id`
- `automation_name`
- `scheduled_for_utc`
- `started_at_utc`
- `finished_at_utc`
- `read_ledger_ref`
- `read_gate_ref`
- `processed_scope`
- `written_outputs`
- `open_risks`
- `recommended_next_action`

### Gate Record Zusatz
- `decided_at_utc`
- optional `automation_allowed_after_utc`

## 5. Zulaessige Operationen

Automationen duerfen:
- benannte K5-Flaechen lesen
- Queue-Zustaende verdichten
- Run Records schreiben
- Rueckgabe an Umbrella vorbereiten
- Revalidierung anstossen

Automationen duerfen nicht:
- finale Gates setzen
- Main-Fokus verschieben
- W3-Schreiben ausloesen
- implizit Autoritaet aus lokaler Sichtbarkeit ableiten

## 6. Revalidierungsregel

Ein Queue-Eintrag darf nicht unbegrenzt still weiterlaufen.
Spaetestens bei `expires_or_revalidate_at_utc` muss gelten:
- erneut bestaetigen,
- in Dead-End/Wiederholungsverbot ueberfuehren,
- oder explizit zurueckziehen.

## 7. Produktverifikations-Check

Offene Produktfrage:
Kann Codex Automationen nur auf expliziten Nutzerbefehl anlegen oder auch initiativ?

Solange das nicht belastbar verifiziert ist,
bleibt Architekturannahme:
- Automationseinrichtung ist Nutzer- oder Main-Agent-initiiert,
- nicht implizit selbstentstehend.

## 8. Minimaler Test

1. `M2-shared-local` aktivieren.
2. K5-Flaechen bootstrapen.
3. genau eine manuelle bounded Automation anlegen.
4. beobachten, ob Codex spaeter weitere Automationen nur empfiehlt oder selbst anlegt.
5. Ergebnis als W1-Run-Record dokumentieren.
