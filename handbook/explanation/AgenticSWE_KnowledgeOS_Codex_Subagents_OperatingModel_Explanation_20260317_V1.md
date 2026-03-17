---
project: ASWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Erklaert das repo-lokale Betriebsmodell fuer native Codex-Subagents im ASWE_KnowledgeOS und leitet daraus minimale, lokal ausfuehrbare Rollen fuer den ersten Einsatz ab."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/codex
  - topic/workstreams
  - topic/governance
  - topic/router
  - topic/evidence
  - topic/railway
  - risk/stop-ask
---

# Explanation: Repo-lokales Betriebsmodell fuer Codex-Subagents

## Leitfrage

Wie fuehren wir native Codex-Subagents im `ASWE_KnowledgeOS` so ein, dass sie
lokal nutzbar sind, den bestehenden Session-Vertrag nicht aufbrechen und
spaeter fuer spezialisierte Faelle sauber erweitert werden koennen?

## Kurzantwort

Die Einfuehrung erfolgt repo-lokal und in zwei Schichten:

1. `AGENTS.md` und das root-nahe `codex.toml` bleiben die bestehende
   Start-/Default-Schicht.
2. `.codex/config.toml` und `.codex/agents/*.toml` ergaenzen die native
   Subagent-Schicht.

Der Hauptagent bleibt Orchestrator. Subagents starten klein, read-first und
ohne autonomen Schreibpfad.

## 1) Ausgangspunkt im Repo

Das Repo nutzt bereits einen harmonisierten Session-Vertrag:

- Codex startet repo-lokal ueber `AGENTS.md`
- danach gilt der gemeinsame Kernfluss
  `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`
- der Writer bleibt der einzige autoritative PR-Erzeuger

Native Subagents duerfen diese Struktur nicht ersetzen. Sie sind eine
zusaetzliche Arbeitsflaeche fuer Teilaufgaben, nicht ein neues Navigations-SSOT.

## 2) Ebenentrennung

### 2.1 `AGENTS.md`

Operative Startkarte fuer Codex/Copilot. Diese Datei bleibt klein und verweist
auf die kanonischen Anker.

### 2.2 root-nahes `codex.toml`

Repo-lokale Default-Policy fuer reproduzierbare Runs
(z. B. Approval/Sandbox/Web-Search im bestehenden Setup).
Diese Datei ist keine native Subagent-Landkarte.

### 2.3 `.codex/config.toml`

Projektlokale native Codex-Konfiguration fuer Subagent-Steuerung, z. B.
`max_threads`, `max_depth` und Laufzeitgrenzen.

### 2.4 `.codex/agents/*.toml`

Konkrete, kleine Rollen mit enger Aufgabe.
Diese Dateien definieren Rollenverhalten, nicht den Session-Start.

## 3) Warum repo-lokal und nicht global?

Die Rollenlogik ist hier workstream-, governance- und pfadabhaengig:

- sie haengt am repo-spezifischen Session-Vertrag
- sie muss mit Writer-Policy, Stop-&-Ask und vorhandenen Runbooks kongruent sein
- sie soll von anderen Repos nicht implizit geerbt werden

Globale User-Settings bleiben fuer persoenliche Defaults sinnvoll, nicht fuer
repo-spezifische Rollen.

## 4) Mentales Modell

- **Hauptagent** = Orchestrator, Integrator, einziger aktiver Writer
- **Subagents** = schmale Spezialrollen fuer Analyse, Verify, Doku, Beobachtung
- **Writer** = weiterhin einziger autoritativer PR-Erzeuger

Daraus folgt der Startmodus:

- read-first
- one-writer-many-readers
- keine parallelen Subagents mit schreibendem Zugriff auf dieselben Dateien
- kein neuer PR-Pfad

## 5) Rollenklassen

Die erste Betriebsstufe arbeitet mit kleinen Rollenklassen:

- **Mapper**: Scope, betroffene Dateien, Anker, verdeckte Kopplung
- **Test-Agent**: Verify-Ideen, Smoke-Checks, negative Tests, Gate-Evidence
- **Doc-Agent**: README-/Runbook-/PR-Report-Wording
- **Observer**: Status-/Log-/Runtime-Signale aus externen Betriebsoberflaechen

Spaetere Rollen koennen daraus abgeleitet werden, z. B.:

- Reviewer
- OAuth-Triager
- Railway-Deploy-Triager
- Policy-Consistency-Checker

## 6) Tooloberflaechen

Subagents duerfen nicht nur nach Thema, sondern auch nach Werkzeugebene
geschnitten werden:

- Repo-Dateien
- lokale Tests / changed-files Checks
- CLI-basierte Status-/Log-Abfragen
- optionale Skills oder MCP-Integrationen, wenn sie zur Laufzeit verfuegbar sind

Das ist wichtig, weil Diagnosearbeit oft andere Werkzeuge braucht als
eigentliche Datei-Aenderungen.

## 7) Evidenzquellen

Im ersten Slice sind diese Evidenzquellen relevant:

- `AGENTS.md`
- `ENTRY_LATEST`
- `RepoStatusUpdate`
- aktueller Workstream
- relevante HowTos / Runbooks / Referenzen
- changed-files-orientierte lokale Checks
- Status- und Log-Ausgaben von Hostern wie Railway

Fuer Railway gilt im Startmodus:

- zuerst read-only Beobachtung
- bevorzugt strukturierte CLI-Ausgaben (`--json`)
- keine Mutation durch den Observer
- bei Live-Health-Problemen darf der Observer voruebergehend wichtiger sein als ein weiterer Bridge-Code-Slice

## 8) Schreibrechte und Grenzen

Subagents starten bewusst konservativ:

- `sandbox_mode = "read-only"` als Default fuer Nebenrollen
- keine autonome Schreibrolle im ersten Slice
- Doku- und Test-Agenten liefern Vorschlaege, der Hauptagent wendet sie an

Das reduziert Konflikte, Scope Drift und parallele Dateikollisionen.

## 9) Outputvertrag fuer Rollen

Jede Rolle sollte ein schmales Rueckgabeformat haben.
Bewaehrte Felder:

1. Scope / Fokus
2. Findings
3. Evidence
4. Risiken / Hidden Coupling
5. Empfohlener naechster Schritt

Dadurch bleibt die Synthese beim Hauptagenten einfach.

## 10) Stop-&-Ask / Escalation

Subagents muessen dieselben harten Grenzen respektieren wie der Hauptagent:

- `.github/workflows/**`
- Secrets, Tokens, Keys
- riskante Allowlist-Erweiterungen
- neue GitHub-App-Permissions
- Nebenpfade um den Writer herum
- produktive Mutationen auf Railway ohne explizite Freigabe

## 11) Failure Modes

### 11.1 Zu grosse Rollen

Wenn ein Subagent "alles rund um X" tun soll, driftet er.
Rollen muessen klein bleiben.

### 11.2 Schreibende Parallelagenten

Zwei parallel schreibende Nebenagenten erzeugen Dateikollisionen und
semantische Widersprueche.

### 11.3 Prompt-only Steuerung

Ein grosser Prompt ohne repo-lokale Konfiguration ist nicht robust genug.
Rollen und Grenzen muessen als Artefakte ins Repo.

### 11.4 Observer wird zum Operator

Railway- oder Log-Agenten duerfen nicht stillschweigend in Mutation kippen.
Beobachten und Veraendern sind getrennte Rollen.

## 12) Ableitungsregeln fuer neue Rollen

Eine neue Rolle ist gerechtfertigt, wenn mindestens drei Bedingungen erfuellt sind:

1. wiederkehrende Teilaufgabe
2. enger Werkzeug- oder Evidenzraum
3. klarer Outputvertrag
4. keine neue Konkurrenz zum Hauptagenten oder Writer

Gute Folgefragen fuer neue Rollen:

- Welche Dateien oder Tools darf die Rolle sehen?
- Was darf sie explizit nicht?
- Welches Ergebnis muss sie immer liefern?
- Ist read-only ausreichend?

## 13) Erster praktischer Slice

Das erste Basisset besteht aus:

- `ws_mapper`
- `bridge_test_agent`
- `bridge_doc_agent`
- `railway_observer` als optionaler Spezialrolle

Fuer normale Bridge-Slices ist `ws_mapper + bridge_test_agent` die beste
Startkombination. `bridge_doc_agent` wird spaeter zugeschaltet, wenn der
Planned Diff stabil ist. Wenn die aktuelle operative Wahrheit auf Live-Health-
oder Railway-Probleme zeigt, wird `railway_observer` voruebergehend zur
bevorzugten Nebenrolle.

## 14) Nicht-Ziele dieses ersten Slices

- keine globale `~/.codex`-Konfiguration
- keine autonome Schreibrolle
- kein Ersatz des bestehenden Runbooks
- kein neuer PR-Pfad
- keine repo-weiten Struktur-Refactors

## 15) Ergebnis

Mit diesem Setup erhaelt das Repo:

- eine kleine native Subagent-Basis
- eine klare Ebenentrennung
- eine dokumentierte Ableitungslogik fuer spaetere Spezialrollen
- einen risikoarmen Einstieg fuer den aktuellen Workstream-Kontext
