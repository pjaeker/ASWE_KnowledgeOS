Set-StrictMode -Version Latest

function Resolve-RailwayRepoPath {
  param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [Parameter(Mandatory = $true)]
    [string]$Path
  )

  if ([string]::IsNullOrWhiteSpace($Path)) {
    throw "Path must not be empty."
  }

  if ([System.IO.Path]::IsPathRooted($Path)) {
    return [System.IO.Path]::GetFullPath($Path)
  }

  return [System.IO.Path]::GetFullPath((Join-Path $RepoRoot $Path))
}

function Get-RailwayCommonGitDir {
  param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot
  )

  $gitPath = Join-Path $RepoRoot ".git"

  if (Test-Path -LiteralPath $gitPath -PathType Container) {
    return [System.IO.Path]::GetFullPath($gitPath)
  }

  if (-not (Test-Path -LiteralPath $gitPath -PathType Leaf)) {
    return $null
  }

  $gitPointer = Get-Content -LiteralPath $gitPath -TotalCount 1
  if ($gitPointer -notmatch '^\s*gitdir:\s*(.+?)\s*$') {
    return $null
  }

  $gitDir = $Matches[1].Trim()
  if (-not [System.IO.Path]::IsPathRooted($gitDir)) {
    $gitDir = Join-Path $RepoRoot $gitDir
  }

  $gitDir = [System.IO.Path]::GetFullPath($gitDir)
  $parentDir = Split-Path -Parent $gitDir

  if ((Split-Path -Leaf $parentDir) -ieq "worktrees") {
    return [System.IO.Path]::GetFullPath((Split-Path -Parent $parentDir))
  }

  return $gitDir
}

function Get-RailwayMainRepoRoot {
  param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot
  )

  $commonGitDir = Get-RailwayCommonGitDir -RepoRoot $RepoRoot
  if ([string]::IsNullOrWhiteSpace($commonGitDir)) {
    return [System.IO.Path]::GetFullPath($RepoRoot)
  }

  return [System.IO.Path]::GetFullPath((Split-Path -Parent $commonGitDir))
}

function Get-RailwaySecretCandidatePaths {
  param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [string]$SecretsEnvPath = ".codex/secrets/railway.env"
  )

  $mainRepoRoot = Get-RailwayMainRepoRoot -RepoRoot $RepoRoot
  $userProfile = [Environment]::GetFolderPath("UserProfile")
  $candidates = @()

  if (-not [string]::IsNullOrWhiteSpace($SecretsEnvPath)) {
    $candidates += Resolve-RailwayRepoPath -RepoRoot $RepoRoot -Path $SecretsEnvPath
  }

  $candidates += (Join-Path $RepoRoot ".codex\secrets\railway.env")

  if ($mainRepoRoot -and ($mainRepoRoot -ne $RepoRoot)) {
    $candidates += (Join-Path $mainRepoRoot ".codex\secrets\railway.env")
  }

  if (-not [string]::IsNullOrWhiteSpace($env:CODEX_HOME)) {
    $candidates += (Join-Path $env:CODEX_HOME "secrets\railway.env")
  }

  if (-not [string]::IsNullOrWhiteSpace($userProfile)) {
    $candidates += (Join-Path $userProfile ".codex\secrets\railway.env")
  }

  $seen = @{}
  $resolved = New-Object System.Collections.Generic.List[string]

  foreach ($candidate in $candidates) {
    if ([string]::IsNullOrWhiteSpace($candidate)) {
      continue
    }

    $fullPath = [System.IO.Path]::GetFullPath($candidate)
    if ($seen.ContainsKey($fullPath)) {
      continue
    }

    $seen[$fullPath] = $true
    [void]$resolved.Add($fullPath)
  }

  return $resolved.ToArray()
}

function Test-RailwayAuthPresent {
  return (-not [string]::IsNullOrWhiteSpace($env:RAILWAY_TOKEN)) -or
    (-not [string]::IsNullOrWhiteSpace($env:RAILWAY_API_TOKEN))
}

function Get-RailwayAuthVariableName {
  if (-not [string]::IsNullOrWhiteSpace($env:RAILWAY_TOKEN)) {
    return "RAILWAY_TOKEN"
  }

  if (-not [string]::IsNullOrWhiteSpace($env:RAILWAY_API_TOKEN)) {
    return "RAILWAY_API_TOKEN"
  }

  return $null
}

function Normalize-RailwayEnvValue {
  param(
    [AllowEmptyString()]
    [string]$Value
  )

  if ($null -eq $Value) {
    return ""
  }

  $trimmed = $Value.Trim()
  if ($trimmed.Length -ge 2) {
    if (($trimmed.StartsWith('"') -and $trimmed.EndsWith('"')) -or ($trimmed.StartsWith("'") -and $trimmed.EndsWith("'"))) {
      return $trimmed.Substring(1, $trimmed.Length - 2)
    }
  }

  return $trimmed
}

function Set-RailwayEnvFromFile {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Path,

    [switch]$Force
  )

  if (-not (Test-Path -LiteralPath $Path)) {
    return @()
  }

  $loadedVariables = New-Object System.Collections.Generic.List[string]

  foreach ($line in (Get-Content -LiteralPath $Path)) {
    if ($line -match '^\s*#') {
      continue
    }

    if ($line -match '^\s*$') {
      continue
    }

    $parts = $line -split '=', 2
    if ($parts.Count -ne 2) {
      continue
    }

    $name = $parts[0].Trim()
    $value = Normalize-RailwayEnvValue -Value $parts[1]

    if ([string]::IsNullOrWhiteSpace($name) -or [string]::IsNullOrWhiteSpace($value)) {
      continue
    }

    $existingValue = [Environment]::GetEnvironmentVariable($name, "Process")
    if ((-not $Force) -and (-not [string]::IsNullOrWhiteSpace($existingValue))) {
      continue
    }

    [Environment]::SetEnvironmentVariable($name, $value, "Process")
    [void]$loadedVariables.Add($name)
  }

  if ($loadedVariables.Count -gt 0) {
    [Environment]::SetEnvironmentVariable("ASWE_RAILWAY_ENV_PATH", $Path, "Process")
    [Environment]::SetEnvironmentVariable("ASWE_RAILWAY_ENV_SOURCE", "env_file", "Process")
  }

  return $loadedVariables.ToArray()
}

function Get-RailwayEnvSource {
  $markedSource = [Environment]::GetEnvironmentVariable("ASWE_RAILWAY_ENV_SOURCE", "Process")
  if (-not [string]::IsNullOrWhiteSpace($markedSource)) {
    return $markedSource
  }

  if (Test-RailwayAuthPresent) {
    return "process_environment"
  }

  return $null
}

function Import-RailwaySecretFallback {
  param(
    [Parameter(Mandatory = $true)]
    [string]$RepoRoot,

    [string]$SecretsEnvPath = ".codex/secrets/railway.env",

    [switch]$ForceReload
  )

  $normalizedRepoRoot = [System.IO.Path]::GetFullPath($RepoRoot)
  $candidatePaths = @(Get-RailwaySecretCandidatePaths -RepoRoot $normalizedRepoRoot -SecretsEnvPath $SecretsEnvPath)
  $report = [ordered]@{
    repoRoot = $normalizedRepoRoot
    mainRepoRoot = Get-RailwayMainRepoRoot -RepoRoot $normalizedRepoRoot
    candidatePaths = $candidatePaths
    authPresentBefore = (Test-RailwayAuthPresent)
    authVariableBefore = Get-RailwayAuthVariableName
    envSource = Get-RailwayEnvSource
    loadedEnvPath = [Environment]::GetEnvironmentVariable("ASWE_RAILWAY_ENV_PATH", "Process")
    envLoaded = $false
    loadedVariables = @()
  }

  if ($ForceReload -or (-not $report.authPresentBefore)) {
    $selectedPath = $candidatePaths | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1

    if (-not [string]::IsNullOrWhiteSpace($selectedPath)) {
      $loadedVariables = @(Set-RailwayEnvFromFile -Path $selectedPath -Force:$ForceReload)
      $report.loadedVariables = $loadedVariables
      $report.loadedEnvPath = $selectedPath
      $report.envLoaded = ($loadedVariables.Count -gt 0)
      if ($report.envLoaded) {
        $report.envSource = "env_file"
      }
    }
  }

  $report.authPresentAfter = Test-RailwayAuthPresent
  $report.authVariableAfter = Get-RailwayAuthVariableName

  if (-not $report.envSource -and $report.authPresentAfter) {
    $report.envSource = "process_environment"
  }

  return [pscustomobject]$report
}

function ConvertFrom-JsonCompat {
  param(
    [AllowEmptyString()]
    [string]$Text
  )

  if ([string]::IsNullOrWhiteSpace($Text)) {
    return $null
  }

  try {
    return $Text | ConvertFrom-Json
  } catch {
    return $null
  }
}

function Ensure-SystemNetHttp {
  if (-not ("System.Net.Http.HttpClient" -as [type])) {
    Add-Type -AssemblyName "System.Net.Http"
  }
}

function Get-HostPowerShellExecutable {
  try {
    return (Get-Process -Id $PID -ErrorAction Stop).Path
  } catch {
    return "powershell"
  }
}

function Invoke-PowerShellFile {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Path,

    [string[]]$Arguments = @()
  )

  $executable = Get-HostPowerShellExecutable

  try {
    $output = & $executable -ExecutionPolicy Bypass -NoProfile -File $Path @Arguments 2>&1
    $exitCode = if ($null -ne $LASTEXITCODE) { [int]$LASTEXITCODE } else { 0 }
  } catch {
    return [pscustomobject]@{
      Success = $false
      ExitCode = 1
      Output = $_.Exception.Message
    }
  }

  $text = if ($null -eq $output) {
    ""
  } else {
    (($output | ForEach-Object { [string]$_ }) -join [Environment]::NewLine).Trim()
  }

  return [pscustomobject]@{
    Success = ($exitCode -eq 0)
    ExitCode = $exitCode
    Output = $text
  }
}
