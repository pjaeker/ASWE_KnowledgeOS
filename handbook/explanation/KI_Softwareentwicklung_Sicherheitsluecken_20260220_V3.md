# KI_Softwareentwicklung_Sicherheitsluecken_20260220_V2

Stand: 2026-02-20 (Europe/Berlin)  
Scope: Grundlagen zu sicherheitsrelevanten Programmierfehlern & Schwachstellen **plus** KI/Agenten/MCP (Model Context Protocol) mit **abstufbaren** Präventionen, Detektion und Fallbacks – mit dem Ziel, **Autonomie** möglichst wenig einzuschränken.

---

## 0) Executive Summary

In agentischer Softwareentwicklung (ASWE) wird **Text** (Issues, PRs, Webseiten, Docs) häufig zu **Aktion** (Tool Calls via MCP). Dadurch verlagert sich das Hauptrisiko von „nur Code hat Bugs“ zu:

> **Untrusted Content → Modell/Agent → Tool Invocation → Wirkung in der Welt**

Der effektivste Autonomie-schonende Schutz ist ein **Policy-Enforcer (policy enforcement, deterministische Regeln)** zwischen Agent und Tools:
- **L0**: frei (read-only)
- **L1**: automatisiert geschützt (write nur in sichere Zonen, Scans)
- **L2**: step-up (step-up auth, kurz höhere Rechte) + zusätzliche Checks
- **L3**: break-glass (break-glass, Notfallmodus) + manuelle Freigabe + Audit

---

## 1) Systemmodell: Trust-Boundaries & Text-to-Action Pipeline

### 1.1 Ein Diagrammtyp für dieses Dokument: **D2** (Diagram-as-Code, hochwertige SVGs)

Wir nutzen **D2** als einzigen Diagrammtyp (besser als Mermaid) und betten exportierte **SVGs** in Markdown ein.

**Warum D2:**
- bessere Default-Layouts + klarere Optik als Mermaid
- exportiert direkt zu SVG/PNG/PDF/PPTX (SVG ist Default) citeturn0search1  
- passt gut zu Git: Quellen (`*.d2`) sind reviewbar und diffbar

**Install/Export (Beispiel):**
```bash
# macOS / Linux (Homebrew)
brew install d2
# Export: SVG ist Default
d2 diagrams/aswe_trust_boundary_v1.d2 diagrams/aswe_trust_boundary_v1.svg
```
Homebrew-Installreferenz: citeturn0search2

### 1.2 Hauptdiagramm: Trust-Boundary Map (D2 Quelle)

**Datei:** `diagrams/aswe_trust_boundary_v1.d2`  
```d2
# ASWE Trust-Boundary Map (V1)
direction: right

untrusted: {
  label: "Untrusted Inputs"
  shape: rectangle
  style.fill: "#f6f6f6"
  "Repo Content\n(issues/PRs/README/logs)"
  "Web/Docs\n(retrieval)"
  "User Chat\n(direct prompts)"
}

agent: {
  label: "LLM/Agent"
  shape: rectangle
  style.fill: "#eef6ff"
  "Reasoning\n+ Planning"
}

policy: {
  label: "Policy Enforcer"
  shape: rectangle
  style.fill: "#eaffea"
  "Schema Validation"
  "Allowlist / Limits"
  "Risk Ladder L0-L3"
  "Audit Logs"
}

tools: {
  label: "Tools (MCP)"
  shape: rectangle
  style.fill: "#fff6e8"
  "Git Tool\n(read/write)"
  "Filesystem Tool\n(read/write)"
  "Browser/HTTP Tool\n(read)"
  "Cloud/API Tool\n(scoped)"
}

assets: {
  label: "Assets"
  shape: rectangle
  style.fill: "#ffeef2"
  "Repo"
  "Workspace"
  "CI/CD"
  "Cloud Resources"
  "Secrets Store"
}

untrusted -> agent: "context"
agent -> policy: "proposed actions"
policy -> tools: "allow (deterministic)"
policy -> agent: "deny + explanation"
tools -> assets: "effects"
```

**Einbettung in Markdown:**
```md
![ASWE Trust-Boundary Map](diagrams/aswe_trust_boundary_v1.svg)
```

---

## 1.3 Ausführungsvarianten: Codex **Cloud-Sandbox** vs. Codex **lokal** (CLI/IDE/App)

Diese Unterscheidung gehört ins Bedrohungsmodell (threat model, Bedrohungen skizzieren), weil sie direkt bestimmt, **welche Assets** (Secrets, Dateisystem, Netzwerk) der Agent überhaupt erreichen kann und welche Kontrollen Autonomie kosten.

### 1.3.1 Gemeinsame Defaults (beide Varianten)
- **Sandbox (sandbox, isolierte Umgebung):** Codex läuft standardmäßig in einer sandboxed Umgebung; **Netzwerkzugriff ist default deaktiviert** (lokal und in der Cloud). citeturn0search1  
- **Permission Prompts (permission, Freigabeabfrage):** Potenziell riskante Aktionen (z.B. Kommandos, erweiterte Rechte) werden typischerweise per Freigabe-Flow abgesichert; Sicherheitsregeln sind konfigurierbar. citeturn0search1turn0search2  

### 1.3.2 Cloud-Sandbox (Codex „Tasks“ in der Cloud)
**Was es ist:** Jede Aufgabe läuft in einer **isolierten Cloud-Sandbox**, in der dein Repository vorab verfügbar ist. citeturn0search3  
**Netzwerk:** Default aus; kann (je nach Setup) **auf vertrauenswürdige Domains** begrenzt werden. citeturn0search1  

**Stärken (Security, autonomy-friendly):**
- Kein direkter Zugriff auf dein lokales Dateisystem/SSH-Agent/Browser-Profile (reduziert „lokale Kollateralschäden“).
- Gute Basis für **L0/L1**: Analyse, Reports, Patch-Vorschläge.

**Risiko-Delta (wichtig):**
- Das schützenswerte Asset ist primär **Repo-Inhalt** (inkl. Konfig/Secrets, falls sie fälschlich im Repo/Logs landen).  
- Bei erlaubtem Netzwerk: Exfiltration (exfiltration, Daten raus) aus der Sandbox ist möglich → Domain-Allowlist + Logging wird kritisch.

### 1.3.3 Lokal (Codex CLI/IDE/App)
**Was es ist:** File Reads/Writes und Command Execution passieren **lokal** auf deinem Rechner; an das Modell gehen dein Prompt, „high-level context“ und optional Diff-Summaries. citeturn0search0  
**Netzwerk/Tools:** Default sandboxed; du kannst aber **Kommandos mit Vollzugriff freigeben** und optional Web-Search/MCP-Server-Verbindungen erlauben (höhere Capability, höhere Risiken). citeturn0search1turn0search0  

**Stärken (Security + Praxis):**
- Du behältst Kontrolle über Ausführung/Dateizugriffe und kannst strikt auf Repo-Ordner begrenzen.
- Ideal für „build-test-run“ (mit klaren Gates), weil Tests lokal laufen können.

**Risiko-Delta (wichtig):**
- Der Agent kann bei zu großzügigen Freigaben **lokale Secrets** (HOME, SSH, Browser-Creds, env vars) erreichen.
- MCP-Verbindungen und Webzugriff erweitern die Angriffsfläche (Prompt-Injection → Tool-Call → Wirkung).

### 1.3.4 Autonomie-schonende Control-Profile (empfohlen)

| Aktionstyp | Cloud-Sandbox Default | Lokal Default | Autonomie-schonendes Gate |
|---|---|---|---|
| Read-only Analyse/Report (L0) | erlaubt | erlaubt | Logging + Budget-Limits |
| Write in **safe zones** (L1) | erlaubt | erlaubt (Repo-mount only) | Pfad-Allowlist + CI-Scans |
| Änderungen an Kerncode/Deps/Workflows (L2) | erlaubt via PR | erlaubt via PR | Step-up + Required Checks |
| Netz/Wget/Websearch (L2→L3) | nur Domain-Allowlist | möglichst aus; sonst allowlist | Egress-Proxy + Redirect/IP-Block |
| MCP-Server Zugriff (L2→L3) | selten nötig; wenn dann allowlist | nur wenn nötig; stark begrenzen | Tool-Allowlist + keine Token-Passthrough |
| Secrets/Deploy/IAM (L3) | nicht autonom | nicht autonom | Break-glass + manuelle Freigabe + Audit |

### 1.3.5 „Quick Rules“ (2 Minuten, hohe Wirkung)
- **Cloud:** Kein Secret im Repo/Logs; Netzwerk nur allowlisted; untrusted Inhalte nie als Instruktion behandeln; Audit-Logs an.  
- **Lokal:** Codex idealerweise in einem **isolierten Workspace** (z.B. Container/VM), Repo als einziges Mount; kein Zugriff auf `~/.ssh`, keine Browser-Profile; Netzwerk default aus; nur PR-Flow für Writes.


## 2) Asset-Klassen (was wir schützen) & Threat Actors (wer greift an)

### 2.1 Asset-Klassen (data classification, Datenwert)
1) **Secrets**: API Keys, OAuth Tokens, SSH Keys, Signing Keys  
2) **Write-Power**: Repo-Schreibrechte, Workflow-Dateien, Release-Tags  
3) **Runtime-Power**: CI Runner, Deploy Credentials, Cloud IAM  
4) **Daten**: PII (PII, personenbezogene Daten), Kundendaten, interne Notizen  
5) **Normative Wissensbasis**: Glossar/Taxonomie/ADR (steuert Entscheidungen langfristig)

### 2.2 Threat Actors (vereinfachtes Modell)
- Opportunistischer Angreifer (random internet)
- Projekt-spezifischer Angreifer (zielt auf dein Repo/Workflow)
- Supply-Chain Angreifer (Dependencies, Actions, Images, MCP tools)
- Insider/Compromised Account (Token/Session kompromittiert)

---

## 3) Risiko-Katalog (Top 10) als **Risk Cards** (Prevention + Detection + Fallback)

> Legende der Autonomie-Stufen:  
> **L0** frei, **L1** auto-guarded, **L2** step-up, **L3** break-glass

### R1 — Indirekte Prompt-Injection über Repo/Web-Inhalte
**Attack Chain:** Untrusted Text → Agent interpretiert als Instruktion → Tool Call → Exfil/Manipulation  
**Impact:** Datenabfluss, bösartige PRs, Workflow-Manipulation  
**Prevention (L0–L3):**
- L0: Untrusted-Markierung (untrusted, als Daten labeln)
- L1: Schema-basierte Tool Calls (kein free-text execution)
- L2: step-up für write außerhalb safe zones
- L3: keine Secrets/Deploy ohne Freigabe
**Detection:** Log: ungewöhnliche Tool-Sequenzen, read von Secret-Pfaden, neue network targets  
**Fallback:** Kill Switch → Safe Mode (read-only) + Token rotation

### R2 — Überprivilegierte Tools / fehlendes Least Privilege
**Attack Chain:** Agent hat zu breite Rechte → Fehltrigger/Injection → irreversibler Schaden  
**Prevention:** Capability-Matrix; scopes minimieren; write-token kurzlebig (TTL)  
**Detection:** Policy logs: denied/allowed writes; ungewöhnliche Pfade  
**Fallback:** sofortige Scope-Reduktion + revoke tokens + branch protection erhöhen

### R3 — Secret-Exfiltration via Logs/PRs/Tool-Responses
**Prevention:** Secret-Broker (nie Secrets in Prompt); Redaction in Logs/PR-Kommentaren  
**Detection:** Secret-Scanner in CI + runtime redaction alerts  
**Fallback:** rotate/revoke, audit scope, invalidate sessions

### R4 — Tool-Chaining (Git + FS + CI) → RCE/Overwrite
**Prevention:** Exec-Fence (exec getrennte Stufe); Sandbox Runner; write nur via PR flow  
**Detection:** CI events: neue workflows, neue executable bits, runner commands  
**Fallback:** disable workflows, quarantine runner images, rebuild from known-good

### R5 — MCP/Tool Supply-Chain (Rogue/Shadow Tool, manipulierte Images)
**Prevention:** allowlist + pinning; signierte Images/Artefakte; zentraler Tool-Registry  
**Detection:** tool identity mismatch, version drift, unknown endpoints  
**Fallback:** freeze tool registry, roll back to pinned versions

### R6 — SSRF / Egress-Missbrauch über Browser/HTTP Tools
**Prevention:** Egress-Proxy + Domain-Allowlist; private IP range block; redirect checks  
**Detection:** outbound to unusual hosts, metadata endpoints, high-rate requests  
**Fallback:** cut egress, rotate cloud creds, incident review

### R7 — CI/CD Workflow-Kompromittierung (Secrets in untrusted PRs)
**Prevention:** separate workflows: untrusted PRs ohne secrets; protected branches; required checks  
**Detection:** workflow file changes; unusual job permissions; new actions from unknown orgs  
**Fallback:** disable affected workflows, rotate secrets, audit recent runs

### R8 — Data/Knowledge Poisoning der Wissensbasis (Docs/Embeddings/Glossar)
**Prevention:** Provenance-Tags + „normative“ Quellen schützen; reviews für Glossar/Taxonomie  
**Detection:** drift in key definitions; regression failures in eval suite  
**Fallback:** restore previous versions, lock normative files, re-run evals

### R9 — Klassische App-Vulns durch Autogen-Code (Injection/AuthZ/SSRF)
**Prevention:** secure templates; SAST/SCA; code review + tests  
**Detection:** CI findings; security unit tests  
**Fallback:** revert patchset, hotfix branch, add regression tests

### R10 — Denial-of-Wallet / Agent Loops (Kosten/Last)
**Prevention:** budgets (tokens/tool calls/time); caching/dedupe; rate limits  
**Detection:** anomaly on cost metrics; repeated tool sequences  
**Fallback:** auto-abort with report; tighten budgets temporarily

---

## 4) Kontrollsystem: Autonomie-schonende Risiko-Leiter (L0–L3)

### 4.1 L0–L3 Definition (praxisnah)
- **L0 (frei):** read-only; lokale Berechnungen; Formatierung; Doku-Entwürfe
- **L1 (auto-guarded):** writes nur in safe zones (`docs/`, `sandbox_output/`), keine Secrets, kein Exec
- **L2 (step-up):** Kerncode/Dependencies/Workflows/Netzwerk außerhalb Allowlist → kurzlebiges write-token + extra checks
- **L3 (break-glass):** Secrets/IAM/Deploy/Migration/Prod → manuelle Freigabe + verpflichtender Audit-Report

### 4.2 Policy-Enforcer (Policy-as-Code)
Minimal-Policy (Konzept):
- Tool allowlist (welche Tools existieren)
- Pfad-Allowlist (wo geschrieben werden darf)
- Domain-Allowlist (wohin HTTP darf)
- Budget-Limits (tokens/calls/time)
- Stufen-Regeln (welche Aktion ist L0–L3)

---

## 5) Automatisierte Kontrollen (CI + Runtime)

### 5.1 CI-Gates (CI gates, Merge-Blocker)
- SAST (Code-Analyse)
- SCA (Dependency-Scan)
- Secret-Scanning
- Tests (Unit/Integration + Abuse Tests)
- Optional: container/IaC scan

### 5.2 Runtime/Observability (Observability, Sichtbarkeit)
- Audit logs: policy decisions + tool calls (mit Redaction)
- Alerts: ungewöhnliche Sequenzen, unknown tools, cost spikes
- Tamper-evident logs (tamper, Manipulation erkennbar)

---

## 6) Fallbacks & Incident Runbook (nach erfolgreichem Angriff)

### 6.1 Kill Switch → Safe Mode
**Trigger:** Verdacht auf Exfiltration, rogue tool, workflow compromise, cost runaway  
**Aktion:** Agent & Tools auf **read-only**, egress cut, CI pausen, tokens revoke/rotate

### 6.2 Containment (Ausbreitung stoppen)
- Branch rulesets hochziehen (force-push block, required reviews)
- Runner isolieren; snapshots ziehen
- Tool registry einfrieren; nur pinned versions zulassen

### 6.3 Eradication (Ursache entfernen)
- malicious commits revertieren
- dependencies/actions pinnen/tauschen
- policy & tests ergänzen (regression)

### 6.4 Recovery (Wiederherstellung)
- restore known-good
- re-run CI + eval suite
- post-incident hardening + Lessons Learned

### 6.5 Logging-Regeln (keine Secrets in Logs)
- niemals: access tokens, passwörter, keys, connection strings
- redaction/pseudonymization für IDs/PII  
OWASP Logging Cheat Sheet: citeturn0search0

---

## 7) Minimal-Checklisten

### 7.1 ASWE Security Baseline (kurz)
- [ ] Tool-Allowlist existiert
- [ ] L0–L3 Regeln definiert
- [ ] Safe zones für writes
- [ ] Egress Allowlist/Proxy für HTTP
- [ ] Secrets via Broker, nicht im Prompt
- [ ] CI: SAST+SCA+Secrets+Tests als Merge-Blocker
- [ ] Kill Switch dokumentiert & getestet
- [ ] Eval/Regression Suite gegen Prompt-Injection/Tool-Chaining

### 7.2 “Stop & Ask” Trigger (immer L3)
- Secrets lesen/rotieren
- Deploy/Migration
- IAM/Rollen/Org Settings
- Produktion/Prod-Daten verändern
- CI-Workflow-Änderungen mit elevated permissions

---

## 8) Mini-Glossar
- **Policy-Enforcer (policy enforcement, Regeln erzwingen):** deterministischer Gatekeeper zwischen Agent und Tools  
- **Capability (capability, Fähigkeit):** minimaler, begrenzter Tool-Befehl statt „Shell“  
- **Prompt-Injection (prompt injection, Anweisung rein):** untrusted Text als Instruktion missbraucht  
- **Tool-Chaining (tool chaining, Kettenangriff):** Kombination harmloser Tools wird gefährlich  
- **Kill Switch (kill switch, Not-Aus):** Sofort-Abschaltung auf sicheren Modus

---

## 9) Referenzen (kurz)
- D2 Exports/CLI (SVG Default): citeturn0search1  
- Homebrew Install d2: citeturn0search2  
- OWASP Logging Cheat Sheet: citeturn0search0  
