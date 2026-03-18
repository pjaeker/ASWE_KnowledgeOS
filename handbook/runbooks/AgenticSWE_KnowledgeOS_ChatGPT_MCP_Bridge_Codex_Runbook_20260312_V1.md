---
project: ASWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-03-12
status: draft
audience: [human, llm]
intent: "Vollstaendiges Runbook fuer die moeglichst automatisierte, aber governance-konforme Umsetzung von WS-CHATGPT-MCP-BRIDGE mit Codex, Writer, Railway CLI und repo-lokalen Gates."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/chatgpt
  - topic/mcp
  - topic/oauth
  - topic/codex
  - topic/railway
  - topic/gate
  - topic/evidence
  - risk/stop-ask
---

# Runbook: WS-CHATGPT-MCP-BRIDGE mit Codex umsetzen

## Ziel

Dieses Runbook beschreibt den vollstaendigen Arbeitsablauf, um den Workstream `WS-CHATGPT-MCP-BRIDGE` in kleinen, reviewbaren PR-Slices moeglichst automatisiert umzusetzen.

Zielbild:

- ChatGPT kann den Railway-basierten MCP-Writer als Custom App mit OAuth-first nutzen.
- Der Writer bleibt der einzige autoritative PR-Erzeuger.
- Codex arbeitet als Change-Generator und Runner fuer Analyse, kleine Diffs, lokale Checks, Smoke-Skripte und Evidence.
- Governance, Stop-&-Ask und PR-only bleiben ungebrochen.

## Nicht-Ziel

- Kein repo-weites Refactoring.
- Keine Lockerung der Writer-Policy.
- Keine Aenderungen an `.github/workflows/**`.
- Keine neuen produktiven GitHub-App-Permissions ohne explizite Entscheidung.
- Keine Secrets im Repo, in Prompts, in PR-Texten oder in Doku-Artefakten.
- Kein zweiter autonomer PR-Pfad neben dem Writer.

## Kurzbild

Der technische Umbau erfolgt in vier Slices:

1. PR-1: offizieller MCP-Transport + Protected-Resource-Discovery
2. PR-2: OAuth-/OIDC-Server unter `/oauth/*` + DCR
3. PR-3: `mcp.read` / `mcp.write` + harte Kopplung an den bestehenden Policy-Enforcer
4. PR-4: Railway-CLI-Automation + Smoke-Tests + reproduzierbarer Deploy-Pfad

Danach folgt eine separate E2E-Abnahme mit ChatGPT Custom App.

## Eingaben

Pflichtkontext vor jedem technischen Slice:

- `AGENTS.md`
- aktuelles `ENTRY_LATEST`
- aktuelles `RepoStatusUpdate`
- `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md`
- `handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md`
- `handbook/howto/AgenticSWE_MCPWriter_OAuth_Codex_Handover_HowTo_20260309_V1.md`
- `handbook/reference/AgenticSWE_Codex_HandoverChecklist_20260309_V1.md`
- `handbook/reference/AgenticSWE_PRReport_Template_Reference_20260303_V1.md`
- passender Slice-Prompt aus `.github/prompts/ASWE_MCPWriter_OAuth_PR*.md`

Optional bei Bedarf:

- `meta/state/*RepoMeaningMap*_V*.md`
- `meta/state/*RepoStateSnapshot*_V*.md`
- `meta/state/*RepoManifest*_V*.json`
- `tools/mcp-writer/policy.json`

## Ausgaben

Jeder Slice liefert mindestens:

- Patch-Spec
- Files touched
- geplanter Diff
- Verify / Gates
- PR-Report-Draft
- Next thin slice

Zusatzartefakte nur wenn noetig:

- README-Nachtrag
- `.env.example` mit Platzhaltern
- Smoke-Skript
- Status-/Workstream-/Handoff-Update nach erfolgreichem Slice

## Rollen und Grenzen

### Codex

Codex ist Change-Generator und Runner.

Codex darf:

- Pflichtkontext lesen
- kleine Diffs vorbereiten
- lokale changed-files-orientierte Checks ausfuehren
- Smoke-Skripte und README-Nachtraege erzeugen
- PR-Report-Drafts formulieren
- Worktrees nutzen
- mehrere Analyseagenten fuer nicht-kritische Teilaufgaben nutzen

Codex darf nicht:

- einen zweiten PR-Pfad schaffen
- direkt nach `main` schreiben
- `.github/workflows/**` anfassen
- echte Secrets in Artefakte schreiben
- Scope stillschweigend erweitern
- Governance-Regeln uebergehen

### Writer

Der Writer bleibt der einzige autoritative PR-Erzeuger.

### Human Operator

Der menschliche Operator:

- gibt Scope und Allowed Files frei
- erteilt Deploy-/Netzwerk-/Railway-Freigaben
- prueft Stop-&-Ask Faelle
- fuehrt finale ChatGPT-Custom-App-Tests durch
- merged nur nach gruener Evidence

## Invarianten

Diese Regeln gelten durchgaengig fuer den gesamten Workstream:

1. PR-only, kein Direktwrite auf default/main
2. Writer bleibt einziger PR-Erzeuger
3. No-Secrets-in-Repo
4. Policy-Enforcer bleibt hart
5. `.github/workflows/**`, `infra/**`, `secrets/**`, `.env*` bleiben out of scope
6. Read-first bei Unsicherheit
7. keep diffs small
8. changed-files first
9. fail-closed bei unklarer Sicherheitslage
10. jede technische Aenderung muss revertierbar bleiben

## Stop-&-Ask Trigger

Sofort stoppen und Freigabe einholen bei:

- Aenderungen an `.github/workflows/**`
- neuen oder erweiterten GitHub-App-Permissions
- produktivem No-Auth-Pfad
- riskanter Allowlist-Erweiterung
- Secrets, Tokens, Keys, OAuth-Credentials
- Deploy-/Infra-Aenderungen ausserhalb des klar beschriebenen Railway-CLI-Pfads
- repo-weiten Reorgs oder Cleanups

## Betriebsmodell

Das Arbeitsmodell ist hybrid:

- moeglichst automatisiert fuer Analyse, Diffs, lokale Checks, Doku und Smoke-Skripte
- kontrolliert manuell fuer Deploy, Railway-Variablen, ChatGPT-Custom-App-Verifikation und den finalen PR-Pfad

## Phase 0 - Session Start und Orientierung

### Schritt 0.1 - Repo-lokalen Einstieg herstellen

In Codex oder VS Code zuerst:

- `AGENTS.md` lesen
- `ASWE: Bootstrap (Read Entry + Status + WS)` ausfuehren

Erwartetes Ergebnis:

- aktuelles `ENTRY_LATEST` ist klar
- aktuelles `RepoStatusUpdate` ist bekannt
- aktiver Workstream ist `WS-CHATGPT-MCP-BRIDGE`
- die relevanten Tiefenanker sind bekannt

### Schritt 0.2 - Optional Anchor Refresh

Nur wenn Pointer sichtbar stale sind:

- `ASWE: Update Anchors`

Wichtig:

- dieser Schritt aktualisiert nur Pointer
- MeaningMap, Snapshot und Manifest werden dadurch nicht neu erzeugt

### Schritt 0.3 - Slice bestimmen

Fuer diesen Workstream gilt die Standardreihenfolge:

- zuerst PR-1
- dann PR-2
- dann PR-3
- dann PR-4
- danach E2E-Abnahme

Kein Slice wird uebersprungen.

## Phase 1 - Codex-Orchestrierung vorbereiten

### 1.1 Steuer-Agent festlegen

Ein Hauptagent ist verantwortlich fuer:

- Pflichtkontext lesen
- Slice-Grenzen bewahren
- Allowed Files zusammenstellen
- Outputstruktur erzwingen
- naechsten Slice benennen

### 1.2 Nebenagenten festlegen

Optional genau zwei Nebenagenten:

- Test-Agent fuer Smoke-Skripte und Verify-Ideen
- Doku-Agent fuer README, Runbook-Nachtrag, PR-Report-Formulierungen

Keine parallelen Agenten mit schreibendem Zugriff auf dieselben Dateien.

### 1.3 Worktree-Modell

Pro Slice genau ein eigener Worktree, zum Beispiel:

- `codex/ws-chatgpt-mcp-bridge/pr-1-transport-discovery`
- `codex/ws-chatgpt-mcp-bridge/pr-2-oauth-server`
- `codex/ws-chatgpt-mcp-bridge/pr-3-scopes-policy`
- `codex/ws-chatgpt-mcp-bridge/pr-4-railway-automation`

Parallelitaet nur fuer Analyse und Vorbereitung, nicht fuer Merge-Logik.

### 1.4 Standardpaket fuer jeden Slice

Jeder Codex-Auftrag enthaelt:

- `WS-ID`
- `Slice-ID`
- 1-Satz-Ziel
- Allowed files
- Forbidden files
- DoD
- Expected output
- Verify/Gates
- Stop-&-Ask Trigger

## Phase 2 - PR-1 umsetzen

## Ziel

Den Railway-MCP-Writer so erweitern, dass ChatGPT ihn als OAuth-geschuetzten MCP-Server erkennen kann.

## Standard-Scope

- `tools/mcp-writer/src/server.js`
- `tools/mcp-writer/src/config.js`
- `tools/mcp-writer/src/mcp/**`
- `tools/mcp-writer/src/oauth/protected-resource.js`
- `tools/mcp-writer/README.md`

## Technische Anforderungen

- offizieller MCP-Transport statt proprietaerem Dead-End
- `/.well-known/oauth-protected-resource`
- geschuetzte MCP-Route liefert `401` + `WWW-Authenticate`
- `/healthz` bleibt erhalten
- Legacy-Debug-Pfad darf optional bestehen bleiben, aber nicht Discovery ersetzen

## DoD

1. `/.well-known/oauth-protected-resource` existiert
2. unauthenticated MCP-Request liefert `401` + `WWW-Authenticate`
3. Server ist auf offiziellen MCP-Transport vorbereitet oder nutzt ihn bereits
4. `/healthz` bleibt gruen
5. README dokumentiert Discovery-/Auth-Endpunkte knapp

## Verify

- `git diff --name-only`
- changed-files lint fuer README
- No-Secrets quickscan auf Diff
- `curl` auf `/.well-known/oauth-protected-resource`
- `curl` auf geschuetzte MCP-Route ohne Token
- Plausibilitaetscheck, dass `/oauth` als naechster Pfad sauber vorbereitet ist

## Exit-Kriterium fuer PR-1

PR-2 darf erst starten, wenn Protected-Resource-Metadata und Discovery-Basis technisch sauber stehen.

## Phase 3 - PR-2 umsetzen

## Ziel

Im selben Railway-Service einen kleinen OAuth-/OIDC-Server unter `/oauth/*` bereitstellen.

## Standard-Scope

- `tools/mcp-writer/src/oauth/**`
- `tools/mcp-writer/src/config.js`
- `tools/mcp-writer/src/server.js`
- `tools/mcp-writer/.env.example`
- `tools/mcp-writer/README.md`

## Technische Anforderungen

- `/oauth/.well-known/openid-configuration`
- `/oauth/.well-known/oauth-authorization-server`
- `/oauth/authorize`
- `/oauth/token`
- `/oauth/jwks`
- `/oauth/register`
- bevorzugt Authorization Code + PKCE
- DCR aktiv
- single-service deployment auf Railway
- nur umgebungsbasierte Konfiguration dokumentieren

## DoD

1. OAuth-/OIDC-Metadata ist abrufbar
2. Registration Endpoint ist vorhanden
3. Token- und Authorize-Endpoints sind klar verdrahtet
4. `.env.example` enthaelt nur Platzhalter
5. README beschreibt den OAuth-Basisablauf knapp und korrekt

## Verify

- `git diff --name-only`
- changed-files lint fuer README und `.env.example`
- No-Secrets quickscan auf Diff
- `curl` auf `/oauth/.well-known/openid-configuration`
- `curl` auf `/oauth/.well-known/oauth-authorization-server`
- DCR-Smoke fuer `/oauth/register`
- Plausibilitaetscheck der beworbenen URLs

## Exit-Kriterium fuer PR-2

PR-3 darf erst starten, wenn Discovery und OAuth-Metadata konsistent sind.

## Phase 4 - PR-3 umsetzen

## Ziel

OAuth schuetzt den Zugang zum MCP-Server, waehrend die bestehende Writer-Policy weiterhin Repo, Pfade und Diff-Flaeche schuetzt.

## Standard-Scope

- `tools/mcp-writer/src/auth/**`
- `tools/mcp-writer/src/mcp/tools.js`
- `tools/mcp-writer/src/policy/**`
- `tools/mcp-writer/src/report/pr-report.js`
- `tools/mcp-writer/policy.json`
- `tools/mcp-writer/README.md`

## Technische Anforderungen

- Scopes `mcp.read` und `mcp.write`
- Mapping:
  - `read_file`, `list_tree` -> `mcp.read`
  - `create_branch`, `commit_files`, `open_pr` -> `mcp.write`
- Policy bleibt hart
- Blocklist bleibt aktiv
- Limits bleiben aktiv oder werden explizit dokumentiert
- PR-Report-Struktur bleibt serverseitig erzwungen, falls bereits vorhanden

## DoD

1. Read-Tools verlangen `mcp.read`
2. Write-Tools verlangen `mcp.write`
3. Policy blockiert riskante Pfade weiterhin
4. Secret-Pattern-Quickscan bleibt erhalten
5. README beschreibt die Trennung AuthN/AuthZ versus Policy

## Verify

- `git diff --name-only`
- changed-files lint fuer policy-nahe Doku
- No-Secrets quickscan auf Diff
- Scope-Smoke fuer Read vs Write
- Negativtest gegen blockierten Pfad
- Plausibilitaetscheck, dass OAuth die Policy nicht ersetzt

## Exit-Kriterium fuer PR-3

PR-4 startet erst, wenn Read/Write und Policy logisch getrennt, aber sauber gekoppelt sind.

## Phase 5 - PR-4 umsetzen

## Ziel

Deployment, Variablenpflege und Smoke-Tests moeglichst ohne Dashboard-Klicks reproduzierbar machen.

## Standard-Scope

- `tools/mcp-writer/scripts/railway/**`
- `tools/mcp-writer/scripts/dev/**`
- `tools/mcp-writer/README.md`
- `tools/mcp-writer/.env.example`
- optional kleiner Nachtrag im OAuth-Handover-HowTo

## Technische Anforderungen

- Railway CLI bevorzugen
- Variablen nur per stdin oder Environment verarbeiten
- Deploy vom Repo-Root aus vorbereiten, damit Railway die bestehende `rootDirectory`-/`dockerfilePath`-Konfiguration weiter korrekt aufloest
- Smoke-Skripte fuer:
  - Protected Resource Metadata
  - OIDC Metadata
  - optional DCR
  - Token Flow / Read Smoke
- host-neutralen Node-Fallback fuer Windows-/PowerShell-Transportprobleme vorsehen
- README dokumentiert den CLI-first Ablauf knapp

## DoD

1. `set_env.sh` oder aequivalent dokumentiert variable set via CLI
2. `deploy.sh` oder aequivalent dokumentiert Railway-Deploy vom Repo-Root
3. `smoke_oauth.sh` oder aequivalent prueft die wichtigsten Endpunkte
4. README erklaert den CLI-first Ablauf und den host-neutralen Node-Fallback nachvollziehbar
5. keine Secrets im Repo, keine Copy/Paste von echten Werten

## Verify

- `git diff --name-only`
- changed-files lint fuer README
- No-Secrets quickscan auf Diff
- Shell-Syntax-Plausibilitaetspruefung
- Trockenuebung der Skriptparameter
- manuell freigegebene Live-Smokes nur nach Approval

## Exit-Kriterium fuer PR-4

Die komplette technische Kette ist reproduzierbar dokumentiert; danach folgt E2E-Abnahme.

## Phase 6 - E2E-Abnahme

Diese Phase ist bewusst getrennt von den vier Slices.

## Ziel

Nachweisen, dass ChatGPT die Bridge als Custom App nutzen kann, ohne Governance zu brechen.

## Schritte

1. ChatGPT Custom App gegen den Railway-Endpoint erneut anlegen
2. Discovery pruefen; bei lokal fragiler PowerShell zuerst host-neutralen Bridge-Readiness-Probe-Lauf fuer `/.well-known/*`, `/oauth/*`, `401 + WWW-Authenticate` und optional `list_tree` sichern
3. ersten Read-Call durchfuehren: `list_tree` oder `read_file`
4. optional kleinen Draft-PR auf erlaubtem Pfad pruefen
5. Policy-Negativfall gegen blockierten Pfad pruefen

## Akzeptanzkriterien

- Discovery gruene Kette
- OAuth-Flow plausibel abgeschlossen
- mindestens ein Read-Call erfolgreich
- PR-only unveraendert
- Stop-&-Ask Bereiche bleiben unberuehrt

## Freigabegrenzen

E2E-Abnahme mit echter Custom App und Live-Deploy nur manuell freigegeben.

## Standard-Codex-Auftrag pro Slice

```text
WS-ID: WS-CHATGPT-MCP-BRIDGE
Slice-ID: <PR-1 | PR-2 | PR-3 | PR-4>

Lies zuerst:
- AGENTS.md
- aktuelles ENTRY_LATEST
- aktuelles RepoStatusUpdate
- blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_ChatGPT_MCP_Bridge_20260309_V1.md
- handbook/howto/AgenticSWE_Codex_WorkstreamRunner_HowTo_20260310_V1.md
- handbook/howto/AgenticSWE_MCPWriter_OAuth_Codex_Handover_HowTo_20260309_V1.md
- handbook/reference/AgenticSWE_Codex_HandoverChecklist_20260309_V1.md
- passender Slice-Prompt aus .github/prompts/

Arbeite in PLAN -> CHANGE -> VERIFY -> DELIVER.
Keep diffs small.
Changed-files first.
Read-first bei Unsicherheit.
Keine .github/workflows/**, keine Secrets, kein zweiter PR-Pfad.

Erwarteter Output:
1. PATCH-SPEC
2. FILES TOUCHED
3. PLANNED DIFF
4. VERIFY / GATES
5. PR-REPORT-DRAFT
6. NEXT THIN SLICE
```

## Pflichtfelder fuer den PR-Report-Draft

Jeder Slice muss einen PR-Report-Draft mit mindestens diesen Feldern liefern:

- Summary
- Scope / Files touched
- Motivation / Why
- Risk class
- Gates executed (evidence)
- Rollback
- Next thin slice

## Gate-Matrix fuer diesen Workstream

| Gate | Feedback | Authoritative Enforcement | Evidence |
|---|---|---|---|
| Scope / Allowlist | Codex + Human Review | Writer Policy | Policy-Log + PR-Report |
| PR-Report Pflicht | Editor/Codex Draft | Writer | PR-Body |
| Markdown / README | changed-files lint lokal | CI bzw. SSOT-Skripte spaeter | Logs |
| Secrets | quickscan lokal | Writer / CI | Logs |
| OAuth Discovery | lokale Smokes | technischer Review + Live-Test | Curl-/Smoke-Logs |
| Railway Deploy | Skript-Trockenuebung | Human Approval + CLI | Deploy-Output |
| ChatGPT Custom App | n/a | manueller E2E-Test | Screenshot/Notiz/URL |

## Failure Modes und Gegenmassnahmen

### 1. Codex driftet in zu breiten Scope

Gegenmassnahme:

- Allowed files enger ziehen
- Mehrfach-Slices verbieten
- Auftrag abbrechen und neu schneiden

### 2. README/Doku wird vor Code fertig, aber technisch unpraezise

Gegenmassnahme:

- Doku-Agent erst nach stabilem Planned Diff einsetzen

### 3. Railway-Smokes basieren auf echten Geheimnissen

Gegenmassnahme:

- nur Platzhalter, stdin oder Environment verwenden
- keine Klartextwerte in Skripten oder Doku

### 4. Policy wird implizit aufgeweicht

Gegenmassnahme:

- Policy-Diff separat pruefen
- Negativtests gegen Blocklist erzwingen

### 5. PR-3 wird vor PR-2 begonnen

Gegenmassnahme:

- Reihenfolge hart einhalten
- Exit-Kriterium pro Slice pruefen

### 6. Zweiter PR-Pfad entsteht indirekt

Gegenmassnahme:

- Writer-Autoritaet in jedem Slice explizit pruefen
- keine Auto-PR-Funktionen ausserhalb des Writers aktivieren

### 7. Lokale Checks werden mit Enforcement verwechselt

Gegenmassnahme:

- lokale Tasks als Feedback behandeln
- authoritative Gates klar im PR-Report markieren

### 8. Status-Artefakte veralten waehrend der Umsetzung

Gegenmassnahme:

- nach jedem erfolgreichen Slice Closeout-Schritt ausfuehren

## Closeout nach jedem erfolgreichen Slice

In dieser Reihenfolge vorgehen:

1. `RepoStatusUpdate` aktualisieren, wenn sich operative Wahrheit geaendert hat
2. betroffenen Workstream aktualisieren
3. MeaningMap / Snapshot / Manifest nur bei echter Struktur- oder Routing-Aenderung anfassen
4. danach `ENTRY_LATEST` refreshen, wenn neue Zielartefakte kanonisch geworden sind
5. NextChat-Handoff nur dann aktualisieren, wenn fragiler Resume-Kontext wirklich noetig ist

## Definition of Done fuer das gesamte Runbook

Das Runbook ist erfolgreich angewendet, wenn:

- alle vier PR-Slices reviewbar und getrennt umgesetzt sind
- jeder Slice Evidence und Rollback besitzt
- ChatGPT mindestens einen authentifizierten Read-Call ueber die neue Bridge ausfuehren kann
- Writer-Policy und PR-only unveraendert hart bleiben
- keine Secrets im Repo oder in PR-Artefakten landen
- Closeout-Artefakte den neuen Stand korrekt reflektieren

## Kurzfassung fuer den Operator

1. Session mit `AGENTS.md` und Bootstrap starten
2. PR-1 bis PR-4 strikt nacheinander planen
3. pro Slice nur engen Scope an Codex delegieren
4. lokale Checks und Smoke-Skripte automatisieren
5. Deploy und ChatGPT-E2E nur kontrolliert freigeben
6. Writer bleibt einziger PR-Erzeuger
7. nach jedem Slice Status und Workstream sauber nachziehen
