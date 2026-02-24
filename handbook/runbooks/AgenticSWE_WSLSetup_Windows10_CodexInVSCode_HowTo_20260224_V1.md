---
project: AgenticSWE_KnowledgeOS
doc_type: howto
version: V1
date: 2026-02-24
status: draft
audience: [human]
intent: "WSL 2 auf Windows 10 installieren und VS Code + Codex so konfigurieren, dass Codex in WSL läuft (bessere Sandbox-Semantik/Performance)."
tags:
  - layer/handbook
  - artifact/howto
  - topic/windows
  - topic/wsl
  - topic/vscode
  - topic/codex
  - topic/gates
---

# WSL 2 auf Windows 10 einrichten für VS Code + Codex (How-to)

## Ziel
- WSL 2 (WSL2, Linux-Subsystem) installieren
- Repo in WSL nutzen (bessere Performance als `/mnt/<drive>`)
- VS Code via Remote–WSL (Remote–WSL, Remote-Dev) öffnen
- Codex in WSL laufen lassen (Linux-Sandbox-Semantik; Agent-Modus auf Windows benötigt WSL)

## Scope
- Windows 10 (x64) + Ubuntu (Default)
- VS Code + Remote–WSL
- Codex VS-Code-Extension (OpenAI)

## Voraussetzungen (Prereqs)
- Admin-Rechte (für Installation)
- Virtualisierung im BIOS/UEFI aktiviert (Intel VT-x/AMD-V)
- Internetzugang (für Install/Updates)
- Windows 10 Version/Build:
  - Für `wsl --install`: Windows 10 Version 2004+ (Build 19041+)  
  - Für WSL 2 grundsätzlich (x64): mind. Version 1903 (Build 18362.1049+)

---

## Entscheidungsregel: Repo in WSL klonen?
**Empfohlen:** Ja, dauerhaft in WSL klonen (`~/repos/...`).  
**Warum:** Filewatcher/IO/Permissions sind typischerweise glatter und schneller als Arbeit über `/mnt/g/...`.

**Schnelltest (ohne Umzug):** Du kannst zunächst über `/mnt/<drive>/...` arbeiten, um WSL zu testen.

---

## Schritt 1 — Windows-Version prüfen
1. `Win + R` → `winver` → Version/Build notieren.
2. Alternativ PowerShell:
   ```powershell
   systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
   ```

**DoD:** Du weißt, ob `wsl --install` verfügbar ist (Build 19041+).

---

## Schritt 2 — WSL installieren (Standardweg, Build 19041+)

1. PowerShell **als Administrator** öffnen.
2. Ausführen:
   ```powershell
   wsl --install
   ```
3. Reboot, falls gefordert.
4. Nach dem Neustart startet i. d. R. Ubuntu beim ersten Mal automatisch → Benutzername + Passwort setzen.

**Verifikation:**
```powershell
wsl -l -v
wsl --status
```

**DoD:** Eine Distro (z. B. Ubuntu) ist installiert und läuft als Version 2.

---

## Schritt 2b — WSL 2 manuell installieren (wenn `wsl --install` nicht geht)

> Nur nutzen, wenn Schritt 2 nicht funktioniert.

1. Windows Features aktivieren (PowerShell als Admin):
   ```powershell
   dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
   ```
2. Neustarten.
3. WSL 2 Kernel Update installieren (MS-Doku „manual install“).
4. WSL 2 als Default:
   ```powershell
   wsl --set-default-version 2
   ```
5. Ubuntu aus Microsoft Store installieren.
6. Verifizieren:
   ```powershell
   wsl -l -v
   ```

**DoD:** Ubuntu ist installiert und läuft als WSL 2.

---

## Schritt 3 — Ubuntu in WSL vorbereiten (Basics)
WSL-Terminal öffnen:
- Startmenü → „Ubuntu“
- oder PowerShell: `wsl`

In Ubuntu:
```bash
sudo apt update
sudo apt -y upgrade
sudo apt -y install git ca-certificates
```

**DoD:** `git --version` funktioniert.

---

## Schritt 4 — Repo in WSL klonen (empfohlen)
In Ubuntu:
```bash
mkdir -p ~/repos
cd ~/repos
git clone https://github.com/pjaeker/ASWE_KnowledgeOS.git
cd ASWE_KnowledgeOS
```

**DoD:** `ls` zeigt Repo-Inhalte in `~/repos/ASWE_KnowledgeOS`.

> Wenn du stattdessen zuerst „Schnelltest“ willst: navigiere zu `/mnt/g/Program\ Files\ \(x86\)/GitHub/Repositories/ASWE_KnowledgeOS` – Performance kann dort schlechter sein.

---

## Schritt 5 — VS Code + Remote–WSL einrichten
1. VS Code unter Windows installieren (nicht in WSL).
2. Extension installieren: **Remote – WSL** (`ms-vscode-remote.remote-wsl`).
3. Repo in WSL öffnen:
   - Option A: In Ubuntu im Repo-Ordner:
     ```bash
     code .
     ```
     (VS Code installiert dabei ggf. VS Code Server in WSL.)
   - Option B: VS Code → Command Palette → `WSL: Open Folder…` → `~/repos/ASWE_KnowledgeOS`

**DoD:** Unten links in VS Code steht „WSL: Ubuntu…“ und du siehst Linux-Pfade (`/home/...`).

---

## Schritt 6 — Codex in WSL ausführen (VS Code Setting)
In VS Code (Windows oder WSL-Window):
- Settings öffnen → suche nach:
  - `chatgpt.runCodexInWindowsSubsystemForLinux`
- Setze auf **true** (führt i. d. R. zu einem VS Code Reload).

Alternativ als JSON in `settings.json`:
```json
{
  "chatgpt.runCodexInWindowsSubsystemForLinux": true
}
```

**DoD:** Codex nutzt WSL, wenn verfügbar (Linux-Sandbox-Semantik für Commands/Approvals/Filesystem).

---

## Schritt 7 — Codex-Konfiguration in WSL spiegeln
Wichtig: `~/.codex/config.toml` ist in WSL **separat** von Windows.

In Ubuntu:
```bash
mkdir -p ~/.codex
nano ~/.codex/config.toml
```

Empfohlene Minimalwerte (Beispiel):
```toml
model = "gpt-5.3-codex"
model_reasoning_effort = "xhigh"

approval_policy = "never"
sandbox_mode = "workspace-write"

web_search = "disabled"
```

**DoD:** In WSL existiert `~/.codex/config.toml` und entspricht deiner gewünschten Policy.

---

## Schritt 8 — Smoke Tests (kurz)
In VS Code (WSL) Terminal:
```bash
pwd
git status --short
python --version
```

Codex-Testprompt (im Codex Chat):
- „Run `git status --short` and summarize changes.“

**DoD:** Codex arbeitet ohne ständige Approvals im Workspace (je nach approval_policy) und ohne Netzwerk.

---

## Troubleshooting (häufige Probleme)
- **`wsl` command not found / `wsl --install` nicht verfügbar:** Windows ist zu alt → nutze Schritt 2b (manual).
- **WSL 2 läuft nicht / VM-Fehler:** Virtualisierung im BIOS aktivieren; Windows Features „VirtualMachinePlatform“ aktiv.
- **VS Code `code .` geht nicht:** Nutze „WSL: Open Folder…“ als Alternative.
- **Codex Login/Redirect Probleme in WSL:** Wenn Auth nicht sauber klappt, einmal in einem „lokalen“ VS Code Window anmelden und dann erneut in WSL öffnen.

---

## Rollback (wenn du zurück willst)
- VS Code Setting:
  - `"chatgpt.runCodexInWindowsSubsystemForLinux": false`
- Repo wieder in Windows verwenden (GitHub Desktop / normaler VS Code)
- Optional Distro entfernen:
  ```powershell
  wsl -l
  wsl --unregister <DistroName>
  ```

---

## Evidence (für PR-Reports)
- `wsl -l -v` Output (zeigt Version 2)
- VS Code Statusbar zeigt „WSL: …“
- `git status --short` im WSL-Terminal

---

## Quellen (kurz)
- Microsoft Learn: WSL Install / Manual Install
- VS Code Docs: Developing in WSL / Remote–WSL
- OpenAI Docs: Codex IDE Settings (`chatgpt.runCodexInWindowsSubsystemForLinux`)
