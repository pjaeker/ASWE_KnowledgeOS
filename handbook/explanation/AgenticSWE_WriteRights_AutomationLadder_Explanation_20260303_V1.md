---
project: AgenticSWE_KnowledgeOS
doc_type: explanation
version: V1
date: 2026-03-03
status: draft
audience:
  - human
  - llm
intent: "Erklärt, wie Schreibrechte (Write) schrittweise automatisiert werden können, ohne das Zielbild Option B (Keystatic + Chat schreibt nur per PR) zu brechen."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/governance
  - topic/ssot
  - topic/gate
  - topic/actionability
  - topic/thin-slice
  - topic/human-approval
  - risk/stop-ask
---

# Explanation: Schreibrechte-Automation Ladder (Option B-konform)

## Leitfrage

> **🟦 Ziel:** Wie erhöhen wir den Automatisierungsgrad beim Schreiben, ohne Sicherheit/Governance zu verlieren – und so, dass spätere Portal-/Keystatic-/Frontmatter-Implementierung *leichter* wird?

## Mentales Modell (1 Visualisierung)

```mermaid
flowchart LR
  A[Idee/Änderungswunsch] --> B[Patch/Diff]
  B --> C[Write-Gates: Allowlist/Blocklist/Limits]
  C --> D[PR-Erzeugung: Branch/Commit/PR-Report]
  D --> E[CI-Gates: lint/link/taxonomy/frontmatter]
  E -->|grün| F[Human Merge]
  E -->|rot| G[Fix-Loop (thin slice)]
```

## Kontext und Annahmen

- **SSOT (single source of truth):** Repo-Dateien sind Wahrheit; Chat/Agent ist Arbeitsraum.
- **Write nur via PR:** Keine Direktwrites auf `main`.
- **Stop-&-Ask:** Änderungen an Workflows/Secrets/Deploy sind ein Risiko-Sprung und erfordern explizite Freigabe.
- Annahme: Du willst *jetzt* schon automatisiertes Schreiben (mind. PR-Drafts), aber *ohne* Autopilot-Merge.

## Ladder (vom niedrigsten Risiko zur höchsten Automationsstufe)

### Stufe 0 — Manuelles Schreiben, normativ aufgeräumt

- Mensch editiert in VS Code.
- Gates laufen lokal (oder als Editor-Gates).
- PR wird manuell erstellt, PR-Report wird genutzt.

**Warum sinnvoll?** Es schafft saubere Baseline (Frontmatter/Tags/Diátaxis), die später Keystatic/Portal „out of the box“ nutzen können.

### Stufe 1 — Agent schreibt *Text*, Mensch kontrolliert *Diff*

- Copilot Agent Mode/Codex erzeugt kleine Patches.
- Mensch kontrolliert im Diff-View, führt Gates aus, erstellt PR.

**Schlüsselprinzip:** Agent produziert *Patch*, nicht „Repo-Refactor“.

### Stufe 2 — Session-Rituale + Prompt Files (weniger Reibung)

- Standardisierte Session-Inputs/Outputs (Bootstrap/Closeout).
- Ergebnis: konsistente „Next PR slices“ und weniger Kontextverlust.

### Stufe 3 — Keystatic GitHub mode (UI schreibt PRs)

- Content-Edits über `/keystatic` erzeugen PRs (kein Direkt-Commit).
- Chat bleibt read-only oder schreibt weiterhin nur via PR.

**Bridge-Effekt:** Frontmatter wird durch UI-Forms weniger fehleranfällig.

### Stufe 4 — Portal `/api/pr`: serverseitiger PR-Broker (Write-Gates hart)

- Chat erzeugt Patch → Backend prüft Write-Gates → erstellt Branch/Commit/PR → PR-Report Pflicht.
- Mensch merged.

**Kernvorteil:** Write-Policy ist *nicht* nur „Prompt“, sondern Code/Enforcement.

### Stufe 5 — CI als „zweites Sicherheitsnetz“ (Required Checks)

- PRs triggern CI-Jobs (Frontmatter/Tags/Link/Lint).
- Merge nur bei grünen Checks (Branch Protection).

**Wichtig:** Workflows selbst sind Stop-&-Ask, daher als Draft vorbereiten und erst später aktivieren.

### Stufe 6 — Chat-first Write über MCP (nur wenn Policy-Enforcer existiert)

- ChatGPT ruft einen MCP Server auf, der *ausschließlich* PR-Aktionen erlaubt (create branch/commit/open PR).
- Serverseitig: Allowlist/Blocklist/Limits + No-Secrets Quickscan + PR-Report Pflicht + Draft PR.

**Warum letzte Stufe?** UX ist top, aber Risiko/Komplexität springen stark (Tooling + Secrets + Abuse-Surface).

## Trade-offs (entscheidungsfähig)

| Variante | UX (Reibung) | Effizienz | Setup-Aufwand | Risiko | Portal-Zielbild-Fit |
|---|---:|---:|---:|---:|---:|
| VS Code PR (manual) | mittel | niedrig–mittel | niedrig | niedrig | hoch |
| Copilot/Codex in VS Code (write-via-PR) | hoch | mittel–hoch | niedrig–mittel | mittel | hoch |
| Prompt Files + Session-Ritual | hoch | mittel | niedrig | niedrig | hoch |
| Keystatic GitHub mode | sehr hoch | hoch | mittel | mittel | sehr hoch |
| Portal `/api/pr` Broker | hoch | hoch | hoch | mittel | sehr hoch |
| GitHub Actions CI Required Checks | mittel | mittel | mittel | mittel | sehr hoch |
| MCP Write-via-PR (Chat-first) | sehr hoch | sehr hoch | mittel–hoch | mittel–hoch | hoch (als Bridge) |

## Failure Modes (warum es schiefgeht)

- **Zu große Diffs:** Agent „räumt auf“ statt thin slice → Review unbrauchbar.
- **Taxonomie drift:** Tags geraten außerhalb Allowlist → Findability und Gates brechen.
- **Secrets leak:** Tokens in PR-Body, Logs oder Dateien → Incident.
- **Workflow creep:** Jede kleine Änderung verlangt `.github/workflows/**` → Stop-&-Ask-Overhead explodiert.

## Konsequenzen für Governance

- Treat „Write“ als Fähigkeit, nicht als Feature:
  - Allowlist/Blocklist/Limits (serverseitig oder lokal) sind Pflicht.
  - PR-Report + Evidence + Rollback immer.
  - Human Merge bleibt Default.

## See also

- How-to: Write-via-PR mit Copilot/Codex (thin slice, PR-Report, Gates)
- Runbook: Option B PR-Automatisierung (Write-Gates, `/api/pr`)
- Draft: CI Gates Workflow (in `meta/**`, erst nach Freigabe nach `.github/workflows/**` promoten)
- Session Prompts: `SESSION_BOOTSTRAP` / `SESSION_CLOSEOUT`
