---
project: AgenticSWE_KnowledgeOS
doc_type: how-to
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Schritt-für-Schritt Implementierung der lokalen Security-Scans (incremental/full) + VS Code Tasks + Git Hooks, mit minimaler Click-&-Type Arbeit."
tags:
  - layer/handbook
  - artifact/how-to
  - topic/actionability
  - topic/pipeline
  - topic/gate
  - topic/dry-run
  - topic/secrets
  - topic/stop-condition
  - risk/risk-class/b
  - risk/stop-ask
---

# How-to: Security-Scanning implementieren (incremental + full)

## Ziel
Du willst KI-generierten Code/Skripte prüfen, bevor du sie ausführst oder committest:
- Secrets (secret, Token) sollen erkannt werden.
- Dependencies (dependency, Abhängigkeit) sollen auf bekannte CVEs geprüft werden.
- Verdächtige Muster sollen auffallen (z. B. riskante Bash/Python Patterns).
- Du willst 1 Shortcut in VS Code und optional einen Git Hook.

> Prompt-Injection (prompt injection, Eingabe-Angriff) ist primär ein **Agent-/Tool-Risiko**. Abwehr: Workspace Trust (workspace trust, Repo-Vertrauen) + Restricted Mode (restricted mode, eingeschränkt) + Least Privilege (least privilege, Minimalrechte) + PR-only Writes.

---

## Inputs
- Repo mit Git
- Ordner/Dateien aus diesem Paket:
  - `.vscode/*`
  - `scripts/optionb/*`
  - optional `.githooks/*`

## Output
- Lokale Scan-Pipeline, per Shortcut ausführbar
- Optional: Commit wird blockiert, wenn staged‑Scan rot ist

---

## Schritt 1 — Dateien in Repo-Struktur kopieren
Kopiere die folgenden Pfade **1:1** in dein Repo (Ordnerstruktur beibehalten):

### VS Code
- `.vscode/extensions.json`
- `.vscode/settings.json`
- `.vscode/tasks.json`

### Scripts
- `scripts/optionb/scan_incremental.sh`
- `scripts/optionb/scan_all.sh`
- `scripts/optionb/run_gates.sh`
- `scripts/optionb/preflight.sh`
- `scripts/optionb/install_security_tools_windows.ps1`
- optional:
  - `.githooks/pre-commit`
  - `scripts/optionb/install_git_hooks.sh`

---

## Schritt 2 — Tooling installieren (Windows, minimal tippen)
### 2.1 Git Bash bereitstellen
- Installiere „Git for Windows“ (liefert Git Bash).
- Öffne im Repo-Root: Rechtsklick → „Git Bash Here“.

### 2.2 Scanner installieren (automatisiert)
In PowerShell im Repo-Root:
```powershell
powershell -ExecutionPolicy Bypass -File scripts/optionb/install_security_tools_windows.ps1
```

> Best-effort: das Script nutzt `winget`, falls vorhanden.

---

## Schritt 3 — Unabhängige Verifikation der Scripts (bevor du ihnen vertraust)
### 3.1 Statische Prüfung (ohne Ausführen)
```bash
shellcheck scripts/optionb/*.sh
```

### 3.2 Dry-Run (zeigt nur Kommandos)
```bash
OPTIONB_DRY_RUN=1 bash scripts/optionb/scan_incremental.sh --scope changed
```

### 3.3 „Red-Flag“ Suche (optional)
```bash
rg -n "curl|wget|rm -rf|Invoke-WebRequest|Start-Process|sudo" scripts/optionb
```

**Stop-Condition:**
- Wenn du etwas Unerwartetes siehst → nicht ausführen, erst Review/Fix-PR.

---

## Schritt 4 — VS Code konfigurieren (minimal klick)
### 4.1 Repo öffnen
- Öffne das Repo in VS Code.
- Wenn VS Code fragt: **Workspace Trust** nur geben, wenn du es geprüft hast.

### 4.2 Extensions installieren (Empfehlungen)
VS Code zeigt die Empfehlungen aus `.vscode/extensions.json`.

Minimal:
- ShellCheck, Bandit, Gitleaks (IDE Feedback)
Optional all-in-one:
- Snyk, Trivy, SonarQube for IDE

---

## Schritt 5 — Scans ausführen (1 Shortcut)

### 5.1 Incremental Scan (default)
- Shortcut: **Ctrl+Shift+B**
- Erwartung: „Security: Scan Changed (OptionB)“ läuft.

### 5.2 Full Scan (vor PR/Merge)
- VS Code → „Tasks: Run Task“ → „Security: Scan All (OptionB)“
oder Terminal:
```bash
bash scripts/optionb/scan_all.sh
```

---

## Schritt 6 — Optional: Git Hook aktivieren (staged scan)
### 6.1 Install
```bash
bash scripts/optionb/install_git_hooks.sh
```

### 6.2 Test
1. Ändere eine Datei.
2. `git add -A`
3. Commit:
   ```bash
   git commit -m "test"
   ```
Erwartung: staged scan läuft vor dem Commit.

---

## Schritt 7 — Grenzen & gute Praxis
- Diese Pipeline erkennt viel, aber nicht „jede Malware“.
- Besonders kritisch ist Supply-Chain (supply chain, Abhängigkeiten):
  - `npm install` kann Install-Scripts ausführen.
- Grundregel: **erst scannen, dann ausführen**.

---

## Definition of Done (DoD)
- [ ] `bash scripts/optionb/scan_incremental.sh --scope changed` ist grün
- [ ] `bash scripts/optionb/scan_all.sh` ist grün (vor PR/Merge)
- [ ] VS Code Shortcut läuft (Ctrl+Shift+B)
- [ ] Optional: Git Hook blockiert commits bei rot
