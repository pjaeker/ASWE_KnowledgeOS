---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-19
status: draft
audience: [human, llm]
intent: "Knappe technische Verdichtung der echten ChatGPT-Custom-App-E2E am produktiven MCP-writer, inklusive DCR-vs-static-Befund, Scope-Verhalten und verbleibender Restthemen."
tags:
  - layer/handbook
  - artifact/reference
  - topic/chatgpt
  - topic/mcp-writer
  - topic/oauth
  - topic/railway
  - topic/evidence
---

# ChatGPT Custom App E2E Live Validation

## 1) Zweck

Dieses Dokument haelt die neue Live-Wahrheit nach dem echten ChatGPT-Custom-App-Lauf fest.
Der Fokus liegt auf:

- produktiver ChatGPT-UI-Abnahme
- DCR-vs-static-Client-Befund
- Read- und erster Write-Scope-Evidence
- klar abgegrenzten Restthemen

## 2) Ausgangslage vor dem Lauf

- Der produktive MCP-writer war server-seitig bereits gruen fuer Discovery, DCR, Authorization Code, Token und MCP-Read-Smoke.
- Das offene Risiko lag nicht mehr im Basis-OAuth-Server, sondern in der echten ChatGPT-UI-Interop und in restart-stabilem Bootstrap-Verhalten.
- PR-6 haertete den Bootstrap auf signierte, restart-stabile Client- und Code-Artefakte sowie auf eine stabile Signaturidentitaet per `GITHUB_PRIVATE_KEY`-Fallback oder spaeter dediziertem `OAUTH_JWT_PRIVATE_KEY`.

## 3) Was im echten ChatGPT-Kontext live bestaetigt wurde

- Die read-only Bootstrap-Inspection in Production war fuer den aktuellen Callback `https://chatgpt.com/connector/oauth/ijq0caHmR1iW` gruen:
  - `authorizeBootstrapReady = true`
  - `stableSigningReady = true`
  - `restartSafeBootstrapReady = true`
- Server-seitig liefen die host-neutralen Probes fuer den aktuellen Callback und fuer den Legacy-Callback weiterhin gruen.
- Im ChatGPT-UI erschien fuer den statischen OAuth-Client-Pfad ein separates Approve-Fenster.
- Nach diesem Approve-Schritt wurde die App erfolgreich verbunden.
- Anschliessende Lesebefehle ueber den verbundenen Connector funktionierten.

## 4) Wichtige Produktbefunde

### A) DCR im Server gruen, DCR im ChatGPT-UI weiter nicht fuehrend

- ChatGPT meldete im UI weiterhin:
  - `The server asweknowledgeos-production.up.railway.app doesn't support RFC 7591 Dynamic Client Registration`
- Gleichzeitig blieb der server-seitige DCR-Pfad host-neutral gruen.
- Der produktive Erfolgsweg ist damit aktuell nicht "ChatGPT-UI-DCR muss funktionieren", sondern:
  - statischen/public Client verwenden
  - exakten Redirect beibehalten
  - Approval-Fenster durchlaufen

### B) Statischer ChatGPT-Client-Pfad ist live tragfaehig

- Der per Probe gewonnene public `client_id` konnte im statischen ChatGPT-OAuth-Client-Pfad verwendet werden.
- Die Verbindung blieb nicht an verlorenem In-Memory-Client-State haengen.
- Der PR-6-Bootstrap erreichte damit das Ziel, den statischen/pre-registrierten Produktionspfad tragfaehig zu machen.

### C) Read ist live bestaetigt

- Nach erfolgreicher Verbindung liefen Lesebefehle im ChatGPT-Kontext.
- Der E2E-Gap "ChatGPT verbindet sich, aber MCP-Reads schlagen fehl" ist damit geschlossen.

### D) `mcp.write` wird im ChatGPT-UI ueber die normalen Connector-Scopes wirksam

- Ein isolierter Versuch, `mcp.write` nur unter OIDC-/OpenID-bezogenen Scope-Einstellungen zu hinterlegen, war nicht ausreichend.
- Nachdem `mcp.write` in den normalen ChatGPT-Scopes aktiviert wurde, funktionierte die Branch-Erstellung.
- Praktischer Schluss:
  - `openid` gehoert in die OIDC-/Identity-Schiene
  - `mcp.read` und `mcp.write` muessen fuer echte Tool-Rechte im relevanten Connector-Scope-Pfad angefordert werden

## 5) Aktueller Stand nach dem Lauf

- ChatGPT-App-Verbindung: gruen
- ChatGPT-Read-Pfad: gruen
- ChatGPT-Write-Scope fuer `create_branch`: gruen
- Exakter Redirect-Contract: unveraendert strikt
- Restart-stabiler Bootstrap: produktiv tragfaehig

Kurz gesagt:

- die echte ChatGPT-Custom-App ist nicht mehr nur server-seitig, sondern auch im echten UI-Kontext verbunden
- der statische Client-Pfad ist jetzt praktisch verifiziert
- der verbleibende Rest betrifft nicht mehr Verbindung oder Branch-Erstellung, sondern die noch nicht geuebten spaeteren Write-Schritte

## 6) Verbleibende Restthemen

- `commit_files` und `open_pr` wurden im echten ChatGPT-UI noch nicht live durchgeprueft.
- Die Scope-Ergonomie im ChatGPT-UI ist noch nicht ideal dokumentiert:
  - `mcp.write` im normalen Scope-Pfad funktioniert
  - der OIDC-Bereich allein ist dafuer nicht der wirksame Ort
- `OAUTH_JWT_PRIVATE_KEY` bleibt weiterhin leer:
  - funktional ist das durch den `GITHUB_PRIVATE_KEY`-Fallback nicht mehr der Stabilitaetsblocker
  - als spaeteres Decoupling-/Hardening-Thema bleibt es sinnvoll
- `NODE_ENV` fehlt in Production weiterhin als Hygiene-Thema

## 7) Praktischer Schluss fuer die naechste Session

- DCR im UI nicht mehr als Produktivvoraussetzung behandeln
- den statischen/public Client-Pfad als robusten Standardpfad betrachten
- den naechsten Thin Slice auf den echten Write-/PR-Smoke legen
- die Scope-/Operator-Doku fuer ChatGPT knapp nachziehen, damit `mcp.write` kuenftig nicht erneut ueber den falschen UI-Bereich gesucht wird
