---
project: "ASWE Knowledge-OS"
doc_type: how-to
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich teste Portal-/Keystatic-nahe Endpunkte per REST Client (.http) – ohne Secrets im Repo – und dokumentiere Ergebnisse als Evidence im PR."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/secrets
  - topic/dry-run
  - topic/actionability
---

# How-to: REST Client für Portal API – ohne Secrets (No-Secrets)

## Begriff-Quickstart
- **REST Client:** VS Code Extension, die `.http`/`.rest` Dateien ausführt (EN: REST Client).
- **Environment Variables:** Variablen je Umgebung (local/staging/prod) in VS Code Settings (EN: environment variables).
- **Dotenv:** `.env` Datei für lokale Variablen (EN: dotenv).
- **Dry run:** Probelauf ohne “echte” Schreibwirkung (EN: dry run).

## Ziel
- Du willst Portal-Endpunkte wie `/api/chat` (read-only) und `/api/pr` (write-via-PR) testen,
- ohne Tokens/Keys zu committen,
- und ohne dich ständig zwischen Tools zu verlieren.

## Nicht-Ziel
- Kein produktiver Write ohne PR-Workflow.
- Kein Hardcoding von Credentials im Repo.

## Voraussetzungen
- REST Client Extension installiert.
- DotENV Extension installiert.
- Lokale `.env` existiert (nicht im Repo committen).
- Optional: API-Endpunkt ist lokal erreichbar (z. B. `http://localhost:3000`).

---

## Sicherheitsregeln (hart)
1. **Keine Secrets im Repo**: keine Tokens/Keys in `.http`, `.md`, Issues oder PR-Body.
2. `.env` bleibt lokal und ist in `.gitignore`.
3. Repo enthält nur `.env.example` ohne Werte.
4. Wenn du doch einen Token im Verlauf siehst: **Stop** → PR schließen → Token rotieren.

---

## Setup: Datei-Pattern (team-friendly)
Empfohlen:
- `requests/portal.example.http` (commitbar, ohne Secrets)
- `requests/portal.local.http` (nicht committen; enthält nur lokale Convenience, aber weiterhin ohne Secrets)
- `.env` lokal (nicht committen)
- `.env.example` im Repo (nur Platzhalter)

> Wenn Option-B-Allowlist `requests/**` nicht erlaubt, lege Example Requests im Handbook ab (Codeblock) und nutze sie lokal.

---

## REST Client Variablen – die 2 sicheren Wege

### Weg 1: File Variables (in der `.http` Datei)
Gut für “nicht geheime” Werte, die pro Datei gelten.
Beispiel:
```http
@host = localhost:3000
@baseUrl = http://{{host}}
```

### Weg 2: Process/ dotenv Variables (lokal)
REST Client unterstützt System-Variablen wie `{{$processEnv VAR}}` und `{{$dotenv VAR}}`.

Beispiele:
- `{{$processEnv PORTAL_TOKEN}}` (aus OS env)
- `{{$dotenv PORTAL_TOKEN}}` (aus `.env` im gleichen Ordner wie die `.http` Datei)

**Wichtig:** Tokens bleiben lokal in `.env`, nicht im Repo.

---

## Example Requests (ohne Secrets)

### 1) Read-only: Chat Endpoint (Beispiel)
```http
@host = localhost:3000
@baseUrl = http://{{host}}

###
# Chat read-only (Beispiel)
GET {{baseUrl}}/api/chat HTTP/1.1
Accept: application/json
```

**Erwarteter Output**
- HTTP 200 mit JSON (wenn Endpoint existiert)
- oder HTTP 401/403, falls Auth nötig ist (dann: Auth-Setup separat, ohne Secrets im Repo)

---

### 2) Write-via-PR: PR-Create (Dry-run Pattern)
Wenn dein Portal einen “dry run” unterstützt, nutze ihn (falls nicht, simuliere dry-run durch „no-op“ payload oder staging).

```http
@host = localhost:3000
@baseUrl = http://{{host}}
@token = {{$dotenv PORTAL_TOKEN}}

###
# PR create (write-via-PR) – Beispielpayload, KEINE Secrets im Repo
POST {{baseUrl}}/api/pr HTTP/1.1
Content-Type: application/json
Authorization: Bearer {{token}}

{
  "title": "docs(portal): add REST Client how-to",
  "branch": "docs/portal-restclient-howto",
  "files": [
    {
      "path": "handbook/portal/AgenticSWE_RESTClient_PortalAPI_NoSecrets_HowTo_20260220_V1.md",
      "content_b64": "<BASE64_OF_FILE_CONTENT>"
    }
  ],
  "dry_run": true
}
```

**Warum `content_b64`?**  
Base64 (base64: text-to-bytes encoding) ist diff-freundlich für API-Transport; du kannst es lokal erzeugen, aber committe niemals Tokens.

**Erwarteter Output**
- Dry-run: Response enthält „would create PR“ (oder ähnliche Metadaten)
- Real: Response enthält PR-URL/ID (aber nur, wenn write erlaubt ist)

---

### 3) Webhook-Testing (Pattern, ohne echte Signaturen)
Du willst Webhooks debuggen, ohne produktive Signaturen zu fälschen.

```http
@host = localhost:3000
@baseUrl = http://{{host}}

###
# Webhook replay (ohne Signatur) – sollte 4xx liefern, wenn Signatur Pflicht ist
POST {{baseUrl}}/api/webhooks/github HTTP/1.1
Content-Type: application/json
X-GitHub-Event: pull_request

{
  "action": "opened",
  "pull_request": {
    "number": 123,
    "title": "Test PR"
  }
}
```

**Erwarteter Output**
- 401/403/400 → OK, wenn Signaturen/Schema strikt sind
- 200 → nur, wenn Endpoint bewusst unsigniert für local dev ist (dann dokumentieren!)

---

## Evidence: Wie dokumentiere ich das im PR?
Im PR-Report (siehe Write-via-PR How-to):
- Welche Requests liefen?
- Welche Responses (Status Codes)?
- Wurden Secrets sauber lokal gehalten?
- Falls Fehler: welche 4xx/5xx und was war die Ursache?

---

## Troubleshooting (Top 5)
1. **`{{$dotenv ...}}` liefert leer** → `.env` liegt nicht im gleichen Ordner; Pfad prüfen.
2. **SSL/HTTPS Probleme** → zuerst HTTP lokal; TLS später (separates Runbook).
3. **401/403** → Auth notwendig; Token lokal setzen, nicht committen; Policy beachten.
4. **Große Responses** → REST Client Response handling nutzen; Output kürzen.
5. **Request Variables vs File Variables** → erst file vars stabil, dann chaining (fortgeschritten).

## Agent Prompt Snippet
> Erstelle eine `requests/portal.example.http` mit 3 Requests (GET /api/chat, POST /api/pr dry_run, POST webhook replay) – ohne Secrets.  
> Nutze REST Client File Variables + `{{$dotenv ...}}` als optionales Pattern.  
> Ergänze im Handbook Hinweise zu Evidence im PR-Report.
