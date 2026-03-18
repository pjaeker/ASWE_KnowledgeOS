---
project: ASWE_KnowledgeOS
doc_type: report
version: V2
date: 2026-03-17
status: draft
audience: [human, llm]
intent: "Strukturierter Zwischenbericht zum Railway-basierten MCP-Writer nach Health-first Diagnose, Tooling-Haertung und klar priorisierter Fortsetzung im netzwerkfaehigen Kontext."
tags:
  - layer/blackboard
  - artifact/report
  - topic/railway
  - topic/mcp-writer
  - topic/diagnostics
  - topic/evidence
  - topic/health
  - topic/codex
---

# Zwischenbericht - MCP Writer Railway - 2026-03-17

## 1) Ziel und Status

Ziel des Slices war die health-first Stabilisierung des Railway-basierten MCP-Writers im Workstream `WS-MCP-WRITER-RAILWAY`.

Aktueller Status:
- keine produktive Railway-Mutation ausgefuehrt
- lokales Diagnose-, Verify- und Guard-Tooling deutlich gehaertet
- verbleibender Hauptblocker ist der ausgehende Netzwerkpfad im aktuellen Ausfuehrungskontext
- die fuehrende technische Hypothese `PORT_OR_HEALTHCHECK / target-port mismatch` bleibt bestehen, ist in dieser Session aber noch nicht live geschlossen

## 2) Durchgefuehrte Tests

- Pflichtkontext gelesen:
  - `AGENTS.md`
  - `ENTRY_LATEST`
  - `RepoStatusUpdate`
  - `WS_MCPWriter_Railway`
  - Orchestrierungs-Workstream
  - Closeout-Runbook
- Repo-lokale Codex-/Agentenstruktur geprueft:
  - `.codex/config.toml`
  - `.codex/agents`
- Railway CLI geprueft:
  - `railway 4.31.0`
- urspruenglichen Preflight ausgefuehrt
- Secret-Pfad im aktiven Worktree geprueft
- Main-Checkout auf vorhandenes `railway.env` geprueft
- Preflight nach Haertung erneut ausgefuehrt
- `doctor_readonly.ps1` ohne und mit Secret-Fallback ausgefuehrt
- direkte Railway-CLI-Tests mit geladenem Token ausgefuehrt:
  - `railway whoami --json`
  - `railway status --json`
  - `railway service status --json --environment production --service ASWE_KnowledgeOS`
- direkten Health-Zugriff auf `https://asweknowledgeos-production.up.railway.app/healthz` versucht
- `smoke_oauth.ps1 -PlanOnly` ausgefuehrt
- `mutate_guarded.ps1` bis zum Mutations-Guard geladen, um den Guard-Pfad zu verifizieren

## 3) Aufgetretene Probleme

### 3.1 Worktree- / Secret-Thema

- Der aktive Worktree enthielt das ignorierte Secret `.codex/secrets/railway.env` nicht.
- Im Worktree lagen nur `.gitkeep` und `railway.env.example`.
- Das echte Secret lag im Main-Checkout unter:
  - `G:\Program Files (x86)\GitHub\Repositories\ASWE_KnowledgeOS\.codex\secrets\railway.env`

### 3.2 Lokale Tooling-Defekte

- `env_and_auth_preflight.ps1` hatte einen fuehrenden Parser-Fehler.
- `doctor_readonly.ps1` und `mutate_guarded.ps1` nutzten Railway-CLI-Annahmen, die nicht zu CLI `4.31.0` passen.
- Mehrere Skripte waren nicht voll kompatibel zu `powershell` 5.1:
  - `ConvertFrom-Json -Depth`
  - `System.Net.Http` wurde nicht automatisch geladen

### 3.3 Externe Blocker

- Trotz gueltigem `RAILWAY_TOKEN` scheitern Railway-GraphQL-Zugriffe in dieser Session mit Socket-Fehler `os error 10013`.
- Auch direkter HTTPS-Zugriff auf `/healthz` scheitert in dieser Session auf Socket-/Send-Request-Ebene.

## 4) Umgesetzte Optimierungen und Problemlosungen

### 4.1 Preflight gehaertet

`tools/mcp-writer/scripts/railway/env_and_auth_preflight.ps1`

Umgesetzt:
- Parser-Fehler entfernt
- Fallback-Suche fuer Secret-Dateien ergaenzt:
  - Worktree-Pfad
  - benutzerweiter Pfad
  - aus `.codex/config.toml` ableitbare Repo-Roots
- Report erweitert um:
  - geladene Env-Quelle
  - gepruefte Kandidatenpfade

Ergebnis:
- `RAILWAY_TOKEN` wird jetzt sauber erkannt
- Quelle wird korrekt als Env-File gemeldet

### 4.2 Doctor-Pfad gehaertet

`tools/mcp-writer/scripts/railway/doctor_readonly.ps1`

Umgesetzt:
- eigener Secret-Fallback eingebaut
- Railway-CLI-Kommandos auf CLI `4.31.0` angepasst
- `status --json` nur noch als Best-Effort-Kontextcheck behandelt
- `powershell`-5.1-Kompatibilitaet fuer JSON-Parsing und HTTP-Nutzung hergestellt

Ergebnis:
- der Doctor stirbt nicht mehr an lokalem Tooling
- verbleibende Fehler zeigen jetzt echte externe Blocker

### 4.3 Mutationspfad gehaertet

`tools/mcp-writer/scripts/railway/mutate_guarded.ps1`

Umgesetzt:
- eigener Secret-Fallback eingebaut
- CLI-kompatiblere Argumentbildung fuer Restart/Redeploy
- `powershell`-5.1-Kompatibilitaet hergestellt
- Guard-Verhalten unveraendert erhalten

Ergebnis:
- der guarded Pfad laedt sauber
- produktive Mutation bleibt weiterhin explizit bestaetigungspflichtig

### 4.4 Smoke-Plan gehaertet

`tools/mcp-writer/scripts/railway/smoke_oauth.ps1`

Umgesetzt:
- `powershell`-5.1-Kompatibilitaet fuer JSON/HTTP-Nutzung hergestellt

Ergebnis:
- `-PlanOnly` liefert wieder stabil den vorgesehenen Probe-Plan

## 5) Offene Probleme und Ursachenhypothesen

### H1 - Fuehrende technische Hypothese: `PORT_OR_HEALTHCHECK / target-port mismatch`

Plausibilitaet: hoch

Evidence:
- `tools/mcp-writer/config/railway.target.json` dokumentiert:
  - `targetPort = 8080`
  - `observedListenPort = 3000`
- Code und Container sprechen ebenfalls fuer `3000`:
  - `tools/mcp-writer/Dockerfile`
  - `tools/mcp-writer/src/config.js`
  - `tools/mcp-writer/src/index.js`
- historische Smoke-Evidence bleibt konsistent:
  - `502`
  - `X-Railway-Fallback: true`

Interpretation:
- Railway erwartet wahrscheinlich Health/Traffic auf `8080`, waehrend die App auf `3000` lauscht.

### H2 - Fuehrender operativer Blocker: Netzwerk-/Sandbox-Blocker im aktuellen Ausfuehrungskontext

Plausibilitaet: hoch

Evidence:
- Railway-CLI mit gueltigem Token scheitert auf `https://backboard.railway.com/graphql/v2`
- Fehlerklasse:
  - Socket-Zugriff nicht zulaessig
  - `os error 10013`
- derselbe Kontext blockiert auch direkten `/healthz`-Readback

Interpretation:
- die Session hat keinen verwertbaren ausgehenden Netzwerkpfad fuer Railway bzw. die Public App
- damit ist Live-Verifikation derzeit kontext-, nicht mehr primaer auth-bedingt blockiert

### H3 - Zusaetzliche Railway-Config-Drift

Plausibilitaet: mittel

Moegliche Driftpunkte:
- falsch gesetzter `targetPort`
- inkonsistente Runtime-/Service-Konfiguration
- abweichende Railway-Environment-Variablen

Interpretation:
- selbst wenn H1 fuehrend ist, kann auf Railway zusaetzlich Config-Drift bestehen

### H4 - Worktree-bedingter Secret-Verlust

Plausibilitaet: bestaetigt

Interpretation:
- kein inhaltlicher Railway-Fehler
- sondern Folge daraus, dass ignorierte Secret-Dateien beim Worktree-Wechsel nicht mitkommen

## 6) Aktualisierte Priorisierung der naechsten Schritte

Die Fortsetzung soll in dieser Reihenfolge erfolgen:

1. **Netzwerkfaehigen Ausfuehrungskontext sicherstellen**
   - Ziel: Railway-CLI- und HTTPS-Readbacks muessen im naechsten Lauf tatsaechlich moeglich sein
   - Mindestkriterium:
     - `railway whoami --json`
     - `railway status --json`
     - direkter `/healthz`-Read
     funktionieren im Zielkontext

2. **Reparierte Verify-Kette erneut laufen lassen**
   - erneut ausfuehren:
     - `env_and_auth_preflight.ps1`
     - `doctor_readonly.ps1`
   - Ziel:
     - Status, Deployments, Logs und Health in einem verwertbaren Live-Kontext erneut einlesen

3. **Port-Hypothese live schliessen**
   - erst nach erfolgreichem Readback
   - den `8080/3000`-Mismatch gezielt bestaetigen oder falsifizieren

4. **Mutation weiterhin strikt nachgelagert behandeln**
   - erst nach bestaetigter Diagnose
   - bevorzugte Minimalreihenfolge:
     1. `Restart`
     2. nur falls noetig `Redeploy`
     3. danach zwingender Read-back:
        - `service status`
        - Runtime-Logs
        - `/healthz`

5. **Discovery/OAuth weiterhin nachgelagert behandeln**
   - erst nach gruener Writer-Live-Health:
     - `smoke_oauth.ps1` voll ausfuehren
     - danach Bridge-E2E wieder anheben

6. **Secret-Fallback als Worktree-Standard beibehalten**
   - verhindert stilles Auth-Versagen in detached Worktrees
   - entkoppelt Betriebsdiagnose von lokalem Worktree-Layout

## 7) Konkrete Loesungsvorschlaege

### 7.1 Live-Diagnose in netzwerkfaehigem Kontext wiederholen

Mit denselben reparierten Skripten erneut ausfuehren:
- `env_and_auth_preflight.ps1`
- `doctor_readonly.ps1`

Ziel:
- echte Railway-Readbacks auf Status, Deployments und Logs erhalten

### 7.2 Port-Hypothese gezielt schliessen

Wenn der Live-Readback den `8080/3000`-Mismatch bestaetigt:
- bevorzugter Minimalpfad:
  - Railway-`targetPort` auf `3000` an die aktuelle App-/Docker-Realitaet angleichen
- Alternative, falls `8080` bewusst Standard sein soll:
  - App-/Container-Defaults konsequent auf `8080` vereinheitlichen
  - danach redeployen

### 7.3 Mutationsreihenfolge klein halten

Nach bestaetigter Diagnose:
1. `Restart`
2. nur falls noetig `Redeploy`
3. danach zwingender Read-back:
   - `service status`
   - Runtime-Logs
   - `/healthz`

### 7.4 Discovery/OAuth weiterhin nachgelagert behandeln

Erst nach gruenem `/healthz`:
- `smoke_oauth.ps1` voll ausfuehren
- danach Bridge-E2E wieder anheben

### 7.5 Secret-Fallback als Worktree-Standard beibehalten

Begruendung:
- verhindert stilles Auth-Versagen in detached Worktrees
- entkoppelt Betriebsdiagnose von lokalem Worktree-Layout

## 8) Empfohlener Closeout-Satz fuer die Session

Keine produktive Mutation ausgefuehrt; Preflight, Doctor, Mutation-Guard und Smoke-Plan gehaertet; verbleibender Hauptblocker ist der Netzwerkzugriff im aktuellen Ausfuehrungskontext; naechster Lauf in netzwerkfaehigem Kontext mit erneuter Verify-Kette; Secret-Fallback im Worktree-Setup beibehalten.

## 9) Kurzfazit

Der wichtigste Fortschritt dieses Slices ist nicht die Live-Reparatur des Writers, sondern die Entkopplung von echten Betriebsproblemen und lokalem Tooling-Rauschen.

Der `RAILWAY_TOKEN` wird jetzt korrekt gefunden, die Railway-Skripte sind deutlich robuster, und der verbleibende Hauptblocker ist klar eingegrenzt:
- ausgehender Netzwerkzugriff im aktuellen Ausfuehrungskontext
- weiterhin fuehrende `PORT_OR_HEALTHCHECK`-Hypothese

Die naechste sinnvolle Fortsetzung ist deshalb nicht sofort Mutation, sondern:
**netzwerkfaehiger Kontext -> Verify-Kette erneut -> Port-Hypothese live schliessen -> erst dann kleine Mutation**.
