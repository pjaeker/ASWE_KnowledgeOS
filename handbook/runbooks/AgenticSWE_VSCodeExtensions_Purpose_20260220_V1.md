---
project: "ASWE Knowledge-OS"
doc_type: reference
version: "V1"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich habe ein Nachschlageblatt: Welche Extension nutze ich wann, welche Kernfeatures, welche Commands, und wie passt das in Option B."
tags:
  - layer/handbook
  - artifact/reference
  - topic/findability
  - topic/actionability
  - topic/consistency
---

# VS Code Extensions Cheatsheet – Portal/CMS Option B

## Leitidee
Extensions sind UX (user experience: Editor-Komfort).  
Agenten/MCP sind Orchestrierung (automation: Tool-Aktionen).  
Option B heißt: **write-via-PR + Gates + Stop-&-Ask**.

---

## Schnellwahl: “Welches Tool jetzt?”
- **Ich schreibe/editiere Doku** → Markdown All in One + markdownlint + cSpell
- **Ich brauche korrekte Tags/Frontmatter** → Front Matter + Taxonomie check
- **Ich will verstehen, warum etwas so ist** → GitLens (Blame/History) + Inspect
- **CI ist rot und ich will Logs** → GitHub Actions Extension (read-only) + YAML Validation
- **Ich teste API/Webhooks** → REST Client (+ DotENV für lokale env)
- **Ich habe Shell scripts** → ShellCheck
- **Ich will Security Signal** → Trivy/Snyk/Sonar (read-only), dann Fix-Loop

---

## 1) GitLens + GitLens Inspect
**Kernfeatures**
1. Blame/History: “Wer hat was warum geändert?”
2. Commit Graph: Kontext über Change Streams.
3. PR-Review-Assist: Changes schneller verstehen.

**Wann nutzen?**
- Wenn ein Agent einen Diff erzeugt hat und du ihn “auditieren” willst.
- Wenn ein Bug/Inkonsistenz auftaucht: blame → commit message → issue/PR.

**Option-B Fit**
- Perfekt: Unterstützt Review-Qualität ohne Schreibrechte.

**Agent-fähig?**
- Indirekt: Agent erklärt, du navigierst.
- Commands: Agent kann dich zu konkreten GitLens Views führen.

**Failure Modes**
- Performance in großen Repos → blame on-save deaktivieren/limitieren.

---

## 2) Front Matter (für Keystatic/Content)
**Kernfeatures**
1. Frontmatter Editor: Pflichtfelder/Listen konsistent.
2. Content Models/Types: Content-Struktur sichtbar.
3. Asset/Media Workflow: Bilder/Dateien sauber einbinden.

**Wann nutzen?**
- Neue Content-Datei anlegen oder Metadaten ändern.
- Check, ob Frontmatter Pflichtfelder erfüllt.

**Option-B Fit**
- Stärkt Governance: Frontmatter = machine-readable routing.

**Agent-fähig?**
- Agent generiert Frontmatter, du validierst UI.

**Failure Modes**
- Schema drift: Content model und Doc-Spec auseinander → TODO + Fix.

---

## 3) GitHub Actions Extension
**Kernfeatures**
1. Workflow Runs & Logs (lesen).
2. Fehlerstellen schneller finden (job/step).
3. Kontext für Fix-PRs.

**Wann nutzen?**
- Wenn ein PR rote Checks hat.
- Wenn du Reproduzierbarkeit brauchst.

**Option-B Fit**
- Read-only perfekt. Änderungen an `.github/workflows/**` sind Stop-&-Ask.

**Agent-fähig?**
- Mit MCP sehr gut (Logs/Checks programmatisch).
- Ohne MCP: du öffnest Run-Logs, Agent interpretiert.

**Failure Modes**
- Workspace Trust nötig, sonst eingeschränkt.

---

## 4) YAML (Red Hat)
**Kernfeatures**
1. Schema Validation + Auto-complete.
2. Catch: Einrückung, Datentypen, Lists.
3. Besonders hilfreich bei Actions YAML und Frontmatter YAML.

**Wann nutzen?**
- Immer bei YAML – verhindert stille Syntaxfehler.

**Option-B Fit**
- Stabilisiert Gates.

**Agent-fähig?**
- Indirekt: Agent erzeugt YAML, Validation zeigt Fehler.

---

## 5) Markdown All in One
**Kernfeatures**
1. TOC generieren/aktualisieren.
2. Shortcuts: Formatting, Lists, Headings.
3. Navigation: Outline & Link-Hopping.

**Wann nutzen?**
- Beim Schreiben langer How-tos/Runbooks.

**Option-B Fit**
- Schafft Konsistenz, aber: TOC/Heading Style muss mit markdownlint Regeln harmonieren.

**Agent-fähig?**
- Agent kann TOC/Structure vorschlagen, du nutzt Commands.

---

## 6) markdownlint
**Kernfeatures**
1. Regeln für Markdown (Style/Struktur).
2. Quick Fix für viele Regeln.
3. Projektweite Konfig (Team-konsistent).

**Wann nutzen?**
- Immer vor PR.

**Option-B Fit**
- Gate: leicht automatisierbar, diff-freundlich.

**Agent-fähig?**
- Agent kann Fixes machen, du verifizierst in Problems Panel.

---

## 7) Code Spell Checker (cSpell)
**Kernfeatures**
1. Rechtschreibung in Code + Doku.
2. Projektwörterbuch (`cspell.json`).
3. False-Positive-Reduktion per Dictionaries/IgnorePaths.

**Wann nutzen?**
- Beim Schreiben von Dokumentation, Glossar, Policies.

**Option-B Fit**
- Schützt Terminologie (Glossar-konform).

**Agent-fähig?**
- Agent kann Wörterbuch pflegen (aber nur bewusst, nicht alles whitelisten).

---

## 8) EditorConfig
**Kernfeatures**
1. Konsistente EOL/Indent/Whitespace.
2. Reduziert Diff-Noise.
3. Funktioniert editorübergreifend.

**Wann nutzen?**
- Immer: “Set and forget”.

**Option-B Fit**
- Ideal für Review-Freundlichkeit.

---

## 9) DotENV
**Kernfeatures**
1. Syntax Highlighting für `.env`.
2. Lesbarkeit & Fehlerreduktion.
3. Ergänzt “no-secrets-in-repo”: lokal ok, repo nein.

**Wann nutzen?**
- Wenn REST Client / lokale Dev env Variablen braucht.

**Option-B Fit**
- Nur lokal, `.env` bleibt in `.gitignore`.

---

## 10) REST Client
**Kernfeatures**
1. `.http` Requests ausführen.
2. File variables & Request chaining (fortgeschritten).
3. Response viewer (formatting, large responses).

**Wann nutzen?**
- API Debugging, Webhook Replay, “smoke tests”.

**Option-B Fit**
- Super, wenn du Example Requests ohne Secrets committest.

**Agent-fähig?**
- Mit MCP oder erlaubten Commands kann Agent Requests orchestrieren.
- Ohne MCP: du klickst “Send Request”, Agent interpretiert Response.

---

## 11) ShellCheck
**Kernfeatures**
1. Bash Linting: quoting/word splitting, pipefail usw.
2. Quick Fixes.
3. Run modes: onType/onSave/manual.

**Wann nutzen?**
- Immer bei `scripts/*.sh`.

**Option-B Fit**
- Stabilisiert lokale Gates.

---

## 12) SonarQube / Snyk / Trivy (Security)
### Gemeinsam: typische Finding-Klassen
- **SAST:** Code-pattern Security Issues (EN: SAST)
- **SCA:** Dependencies/Lockfiles (EN: SCA)
- **IaC:** Terraform/K8s Misconfigs (EN: IaC)
- **Container:** Image/OS packages (EN: container)
- **Secrets:** Credential leaks (EN: secrets)

### Quick Guidance
- **Trivy:** stark für FS/IaC/Container/Secrets.
- **Snyk:** stark für Dependencies + teils Code/IaC.
- **SonarQube:** stark für Code Quality + Security hotspots.

**Option-B Fit**
- Preflight nur “Signal” (read-only). Vollintegration in CI ist Stop-&-Ask.

---

## “Agent-fähig?” Kurzmatrix
- **Sehr gut (mit MCP):** GitHub Actions Logs/Checks, PR/Issue flows, Security findings retrieval
- **Gut (ohne MCP):** markdownlint/cSpell fixes, doc generation, PR-report generation
- **Eher UX-only:** GitLens Blame/History, Front Matter UI workflows

---

## Verweise auf Runbooks
- End-to-End: Portal Option B Runbook
- Preflight Gates: Preflight Gates Runbook
- REST Client: REST Client No-Secrets How-to
- Agent-Steuerung: Write-via-PR How-to

