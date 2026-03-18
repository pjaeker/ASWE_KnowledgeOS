[CmdletBinding(DefaultParameterSetName = "Script")]
param(
  [string]$SecretsEnvPath = ".codex/secrets/railway.env",
  [switch]$EmitEnvReport,

  [Parameter(ParameterSetName = "Script", Mandatory = $true)]
  [string]$ScriptPath,

  [Parameter(ParameterSetName = "Script")]
  [string[]]$ScriptArguments = @(),

  [Parameter(ParameterSetName = "Railway", Mandatory = $true)]
  [switch]$RailwayCommand,

  [Parameter(ParameterSetName = "Railway")]
  [string]$RailwayBin = "railway",

  [Parameter(ParameterSetName = "Railway")]
  [string[]]$RailwayArguments = @()
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$scriptRoot = if ($PSScriptRoot) {
  $PSScriptRoot
} elseif ($PSCommandPath) {
  Split-Path -Parent $PSCommandPath
} else {
  (Get-Location).Path
}

$repoRoot = [System.IO.Path]::GetFullPath((Join-Path $scriptRoot "..\..\..\.."))
. (Join-Path $scriptRoot "railway_env_common.ps1")

$envReport = Import-RailwaySecretFallback -RepoRoot $repoRoot -SecretsEnvPath $SecretsEnvPath

if ($EmitEnvReport) {
  Write-Host ""
  Write-Host "== Railway env =="
  Write-Host ("Repo root: {0}" -f $envReport.repoRoot)
  Write-Host ("Main repo root: {0}" -f $envReport.mainRepoRoot)
  Write-Host ("Env source: {0}" -f $(if ($envReport.envSource) { $envReport.envSource } else { "none" }))
  Write-Host ("Auth variable: {0}" -f $(if ($envReport.authVariableAfter) { $envReport.authVariableAfter } else { "none" }))
  if ($envReport.loadedEnvPath) {
    Write-Host ("Loaded env path: {0}" -f $envReport.loadedEnvPath)
  }

  foreach ($candidatePath in $envReport.candidatePaths) {
    Write-Host ("Candidate: {0}" -f $candidatePath)
  }
}

switch ($PSCmdlet.ParameterSetName) {
  "Script" {
    $resolvedScriptPath = Resolve-RailwayRepoPath -RepoRoot $repoRoot -Path $ScriptPath
    if (-not (Test-Path -LiteralPath $resolvedScriptPath)) {
      throw "Script not found: $resolvedScriptPath"
    }

    $result = Invoke-PowerShellFile -Path $resolvedScriptPath -Arguments $ScriptArguments
    if (-not [string]::IsNullOrWhiteSpace($result.Output)) {
      Write-Host $result.Output
    }

    exit $result.ExitCode
  }

  "Railway" {
    $railwayCommandPath = Get-Command -Name $RailwayBin -ErrorAction Stop | Select-Object -First 1 -ExpandProperty Source
    Write-Host ("[railway] {0} {1}" -f $railwayCommandPath, ($RailwayArguments -join " "))

    try {
      $output = & $railwayCommandPath @RailwayArguments 2>&1
      $exitCode = if ($null -ne $LASTEXITCODE) { [int]$LASTEXITCODE } else { 0 }
    } catch {
      Write-Host $_.Exception.Message
      exit 1
    }

    if ($null -ne $output) {
      (($output | ForEach-Object { [string]$_ }) -join [Environment]::NewLine).Trim() | Write-Host
    }

    exit $exitCode
  }
}
