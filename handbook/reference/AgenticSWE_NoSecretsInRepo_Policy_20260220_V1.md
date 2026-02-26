---
project: "ASWE Knowledge-OS"
doc_type: policy
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich verhindere zuverlässig, dass Tokens/Keys/Secrets in Repo/PR/Issues/Logs landen, und habe einen klaren Notfallablauf."
tags:
  - layer/handbook
  - artifact/policy
  - topic/secrets
  - topic/governance
  - risk/risk-class/b
---

# Policy: No-Secrets-in-Repo (Option B)

## Begriff-Quickstart
- **Secret/Credential:** Zugangsdaten wie API-Key, Token, Private Key, Client Secret (EN: secret/credential).
- **Rotation:** Secret ersetzen/ungültig machen und neu ausstellen (EN: rotation).
- **Least privilege:** Minimal notwendige Rechte vergeben (EN: least privilege).

## Ziel
- Keine Secrets im Git-Verlauf, nicht im Repo, nicht in PRs, nicht in Issues, nicht in Logs.
- Lokale Entwicklung bleibt möglich (über `.env`, OS env, Secret Manager).
- Bei Vorfall: klare, schnelle Reaktion.

## Geltungsbereich
- Alle ASWE Knowledge-OS Repos und Subprojekte.
- Alle Artefakte: `.md`, `.http`, `.yml`, Code, Logs, Screenshots, CI-Outputs.

## Regeln (hart)
1. **Nie committen**: `.env`, private keys, tokens, passwords, credentials.
2. **Keine Secrets im Klartext** in:
   - Issues/PR-Bodies/Kommentare
   - Commit messages
   - Screenshots/Logs (auch Copy/Paste aus Terminal!)
3. **Example-only** im Repo:
   - `.env.example` mit Platzhaltern
   - `requests/*.example.http` ohne Secrets
4. **Auth-Headers** in Doku immer als Platzhalter:
   - `Authorization: Bearer {TOKEN}`
5. **Wenn unsicher:** behandle es als Secret.

---

## Pflicht-Mechaniken (minimal)

### 1) `.gitignore` (muss)
Mindestens:
```gitignore
.env
.env.*
*.pem
*.key
*.p12
*.pfx
```

### 2) `.env.example` (muss)
Beispiel:
```dotenv
# Lokal setzen, NICHT committen:
PORTAL_TOKEN=
OPENAI_API_KEY=
GITHUB_APP_PRIVATE_KEY_PATH=
```

### 3) REST Client Safe Pattern
- Committe `requests/portal.example.http` ohne Tokens
- Nutze lokal `{$dotenv PORTAL_TOKEN}` oder `{$processEnv PORTAL_TOKEN}`

---

## Quickscan (vor jedem PR)
Du darfst scannen, aber keine Secrets ausgeben.

Empfohlen:
```bash
git diff | grep -nE "(api_key|apikey|secret|token|bearer|authorization:)" || true
```
Wenn Treffer:
- Prüfe: Platzhalter oder echtes Secret?
- Echtes Secret: sofort entfernen, commit reset/ammend, und rotieren.

---

## Incident Response (wenn Secret geleakt wurde)
1. **Stop**: PR nicht mergen; wenn schon gemerged, sofort follow-up PR.
2. **Rotate**: Secret im Provider rotieren (OpenAI/GitHub/Keystatic/etc.).
3. **Invalidate**: Alte Tokens invalidieren.
4. **Purge**:
   - Falls im Git-Verlauf: history rewrite nur nach Freigabe (riskant).
   - Oft reicht: Secret rotieren + entfernen + commit fix.
5. **Audit**:
   - Prüfe, ob Logs/CI Artefakte betroffen sind.
6. **Learn**:
   - Root cause notieren (z. B. copy/paste aus config)
   - Guardrail verbessern (templates, hooks, scans)

> Hinweis: History rewrite ist riskant (Repo-Reorg) → Stop-&-Ask.

---

## Empfehlungen (nice-to-have)
- Pre-commit hooks (z. B. secret scanning) – optional, aber sehr wirksam.
- CI secret scan (Trivy secret scanner) – Stop-&-Ask, weil `.github/workflows/**`.

---

## Troubleshooting
1. “Ich brauche Token für lokale Tests” → `.env` lokal, `.env.example` im Repo.
2. “Agent hat Token in Text geschrieben” → sofort entfernen, rotation, PR schließen.
3. “REST Client braucht env vars teamweit” → nur nicht-sensitive shared vars; secrets bleiben lokal.
4. “Ich muss einen Private Key nutzen” → Pfad in `.env`, Key-Datei außerhalb des Repos.
5. “CI-Log enthält Secret” → rotate; dann Logs/Artifacts prüfen.

## Agent Prompt Snippet
> Prüfe meine Änderungen auf mögliche Secret-Leaks (nur patterns, nichts ausgeben).  
> Ersetze mögliche Secrets durch Platzhalter und füge Hinweise auf `.env`/`.env.example` ein.  
> Liefere außerdem einen PR-Report Abschnitt “No-secrets quickscan”.
