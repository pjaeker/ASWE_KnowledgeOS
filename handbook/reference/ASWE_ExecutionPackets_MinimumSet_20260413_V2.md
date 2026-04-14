---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-04-13
status: draft
audience: [human, llm]
intent: "Minimaler kanonischer Satz an Lauf-, Uebergabe- und Automationsartefakten fuer selbst-evolvierbare bounded Arbeit in der Codex App bei isolierten oder gemeinsam genutzten lokalen Worktrees."
tags:
  - layer/handbook
  - artifact/reference
  - topic/packets
  - topic/ledger
  - topic/handoff
  - topic/gates
  - topic/resume
  - topic/automations
---

# ASWE Execution Packets - Minimum Set

## 0. Zweck

Dieses Dokument schliesst die operative Packet-Luecke zwischen:
- `Observation/Claim/Conflict/Trigger`,
- `Semantic Delta/SSOT Impact`,
- `Architecture Review Candidate`,
- Langlauf-, Automations- und Resume-Kontinuitaet.

Es definiert keine neuen Fachgegenstaende.
Es definiert den minimalen **Transport- und Kontrollsatz** fuer bounded Arbeit ohne implizite Bedeutungsuebernahme.

## 1. Harte Trennungen

- **Pfad-Payload** != **Live-Handoff Packet**
- **Live-Handoff Packet** != **Resume Sidecar**
- **Gate Record** != **Verify Result**
- **Progress Ledger Entry** != **historisches Handoff**
- **Automation Run Record** != **Gate Record**
- **Trigger Queue Entry** != **Trigger Packet**

## 2. Pflichtartefakte pro aktivem Slice

Jeder aktive Slice braucht mindestens:
1. einen **Progress Ledger Entry** im Umbrella-Kontext,
2. bei Thread- oder Rollenuebergabe ein **Live-Handoff Packet**,
3. bei jeder Rueckgabeentscheidung einen **Gate Record**,
4. an jeder Session-Grenze ein **Resume Sidecar**.

Wenn zeitprogrammierte Automationen oder shared-local Worktrees verwendet werden, zusaetzlich:
5. einen **Automation Run Record** pro Automationslauf,
6. eine **Trigger Queue Entry** fuer scheduler- oder zeitversetzt ausgeloeste Folgearbeit.

## 3. Progress Ledger Entry

### Zweck
Kanonischer Laufzustand eines aktiven, bounded Slices.

### Pflichtfelder
- inherited anchor summary
- aktiver Workstream
- bound active slice
- aktiver Pfadstatus (`EI-Px`, `SE-Px`, spaeter `AC-Px`)
- letzter gueltiger Payload-Typ
- letzter Gate-Status
- offene Fragen
- Dead-End-Hinweise
- naechster sicherer Schritt
- Budget-/Iterationsstatus
- Driftstatus
- operating mode (`M1-isolated` | `M2-shared-local`)
- Speicherort des wirksamen K5-Zustands

### Minimalregel
Der Ledger steht fuehrend im Umbrella-Kontext,
auch wenn er physisch lokal im gemeinsamen Worktree liegt.

## 4. Live-Handoff Packet

### Zweck
Expliziter Uebergang zwischen laufenden Threads oder bounded Rollen.

### Pflichtfelder
- inherited anchor summary
- active scope summary
- bound active technical slice
- uebergebene Payloads
- evidence anchors
- confidence
- exact next question
- stop conditions or risks to preserve
- source channel (`K2` | `K3`)

### Zulassungsregel
Ein Live-Handoff Packet ist nur zulaessig, wenn:
- der empfangende Pfad fachlich legitim ist,
- die Rueckgabegrenze explizit bleibt,
- kein zweiter Writer-Pfad entsteht.

## 5. Gate Record

### Zweck
Explizite normative Entscheidung ueber `pass`, `hold`, `return`, `reject` oder `defer`.

### Pflichtfelder
- Gate-ID
- entscheidender Kontext (`Umbrella`/`Main Agent`)
- gepruefter Kandidat
- Gate-Entscheidung
- kurze Begruendung entlang der Gueteachsen
- notwendige Follow-up-Payload
- zulaessiger naechster Pfad
- Stop-Ausloeser
- ob Folgearbeit sofort, spaeter oder per Automation erfolgen darf

### Minimalregel
Ohne Gate Record keine legitime Promotion zwischen Primaerpfaden.

## 6. Resume Sidecar

### Zweck
Explizite Fortsetzungsansicht fuer die naechste Session.

### Pflichtfelder
- letzter gueltiger Anchor
- letzter gueltiger Ledger-Stand
- letzter gueltiger Payload
- letzter Gate-Status
- offene Entscheidungsfrage
- verbotene Wiederholungen
- kleinster sichere Neustart
- ggf. offene Queue- oder Automationslage

### Minimalregel
Das Resume Sidecar wird nur an Session-Grenzen geschrieben.
Es ersetzt kein Live-Handoff Packet.

## 7. Automation Run Record

### Zweck
Explizite Spur eines zeitgesteuerten oder background-gesteuerten Laufs.

### Pflichtfelder
- automation id / name
- geplanter Zweck
- gestarteter Triggerzeitpunkt
- gelesener Ledger-/Gate-Stand
- bearbeiteter Scope
- erzeugte Payloads
- kein-Gate / vorgeschlagener Gate-Bedarf
- offene Risiken
- naechste empfohlene Aktion

### Minimalregel
Automationen duerfen Arbeit vorbereiten, beobachten, verdichten oder packetisieren.
Sie setzen ohne Main-Agent- oder Umbrella-Pfad keine finale Promotionswirkung.

## 8. Trigger Queue Entry

### Zweck
Explizite, spaeter ausloesbare Folgearbeit in M2 oder bei zeitversetzter Aktivierung.

### Pflichtfelder
- queue id
- ausloesender Pfad
- Triggerklasse
- benoetigte Vorbedingungen
- fruehester sinnvoller Startzeitpunkt
- zulaessiger Zielpfad
- benoetigte Inputs
- Verfalls- oder Revalidierungsregel

### Minimalregel
Eine Queue Entry ist zulaessig fuer zeitversetztes Routing,
ersetzt aber kein Trigger Packet und keinen Gate Record.

## 9. Pfad-Payload-Mindestsaetze

### 9.1 Evidence Intake -> Umbrella / Semantic
- Observation Pack
- Claim Pack
- Conflict Cluster oder `no-conflict`
- Trigger Packet
- Evidenzgueteprofil

### 9.2 Semantic Evolution -> Umbrella / Architecture
- Semantic Delta Packet
- SSOT-Impact Packet
- Promotionsvorpruefnotiz
- Einordnung des Delta-Typs
- betroffene SSOT-Flaeche

### 9.3 Architecture Review -> Main Agent
- Architecture Review Candidate
- betroffene Regel-/Contract-/Gate-Flaeche
- vorgeschlagene Schichtwirkung
- notwendige Writer-Entscheidung oder `no-writer-needed`

## 10. Nicht-Ziele

Dieses Dokument definiert keine:
- konkrete GUI-Funktion
- konkrete Repo-Mutation
- konkrete `.codex`-Materialisierung
- konkrete JSON- oder YAML-Syntax
