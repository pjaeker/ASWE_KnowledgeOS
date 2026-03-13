---
project: AgenticSWE_KnowledgeOS
doc_type: handoff
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Strukturiertes Resume-Sidecar fuer den naechsten Codex-Thread zum aktuellen Railway-OAuth-Smoke-Problem nach bereits erfolgter Reparatur des frueheren OAUTH_JWT_PRIVATE_KEY-Deploy-Crashs."
tags:
  - layer/blackboard
  - artifact/handoff
  - topic/codex
  - topic/mcp
  - topic/oauth
  - topic/railway
  - topic/smoke
  - topic/evidence
---

# NextChat Handoff - MCP Writer Railway Smoke (Post-Key-Fix)

## 1) Kurzfassung

Der fruehere Railway-Boot-Crash durch einen ungueltigen oder falsch formatierten `OAUTH_JWT_PRIVATE_KEY` ist nach Nutzerangabe bereits repariert: Die Variable ist in Railway leer, und der Service wurde danach erfolgreich neu deployed.

Der aktuelle Blocker ist deshalb **nicht mehr primaer der alte Deploy-Crash**, sondern der laufende `smoke_oauth.ps1`-Pfad selbst: Unter `Set-StrictMode -Version Latest` konnte das Script bei unerwarteten Response-Formen mit einer PowerShell-Exception abbrechen, statt einen sauberen Probe-Fail zu materialisieren.

Wichtig: Im Repo liegen derzeit nur die **historischen** 502-/Key-Crash-Evidence-Dateien aus dem frueheren Lauf. Frische Artefakte des post-fix Smoke-Laufs wurden bisher noch nicht in dieses Repo geschrieben.

## 2) Historischer Befund vs. aktueller Stand

### Historisch / bereits eingeordnet

- Artefakt `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-164524/*` zeigt fuer den damaligen Lauf einen `502` bereits auf `GET /healthz`.
- Log `tools/mcp-writer/logs/logs.1773415707449.json` zeigt fuer den damaligen Deploy einen Boot-Crash in `createSigningKeyMaterial(...)` beim Parsen von `OAUTH_JWT_PRIVATE_KEY`.
- Dieser Befund bleibt als **alte Evidence** erhalten, ist aber **nicht mehr die primaere aktuelle Root-Cause**, solange keine neuen Logs das erneut bestaetigen.

### Aktuell / offener Punkt

- Laut aktuellem Nutzerstand ist `OAUTH_JWT_PRIVATE_KEY` bereits geleert und der Dienst danach erfolgreich redeployed.
- Das offene Problem ist nun der aktuelle Lauf von `tools/mcp-writer/scripts/railway/smoke_oauth.ps1`.
- Ohne neue eingecheckte Smoke-Artefakte oder frische Railway-Logs ist die belastbarste Repo-Aussage aktuell:
  - der alte Key-Crash ist historisch,
  - der akute Diagnosepfad muss jetzt ueber einen **frischen Smoke-Lauf mit sauberer Artefakterzeugung** gehen.

## 3) Relevante Code- und Evidence-Anker

Lesereihenfolge fuer den naechsten Thread:
1. `AGENTS.md`
2. `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260312_V1.md`
3. `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260312_V1.md`
4. `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
5. dieses Handoff

Direkt relevante Stellen:
- Railway-Smoke-Script: `tools/mcp-writer/scripts/railway/smoke_oauth.ps1`
- aehnlich fragiler Vorlaeufer: `tools/mcp-writer/scripts/dev/pr1_transport_discovery_smoke.ps1`
- Health-Route im Writer: `tools/mcp-writer/src/server.js`
- Deploy-/Smoke-Hinweise: `tools/mcp-writer/README.md`

Historische Evidence:
- `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-164524/01-healthz.status.txt`
- `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-164524/01-healthz.headers.txt`
- `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/20260313-164524/01-healthz.body.txt`
- `tools/mcp-writer/logs/logs.1773415707449.json`

## 4) Aktualisierte technische Bewertung

Der zentrale Script-Risikopunkt war bzw. ist:

- `smoke_oauth.ps1` fuehrte Assertions in `Invoke-Probe` direkt aus.
- Gleichzeitig laeuft das Script unter `Set-StrictMode -Version Latest`.
- Sobald eine Assertion auf ein fehlendes JSON-Feld wie `$json.ok`, `$json.authorization_servers`, `$json.issuer`, `$json.keys` oder aehnliches zugreift, endet der Lauf nicht mit einer strukturierten Diagnose, sondern mit einer PowerShell-Exception.
- Dasselbe Muster existierte auch in `pr1_transport_discovery_smoke.ps1`.

Folge:

- Ein fachlich nuetzlicher Negativbefund konnte als Script-Abbruch erscheinen.
- Dadurch wurden nur Teil-Artefakte geschrieben, und spaetere Probes liefen nicht mehr.

## 5) In diesem Thread bereits umgesetzte Repo-Reparatur

Die beiden Probe-Helfer wurden lokal gehaertet:

- `tools/mcp-writer/scripts/railway/smoke_oauth.ps1`
- `tools/mcp-writer/scripts/dev/pr1_transport_discovery_smoke.ps1`

Aenderung:

- Die Assertion-Ausfuehrung in `Invoke-Probe` laeuft jetzt in `try/catch`.
- Assertion-Fehler werden als Note `Assertion failed: ...` in das Probe-Ergebnis geschrieben.
- Das Script bricht dadurch bei fehlenden JSON-Feldern oder anderen Assertion-Ausnahmen nicht mehr sofort hart an genau dieser Stelle ab.

## 6) Aktualisierte Reparatur-Reihenfolge

1. Den frueheren `OAUTH_JWT_PRIVATE_KEY`-Crash zunaechst als **geschlossen/historisch** behandeln.
2. `smoke_oauth.ps1` mit dem gehaerteten Probe-Wrapper erneut gegen den aktuell deployten Railway-Endpunkt laufen lassen.
3. Den neuen Lauf vollstaendig sichern:
   - gesamtes Artefaktverzeichnis unter `tools/mcp-writer/scripts/railway/.artifacts/pr4-smoke/<timestamp>/`
   - falls vorhanden `summary.json`
   - Terminal-Fehlertext, falls der Lauf trotzdem noch abbricht
4. Erst **nach frischer Evidence** entscheiden:
   - falls `/healthz` jetzt gruen ist, Discovery-/OAuth-Antworten fachlich debuggen
   - falls `/healthz` erneut 5xx zeigt, frische Railway-Logs ziehen und nur diese auswerten
5. Root Directory, `PORT` oder Start Command nur dann erneut priorisieren, wenn neue Logs oder Responses darauf zeigen. Der alte Key-Crash allein reicht dafuer jetzt nicht mehr.

## 7) Konkrete naechste Ausfuehrung

Empfohlener naechster Lauf:

`pwsh ./tools/mcp-writer/scripts/railway/smoke_oauth.ps1 -BaseUrl https://YOUR-DOMAIN`

Optional danach:

`pwsh ./tools/mcp-writer/scripts/railway/smoke_oauth.ps1 -BaseUrl https://YOUR-DOMAIN -ProbeDcr`

Nach dem Lauf sofort pruefen:

- Wurde ein neues Verzeichnis unter `.artifacts/pr4-smoke/` erzeugt?
- Gibt es jetzt mehr als nur `01-healthz.*`?
- Gibt es ein `summary.json`?
- Enthalten die Notes fachliche Befunde oder weiterhin `Assertion failed: ...`?

## 8) Was jetzt **nicht** mehr die beste erste These ist

- Nicht erneut automatisch annehmen, dass `OAUTH_JWT_PRIVATE_KEY` die aktuelle Root-Cause ist.
- Nicht mit dem alten 20260313-Log allein weiter auf Deploy-Boot debuggen.
- Nicht sofort Root-Directory-/`PORT`-/Start-Command-Probleme priorisieren, solange frische Smoke-Evidence fehlt.

## 9) Was bewusst noch nicht als Repo-Wahrheit hochgezogen wurde

- Kein Update an `RepoStatusUpdate`
- Kein Update am Workstream
- Kein Refresh von `ENTRY_LATEST`

Begruendung:

Der aktuelle Stand kombiniert:
- eine vom Nutzer bereits gemeldete manuelle Reparatur ausserhalb der hier eingecheckten Repo-Evidence,
- plus eine jetzt lokal gehaertete Smoke-Script-Diagnostik.

Bevor daraus neue operative Repo-Wahrheit wird, braucht es einen **frischen, dokumentierten post-fix Smoke-Lauf**.

## 10) Resume-Block fuer den naechsten Thread

> START SESSION
> Ziel: den **aktuellen** post-fix Railway-Smoke mit frischer Evidence erfassen und erst dann den verbleibenden fachlichen Fehler isolieren.
> Lies zuerst:
> `AGENTS.md`
> `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_20260312_V1.md`
> `meta/state/AgenticSWE_KnowledgeOS_RepoStatusUpdate_20260312_V1.md`
> `blackboard/workstreams/AgenticSWE_KnowledgeOS_WS_MCPWriter_Railway_20260309_V1.md`
> `blackboard/AgenticSWE_NextChat_Handoff_MCPWriterRailway_20260313_V1.md`
> Dann:
> 1. Gehaertetes `smoke_oauth.ps1` gegen den aktuellen Railway-Endpunkt ausfuehren.
> 2. Neues Artefaktverzeichnis und eventuelle `summary.json` sichern.
> 3. Nur mit **frischer** Evidence entscheiden, ob der Rest noch runtime-seitig oder schon nur protocol-/response-seitig ist.
> 4. Falls Responses fachlich abweichen, den kleinsten moeglichen Follow-up im Smoke oder Writer schneiden.
