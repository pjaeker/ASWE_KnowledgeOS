---
project: AgenticSWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-03
status: draft
audience:
  - human
  - llm
intent: "Nachschlageblatt: Welche Tool- und Extension-Versionen müssen versioniert werden, in welchem Schema, und wie wird das in Option B als Evidence genutzt."
tags:
  - layer/handbook
  - artifact/reference
  - topic/governance
  - topic/gate
  - topic/findability
  - topic/consistency
  - topic/run-id
---

# Reference: Tooling & Extensions Versionierung (Evidence für Write-via-PR)

## Scope

- Normativ (must):
  - Ein **ToolingSnapshot** muss die lokal installierten **Tool-Versionen** und **VS Code Extensions inkl. Version** erfassen.
  - Snapshot ist **maschinenlesbar** (YAML oder JSON).
  - Snapshot kann **keine Secrets** enthalten (z. B. Tokens/Keys).
- Informativ (nice):
  - Hash/Digest über den Snapshot (für PR-Report).
  - Optional: Minimaler „Delta“-Block zum letzten Snapshot.

## Dateikonvention

- Zielpfad (empfohlen): `meta/state/tooling/AgenticSWE_KnowledgeOS_ToolingSnapshot_YYYYMMDD_Vx.yml`
- Versionsregel: höchste `Vx`, Tie-Break: neuestes `YYYYMMDD`.

## Spezifikation (Schema)

| Key | Typ | Pflicht | Default | Beispiel | Bedeutung |
|---|---|---:|---|---|---|
| snapshot_id | string | ✅ | — | `tooling-20260303-V1` | Eindeutige Snapshot-ID |
| date | string | ✅ | — | `2026-03-03` | Snapshot-Datum |
| host.os | string | ✅ | — | `Windows 11` / `Ubuntu (WSL)` | OS/Environment |
| host.arch | string | ✅ | — | `x86_64` | CPU Architektur |
| vscode.version | string | ✅ | — | `1.87.0` | VS Code Version |
| vscode.extensions[] | list | ✅ | — | `{id, version}` | Installierte Extensions inkl. Version |
| repo.path | string | ✅ | — | `.../ASWE_KnowledgeOS` | Lokaler Repo-Pfad |
| git.version | string | ✅ | — | `2.44.0` | Git Version |
| gh.version | string | ◑ | `NONE` | `2.45.0` | GitHub CLI (falls genutzt) |
| node.version | string | ◑ | `NONE` | `20.11.0` | Node (falls Gates via npm) |
| npm.version | string | ◑ | `NONE` | `10.2.0` | npm (falls genutzt) |
| python.version | string | ✅ | — | `3.11.8` | Python für Gate-Scripts |
| python.packages_digest | string | ◑ | `NONE` | `sha256:...` | Optionaler Digest statt Voll-`pip freeze` |
| codex.config | object | ◑ | `NONE` | `{sandbox_mode, approval_policy}` | Relevante Codex-Policy, ohne Secrets |
| notes[] | list | ◑ | `[]` | — | z. B. „npm registry restricted“ |

## Beispiel (Minimal, YAML)

```yaml
snapshot_id: tooling-20260303-V1
date: 2026-03-03
host:
  os: "Windows 11 + Ubuntu (WSL)"
  arch: "x86_64"
repo:
  path: "g:/Program Files (x86)/GitHub/Repositories/ASWE_KnowledgeOS"
vscode:
  version: "TBD"
  extensions:
    - id: SonarSource.sonarlint-vscode
      version: "TBD"
    - id: snyk-security.snyk-vulnerability-scanner
      version: "TBD"
python:
  version: "3.11.x"
git:
  version: "TBD"
codex:
  config:
    sandbox_mode: "workspace-write"
    approval_policy: "never"
notes:
  - "Fill TBD from local commands; no secrets."
```

## Referenz: Repo-Empfehlungen (Extensions)

Das Repo empfiehlt aktuell (Workspace recommendations):

- `SonarSource.sonarlint-vscode`
- `snyk-security.snyk-vulnerability-scanner`
- `AquaSecurityOfficial.trivy-vulnerability-scanner`
- `timonwong.shellcheck`
- `pycqa.bandit-pycqa`
- `Foxholenl.Gitleaks`

## Fehlerbilder (kurz)

- `extension version missing` → VS Code CLI nicht verfügbar → Output aus UI/Export nachtragen.
- `pip freeze too big` → nur Digest + die 5 wichtigsten Pakete aufnehmen.
- `contains secrets` → Snapshot verwerfen, Secrets rotieren, neu erstellen.

## See also

- Repo-State-Snapshot Template (Section „Tooling & Editor“)
- Write-via-PR HowTos (PR-Report Evidence Block)
