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
  Zielordner fuer das Snapshot (Default: meta/state/tooling).
  Erlaubt sind relative Pfade zum Repo-Root und absolute Pfade innerhalb des Repo-Roots.

.PARAMETER ExtensionSource
  Quelle fuer VS Code Extensions:
  - auto: zuerst code CLI, bei Bedarf Fallback auf Dateisystem
  - code-cli: nur code CLI
  - filesystem: nur Dateisystem

.PARAMETER VsCodeCliPath
  Optionaler, expliziter Pfad zur VS Code CLI (code.cmd / code-insiders.cmd / codium.cmd).

.PARAMETER VsCodeExtensionsDir
  Optionales Extensions-Verzeichnis fuer Filesystem-Scan.
  Falls leer, werden Standardpfade unter %USERPROFILE% verwendet.

.PARAMETER VsCodeUserDataDir
  Optionales user-data-dir fuer CLI-Aufrufe, um Umgebungs-/Rechteprobleme zu reduzieren.

.NOTES
  Script-Version: V4
  Diese Datei ist die vierte, parallel gefuehrte Version von Export-ToolingSnapshot.ps1.

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File .\Export-ToolingSnapshot_V4.ps1

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File .\Export-ToolingSnapshot_V4.ps1 -RepoPath "D:\Git\ASWE_KnowledgeOS" -Project "AgenticSWE_KnowledgeOS"

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File .\Export-ToolingSnapshot_V4.ps1 -OutDir "D:\Git\ASWE_KnowledgeOS\meta\state\tooling" -ExtensionSource auto
#>

[CmdletBinding()]
param(
  [Parameter(Mandatory=$false)][string]$RepoPath = (Get-Location).Path,
  [Parameter(Mandatory=$false)][string]$Project = "AgenticSWE_KnowledgeOS",
  [Parameter(Mandatory=$false)][switch]$IncludePipFreezeDigest = $true,
  [Parameter(Mandatory=$false)][string]$OutDir = "meta/state/tooling",
  [Parameter(Mandatory=$false)][ValidateSet("auto","code-cli","filesystem")][string]$ExtensionSource = "auto",
  [Parameter(Mandatory=$false)][string]$VsCodeCliPath = "",
  [Parameter(Mandatory=$false)][string]$VsCodeExtensionsDir = "",
  [Parameter(Mandatory=$false)][string]$VsCodeUserDataDir = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Note([string]$msg) {
  Write-Host ("[note] " + $msg)
}

function Try-Run([string]$cmd, [string[]]$Arguments) {
  try {
    $p = Get-Command $cmd -ErrorAction Stop
    $out = & $p.Source @Arguments 2>&1
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

function Run-External([string]$commandPath, [string[]]$Arguments) {
  $oldEap = $ErrorActionPreference
  $ErrorActionPreference = "Continue"
  try {
    $out = & $commandPath @Arguments 2>&1
    $exitCode = $LASTEXITCODE
    return @{ ok=($exitCode -eq 0); out=($out | Out-String).Trim(); exit=$exitCode }
  } catch {
    return @{ ok=$false; out=(($_ | Out-String).Trim()); exit=-1 }
  } finally {
    $ErrorActionPreference = $oldEap
  }
}

function Find-CodeCli([string]$explicitPath) {
  if ($explicitPath) {
    if (Test-Path $explicitPath) { return [System.IO.Path]::GetFullPath($explicitPath) }
    return $null
  }

  foreach ($name in @("code","code-insiders","codium")) {
    try {
      $cmd = Get-Command $name -ErrorAction Stop
      if ($cmd -and $cmd.Source) { return $cmd.Source }
    } catch {}
  }

  $candidates = @(
    "$env:LOCALAPPDATA\Programs\Microsoft VS Code\bin\code.cmd",
    "$env:ProgramFiles\Microsoft VS Code\bin\code.cmd",
    "$env:ProgramFiles(x86)\Microsoft VS Code\bin\code.cmd",
    "$env:LOCALAPPDATA\Programs\Microsoft VS Code Insiders\bin\code-insiders.cmd",
    "$env:ProgramFiles\VSCodium\bin\codium.cmd",
    "$env:LOCALAPPDATA\Programs\VSCodium\bin\codium.cmd"
  ) | Where-Object { $_ -and (Test-Path $_) }

  if ($candidates.Count -gt 0) { return $candidates[0] }
  return $null
}

function Parse-VsCodeExtensionsText([string]$text) {
  $map = @{}
  $noiseCount = 0
  $lines = @()
  if ($text) {
    $lines = $text.Split("`n") | ForEach-Object { $_.Trim() } | Where-Object { $_ }
  }

  foreach ($l in $lines) {
    if ($l -match "^(?<id>[A-Za-z0-9][A-Za-z0-9._-]*\.[A-Za-z0-9._-]+)@(?<ver>\S+)$") {
      $id = $Matches["id"]
      $ver = $Matches["ver"]
      if (!$map.ContainsKey($id) -or $map[$id] -eq "UNKNOWN") { $map[$id] = $ver }
      continue
    }
    if ($l -match "^(?<id>[A-Za-z0-9][A-Za-z0-9._-]*\.[A-Za-z0-9._-]+)$") {
      $id = $Matches["id"]
      if (!$map.ContainsKey($id)) { $map[$id] = "UNKNOWN" }
      continue
    }
    $noiseCount++
  }

  $ext = @()
  foreach ($id in ($map.Keys | Sort-Object)) {
    $ext += @{ id=$id; version=$map[$id] }
  }
  return @{ extensions=$ext; noise=$noiseCount }
}

function Get-VsCodeExtensionsFromCli([string]$codeCli, [string]$userDataDir) {
  $result = @{
    version = "NONE"
    exit = "NONE"
    extensions = @()
    noise = 0
    warning = ""
  }

  if (!$codeCli) { return $result }

  $globalArgs = @()
  if ($userDataDir) {
    if (!(Test-Path $userDataDir)) { New-Item -ItemType Directory -Path $userDataDir -Force | Out-Null }
    $globalArgs += @("--user-data-dir", $userDataDir)
  }

  $verRes = Run-External $codeCli ($globalArgs + @("--version"))
  if ($verRes.out) {
    $verLines = $verRes.out.Split("`n") | ForEach-Object { $_.Trim() } | Where-Object { $_ }
    $versionLine = $verLines | Where-Object { $_ -match "^[0-9]+\.[0-9]+\.[0-9]+" } | Select-Object -First 1
    if ($versionLine) { $result.version = $versionLine }
  }

  $listRes = Run-External $codeCli ($globalArgs + @("--list-extensions","--show-versions"))
  $result.exit = [string]$listRes.exit
  $parsed = Parse-VsCodeExtensionsText $listRes.out
  $result.extensions = $parsed.extensions
  $result.noise = $parsed.noise
  if ($listRes.exit -ne 0 -and $parsed.extensions.Count -gt 0) {
    $result.warning = "VS Code CLI returned non-zero exit code, but extensions were parsed successfully."
  } elseif ($listRes.exit -ne 0 -and $parsed.extensions.Count -eq 0) {
    $result.warning = "VS Code CLI returned non-zero exit code and no extensions were parsed."
  }
  return $result
}

function Try-Read-ExtensionFromPackageJson([string]$extensionDir) {
  $pkgPath = Join-Path $extensionDir "package.json"
  if (!(Test-Path $pkgPath)) { return $null }
  try {
    $pkg = Get-Content $pkgPath -Raw -Encoding UTF8 | ConvertFrom-Json -ErrorAction Stop
    if ($pkg.publisher -and $pkg.name) {
      $id = ($pkg.publisher + "." + $pkg.name)
      $ver = if ($pkg.version) { [string]$pkg.version } else { "UNKNOWN" }
      return @{ id=$id; version=$ver }
    }
  } catch {}
  return $null
}

function Parse-ExtensionFromDirectoryName([string]$dirName) {
  if ($dirName -match "^(?<id>[A-Za-z0-9][A-Za-z0-9._-]*\.[A-Za-z0-9._-]+)-(?<ver>[0-9][0-9A-Za-z.\-+]*)$") {
    return @{ id=$Matches["id"]; version=$Matches["ver"] }
  }
  if ($dirName -match "^(?<id>[A-Za-z0-9][A-Za-z0-9._-]*\.[A-Za-z0-9._-]+)$") {
    return @{ id=$Matches["id"]; version="UNKNOWN" }
  }
  return $null
}

function Get-VsCodeExtensionsFromFilesystem([string[]]$dirs) {
  $map = @{}
  $scanned = New-Object System.Collections.Generic.List[string]

  foreach ($d in $dirs) {
    if (!$d) { continue }
    if (!(Test-Path $d)) { continue }
    $scanned.Add([System.IO.Path]::GetFullPath($d))
    $entries = Get-ChildItem -Path $d -Directory -ErrorAction SilentlyContinue
    foreach ($entry in $entries) {
      $parsed = Try-Read-ExtensionFromPackageJson $entry.FullName
      if (!$parsed) { $parsed = Parse-ExtensionFromDirectoryName $entry.Name }
      if (!$parsed) { continue }
      $id = $parsed.id
      $ver = $parsed.version
      if (!$map.ContainsKey($id) -or $map[$id] -eq "UNKNOWN") { $map[$id] = $ver }
    }
  }

  $ext = @()
  foreach ($id in ($map.Keys | Sort-Object)) {
    $ext += @{ id=$id; version=$map[$id] }
  }
  return @{ extensions=$ext; scanned_dirs=@($scanned) }
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
    throw "Parameter -Project allows only letters, numbers, dot, underscore and dash (max 128 chars). Example: AgenticSWE_KnowledgeOS"
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
    throw ("Parameter {0} resolves outside repo root: {1}. Allowed root: {2}" -f $paramName, $candFull, $repoFull)
  }
}

function Resolve-OutDirPath([string]$repoRoot, [string]$rawPath, [string]$paramName) {
  if ([string]::IsNullOrWhiteSpace($rawPath)) {
    throw ("Parameter {0} must not be empty. Example: meta/state/tooling" -f $paramName)
  }
  if ([System.IO.Path]::IsPathRooted($rawPath)) {
    $full = [System.IO.Path]::GetFullPath($rawPath)
  } else {
    $joined = Join-Path $repoRoot $rawPath
    $full = [System.IO.Path]::GetFullPath($joined)
  }
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
$codeCli = Find-CodeCli $VsCodeCliPath
$vscodeVersion = "NONE"
$vscodeCliPath = "NONE"
$vscodeSource = "NONE"
$vscodeListExitCode = "NONE"
$vscodeFilesystemDirs = "NONE"
$extensions = @()

if ($codeCli) { $vscodeCliPath = $codeCli }

$tryCli = ($ExtensionSource -eq "auto" -or $ExtensionSource -eq "code-cli")
$tryFs = ($ExtensionSource -eq "auto" -or $ExtensionSource -eq "filesystem")

if ($tryCli -and $codeCli) {
  $cliData = Get-VsCodeExtensionsFromCli $codeCli $VsCodeUserDataDir
  $vscodeVersion = $cliData.version
  $vscodeListExitCode = [string]$cliData.exit
  $extensions = $cliData.extensions
  if ($extensions.Count -gt 0) {
    $vscodeSource = "code-cli"
  }
  if ($cliData.noise -gt 0) {
    $notes.Add(("VS Code CLI produced {0} non-extension output lines (ignored)." -f $cliData.noise))
  }
  if ($cliData.warning) {
    $notes.Add($cliData.warning)
  }
}

if ($tryCli -and !$codeCli) {
  $notes.Add("VS Code CLI not found (code). Install VS Code or add its bin to PATH.")
}

if ($tryFs -and $extensions.Count -eq 0) {
  $scanDirs = @()
  if ($VsCodeExtensionsDir) {
    $scanDirs += $VsCodeExtensionsDir
  } else {
    $scanDirs += @(
      (Join-Path $env:USERPROFILE ".vscode\extensions"),
      (Join-Path $env:USERPROFILE ".vscode-insiders\extensions"),
      (Join-Path $env:USERPROFILE ".vscode-oss\extensions")
    )
  }
  $fsData = Get-VsCodeExtensionsFromFilesystem $scanDirs
  $extensions = $fsData.extensions
  if ($fsData.scanned_dirs.Count -gt 0) {
    $vscodeFilesystemDirs = ($fsData.scanned_dirs -join ";")
  }
  if ($extensions.Count -gt 0) {
    $vscodeSource = "filesystem"
  }
}

if ($extensions.Count -eq 0 -and $vscodeSource -eq "NONE") {
  $notes.Add("No VS Code extensions detected from configured sources.")
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
$outAbs = Resolve-OutDirPath $repoAbs $OutDir "-OutDir"
Ensure-Dir $outAbs

$v = Next-Version $outAbs $Project $yyyymmdd
$outName = "{0}_ToolingSnapshot_{1}_V{2}.yml" -f $Project, $yyyymmdd, $v
$outFile = Join-Path $outAbs $outName
Assert-PathWithinRepo $repoAbs $outFile "-Project"

Write-Host ""
Write-Host "Resolved paths:"
Write-Host ("  repo_root: " + $repoAbs)
Write-Host ("  out_dir:   " + $outAbs)
Write-Host ("  out_file:  " + $outFile)

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
$null = $sb.AppendLine("  source: " + (Yaml-Escape $vscodeSource))
$null = $sb.AppendLine("  list_exit_code: " + (Yaml-Escape $vscodeListExitCode))
$null = $sb.AppendLine("  filesystem_dirs: " + (Yaml-Escape $vscodeFilesystemDirs))
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
