---
project: ASWE_KnowledgeOS
doc_type: reference
version: V2
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Fortschreibbarer Verlauf der Skill-Entwicklung fuer Session-Init und Session-Closeout. Ergaenzt den Closeout-Skill um Fresh-Evidence-Preflight und Dual-Status-Modell."
---

# Skill Progression Log

## Zweck

Dieses Dokument dient als dauerhafte Verdichtung der Skill-Progression. Neue Iterationen sollen hier eingetragen werden, damit spaetere Aenderungen nicht erneut aus Chat-Verlaeufen extrahiert werden muessen.

## Eintragsregel

Jeder neue Skill-Stand soll mindestens festhalten:

- Datum
- Skill
- Version
- Ausloeser / beobachteter Fehlmodus
- Kernverbesserung
- betroffene Referenzen oder Repo-Dokumente

## Verlauf

### Init-Skill

#### V1

- Grundlegende Session-Initialisierung fuer ASWE-artige Repos
- Fokus auf Entry, Status, Workstream und GitHub-first Evidence

#### V2

- Freshness-Challenge deutlich geschaerft
- Newer-candidate veto, Verification Checklist und Failure Modes expliziter verankert

#### V3

- symmetrischen Session-Contract aufgenommen
- Canonical Entry und Latest Status Update bewusst getrennt
- `Status Referenced by Entry` explizit gemacht
- `NextChat-Handoff` als Resume-Sidecar formalisiert
- duale Freshness-Pruefung fuer Entry und Latest Status eingefuehrt

### Closeout-Skill

#### V1

- neuer Skill als Gegenstueck zum Init-Skill
- standardisierte Closeout-Reihenfolge
- `ENTRY_LATEST` zuletzt refreshen
- Handoff-Entscheidung explizit statt implizit
- Next-Start-Paket als Output eingefuehrt

#### V2

- Fresh-Evidence-Preflight vor jedem Closeout als Pflicht aufgenommen
- `latest status update found` und `status referenced by entry` explizit getrennt
- GitHub-first Quellenhierarchie fuer Closeout-Urteile geschaerft
- aeltere Status-, Entry- oder Workstream-Anker duerfen nicht stillschweigend fortgeschrieben werden
- Closeout-Report muss fuehrende Repo-Evidence, Konflikte und bewusst nicht geaenderte Anker benennen

## Pflegehinweis

Dieses Dokument soll idealerweise im Repo und gespiegelt in den Skill-Referenzen vorliegen. So bleibt die Entwicklung sowohl auf Repo- als auch auf Skill-Ebene nachvollziehbar.
