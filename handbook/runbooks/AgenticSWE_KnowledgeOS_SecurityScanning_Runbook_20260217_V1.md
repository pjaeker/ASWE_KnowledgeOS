---
project: AgenticSWE_KnowledgeOS
doc_type: runbook
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Betrieb (run) der lokalen Security-Scans (incremental/full) + VS Code Task Setup, als reproduzierbarer Ablaufplan."
tags:
  - layer/handbook
  - artifact/runbook
  - topic/actionability
  - topic/pipeline
  - topic/gate
  - topic/stop-condition
  - topic/dry-run
  - topic/secrets
  - risk/risk-class/b
  - risk/stop-ask
---

# Runbook: Security-Scanning lokal betreiben (OptionB)

## Zweck
Dieses Runbook (runbook, Betriebsablauf) beschreibt **den Betrieb** der Security-Scans, die KI-generierten Code/Skripte vor dem Ausführen und vor dem Commit prüfen:
- **Incremental Scan** (incremental, nur Änderungen) für schnelles Feedback.
- **Full Scan** (full, gesamtes Repo) als „vor Merge“/„vor Release“ Check.
- VS Code Tasks (tasks, Befehle) für 1‑Shortcut Nutzung.
- Optional: Git Hook (git hook, Commit‑Trigger) für staged‑Prüfung.

> Hinweis: Das ist **kein Antivirus**. Es ist ein lokales Prüfsystem aus Gates (gate, harte Prüfung) + etablierten Scannern (z. B. Secret-/Dependency-Scanner).

---

## Inputs (SSOT)
- Repo-Dateien (SSOT (single source of truth, Repo-Wahrheit))
- Scripts:
  - `scripts/optionb/scan_incremental.sh`
  - `scripts/optionb/scan_all.sh`
  - `scripts/optionb/run_gates.sh`
  - `scripts/optionb/preflight.sh`
- VS Code Config:
  - `.vscode/tasks.json`
  - `.vscode/settings.json`
  - `.vscode/extensions.json`
- Optional:
  - `.githooks/pre-commit`
  - `scripts/optionb/install_git_hooks.sh`

## Outputs
- Terminal-Log (lokal)
- Exit Codes (0 = ok, !=0 = fail)
- Optional: pre-commit blockiert Commit

---

## Stop-&-Ask / Risiko
- **Stop-&-Ask (stop-&-ask, Freigabe nötig)** gilt für:
  - `.github/workflows/**` (CI Aktivierung)
  - Deploy/Hosting
  - Secrets (secret, Geheimnis) im Repo

Dieses Runbook ändert **keine** `.github/workflows/**` und schreibt **keine** Secrets ins Repo.

---

## Tooling (einmalig) – Sollzustand
### Muss
- `git`
- `bash` (z. B. Git Bash unter Windows)
- `python`
- `node` + `npm` (für `apps/portal` Audit, falls vorhanden)

### Scanner (empfohlen)
- `gitleaks` (secret scan, Token-Fund)
- `osv-scanner` (dependency scan, CVE-Fund)
- `trivy` (filesystem scan, Vulns/Misconfig)
- `pip-audit` (python deps, CVE-Fund)
- `shellcheck` (bash lint, Script-Hygiene)
- `bandit` (python security lint, Muster)

---

## Run: Schnellbetrieb (Standard)

### 1) Preflight
```bash
bash scripts/optionb/preflight.sh
```

**Stop-Condition (stop-condition, Abbruchregel):**
- Preflight rot → Tooling installieren/reparieren, dann erneut.

### 2) Incremental Scan (default)
**Scope `changed`** = staged + worktree + new.
```bash
bash scripts/optionb/scan_incremental.sh --scope changed
```

Andere Scopes:
```bash
bash scripts/optionb/scan_incremental.sh --scope staged
bash scripts/optionb/scan_incremental.sh --scope new
bash scripts/optionb/scan_incremental.sh --scope worktree
```

### 3) Full Scan (vor PR/Merge)
```bash
bash scripts/optionb/scan_all.sh
```

---

## Run: VS Code (1 Shortcut)

### 1) Task ausführen
- Shortcut: **Ctrl+Shift+B** (Default Build Task)
- Erwartung: Task „Security: Scan Changed (OptionB)“ läuft.

### 2) Wenn du Full Scan willst
- VS Code → „Tasks: Run Task“ → „Security: Scan All (OptionB)“

---

## Optional: Git Hook aktivieren (staged scan)
### 1) Install
```bash
bash scripts/optionb/install_git_hooks.sh
```

### 2) Verhalten
- Bei `git commit` läuft automatisch:
  - `bash scripts/optionb/scan_incremental.sh --scope staged`

### 3) Skip (nur im Notfall)
```bash
SKIP_OPTIONB_SCAN=1 git commit -m "…"
```

---

## Dry-Run / Diagnose

### Dry Run (zeigt nur Kommandos)
```bash
OPTIONB_DRY_RUN=1 bash scripts/optionb/scan_incremental.sh --scope changed
```

### Strict vs Best-Effort
Default ist strict (fehlende Tools = fail).
Best-effort:
```bash
OPTIONB_SCAN_STRICT=0 bash scripts/optionb/scan_incremental.sh --scope changed
```

### Trivy in incremental einschalten (langsamer)
```bash
OPTIONB_SCAN_TRIVY=1 bash scripts/optionb/scan_incremental.sh --scope changed
```

---

## Incident Playbook (wenn etwas Verdächtiges gefunden wird)
1) **Nicht ausführen** (kein `npm install`, kein Script Run).
2) Diff ansehen:
   ```bash
   git diff
   git diff --cached
   ```
3) Secrets rotieren (rotate, Schlüsselwechsel), falls betroffen.
4) Quarantäne:
   - Branch/PR schließen
   - ggf. separaten Fix-PR erstellen (klein)

---

## Definition of Done (DoD)
- [ ] Incremental Scan grün für „changed“
- [ ] Full Scan grün vor PR/Merge
- [ ] Optional: Git Hook installiert und funktioniert
- [ ] VS Code Task läuft per Shortcut
