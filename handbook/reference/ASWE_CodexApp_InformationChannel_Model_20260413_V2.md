---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Informationskanalmodell fuer bounded Evolution in der Codex App unter zwei realen Betriebsmodi: isolierte Worktrees und gemeinsamer lokaler Worktree mit zeitgesteuerten Automatisierungen."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/information-flow
  - topic/threads
  - topic/worktrees
  - topic/orchestration
  - topic/automations
---

# ASWE Codex App Information Channel Model

## 0. Zweck

Dieses Dokument trennt fuenf Dinge sauber:
- gemeinsamen statischen Startkontext,
- repo-sichtbaren kanonischen Sachstand,
- gemeinsam nutzbaren lokalen Worktree-Zustand,
- isolierten Thread-/Worktree-Zustand,
- explizit zu uebergebenden Orchestrierungszustand.

Es beantwortet damit die operative Frage,
**wie Informationsweitergabe in der Codex App tatsaechlich tragfaehig organisiert wird**, wenn sowohl isolierte als auch gemeinsam genutzte lokale Arbeitsflaechen vorkommen.

## 1. Revidierte Grundannahme

Die Codex App ermoeglicht parallele Agentenarbeit und Worktree-Nutzung.
Dabei sind mindestens zwei reale Betriebsmodi zu unterscheiden:
- **M1 Isolated-Worktree Mode**: jeder Agent arbeitet auf einer isolierten lokalen Kopie.
- **M2 Shared-Local-Worktree Mode**: mehrere Threads oder zeitversetzte Automationen lesen und schreiben denselben lokalen Worktree.

Die fruehere Kurzannahme `shared live state nein` ist nur fuer M1 tragfaehig.
Fuer M2 gilt stattdessen:
**shared local filesystem state ja, shared thread semantics weiterhin nicht automatisch.**

## 2. Fuenf Informationskanaele

### K1 - Gemeinsamer statischer Startkontext

Beispiele:
- Projektinstruktion
- hochgeladener fuehrender Dokumentensatz
- repo-committete Referenzen
- Skills / wiederverwendbare Regeln
- lokale oder teamweite Konfiguration

### Operative Bedeutung
K1 ist geeignet, um stabile, wiederholt lesbare Orientierung bereitzustellen.
K1 ist nicht hinreichend fuer frische Slice-Ergebnisse.

## 3. K2 - Repo-sichtbarer kanonischer Sachstand

Beispiele:
- derselbe Commit-Stand
- fuer andere sichtbar materialisierte Dateien
- spaeter explizit gemergte oder committete Artefakte

### Operative Bedeutung
K2 ermoeglicht, dass mehrere Threads am gleichen fachlichen Ausgangsstand arbeiten.
K2 ist kanonischer als K3, aber langsamer und governance-schaerfer.

## 4. K3 - Gemeinsam nutzbarer lokaler Worktree-Zustand

Beispiele:
- derselbe lokale Worktree
- gemeinsam les- und schreibbare Steuerdateien
- lokale Ledger-, Trigger- oder Queue-Dateien
- von Automatisierungen fortgeschriebene Zwischenartefakte

### Operative Bedeutung
K3 ist ein **realer operativer Informationskanal**, wenn M2 explizit aktiv ist.
K3 erlaubt parallele und zeitversetzte Arbeit,
auch ohne sofortige Repo-Mutation.

### Harte Einschraenkung
K3 teilt **Datei- und Artefaktzustand**, aber nicht automatisch:
- die semantische Intention eines Threads,
- die Bedeutung stillschweigender Zwischenentscheidungen,
- die Autorisierung zur Promotion,
- die Geltung eines Schreibentscheids.

Daraus folgt:
K3 ist ein valider **Transportkanal**, aber kein Ersatz fuer Gate, Handoff oder Main-Agent-Synthese.

## 5. K4 - Isolierter Thread-/Worktree-Zustand

Beispiele:
- thread-interne Zwischenanalyse
- ungeschriebene Hypothesen
- lokale Diff-Kommentare eines isolierten Agents
- unmaterialisierte Zwischenentscheidungen

### Operative Bedeutung
K4 bleibt in M1 der dominante lokale Zustand.
Auch in M2 bleibt alles, was nicht in gemeinsam lesbare Artefakte geschrieben wurde, K4.
K4 darf nie als geteilter Betriebszustand unterstellt werden.

## 6. K5 - Expliziter Orchestrierungszustand

Beispiele:
- Progress Ledger Entry
- Live-Handoff Packet
- Gate Record
- Resume Sidecar
- Automation Run Record
- Trigger Queue Entry
- Architecture Review Candidate

### Operative Bedeutung
K5 ist der **kanonische Kontroll- und Kopplungszustand**.
K5 kann physisch ueber K2 oder K3 gespeichert werden,
bleibt logisch aber eine eigene Klasse.

Kurzformel:
- K3 sagt, **was sichtbar und lesbar** ist.
- K5 sagt, **was fuer Routing, Gate und Folgeverhalten gilt**.

## 7. Konsequenz fuer parallele Arbeit

Parallele Arbeit ist zulaessig in zwei Mustern:

### Muster A - isoliert gekoppelt
- gemeinsamer Ausgangsstand ueber K1/K2,
- lokale Arbeit ueber K4,
- jede echte Kopplung ueber K5.

### Muster B - shared-local koordiniert
- gemeinsamer Ausgangsstand ueber K1/K2,
- operative Zwischenkoordination ueber K3,
- Routing-, Gate- und Promotionswirkung ausschliesslich ueber K5.

## 8. Konsequenz fuer zeitlich verschobene Aktivierung

Zeitlich versetzte Aktivierung ist ausdruecklich zulaessig,
wenn spaetere Threads oder Automationen mindestens folgendes lesen koennen:
- letzter relevanter Ledger-Stand,
- letzter Gate Record,
- relevante Trigger Queue Entries,
- offene Entscheidungsfrage,
- verbotene Wiederholungen.

Zeitversatz ist also nicht nur Session-Resume,
sondern auch scheduler-gesteuerte Folgearbeit.

## 9. Rolle lokaler Umgebungskonfiguration

Lokale Umgebungskonfiguration ist geeignet fuer:
- Berechtigungs- und Sandboxing-Regeln,
- generelle Laufzeitpraeferenzen,
- team- oder projektweite Standards,
- Festlegung, ob M1 oder M2 verwendet wird,
- Benennung erlaubter K3/K5-Speicherflaechen.

Lokale Umgebungskonfiguration ersetzt jedoch nicht:
- Gate-Entscheidungen,
- semantische Auslegung,
- Main-Agent-Autoritaet,
- kanonische Repo-Schreibfreigabe.

## 10. Minimalregel fuer ASWE

Fuer ASWE gilt daher:
- **K1 fuer stabile Orientierung**,
- **K2 fuer repo-sichtbaren kanonischen Stand**,
- **K3 optional fuer gemeinsame lokale Koordination in M2**,
- **K4 fuer nicht-geteilten Zwischenzustand**,
- **K5 Pflicht fuer Routing-, Gate- und Resume-Wirkung**.

Aktualisierte Kurzformel:
**shared baseline ja, shared local worktree optional ja, shared control semantics nur ueber K5.**
