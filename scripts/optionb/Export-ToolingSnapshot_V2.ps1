<#
.SYNOPSIS
  Exportiert einen maschinenlesbaren ToolingSnapshot (YAML) inkl. VS Code Extensions (id+version).

.DESCRIPTION
  Ziel: Evidence-Artefakt für Write-via-PR / Option B.
  - Keine Secrets werden erfasst (nur Versions-/Inventarinfos).
  - Output: meta/state/tooling/<Project>_ToolingSnapshot_YYYYMMDD_Vx.yml
  - Vx wird pro Datum automatisch inkrementiert (falls schon Snapshots existieren).

.ASSUMPTIONS
  - Script wird im Repo-Root ausgeführt (oder -RepoPath gesetzt).
  - VS Code CLI `code` ist verfügbar ODER kann über Standardpfade gefunden werden.
  - Versionierung des Scripts erfolgt über Git-Historie (Dateiname bleibt stabil).

.PARAMETER RepoPath
  Pfad zum Repo (Default: aktuelles Verzeichnis)

.PARAMETER Project
  Projektname im Dateinamen (Default: AgenticSWE_KnowledgeOS)

.PARAMETER IncludePipFreezeDigest
  Wenn gesetzt (Default), wird ein sha256 Digest über `pip freeze` berechnet (ohne Paketliste zu speichern).

.PARAMETER OutDir
  Zielordner relativ zum Repo (Default: meta/state/tooling)

.NOTES
  Script-Version: V2
  Diese Datei ist die zweite, parallel gefuehrte Version von Export-ToolingSnapshot.ps1.

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File .\Export-ToolingSnapshot_V2.ps1

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File .\Export-ToolingSnapshot_V2.ps1 -RepoPath "D:\Git\ASWE_KnowledgeOS" -Project "AgenticSWE_KnowledgeOS"
#>

[CmdletBinding()]
param(
  [Parameter(Mandatory=$false)][string]$RepoPath = (Get-Location).Path,
  [Parameter(Mandatory=$false)][string]$Project = "AgenticSWE_KnowledgeOS",
  [Parameter(Mandatory=$false)][switch]$IncludePipFreezeDigest = $true,
  [Parameter(Mandatory=$false)][string]$OutDir = "meta/state/tooling"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Note([string]$msg) {
  Write-Host ("[note] " + $msg)
}

function Try-Run([string]$cmd, [string[]]$args) {
  try {
    $p = Get-Command $cmd -ErrorAction Stop
    $out = & $p.Source @args 2>&1
    $exitCode = $LASTEXITCODE
    $text = ($out | Out-String).Trim()
    if ($exitCode -ne 0) {
      return @{ ok=$false; out=$text; path=$p.Source; exit=$exitCode }
    }
    return @{ ok=$true; out=$text; path=$p.Source; exit=$exitCode }
  } catch {
    return @{ ok=$false; out=""; path=""; exit=-1 }
  }
}

function Find-CodeCli() {
  $try = Try-Run "code" @("--version")
  if ($try.ok) { return "code" }

  $candidates = @(
    "$env:LOCALAPPDATA\Programs\Microsoft VS Code\bin\code.cmd",
    "$env:ProgramFiles\Microsoft VS Code\bin\code.cmd",
    "$env:ProgramFiles(x86)\Microsoft VS Code\bin\code.cmd"
  ) | Where-Object { $_ -and (Test-Path $_) }

  foreach ($c in $candidates) {
    try {
      $out = & $c --version 2>&1
      if ($LASTEXITCODE -eq 0 -and $out) { return $c }
    } catch {}
  }
  return $null
}

function Sha256-Hex([byte[]]$bytes) {
  $sha = [System.Security.Cryptography.SHA256]::Create()
  $hash = $sha.ComputeHash($bytes)
  return ($hash | ForEach-Object { $_.ToString("x2") }) -join ""
}

function Get-TodayStamp() {
  return (Get-Date).ToString("yyyyMMdd")
}

function Get-DateIso() {
  return (Get-Date).ToString("yyyy-MM-dd")
}

function Ensure-Dir([string]$path) {
  if (!(Test-Path $path)) { New-Item -ItemType Directory -Path $path -Force | Out-Null }
}

function Write-Utf8NoBomFile([string]$path, [string]$content) {
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($path, $content, $utf8NoBom)
}

function Assert-ProjectNameSafe([string]$project) {
  if ([string]::IsNullOrWhiteSpace($project)) {
    throw "Parameter -Project must not be empty."
  }

  # Keep filename and filter usage safe and predictable.
  if ($project -notmatch "^[A-Za-z0-9][A-Za-z0-9._-]{0,127}$") {
    throw "Parameter -Project allows only letters, numbers, dot, underscore and dash (max 128 chars)."
  }
}

function Assert-PathWithinRepo([string]$repoRoot, [string]$candidate, [string]$paramName) {
  $repoFull = [System.IO.Path]::GetFullPath($repoRoot)
  $candFull = [System.IO.Path]::GetFullPath($candidate)

  $repoPrefix = $repoFull
  $sep = [System.IO.Path]::DirectorySeparatorChar.ToString()
  if (!$repoPrefix.EndsWith($sep)) {
    $repoPrefix += $sep
  }

  $inside = $candFull.Equals($repoFull, [System.StringComparison]::OrdinalIgnoreCase) -or
            $candFull.StartsWith($repoPrefix, [System.StringComparison]::OrdinalIgnoreCase)
  if (!$inside) {
    throw ("Parameter {0} resolves outside repo root: {1}" -f $paramName, $candFull)
  }
}

function Resolve-RepoRelativePath([string]$repoRoot, [string]$relativePath, [string]$paramName) {
  if ([string]::IsNullOrWhiteSpace($relativePath)) {
    throw ("Parameter {0} must not be empty." -f $paramName)
  }
  if ([System.IO.Path]::IsPathRooted($relativePath)) {
    throw ("Parameter {0} must be a path relative to repo root." -f $paramName)
  }

  $joined = Join-Path $repoRoot $relativePath
  $full = [System.IO.Path]::GetFullPath($joined)
  Assert-PathWithinRepo $repoRoot $full $paramName
  return $full
}

function Redact-UrlCredentials([string]$url) {
  if ([string]::IsNullOrWhiteSpace($url)) { return $url }
  return ($url -replace '^(?<scheme>[a-zA-Z][a-zA-Z0-9+.-]*://)[^/@\s]+@', '${scheme}')
}

function Next-Version([string]$dir, [string]$project, [string]$yyyymmdd) {
  if (!(Test-Path $dir)) { return 1 }
  $pattern = "${project}_ToolingSnapshot_${yyyymmdd}_V*.yml"
  $files = Get-ChildItem -Path $dir -Filter $pattern -ErrorAction SilentlyContinue
  if (!$files) { return 1 }

  $maxV = 0
  foreach ($f in $files) {
    if ($f.Name -match "_V(\d+)\.yml$") {
      $v = [int]$Matches[1]
      if ($v -gt $maxV) { $maxV = $v }
    }
  }
  return ($maxV + 1)
}

# --- Resolve repo root / path ---
$repoAbs = [System.IO.Path]::GetFullPath((Resolve-Path $RepoPath).Path)

# Try to normalize to git root if available
$gitRoot = $null
$gitTry = Try-Run "git" @("-C", $repoAbs, "rev-parse", "--show-toplevel")
if ($gitTry.ok -and $gitTry.out) { $gitRoot = $gitTry.out.Trim() }
if ($gitRoot) { $repoAbs = [System.IO.Path]::GetFullPath($gitRoot) }

Assert-ProjectNameSafe $Project

$notes = New-Object System.Collections.Generic.List[string]

# Host info
$osCaption = $null
$osArch = $null
try {
  $os = Get-CimInstance Win32_OperatingSystem
  $osCaption = ($os.Caption + " (Build " + $os.BuildNumber + ")").Trim()
  $osArch = ($os.OSArchitecture).Trim()
} catch {
  $osCaption = "Windows (unknown)"
  $osArch = "unknown"
  $notes.Add("Host info via CIM not available.")
}

# VS Code + extensions
$codeCli = Find-CodeCli
$vscodeVersion = "NONE"
$vscodeCliPath = "NONE"
$extensions = @()

if ($codeCli) {
  $vscodeCliPath = $codeCli
  $verOut = & $codeCli --version 2>&1
  if ($LASTEXITCODE -eq 0) {
    $lines = ($verOut | Out-String).Split("`n") | ForEach-Object { $_.Trim() } | Where-Object { $_ }
    if ($lines.Length -ge 1) { $vscodeVersion = $lines[0] }
  }
  $extOut = & $codeCli --list-extensions --show-versions 2>&1
  if ($LASTEXITCODE -eq 0) {
    $extLines = ($extOut | Out-String).Split("`n") | ForEach-Object { $_.Trim() } | Where-Object { $_ }
    foreach ($l in $extLines) {
      # Typical format: publisher.extension@1.2.3
      if ($l -match "^(?<id>[^@]+)@(?<ver>.+)$") {
        $extensions += @{ id=$Matches["id"]; version=$Matches["ver"] }
      } else {
        # fallback
        $extensions += @{ id=$l; version="UNKNOWN" }
      }
    }
  } else {
    $notes.Add("VS Code extensions list failed (code --list-extensions).")
  }
} else {
  $notes.Add("VS Code CLI not found (code). Install VS Code or add its bin to PATH.")
}


# Extensions digest / truncation guard (keep snapshot small for PR gates)
$extTotal = $extensions.Count
$extTruncated = $false
$extMax = 200  # adjust if needed

$extLinesForDigest = @()
foreach ($ex in $extensions) { $extLinesForDigest += ("{0}@{1}" -f $ex.id, $ex.version) }
$extDigest = "NONE"
if ($extLinesForDigest.Count -gt 0) {
  $bytesExt = [System.Text.Encoding]::UTF8.GetBytes(($extLinesForDigest -join "`n"))
  $extDigest = "sha256:" + (Sha256-Hex $bytesExt)
}

if ($extTotal -gt $extMax) {
  $extTruncated = $true
  $notes.Add(("VS Code extensions truncated: {0} -> {1} (digest stored)." -f $extTotal, $extMax))
}

# Git
$gitVersion = "NONE"
$gitPath = "NONE"
$gitVer = Try-Run "git" @("--version")
if ($gitVer.ok) {
  $gitPath = $gitVer.path
  $gitVersion = ($gitVer.out -replace "^git version\s+", "").Trim()
} else {
  $notes.Add("git not found in PATH.")
}

# GitHub CLI
$ghVersion = "NONE"
$ghPath = "NONE"
$ghVer = Try-Run "gh" @("--version")
if ($ghVer.ok) {
  $ghPath = $ghVer.path
  # first line like: gh version 2.45.0 (2024-..)
  $first = $ghVer.out.Split("`n")[0].Trim()
  if ($first -match "gh version\s+([0-9]+\.[0-9]+\.[0-9]+)") { $ghVersion = $Matches[1] } else { $ghVersion = $first }
} else {
  $notes.Add("gh (GitHub CLI) not found (optional).")
}

# Node + npm
$nodeVersion = "NONE"
$nodePath = "NONE"
$nodeVer = Try-Run "node" @("--version")
if ($nodeVer.ok) {
  $nodePath = $nodeVer.path
  $nodeVersion = ($nodeVer.out.TrimStart("v")).Trim()
} else {
  $notes.Add("node not found (optional).")
}

$npmVersion = "NONE"
$npmPath = "NONE"
$npmVer = Try-Run "npm" @("--version")
if ($npmVer.ok) {
  $npmPath = $npmVer.path
  $npmVersion = $npmVer.out.Trim()
} else {
  $notes.Add("npm not found (optional).")
}

# Python
$pythonVersion = "NONE"
$pythonPath = "NONE"

$pyVer = Try-Run "python" @("--version")
if ($pyVer.ok) {
  $pythonPath = $pyVer.path
  $pythonVersion = ($pyVer.out -replace "^Python\s+", "").Trim()
} else {
  # fallback to py launcher (common on Windows)
  $pyLauncher = Try-Run "py" @("-3", "--version")
  if ($pyLauncher.ok) {
    $pythonPath = $pyLauncher.path
    $pythonVersion = ($pyLauncher.out -replace "^Python\s+", "").Trim()
    $notes.Add("python not found; using py -3.")
  } else {
    $notes.Add("python not found in PATH (and py launcher missing).")
  }
}

# Optional: digest over pip freeze (no package list persisted)
$pyPackagesDigest = "NONE"
if ($IncludePipFreezeDigest -and $pythonVersion -ne "NONE") {
  try {
    $pipOut = ""
    $pythonLeaf = [System.IO.Path]::GetFileName($pythonPath)
    if ($pythonLeaf -and ($pythonLeaf.Equals("py.exe", [System.StringComparison]::OrdinalIgnoreCase) -or $pythonLeaf.Equals("py", [System.StringComparison]::OrdinalIgnoreCase))) {
      $pipOut = & $pythonPath -3 -m pip freeze 2>$null
    } else {
      $pipOut = & $pythonPath -m pip freeze 2>$null
    }
    if ($pipOut) {
      $bytes = [System.Text.Encoding]::UTF8.GetBytes(($pipOut | Out-String))
      $pyPackagesDigest = "sha256:" + (Sha256-Hex $bytes)
    } else {
      $notes.Add("pip freeze returned empty or failed; digest not computed.")
    }
  } catch {
    $notes.Add("pip freeze failed; digest not computed.")
  }
}

# Repo metadata (best-effort)
$repoCommit = "NONE"
$repoOrigin = "NONE"
if ($gitVer.ok) {
  $c = Try-Run "git" @("-C", $repoAbs, "rev-parse", "HEAD")
  if ($c.ok -and $c.out) { $repoCommit = $c.out.Trim() }
  $o = Try-Run "git" @("-C", $repoAbs, "config", "--get", "remote.origin.url")
  if ($o.ok -and $o.out) {
    $originRaw = $o.out.Trim()
    $repoOrigin = Redact-UrlCredentials $originRaw
    if ($repoOrigin -ne $originRaw) {
      $notes.Add("remote.origin.url contained credentials and was redacted.")
    }
  }
}

# Codex config (best-effort, safe subset)
$codexSandboxMode = "NONE"
$codexApprovalPolicy = "NONE"
$codexPath = Join-Path $repoAbs "codex.toml"
if (Test-Path $codexPath) {
  try {
    $txt = Get-Content $codexPath -Raw -Encoding UTF8
    if ($txt -match 'sandbox_mode\s*=\s*"(.*?)"') { $codexSandboxMode = $Matches[1] }
    if ($txt -match 'approval_policy\s*=\s*"(.*?)"') { $codexApprovalPolicy = $Matches[1] }
  } catch {
    $notes.Add("Failed to parse codex.toml (safe subset).")
  }
} else {
  $notes.Add("codex.toml not found (optional).")
}

# --- Output file ---
$yyyymmdd = Get-TodayStamp
$dateIso = Get-DateIso
$outAbs = Resolve-RepoRelativePath $repoAbs $OutDir "-OutDir"
Ensure-Dir $outAbs

$v = Next-Version $outAbs $Project $yyyymmdd
$outName = "{0}_ToolingSnapshot_{1}_V{2}.yml" -f $Project, $yyyymmdd, $v
$outFile = Join-Path $outAbs $outName
Assert-PathWithinRepo $repoAbs $outFile "-Project"

$snapshotId = ("tooling-{0}-V{1}" -f $yyyymmdd, $v)

# YAML (manual, stable)
function Yaml-Escape([string]$s) {
  if ($null -eq $s) { return '""' }
  $esc = New-Object System.Text.StringBuilder
  foreach ($ch in $s.ToCharArray()) {
    $code = [int][char]$ch
    if ($ch -eq '"') {
      $null = $esc.Append('\"')
    } elseif ($ch -eq '\') {
      $null = $esc.Append('\\')
    } elseif ($ch -eq "`n") {
      $null = $esc.Append('\n')
    } elseif ($ch -eq "`r") {
      $null = $esc.Append('\r')
    } elseif ($ch -eq "`t") {
      $null = $esc.Append('\t')
    } elseif ($code -lt 0x20) {
      $null = $esc.Append(('\u{0:x4}' -f $code))
    } else {
      $null = $esc.Append($ch)
    }
  }
  return '"' + $esc.ToString() + '"'
}

$sb = New-Object System.Text.StringBuilder
$null = $sb.AppendLine("snapshot_id: " + $snapshotId)
$null = $sb.AppendLine("date: " + $dateIso)
$null = $sb.AppendLine("host:")
$null = $sb.AppendLine("  os: " + (Yaml-Escape $osCaption))
$null = $sb.AppendLine("  arch: " + (Yaml-Escape $osArch))
$null = $sb.AppendLine("repo:")
$null = $sb.AppendLine("  path: " + (Yaml-Escape $repoAbs))
$null = $sb.AppendLine("  origin: " + (Yaml-Escape $repoOrigin))
$null = $sb.AppendLine("  commit: " + (Yaml-Escape $repoCommit))
$null = $sb.AppendLine("vscode:")
$null = $sb.AppendLine("  version: " + (Yaml-Escape $vscodeVersion))
$null = $sb.AppendLine("  cli_path: " + (Yaml-Escape $vscodeCliPath))
$null = $sb.AppendLine("  extensions_total: " + $extTotal)
$null = $sb.AppendLine("  extensions_truncated: " + ($extTruncated.ToString().ToLower()))
$null = $sb.AppendLine("  extensions_digest: " + (Yaml-Escape $extDigest))
$null = $sb.AppendLine("  extensions:")

if ($extensions.Count -eq 0) {
  $null = $sb.AppendLine("    - id: " + (Yaml-Escape "NONE"))
  $null = $sb.AppendLine("      version: " + (Yaml-Escape "NONE"))
} else {
  $limit = $extensions.Count
  if ($extTruncated) { $limit = [Math]::Min($extensions.Count, $extMax) }
  for ($i=0; $i -lt $limit; $i++) {
    $ex = $extensions[$i]
    $null = $sb.AppendLine("    - id: " + (Yaml-Escape $ex.id))
    $null = $sb.AppendLine("      version: " + (Yaml-Escape $ex.version))
  }
}


$null = $sb.AppendLine("git:")
$null = $sb.AppendLine("  version: " + (Yaml-Escape $gitVersion))
$null = $sb.AppendLine("  path: " + (Yaml-Escape $gitPath))
$null = $sb.AppendLine("gh:")
$null = $sb.AppendLine("  version: " + (Yaml-Escape $ghVersion))
$null = $sb.AppendLine("  path: " + (Yaml-Escape $ghPath))
$null = $sb.AppendLine("node:")
$null = $sb.AppendLine("  version: " + (Yaml-Escape $nodeVersion))
$null = $sb.AppendLine("  path: " + (Yaml-Escape $nodePath))
$null = $sb.AppendLine("npm:")
$null = $sb.AppendLine("  version: " + (Yaml-Escape $npmVersion))
$null = $sb.AppendLine("  path: " + (Yaml-Escape $npmPath))
$null = $sb.AppendLine("python:")
$null = $sb.AppendLine("  version: " + (Yaml-Escape $pythonVersion))
$null = $sb.AppendLine("  path: " + (Yaml-Escape $pythonPath))
$null = $sb.AppendLine("  packages_digest: " + (Yaml-Escape $pyPackagesDigest))
$null = $sb.AppendLine("codex:")
$null = $sb.AppendLine("  config:")
$null = $sb.AppendLine("    sandbox_mode: " + (Yaml-Escape $codexSandboxMode))
$null = $sb.AppendLine("    approval_policy: " + (Yaml-Escape $codexApprovalPolicy))
$null = $sb.AppendLine("notes:")

if ($notes.Count -eq 0) {
  $null = $sb.AppendLine("  - " + (Yaml-Escape "NONE"))
} else {
  foreach ($n in $notes) {
    $null = $sb.AppendLine("  - " + (Yaml-Escape $n))
  }
}

# Write file
$yaml = $sb.ToString()
Write-Utf8NoBomFile $outFile $yaml

# Digest over file content
$bytes2 = [System.Text.Encoding]::UTF8.GetBytes($yaml)
$digest = "sha256:" + (Sha256-Hex $bytes2)

Write-Host ""
Write-Host "✅ ToolingSnapshot written:"
Write-Host ("  " + $outFile)
Write-Host ("  digest: " + $digest)
Write-Host ""
Write-Host "PR-Report snippet (copy/paste):"
Write-Host ("- ToolingSnapshot: `"$(Split-Path -Leaf $outFile)`" (`"$digest`")")
Write-Host ""
