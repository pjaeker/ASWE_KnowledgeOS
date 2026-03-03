---
title: "ADR: Writer-Interface — Portal /api/pr vs MCP-Writer"
project: "ASWE_KnowledgeOS"
date: "2026-03-03"
version: "V1"
status: "proposed"
deciders: ["Philipp Jäker"]
tags:
  - layer/enforcement
  - artifact/adr
---

# Kontext

Zielbild ist End-to-End Autonomie aus UI (ChatGPT-GUI oder CMS-Portal): **UI → (kontrolliertes Schreiben) → PR → Checks → Merge**.

Kernaussage: Es gibt genau **einen** Schreibpfad (write interface) mit Schreibrechten. Alles andere (Codex/Copilot, VS Code Extensions, lokale Tasks/Hooks) ist Rückmeldung (feedback).

# Entscheidung

Wir wählen das primäre **Writer-Interface** für PR-only Änderungen:

- **Option A:** Portal **PR-Broker** via HTTP Endpoint `/api/pr`
- **Option B:** **MCP-Writer** (MCP server) mit `create_branch / commit_files / open_pr`

**Status:** proposed (noch nicht final).

# Treiber (Decision Drivers)

1) **Governance & Auditierbarkeit** (auditing): Logs/Evidence, fail-closed, klare Policy-Durchsetzung (enforcement).
2) **UI-Kongruenz**: passt zum Ziel, Änderungen aus Portal/Chat UI auszulösen.
3) **Verfügbarkeit/Portabilität**: funktioniert auch ohne lokalen Editor/Tooling.
4) **Betriebsaufwand** (ops): Secrets, Hosting, GitHub App, Wartung.
5) **Risikooberfläche**: Minimierung von Schattenpfaden (z. B. Agent schreibt selbst PRs).

# Optionen

## Option A — Portal PR-Broker (/api/pr)

**Beschreibung:** UI sendet Patch/Diff + PR-Report an `/api/pr`. Server erzwingt Policy (Allowlist/Blocklist/Limits, no-secrets, stop-and-ask) und erstellt Branch/Commit/PR via GitHub App.

**Stärken**

- Zentraler Gatekeeper: konsistente Policy + Logs.
- Portal-first (kongruent zum Zielbild).
- Gut für spätere Keystatic/Frontmatter-Workflows (ein Kontrollpunkt).

**Schwächen / Risiken**

- Höherer Implementierungs- und Betriebsaufwand (Hosting, Secrets, GitHub App Permissions).
- Stop-and-ask für alles, was `.github/workflows/**` / App-Permissions betrifft.

## Option B — MCP-Writer (MCP server)

**Beschreibung:** UI/Chat nutzt MCP-Tools (create_branch/commit/open_pr) über MCP-Server. Server erzwingt Policy, erstellt PR.

**Stärken**

- Chat-first: direkte Interaktion aus Chat-Oberfläche, sehr flexibel.
- Kann später auch Portal-integriert werden, wenn Portal MCP anbinden kann.

**Schwächen / Risiken**

- Abhängig von MCP-Verfügbarkeit in der Ziel-UI (Plan/Client-Fähigkeiten).
- Ebenfalls Betriebsaufwand (Hosting, Secrets, GitHub App).
- Höheres Risiko, dass “Tool-Sprawl” entsteht (mehr Wege zu schreiben), wenn nicht strikt zentralisiert.

# Bewertung (Scoring)

Skala: 1 (schlecht) … 5 (sehr gut)

| Kriterium | Gewicht | A: Portal /api/pr | B: MCP-Writer |
|---|---:|---:|---:|
| Governance/Audit (enforcement, logs) | 3 | 5 | 4 |
| UI-Kongruenz zum Portal-Zielbild | 3 | 5 | 3 |
| Verfügbarkeit in Ziel-UI (ohne lokalen Editor) | 3 | 5 | 2* |
| Time-to-Value (erste PRs) | 2 | 3 | 4 |
| Ops-Aufwand (Hosting/Secrets) | 2 | 3 | 3 |
| Risiko Schattenpfade | 3 | 5 | 3 |

\* **Annahme:** MCP ist nicht in jeder Chat/CMS-UI zuverlässig verfügbar. Falls das bei dir doch sicher ist, Score auf 4–5 anheben.

**Vorläufige Empfehlung:** **Option A (Portal /api/pr)** als primärer Writer; **Option B (MCP)** als späterer optionaler Kanal, aber nur wenn er denselben Policy-Enforcer nutzt.

# Konsequenzen

## Positiv

- Klare Trennung: Change-Generator (Codex/Copilot) erzeugt Patch/Diff; Writer erzeugt PR.
- Keine doppelte Durchsetzung (enforcement) pro Gate: Writer für Policy, CI für Content/Qualität.

## Negativ / Kosten

- GitHub App Setup + Hosting + Secrets Management erforderlich.
- Zusätzliche Arbeit für Observability (Logs, Correlation IDs, Evidence).

# Sicherheits- und Stop-and-Ask Regeln (Minimum)

- Nie direkt auf default/main schreiben (PR-only).
- `.github/workflows/**` und Token/Secrets/Permissions: **Stop-and-Ask**.
- fail-closed: unklarer Status = reject.
- Allowlist/Blocklist/Limits als Policy-Datei (SSOT).

# Implementierungsplan (Thin Slices)

1) **ADR mergen** (diese Datei) + Policy-Datei Skeleton (Allowlist/Blocklist/Limits) + PR-Report Template verlinken.
2) **PR-Broker minimal**: validiert Policy + erzeugt PR (draft), Logs + Evidence.
3) **Required Checks Kern** aktivieren (CI), Writer verlinkt CI-Evidence im PR-Report.
4) Optional: **MCP-Writer** als Alternative, aber strikt hinter denselben Policy-Enforcer geklemmt.

# Definition of Done (DoD)

- Entscheidung ist finalisiert (status=accepted) und im Repo gemerged.
- Es existiert genau **ein** primärer Writer-Pfad (und ggf. ein zweiter nur, wenn er denselben Enforcer nutzt).
- Policy (Allowlist/Blocklist/Limits) ist versioniert und wird enforced (reject bei Verstoß).
- PR-Report Template ist verbindlich (fail-closed).
- Dokumentierte Stop-and-Ask Trigger sind Teil der Policy/Runbooks.

# Offene Fragen

1) Welche UI ist primär: ChatGPT-GUI oder CMS-Portal?
2) Ist MCP in deiner Ziel-UI sicher verfügbar (Plan/Client)?
3) Welche GitHub App Permissions sind minimal nötig (und akzeptabel)?
4) Wo werden Logs/Evidence langfristig gespeichert (Repo vs externe Observability)?
