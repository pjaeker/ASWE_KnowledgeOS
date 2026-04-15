---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Leitlinie fuer die Auslagerung hochgradig deterministischer Arbeit in Skripte oder Validatoren zur Tokenlastreduktion und Reproduzierbarkeit."
tags:
  - layer/handbook
  - artifact/reference
  - topic/tooling
  - topic/determinism
  - topic/verify
  - topic/codex
---

# ASWE Deterministic Tooling Execution Guideline

## 0. Zweck

Dieses Dokument bestimmt,
wann ChatGPT/Codex hochgradig deterministische Arbeit bevorzugt ueber Skripte, Checks oder Validatoren abwickeln soll,
um Tokenlast zu reduzieren und dort, wo sinnvoll, Stabilitaet und Reproduzierbarkeit zu erhoehen.

## 1. Grundsatz

Deterministische Tooling-Auslagerung ist kein Ersatz fuer Modellarbeit,
sondern eine Entlastung fuer wiederholbare, schemafeste, objektiv pruefbare Schritte.

Fuehrende Regel:
- Interpretation, Scope-Bildung, Konfliktbewertung und Gate-Entscheidung bleiben Modellarbeit.
- Setup, Pflichtfeldpruefung, Strukturcheck und vergleichbare Ja/Nein-Operationen sollen bevorzugt toolseitig laufen.

## 2. Positive Kandidaten fuer deterministische Auslagerung

### D1 Runtime-Setup
- Bootstrap lokaler Laufzeitflaechen
- Verzeichnis- und Dateianlage
- Normalisierung fester Pfadstrukturen

### D2 Start- und Readiness-Checks
- Existenz noetiger Dateien
- Grundkonfigurationen
- Vorhandensein kanonischer Mindestartefakte

### D3 Struktur- und Pflichtfeldvalidierung
- Presence-/Shape-Checks fuer Packet-Felder
- Queue-Entry-Form
- Gate-Record-Mindestfelder
- Zeitstempel- und ID-Formate

### D4 Revalidierungs- und Hygienepruefung
- Ablauf von `expires_or_revalidate_at_utc`
- verwaiste Queue-Eintraege
- Duplicate-/Append-only-Regeln

### D5 Vergleichbare Routineausgaben
- Normierte Listen
- manifeste Pfadzuordnungen
- einfache Auszaehlungen oder Diff-freie Metadatenchecks

## 3. Negative Kandidaten

Nicht blind deterministisch auslagern:
- semantische Delta-Bildung
- Claim- oder Konfliktdeutung
- Gate-Entscheidungen
- Architektur- oder Policy-Geltung
- finale Writer- oder Mirror-Entscheidung
- offene fachliche Literatur- oder Evidenzsynthese

## 4. Auswahlheuristik

Ein Schritt soll bevorzugt toolseitig laufen,
wenn alle folgenden Bedingungen gelten:
1. das Soll-Ergebnis ist formal beschreibbar,
2. dieselbe Arbeit faellt wiederholt an,
3. das Ergebnis ist objektiv pruefbar,
4. eine Fehlklassifikation wuerde keine finale Governancewirkung erzeugen,
5. das Ergebnis kann als Verify-Evidenz oder W1/W2-Artefakt rueckgegeben werden.

## 5. Aktuell bereits sichtbare Muster im Repo

Bereits materialisiert sind mindestens zwei typische Muster:
- Runtime-Bootstrap
- E2E-Start-Readiness-Check

Sie zeigen,
dass deterministisches Tooling im Sonderpfad nicht nur zulaessig,
sondern fuer klar umrissene Setup- und Kontrollarbeit bereits konkret anschlussfaehig ist.

## 6. Rueckgaberegel fuer Tool-Ergebnisse

Tool-Ergebnisse haben ohne explizite Autoritaetsaufnahme keine Gate-Wirkung.
Sie muessen als eines der folgenden Formate rueckgegeben werden:
- Verify Result,
- Run Record,
- strukturierte W1/W2-Notiz,
- referenzierter Check-Output.

Regel:
Tooling liefert Evidenz fuer Entscheidungen,
trifft sie aber nicht selbst.

## 7. Reproduzierbarkeitsanforderungen

Ein deterministischer Helfer ist nur dann sinnvoll,
wenn er:
- feste Inputs hat,
- explizite Outputs schreibt,
- keine versteckte Zustandsabhaengigkeit voraussetzt,
- nachvollziehbare Exit-Codes oder Fehlerfaelle besitzt,
- im Zweifel erneut ausfuehrbar ist.

## 8. Token- und Kostenregel

Tokenlastreduktion ist ein legitimer Sekundaernutzen,
aber nicht das Primaerkriterium.

Primaer entscheidend bleiben:
- Stabilitaet,
- Vergleichbarkeit,
- Reproduzierbarkeit,
- auditierbare Rueckgabe.

Wenn diese vier Punkte nicht gegeben sind,
ist ein tokenaermeres Tooling-Muster nicht automatisch vorzuziehen.

## 9. Nächste naheliegende Tooling-Kandidaten

- Validator fuer Packet-Pflichtfelder
- Validator fuer Queue-/Run-Record-Form
- Pruefer fuer M2-Koordinationsflaechen
- Revalidierungscheck fuer Trigger-Queue-Eintraege
- Mapping-Check fuer repozielpfadkompatible Paketstruktur

## 10. Nicht-Ziele

Dieses Dokument definiert keine:
- konkrete Skriptsprache,
- konkrete CI-Integration,
- automatische Substitution jeder Modelltatigkeit durch Tooling.
