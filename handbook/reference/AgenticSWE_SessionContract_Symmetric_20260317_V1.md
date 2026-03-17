---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Symmetrischer Session-Contract fuer Initialisierung und Closeout in ASWE-artigen Repos."
---

# Symmetrischer Session-Contract

## Zweck

Dieser Contract definiert die gemeinsame fachliche Wahrheit fuer Session-Initialisierung und Session-Closeout. Er verhindert, dass Init und Closeout unterschiedliche Begriffe, unterschiedliche Prioritaeten oder unterschiedliche Routing-Regeln verwenden.

## Kernprinzip

**Der Closeout einer Session erzeugt den Einstieg der naechsten Session.**

Daraus folgt:

- Init liest und verifiziert den Contract.
- Closeout schreibt und validiert den Contract.
- Beide Routinen duerfen ein `NextChat-Handoff` nur als optionales Resume-Sidecar behandeln.

## Vertragselemente

Eine robuste Session besteht mindestens aus diesen Komponenten:

1. **Canonical Entry**
   - der derzeit kanonische Einstiegspunkt
   - typischerweise ein `ENTRY_LATEST`-Artefakt oder aequivalenter Entry-Anker

2. **Latest Status Update Found**
   - das juengste belastbare Status-Dokument im Repo
   - darf juenger sein als das Status-Dokument, das vom Entry referenziert wird

3. **Status Referenced by Entry**
   - das Status-Dokument, auf das der aktuelle Entry direkt zeigt
   - bleibt wichtig, auch wenn ein juengeres Status-Update bereits existiert

4. **Active Workstream**
   - der aktuell operative Workstream
   - kann aus Entry, Status oder spaeterem Status-Update hervorgehen

5. **Handoff Status**
   - einer von drei Zustaenden:
     - `not-needed`
     - `optional-available`
     - `required-and-used`
   - ein Handoff ist nie automatisch Pflicht.

6. **Additional Anchors**
   - z. B. MeaningMap, Snapshot, Manifest, ADR, Runbook
   - nur dann contract-relevant, wenn sie fuer Routing, SSOT oder Struktur gebraucht werden

## Reconciliation-Regeln

### Fall A: Entry und juengstes Status-Update stimmen ueberein

Dann gilt der Contract als **direkt konsistent**.

### Fall B: Juengeres Status-Update existiert, Entry zeigt noch auf aelteres Status-Dokument

Dann gilt:

- keinen Widerspruch erzwingen
- beide Dokumente getrennt ausweisen
- pruefen, ob das juengere Status-Update den bisherigen Entry bewusst fortschreibt
- den Contract als **konsistent mit Fortschreibung** markieren, wenn das juengere Status-Update den alten Entry nicht widerlegt, sondern nur weiterfuehrt

### Fall C: Juengeres Status-Update widerspricht Entry oder Workstream klar

Dann gilt:

- Contract als **inkonsistent** markieren
- Re-Verifikation oder Closeout-Reparatur ausloesen
- keinen hochkonfidenten Session-Checkpoint ausgeben

## Handoff-Regel

`NextChat-Handoff` ist ein **Resume-Sidecar**. Es ist nur noetig, wenn der Wiedereinstieg ohne diese Zusatzdetails unnoetig fragil waere.

Typische Trigger:

- mehrstufige taktische Sequenz mit hohem Verlustpotenzial
- Rollback- oder PR-Draft-Kontext
- bewusst ausgelagerte Wiedereinstiegsdetails, die nicht in Entry/Status/Workstream gehoeren

## Init-Pflichten

Init muss:

- Canonical Entry robust bestimmen
- Latest Status Update separat bestimmen
- Status Referenced by Entry separat ausweisen
- Active Workstream robust benennen
- Handoff-Status explizit ausgeben
- Contract als `consistent`, `consistent-with-advance`, `inconsistent` oder `provisional` bewerten

## Closeout-Pflichten

Closeout muss:

- operative Wahrheit zuerst in Status und Workstream fortschreiben
- strukturelle Dokumente nur bei echter Notwendigkeit anfassen
- `ENTRY_LATEST` zuletzt refreshen
- Handoff-Bedarf explizit entscheiden
- den resultierenden Contract validieren
- ein Next-Start-Paket ausgeben

## Minimaler Validator

Ein Contract ist mindestens dann valide, wenn:

- Canonical Entry vorhanden ist
- Latest Status Update identifiziert ist
- Active Workstream identifiziert ist
- Handoff-Status explizit gesetzt ist
- Konflikte zwischen Entry, Status und Workstream entweder aufgeloest oder als Blocker markiert sind
