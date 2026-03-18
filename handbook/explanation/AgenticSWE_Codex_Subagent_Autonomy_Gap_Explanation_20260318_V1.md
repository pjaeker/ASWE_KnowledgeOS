---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Einschaetzung, inwieweit Codex mit bounded Subagenten grosse Problemraeume iterativ autonom bearbeiten kann, inklusive Gap-Analyse."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/codex
  - topic/autonomy
  - topic/gaps
---

# Explanation: Codex Subagent Autonomy Gap - 2026-03-18

## Kurzurteil

**Teilweise ja, aber noch nicht robust genug fuer grosse Problemraeume ueber viele Iterationen ohne zusaetzliche Steuerbausteine.**

Mit dem vorliegenden Rollenvertrag und den materialisierten bounded Rollen kann Codex
mittlere bis grosse, klar eingegrenzte Engineering-Slices plausibel iterativ bearbeiten.
Fuer wirklich grosse, langlaufende Problemraeume fehlt aber noch die zusaetzliche Governance- und Speicherstruktur,
die Fortschritt, Sackgassen, Budget und Resume stabil haelt.

## Was bereits stark genug ist

- klar getrennte Rollenklassen
- gemeinsamer Outputvertrag
- Anchor-Handshake vor Spezialisierung
- bounded Handoffs statt impliziter Allesklaerung
- modellportable Zuordnung fuer kleinere und staerkere Modelle
- optionale `.codex`-Materialisierung ohne Skill-Vertragsbruch

## Warum das noch nicht reicht

Langlaufende Agentik scheitert meist nicht am einzelnen reasoning Schritt,
sondern an der **Seriensteuerung vieler Schritte**.

Fehlende Bausteine fuehren typischerweise zu:
- Kontextdrift
- Wiederholung alter Sackgassen
- unklarer Verantwortlichkeit zwischen Supervisor und bounded Helfern
- fehlenden Verify-Gates
- Kosten- und Iterationsentgleisung
- Resume-Verlust nach Unterbrechungen

## Fehlende Minimalbausteine

### 1. Progress Ledger
Ein laufend fortgeschriebener Ledger fuer:
- bereits getroffene Entscheidungen
- offene Fragen
- Dead Ends
- naechste authorized slices

### 2. Supervisor Routing Contract
Ein expliziter Supervisor-Vertrag,
der entscheidet:
- wann welche bounded Rolle spawned wird
- wann ein Slice zu gross wird
- wann zurueck an Main Agent oder Closeout gegeben wird

### 3. Verify Gates
Vor jedem groesseren Richtungswechsel braucht es standardisierte Verify-Punkte:
- was muss bestaetigt werden
- welcher Befund gilt als ausreichend
- wann darf weitergeschrieben oder gemerged werden

### 4. Resume / Handoff Sidecar
Ein artefaktisierter Resume-Zwischenstand fuer:
- aktuelle Hypothese
- aktive Rolle
- Zustand des Slices
- zuletzt verifizierte Wahrheit
- naechsten kleinen Schritt

### 5. Failure Recovery und Dead-End Registry
Ein fester Ort, an dem festgehalten wird:
- welche Pfade bereits gescheitert sind
- warum sie gescheitert sind
- wann eine Rueckkehr trotzdem justified waere

### 6. Budget- und Iteration-Governance
Notwendig fuer:
- maximale Subagenten-Tiefe
- maximale Iterationszahl pro Slice
- Eskalationspunkt zur Main-Agent-Entscheidung
- Abbruchkriterien bei niedriger Evidenzrendite

### 7. Closeout-zu-Next-Start Bruecke
Lange Agentik braucht einen stabilen Abschluss,
der direkt wieder in einen spaeteren Start ueberfuehrt werden kann.

## Praktische Folgerung

Der naechste sinnvolle Ausbauschritt ist **nicht** sofort mehr Autonomie,
sondern bessere **Autonomie-Infrastruktur**.

## Minimal Viable Extension Set

1. Progress Ledger
2. Supervisor Routing Contract
3. Verify Gate Contract
4. Resume Sidecar
5. Dead-End Registry
6. Iteration/Budget Governance

## Empfehlung

Materialisiere Codex-Subagenten jetzt bounded und additive,
aber behandle echte grossflaechige Langlauf-Autonomie noch als **V2-Ausbaustufe**,
nicht als bereits geloestes Problem.
