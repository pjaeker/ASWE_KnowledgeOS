---
project: AgenticSWE_KnowledgeOS
doc_type: state
version: V1
date: 2026-03-03
status: draft
audience: [human, llm]
intent: "Routing-Einstiegspunkt fuer einen allgemeinen ChatGPT-GUI-Chat mit GitHub-Konnektor/App-Zugriff. Fokus: deterministische Navigation im Repo (read-first), ohne Session-Bootstrap/ToDos."
tags:
  - layer/handbook
  - artifact/reference
  - topic/router
  - topic/findability
  - topic/ssot
  - topic/governance
---

# ChatGUI Routing Entry (GitHub-Konnektor)

## 0) Zweck

Diese Datei ist ein **Router (routing)** fuer einen allgemeinen **ChatGPT-GUI-Chat** mit **GitHub-Konnektor**:

- schnell die richtigen Dateien finden (ohne Repo-„Blindscan“)
- konsistente Referenzen (Pfad + Version) in Antworten
- minimale, robuste Konventionen fuer Navigation

**Nicht-Ziel:** Session-Ritual, Bootstrap-Prompts, konkrete ToDos oder Arbeitsplaene.

---

## 1) Arbeitsmodus (read-first)

- Standard: **lesen (read-only)** und aus Repo-Dateien argumentieren (Pfad nennen).
- Wenn Schreiben/PRs gewuenscht: explizit als separaten Schritt behandeln (nicht Teil dieses Routers).

---

## 2) Versionsregel „Neueste Datei“

Wenn Dateien versioniert sind:

- **neueste Version** = hoechste `Vx`
- Tie-Break: neuestes `YYYYMMDD` im Dateinamen
- Wenn mehrere Varianten existieren: bevorzuge `meta/state/**` als Status-Quelle.

---

## 3) Discovery (discovery): Wo finde ich „Wahrheit“ im Repo?

Nutze diese **Konventionen (conventions)** als Startpunkte (Glob/Wildcards ok):

### 3.1 Status & Semantik (SSOT, single source)

- **MeaningMap (meaning map)**: `meta/state/*RepoMeaningMap*_V*.md`
  - Zweck: „Was ist was?“ + Router-Signale (z. B. `question_to_file_map`)
- **State-Snapshot (state snapshot)**: `meta/state/*RepoStateSnapshot*_V*.md`
  - Zweck: aktueller Stand, Risiken, Hotspots, Key-Files-Inventar
- **Manifest (manifest)**: `meta/state/*RepoManifest*_V*.json`
  - Zweck: vollstaendige Dateiliste / Index (maschinenlesbar)

### 3.2 Regeln & Betrieb (Runbooks/Policies)

- **Runbooks (runbooks)**: `handbook/runbooks/**/*_V*.md`
  - z. B. Gates/Preflight, Release-/Qualitaetsregeln, Build/CI-Hinweise
- **HowTos (how-to)**: `handbook/howto/**/*_V*.md`
  - z. B. Arbeitsweisen, Konnektor-Setups, Schreibregeln
- **Policies/Guidelines (policies)**: `meta/**/policy*`, `meta/**/guideline*`, `meta/**/allowlist*`
  - z. B. Tag-Allowlist, Naming, Governance

### 3.3 Templates & Standards

- **Templates (templates)**: `meta/templates/**/*Template*_V*.*`
  - fuer Snapshot/MeaningMap/Manifest-Struktur und Frontmatter

### 3.4 Code/Architektur (falls vorhanden)

- Architektur/Design: `docs/**`, `architecture/**`, `adr/**`, `design/**`
- Source: `src/**`, `packages/**`, `apps/**`
- Config: `.vscode/**`, `*.json`, `*.yml`, `*.yaml`

> Wenn ein Ordner nicht existiert: nicht raten. Stattdessen „Discovery“ via `git ls-files` + gezielte Suche nach Schluesselworten.

---

## 4) Routing (routing): Von Frage -> First Stop

Prinzip: **erst** kuratierte Router (MeaningMap), **dann** Snapshot, **dann** Manifest/Repo-Suche.

### 4.1 Primaerer Router

1) Oeffne neueste MeaningMap.
2) Nutze deren `question_to_file_map` (oder aehnliche Sektion) als **First Stop**.
3) Folge dann den referenzierten Dateien.

### 4.2 Sekundaerer Router (wenn MeaningMap fehlt/unvollstaendig)

- Neuester Snapshot: „Wo sind Hotspots? Welche Key-Files fehlen? Was ist gerade kritisch?“
- Manifest: „Welche Dateien existieren? Wo liegt Feature X?“ (Index statt Raten)

---

## 5) Routing-Matrix (Kurzreferenz)

| Anfrage/Bedarf | First Stop | Fallback |
|---|---|---|
| „Was ist der aktuelle Stand / was hat sich geaendert?“ | neuester **Snapshot** `meta/state/*RepoStateSnapshot*` | Commit-/Diff-Sicht + Runbooks |
| „Welche Dateien sind relevant / wo liegt X?“ | **MeaningMap** (Router-Signale) | **Manifest** + gezielte Suche |
| „Wie ist die Repo-Topologie / Module?“ | Snapshot (Topologie/Hotspots) | `git ls-files` + Ordner-Konventionen |
| „Welche Regeln gelten (Tags, Naming, Governance)?“ | `meta/** (allowlist/policy/guideline)` + MeaningMap | Templates + HowTos |
| „Wie laufen Gates/Preflight/Qualitaet?“ | `handbook/runbooks/**Preflight*` (oder Gates-Runbook) | `.github/**` (nur lesen) |
| „Wie schreibe ich Doku / Struktur?“ | `handbook/howto/**` + Templates | MeaningMap (Doku-Karte) |
| „CMS/Portal / Content-Struktur?“ | MeaningMap (falls definiert) + relevante HowTos/Runbooks | `docs/**` / `handbook/**` |

---

## 6) Minimaler Chat-Kontrakt (contract)

Wenn diese Datei als Router verwendet wird, gilt:

- Antworte mit **Pfaden + Versionsdatei** (wenn vorhanden).
- Bevor du repo-weit suchst: **MeaningMap -> Snapshot -> Manifest**.
- Bei Unklarheit: formuliere die fehlende Referenz als **TODO (todo)** oder stelle eine einzige praezise Rueckfrage („Welche Komponente/Ordner?“).

---

## 7) Pflegehinweis (maintenance)

Diese Datei soll stabil bleiben. Wenn sich die Repo-Konventionen aendern:

- passe nur Abschnitt **3 (Discovery)** und ggf. **Routing-Matrix** an
- keine Session-spezifischen Inhalte oder ToDo-Listen hier hinein.
