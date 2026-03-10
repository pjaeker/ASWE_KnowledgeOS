---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-10
status: draft
audience:
  - human
  - llm
intent: "Archivnotiz zur Herkunft dieses Workstreams aus einem Chat-basierten News-Intake."
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

## Enthaltene Quellengruppen

- OpenAI Blogs / Docs / Cookbook
- GitHub Changelog
- arXiv Preprints
- Community-Repos auf GitHub
- 1 Social-Post auf X
- 1 hochgeladenes Vendor-PDF

## Aktueller Umfang

- Quelleneintraege: 26
- Source Cards: 26
- Search-Log-Ereignisse: wird in `SearchLog.jsonl` fortgeschrieben

## Wichtige Einschraenkungen

- mehrere GitHub-Repos wurden nur ueber README plus einzelne Zusatzdateien bewertet
- mehrere Quellen enthalten self-reported oder marketing-nahe Claims
- der X-Post ist nicht ausreichend belastbar ohne Transcript / Primaerartefakt
- die PDF-Quelle ist im Ziel-Repo evtl. nicht direkt verfuegbar und muss bei Bedarf erneut eingebracht werden

## Warum diese Archivnotiz existiert

Sie konserviert die **urspruengliche Funktion** des Chats, ohne den Chat selbst zur Library-Wahrheit zu machen.
Die operative Weiterarbeit soll deshalb ueber `SourceRegister.csv`, `ClaimPack.md` und `sources/*.md` laufen.

## Empfehlung fuer spaetere Promotion

Zuerst:

1. `needs_recheck = yes` bearbeiten
1. dedupe mit Ziel-Repo durchfuehren
1. Promotion-Kandidaten thematisch buendeln

Erst danach:

1. Source Cards in die `library/`
1. Promotion-Kandidaten in Handbook-/Template-Workstreams
