---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-16
status: draft
audience:
  - human
  - llm
intent: "Archivnotiz zur Herkunft dieses Workstreams aus einer Ursprungssession und einer Delta-Session vom 2026-03-16."
tags:
  - layer/blackboard
  - artifact/reference
  - topic/deep-research
  - topic/findability
  - topic/consistency
---

# Session Archive — Agentic News Intake

## Herkunft

Dieser Workstream stammt aus einem Chat, in dem fortlaufend aktuelle oder aktuelle-nahe Quellen
zu **agentischer Softwareentwicklung** gesammelt und jeweils kurz daraufhin beurteilt wurden,
wie stark sie ein im Aufbau befindliches ASWE-Handbook ergaenzen.

## Arbeitsprinzip der Ursprungssession

Pro Quelle wurde grob dieses Raster verwendet:

1. Kurzinhalt
1. Einschaetzung des Handbook-Delta
1. 4-Layer-Mapping
1. Claims, Konflikte und TODOs

## Ursprungssession (V1)

- Datum des Workstream-Bundles: 2026-03-10
- Quelleneintraege: 26
- Source Cards: 26
- Fokus: OpenAI, GitHub, arXiv, Community-Repos, 1 Social-Post, 1 Vendor-PDF

## Delta-Session (V2)

Die Session vom 2026-03-16 hat den bestehenden Workstream **fortgefuehrt**, nicht neu gestartet.

### Delta der Session

- neue eindeutige Quellen: 14
- echte Duplicates: 2
- derived deployment surface: 1
- Gesamtstand nach Einpflege: 40 Quellen

### Neue Quellengruppen

- offizielle Best-Practices-Doku fuer Codex
- Orchestrierungs-Preview / Workflow-Specs
- persistenter modularer Kontext / auto-extracted knowledge
- self-improving skills und self-evolving scaffolds
- Skill-discovery-, scoring- und curation-infrastructure
- cross-tool settings / packaging fuer Claude und Codex

## Wichtige Einschraenkungen

- mehrere GitHub-Repos wurden weiterhin nur ueber README plus einzelne Zusatzdateien bewertet
- mehrere Quellen enthalten self-reported oder marketing-nahe Claims
- der X-Post ist ohne Transcript / Primaerartefakt weiterhin nicht belastbar
- die PDF-Quelle ist im Ziel-Repo evtl. nicht direkt verfuegbar und muss bei Bedarf erneut eingebracht werden
- einige Skill-/Directory-/Marketplace-Surfaces sind nur dann primaere Quellen, wenn Repo oder Methode unabhaengig belastbar sind

## Warum diese Archivnotiz existiert

Sie konserviert die **urspruengliche Funktion** des Chats, ohne den Chat selbst zur Library-Wahrheit zu machen.
Die operative Weiterarbeit soll deshalb ueber `SourceRegister.csv`, `ClaimPack.md`, `SearchLog.jsonl` und `sources/*.md` laufen.

## Empfehlung fuer spaetere Promotion

Zuerst:

1. `needs_recheck = yes` bearbeiten
1. dedupe mit Ziel-Repo durchfuehren
1. derived surfaces von Primaerartefakten trennen
1. Promotion-Kandidaten thematisch buendeln

Erst danach:

1. Source Cards in die `library/`
1. Promotion-Kandidaten in Handbook-/Template-Workstreams

## Router-Hinweis

Die naechste Session soll wieder **ueber genau ein `START_HERE` Dokument** geroutet werden.
Diese V2-Archivnotiz ist Hintergrund, **nicht** Router.
