---
project: ASWE_KnowledgeOS
doc_type: howto
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Standardisiertes Session-Closeout fuer ASWE-artige Repos auf Basis des symmetrischen Session-Contracts."
---

# Session Closeout Ritual

## Ziel

Das Closeout soll nicht nur dokumentieren, was getan wurde. Es soll den naechsten robusten Einstieg vorbereiten.

## Reihenfolge

### 1. Operative Wahrheit pruefen

Klare Frage:

- Hat sich seit dem letzten belastbaren Status inhaltlich etwas geaendert?

Wenn nein:

- keine unnoetige Dokumentenchurn erzeugen
- nur dann weitergehen, wenn trotzdem Routing- oder Handoff-Aenderungen noetig sind

### 2. Status aktualisieren

Wenn sich operative Wahrheit geaendert hat:

- `RepoStatusUpdate` oder aequivalentes Status-Dokument fortschreiben
- klar benennen, was abgeschlossen, offen, blockiert oder als naechster Schritt gilt

### 3. Workstream aktualisieren

Wenn Zielbild, Scope, DoD, Slice-Plan oder naechste Schritte betroffen sind:

- aktiven Workstream fortschreiben

### 4. Strukturdokumente nur bei Bedarf aktualisieren

Nur wenn Routing, Architektur oder State-Navigation tatsaechlich betroffen sind:

- MeaningMap
- Snapshot
- Manifest
- ADR oder Routing-Dokumente

### 5. Handoff-Bedarf entscheiden

`NextChat-Handoff` nur anlegen oder aktualisieren, wenn Resume ohne Sidecar unnoetig fragil waere.

### 6. Entry zuletzt refreshen

Erst nachdem Status, Workstream, Struktur und Handoff-Entscheidung geklaert sind:

- `ENTRY_LATEST` refreshen

### 7. Next-Start-Paket ausgeben

Das Closeout soll explizit liefern:

- Canonical Entry
- Latest Status Update Found
- Status Referenced by Entry
- Active Workstream
- Handoff-Status
- Additional Anchors
- Contract-Status

## Guardrails

- kein `ENTRY_LATEST`-Refresh vor dem Status- oder Workstream-Update
- kein automatisches Handoff aus Gewohnheit
- keine Struktur-Aenderungen nur wegen kosmetischer Konsistenz
- keine Fortschreibung ohne explizite Aussage, ob operative Wahrheit sich geaendert hat

## Minimaler Exit-Check

Vor Session-Ende muessen diese Fragen mit Ja beantwortbar sein:

- ist die operative Wahrheit im Status korrekt?
- ist der Workstream korrekt oder bewusst unveraendert?
- ist der Handoff-Status explizit entschieden?
- wurde `ENTRY_LATEST` erst ganz am Ende behandelt?
- ergibt sich daraus ein naechster belastbarer Einstieg?
