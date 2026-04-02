---
project: AgenticSWE
doc_type: doc_types
version: V1
date: 2026-02-13
status: draft
audience: [human, llm]
intent: "Dokumenttypen, Frontmatter-Rahmen und Dateibenennungsregeln fuer das ASWE KnowledgeOS."
tags:
  - layer/meta
  - artifact/reference
  - topic/doctypes
  - topic/frontmatter
  - topic/naming
---

# DocTypes

## 0) Zweck
Dieses Dokument beschreibt die bevorzugten Dokumenttypen, das minimale Frontmatter und die Dateibenennungsregeln fuer das ASWE KnowledgeOS.

Es ist eine Referenz fuer:
- kanonische Dokumentarten
- Mindestfelder im Frontmatter
- repo-lokale Dateibenennung

## 1) Dokumenttypen

### Reference
Neutrale, konsultierbare Struktur- oder Nachschlagedarstellung ohne operativen Ablaufzwang.

### How-to
Kurze Handlungsanleitung fuer ein konkretes Ziel.

### Runbook
Operative Ablaufbeschreibung fuer wiederkehrende oder kontrollierte Ausfuehrung.

### Explanation
Begruendung, Einordnung und Hintergruende.

### ADR
Dokumentierter Architekturentscheid mit Kontext, Optionen, Entscheidung und Konsequenzen.

### State
Zustands- oder Ankerdokument fuer Routing, Session oder operative Wahrheit.

### Workstream
Konkreter Arbeitsschnitt mit Ziel, Scope, DoD und naechsten Schritten.

## 2) Pflicht-Frontmatter

Pflichtfelder:
- `project`
- `doc_type`
- `version`
- `date`
- `status`
- `audience`
- `intent`
- `tags`

## 3) Dateibenennungsregeln

### 3.1 Kanonische Referenzen
Bevorzugtes Muster fuer versionierte kanonische Dokumente:

`ASWE_<Kerngegenstand>_<Dokumentklasse>_YYYYMMDD_Vn.md`

Beispiele:
- `ASWE_ArchitectureEvolution_Framework_20260402_V1.md`
- `ASWE_Shared_Output_Contract_20260318_V1.md`

### 3.2 Workstreams
Bevorzugtes Muster fuer Workstreams:

`ASWE_WS_<Kerngegenstand>_YYYYMMDD_Vn.md`

Beispiele:
- `ASWE_WS_ArchitectureEvolution_20260402_V1.md`
- `ASWE_WS_EvidenceIntake_20260402_V1.md`

### 3.3 Stabile Einstiegspunkte
Feste Einstiegspunkte duerfen kurze Standardnamen behalten, wenn ihre Funktion genau darin besteht, leicht auffindbare Start- oder Adapterdokumente zu sein.

Beispiele:
- `README.md`
- `AGENTS.md`

### 3.4 Verbindlichkeitsregel
- Repo-lokale Dokumente bleiben die kanonische Quelle.
- Die Benennungsregel ist eine bevorzugte repo-lokale Konvention.
- Repo-spezifische Overrides bleiben zulaessig, wenn sie bewusst entschieden und dokumentiert sind.

## 4) Minimal-Schema-Hinweise

- Dokumenttyp und Dateiname sollen zueinander passen.
- Der Kerngegenstand im Dateinamen soll semantisch tragend sein, nicht nur situativ praktisch.
- Redundante Wiederholung von Kontext, der bereits durch Pfad oder Dokumentklasse klar ist, soll vermieden werden.
- Neue Benennungsmuster sollen nur eingefuehrt werden, wenn sie global fuer das Repo stabiler sind als bestehende Formen.
