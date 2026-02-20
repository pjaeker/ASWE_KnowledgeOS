# KI_Softwareentwicklung_Sicherheitsluecken_20260220_V1

Stand: 2026-02-20 (Europe/Berlin)  
Ziel: Ein **Grundlagen-Dokument** zu sicherheitsrelevanten Programmierfehlern und Schwachstellen – plus ein **AI-/MCP-spezifischer** Abschnitt (Model Context Protocol, „Tool-Anbindung“ für KI-Agenten) mit präventiven, möglichst automatisierbaren Schutzmaßnahmen.

> Hinweis zur Quelle des Nutzer-Links: Der bereitgestellte share.google-Link ließ sich hier aus Sicherheits-/Redirect-Gründen nicht direkt öffnen. Ich habe deshalb allgemein gültige, primäre Referenzen (OWASP, NIST, MITRE/CWE, MCP-Security-Guides) genutzt.

---

## 1) Mentales Modell: Was ist eine „Schwachstelle“?

Eine Schwachstelle entsteht fast immer an einer **Vertrauensgrenze**:  
Untrusted Input (Eingaben aus Nutzer, Netzwerk, Dateien, Tools, KI) trifft auf eine **Macht** (Rechte, Tokens, Dateisystem, Datenbank, Cloud-API).

**Angreifer-Standardziele:**
- **Datenabfluss** (exfiltration, Daten raus)  
- **Manipulation** (tampering, Daten ändern)  
- **Rechteausweitung** (privilege escalation, mehr Rechte)  
- **Ausführung** (RCE, Code ausführen)  
- **Verfügbarkeit stören** (DoS, lahmlegen)

Als „Top-Karte“ für Kategorien eignen sich:
- OWASP Top 10 Web (Web-App-Risiken) citeturn2search4  
- MITRE CWE Top 25 (häufig + impact-stark) citeturn2search20turn2search5  
- OWASP Top 10 für LLM-Anwendungen (KI-spezifische Risiken) citeturn3view3  
- NIST SSDF (SSDF, Secure-SDLC-Praktiken) citeturn3view4  

---

## 2) Hauptklassen klassischer Programmierfehler (mit typischen Lücken)

### 2.1 Eingabe-/Parsing-Fehler: „Untrusted Input“ wird zu „Code“ oder „Query“
**a) Einschleusung (Injection, Code einschleusen)**  
Beispiele: SQL-Injection, Command Injection, Template Injection.  
Root Cause: unparametrisierte Queries / Shell-Aufrufe; fehlende Trennung zwischen Daten und Code.  
Erkennung/Automatisierung: statische Codeanalyse (SAST, Code prüfen), Semgrep/CodeQL-Regeln, Tests; DB-Logs.  
Prävention: Parameterbindung/Prepared Statements; keine Shell; allowlist-basierte Parser.  
Relevanz: CWE Top 25 enthält SQL-Injection (CWE-89) sehr weit oben. citeturn2search5

**b) Cross-Site-Scripting (XSS, Script im Browser)**  
Root Cause: ungefilterte Ausgabe in HTML/JS-Kontext.  
Prävention: Kontext-sensitives Escaping; Content Security Policy (CSP, Browser-Regeln).  
Relevanz: XSS (CWE-79) häufig #1 in CWE Top 25. citeturn2search5

**c) Unsichere Ausgabe-Weitergabe (insecure output handling, Output triggert Exploit)**  
Klassisch: HTML/JS; modern zusätzlich: „Output“ wird in CLI/SQL/Code evaluiert.  
(Die KI-Variante dazu steht in Abschnitt 3: OWASP LLM02.) citeturn3view3

---

### 2.2 Authentisierung/Autorisierung: „Wer bist du?“ vs. „Was darfst du?“
**a) Defekte Zugriffskontrolle (broken access control, falsche Rechte)**  
Beispiel: IDOR (Insecure Direct Object Reference), fehlende Server-side Checks.  
Prävention: deny-by-default; serverseitige Autorisierung in jeder Aktion; RBAC/ABAC-Policies. citeturn2search0

**b) Fehlende Autorisierung (missing authorization, Check fehlt)**  
Taucht in CWE Top 25 (z.B. Missing Authorization) sehr weit oben auf. citeturn2search20

**c) Sitzungsverwaltung (session management, Session sicher)**  
Risiken: Session-Fixation, Session-Hijacking, Replay.  
Prävention: kurze TTL; Rotation; Bindung an Context (z.B. Gerät); SameSite/HttpOnly/Secure Cookies.

---

### 2.3 Daten-/Datei-Zugriff: Pfade, Uploads, SSRF
**a) Pfad-Durchgriff (path traversal, Pfad ausbrechen)**  
Beispiel: `../../etc/passwd` in Download/Upload-Endpunkten.  
Prävention: canonicalization + allowlist; keine direkten Pfade aus Input. (CWE-22 ist Top 5.) citeturn2search5

**b) Unsicherer Datei-Upload (file upload, Schad-Datei)**  
Risiken: Webshell, Malware, Speicherüberlauf in Parsern, Content-Type Tricks.  
Prävention: separate Storage-Domain; virusscan; strict allowlist; kein direktes Ausführen; randomisierte Namen.

**c) Server-Side Request Forgery (SSRF, Server ruft intern)**  
Angreifer bringt Server/Client dazu, interne Ziele anzusprechen (z.B. Cloud-Metadata).  
Prävention: egress firewall/proxy; block private ranges; URL-Validation; Redirect-Checks. citeturn4view2

---

### 2.4 Kryptografie & Secrets: „Es ist verschlüsselt“ ist nicht genug
**a) Kryptofehler (cryptographic failures, falsches Crypto)**  
Typisch: kein TLS, falsche Modi, schlechte RNG, Key-Reuse, Keys im Repo. citeturn2search8  
Prävention: etablierte Libs; Key-Management; Secret-Scanner; Rotation.

**b) Geheimnis-Leaks (secret leakage, Token im Code)**  
Prävention/Automatisierung: Secret-Scanning in Git; pre-commit hooks; Vault/Secret Manager.

---

### 2.5 Speicher-/Typ-Sicherheit: C/C++-Klasse & „Unsafe“-Ecken
**a) Out-of-bounds (OOB, Speicher daneben)**  
Out-of-bounds Write (CWE-787) ist konstant extrem weit oben. citeturn2search5  
Prävention: sichere Sprachen; Sanitizer (ASan/UBSan, Laufzeit-Checks); Fuzzing (Fuzzing, Zufallstests).

**b) Use-after-free / Double free (UAF, freier Speicher)**  
Prävention: Ownership-Modelle; Memory-Safe Sprachen; Sanitizer; fuzzing.

---

### 2.6 Deserialisierung, Parser, „versteckte Programmlogik“
**a) Unsichere Deserialisierung (deserialization, Objekt laden)**  
Gefahr: Gadgets -> RCE; Daten werden zu Objekten mit Nebenwirkungen.  
Prävention: keine „native“ Deserialisierung untrusted; signierte Payloads; allowlist von Typen.

**b) Parser-Bugs (parser bugs, Format kaputt)**  
PDF/Images/Archivformate sind typische Angriffsflächen (Decompression Bombs, Integer Overflows).  
Prävention: Libraries updaten; Limits (Größe, Zeit); Sandbox.

---

### 2.7 Fehlkonfiguration & unsichere Defaults
Beispiele: offene Admin-Interfaces; Debug-Mode; CORS falsch; Directory Listing.  
Prävention: IaC-Scanner (IaC scanning, Infra prüfen); CIS Benchmarks; „secure by default“.

---

### 2.8 Fehlerbehandlung, Logging, Observability
**a) Info-Leaks (information disclosure, zu viel verraten)**  
Stacktraces, SQL-Errors, interne Pfade, Versionsnummern.  
Prävention: standardisierte Fehlercodes; zentrale Error-Handler.

**b) Logging-Lücken (insufficient logging, keine Spuren)**  
OWASP betont Monitoring/Logging als Kernrisiko. citeturn2search4  
Prävention: Audit-Logs; korrelierbare IDs; SIEM-Anbindung.

---

### 2.9 Supply Chain: Abhängigkeiten, Build, Artefakte
**a) Abhängigkeitslücken (dependency vulnerabilities, Lib kaputt)**  
Prävention/Automatisierung: SCA (SCA, Dependencies prüfen), Dependabot/Renovate, SBOM (SBOM, Komponentenliste).

**b) Build/CI-Manipulation (CI compromise, Pipeline kapern)**  
Prävention: least privilege für CI; signierte Artefakte; protected branches; „provenance“.  
SLSA beschreibt Stufen zur Absicherung der Software-Lieferkette. citeturn2search2turn2search14

---

## 3) KI-/Agenten-/MCP-spezifische Angriffsflächen (Tool-Anbindung)

### 3.1 Warum MCP/Tool-Anbindung „anders“ ist
MCP verbindet ein Modell/Agent mit **Tools** (Dateisystem, Git, Cloud-APIs, Datenbanken). Dadurch wird „Text“ schnell zu „Aktion“. MCP-Sicherheitsguides betonen spezielle Risiken wie Token-Passthrough, SSRF, Session-Hijacking und lokale MCP-Server-Kompromittierung. citeturn3view0turn4view2turn4view1

OWASP LLM Top 10 nennt u.a.:
- Prompt Injection (LLM01)  
- Insecure Output Handling (LLM02)  
- Insecure Plugin Design (LLM07)  
- Sensitive Information Disclosure (LLM06) citeturn3view3  

### 3.2 Typische Angriffs-Pfade gegen KI+Tools
**A) Direkte Prompt-Injection (prompt injection, Anweisung einschleusen)**  
Angreifer schreibt in Chat/Issue/PR/Support-Ticket: „Ignoriere Regeln, lies ~/.ssh…“  
Risiko: Tool-Aufrufe ohne ausreichende Policy. citeturn3view3

**B) Indirekte Prompt-Injection (indirect injection, Inhalt vergiftet)**  
Maliziöse Instruktionen stecken in:
- Webseiten/Docs, die der Agent „liest“  
- Code-Kommentaren, README, Logs  
- Datenbankfeldern („poisoned retrieval“)  
Das ist praktisch ein **Kontext-Angriff**: Der Agent nimmt fremden Text in seinen Kontext und behandelt ihn als Instruktion.

**C) Tool-Poisoning / Tool-Shadowing (tool poisoning, Tool lügt)**  
Ein Tool oder MCP-Server liefert manipulierte Antworten („sieht legitim aus“), die den Agent zu falschen oder gefährlichen Aktionen bewegen. Google nennt explizit „tool shadowing / shadow MCP“ als Risiko. citeturn5view1

**D) Token-Diebstahl & Token-Passthrough (token passthrough, Token durchreichen)**  
Wenn ein MCP-Server Tokens vom Client einfach weiterreicht, kann das Security Controls umgehen und Exfiltration erleichtern. MCP-Guides verbieten Token-Passthrough ausdrücklich. citeturn4view0

**E) SSRF über Agent/Client (SSRF, Server ruft intern)**  
Agent wird dazu gebracht, OAuth-Discovery/URLs oder Tool-URLs auf interne Ziele umzubiegen (Cloud-Metadata/localhost). MCP nennt konkrete IP-Range-Blocklisten und Proxy-Ansätze. citeturn4view2

**F) Tool-Chaining (tool chaining, Tools kombinieren)**  
Ein einzelnes Tool scheint „harmlos“, aber zusammen entsteht RCE/Manipulation.  
Beispiel: Bericht über Schwachstellen im Git-MCP-Server, die in Kombination mit Filesystem-Tooling zu Remote Code Execution / File Tampering führen konnten. citeturn3view5

**G) Lokaler MCP-Server als „lokale Malware“ (local MCP server, lokal gefährlich)**  
Lokale MCP-Server laufen auf deiner Maschine und können bei schlechter Isolation ein attraktives Ziel sein (maliziöser Startup-Command, DNS rebinding, localhost-Angriffe). citeturn4view1

---

## 4) Präventive Schutzstrategie: „Defense in Depth“ + Automatisierung

### 4.1 Architektur-Prinzipien (wirken am stärksten)
1) **Prinzip minimaler Rechte (least privilege, nur nötig)**  
   - Jeder Agent/Tool bekommt nur die minimal nötigen Rechte/Scopes.
2) **Explizite Trust-Boundaries (trust boundary, Grenze definieren)**  
   - „LLM ist untrusted“: Es darf *nicht* direkt privilegierte Operationen ausführen.
3) **Zentraler Policy-Enforcer (policy enforcement, Regeln erzwingen)**  
   - Für MCP/Tools: Proxy/Hub, der jede Tool-Invocation prüft (Allowlist, Limits, Logging).  
   Google empfiehlt eine zentrale MCP-Proxy-Architektur als Enforcement-Point. citeturn5view2
4) **Deny-by-default + Capabilities (capability-based, nur Fähigkeiten)**  
   - Tools als „Capabilities“: kleine, klar begrenzte Funktionen statt „Shell access“.

### 4.2 KI-spezifische „Guardrails“ (guardrails, Leitplanken)
**Input-Seite (Prompt/Context)**
- Kontext-Sanitizing: fremde Inhalte markieren („untrusted“) und **nie** als Instruktion behandeln.
- Trennung: „Daten-Kontext“ vs. „Instruktionen“ (separate Felder/Channels).
- Retrieval-Filter: Links/Docs aus untrusted Quellen nur read-only; keine auto-actions.

**Output-Seite (Output wird Aktion)**
- Output-Validation: Tool-Calls nur via Schema/Parser, nicht via „freie Text“-Interpretation. (OWASP LLM02) citeturn3view3  
- „Two-man rule“ (human-in-the-loop, Mensch bestätigt) für riskante Aktionen: Dateien schreiben, Secrets lesen, Deployments.

**Tool-Seite (MCP/Plugins)**
- Kein Token-Passthrough; strikte Audience/Claims-Validation. citeturn4view0  
- SSRF-Schutz: egress proxy, IP-Range blocking, Redirect-Validation. citeturn4view2  
- Session-Isolation: keine Sessions als Auth; sichere IDs; Bindung an User. citeturn4view1  
- Tool-Manifest-Härtung: keine „versteckten“ Admin-Tools; minimale Tool-Fläche. citeturn5view1  

### 4.3 Automatisierte SDLC-Schutzschicht (CI als Sicherheitsnetz)
Orientiere dich grob am NIST SSDF: Security in alle Phasen integrieren. citeturn3view4  

**Minimal-Stack (Solo-Dev, Open Source friendly):**
- SAST (SAST, Code prüfen): CodeQL oder Semgrep
- SCA (SCA, Dependencies prüfen): Dependabot/Renovate + `pip-audit`/`npm audit`
- Secret Scanning (secrets scanning, Schlüssel finden): gitleaks + GitHub secret scanning (falls verfügbar)
- Container/IaC: Trivy + Checkov
- Tests: Unit-/Integrationstests (unit/integration tests, Verhalten prüfen) + Fuzzing bei Parsers/Inputs
- Signierung: Artefakt-Signierung (artifact signing, Signatur prüfen) via Sigstore/cosign + Provenance (SLSA) citeturn2search2turn2search14

---

## 5) Konkrete „KI+MCP“-Bedrohungsmodelle (kurze Playbooks)

### Playbook 1: Prompt-Injection -> Tool Call -> Datenabfluss
**Vektor:** Chat/Issue enthält Instruktionen + Link auf „böses“ Dokument.  
**Kette:** Indirect injection → Agent ruft Filesystem/Git/DB → Exfiltration.  
**Stops:** untrusted-marking + policy gate + read-only tools + audit logs. citeturn3view3turn3view5  

### Playbook 2: Tool-Shadowing -> falsche Antworten -> gefährliche Aktionen
**Vektor:** Rogue MCP tool imitiert legitimes Tool.  
**Kette:** Shadow tool → manipulative Antwort → Agent löscht/ändert Ressourcen.  
**Stops:** Tool-Allowlist + Signing/Attestation + zentrale Proxy-Policy. citeturn5view1turn5view2  

### Playbook 3: Token-Passthrough -> Kontrolle umgangen
**Vektor:** MCP Server reicht Client-Token ungeprüft an API weiter.  
**Kette:** gestohlener Token + Proxy → Exfiltration, schlechte Auditability.  
**Stops:** Audience/Claims prüfen; kein Passthrough. citeturn4view0  

### Playbook 4: SSRF über OAuth/Tool-URLs
**Vektor:** bösartige Redirects/URLs, DNS-TOCTOU.  
**Stops:** IP-Blocklisten, Proxy, Redirect-Validation. citeturn4view2  

---

## 6) Praktische Baseline: „Präventiv & automatisiert“ in 7 Schritten

1) **Threat Model (threat modeling, Bedrohungen skizzieren)**: Welche Tools? Welche Daten? Welche Aktionen?  
2) **Tool-Minimierung (scope minimization, Fläche klein)**: nur nötige Tools, read-only wo möglich.  
3) **Zentrale Policy-Schicht (proxy, zentral prüfen)**: jede Tool-Invocation validieren, loggen, limitieren. citeturn5view2  
4) **Secrets raus aus Agent-Kontext**: keine Keys im Prompt; Secret Manager; kurze TTL; Rotation. citeturn2search8turn5view1  
5) **CI-Gates**: SAST+SCA+Secrets+Tests als Merge-Blocker. citeturn3view4  
6) **Runtime Guards**: rate limits, WAF, egress controls, audit logging. citeturn2search4turn5view2  
7) **Red Teaming (red teaming, gezielt angreifen)**: Prompt-Injection-Tests + Tool-Chaining-Szenarien (z.B. Git+Filesystem). citeturn3view5turn3view3  

---

## 7) Option A / B / C (Autonomie-Level)

### Option A (assistiert): Du nutzt dieses Dokument als Checkliste
**Inputs:** deine App-/Repo-Beschreibung + Tool-Liste (welche MCP-Server, welche Rechte)  
**Output:** priorisierte TODOs + „Top 10 Risiken in deinem Setup“  
**Runbook (runbook, Ablaufplan):**
1) Tools & Daten klassifizieren (read/write/admin)  
2) Für jedes Tool: erlaubte Aktionen als Schema definieren  
3) CI-Minimal-Stack aktivieren  
**Gates:** „No secrets in prompts“, „no token passthrough“, „read-only default“.

### Option B (automatisiert): CI-Blueprint + Policy-Proxy-Blueprint
**Inputs:** Repo-Stack (Node/Python/Go), Deployment-Ziel (local/cloud)  
**Output:** `.github/workflows/security.yml` + Tool-Policy (z.B. JSON) + Baseline-Doku  
**Runbook:**
1) SAST/SCA/Secret-Scan/Container-Scan in CI  
2) Blocker-Regeln (fail on high)  
3) Policy-Layer für Tool Calls (allowlist + limits + logging)  
**Gates:** „CI grün“, „Policy tests grün“, „Tool allowlist review“.

### Option C (Vollautonomie): Autopilot-Workflow (plan → ändern → prüfen → liefern)
**Scope:** Security-Baseline für ein konkretes Repo + MCP-Tooling  
**Stop-Conditions:**  
- Repo-/System-Reorg, Deploy/Migration, Secrets/Prod-Daten: **Stop & Ask** (Freigabe nötig)  
**Deliverable:** PR + Security-Report (Findings, Fixes, Residual Risk)  
**Gates:** SAST/SCA/Secret/Tests + manuelle Freigabe für riskante Änderungen.

---

## 8) Mini-Glossar (nur die wichtigsten Begriffe)
- **SAST** (SAST, Code prüfen): statische Sicherheitsanalyse des Quellcodes.  
- **SCA** (SCA, Dependencies prüfen): Analyse von Abhängigkeiten auf bekannte CVEs.  
- **SSRF** (SSRF, intern anfragen): Server wird zum internen Request gezwungen.  
- **RCE** (RCE, Code ausführen): Angreifer führt eigenen Code aus.  
- **SBOM** (SBOM, Komponentenliste): Maschinenlesbare Liste aller Software-Bausteine.  
- **SLSA** (SLSA, Lieferkette härten): Framework für sichere Build-/Release-Prozesse. citeturn2search2turn2search14  

---

## 9) Quellen (Auswahl)
- OWASP Top 10 Web 2021 citeturn2search4  
- OWASP Top 10 for LLM Applications (v1.1) citeturn3view3  
- NIST SP 800-218 (SSDF) citeturn3view4  
- MITRE CWE Top 25 (2024/2025 Archive) citeturn2search20turn2search5  
- MCP Security Best Practices (Token Passthrough, SSRF, Session Hijacking, Local MCP Compromise) citeturn4view0turn4view2turn4view1  
- Google Cloud: Secure remote MCP server via centralized proxy architecture citeturn5view2turn5view1  
- Beispiel Tool-Chaining-Risiko (Git MCP + Filesystem) citeturn3view5  
