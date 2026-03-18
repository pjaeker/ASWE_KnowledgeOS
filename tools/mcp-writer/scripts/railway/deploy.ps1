param(
  [string]$RailwayBin = "railway",
  [string]$Service = "",
  [string]$Environment = "",
  [string]$WriterPath = "tools/mcp-writer",
  [string]$Message = "fix(writer): align runtime port with Railway target port",
  [switch]$Detach,
  [switch]$DryRun
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
$resolvedWriterPath = [System.IO.Path]::GetFullPath((Join-Path $repoRoot $WriterPath))
. (Join-Path $scriptRoot "railway_env_common.ps1")
$envReport = Import-RailwaySecretFallback -RepoRoot $repoRoot

if (-not (Test-Path -LiteralPath $resolvedWriterPath)) {
  throw "Writer path not found: $resolvedWriterPath"
}

# Keep the repo root as upload context so the existing Railway service
# config can continue to resolve rootDirectory + Dockerfile path correctly.
$arguments = @("up")

if ($Service) {
  $arguments += @("--service", $Service)
}

if ($Environment) {
  $arguments += @("--environment", $Environment)
}

if ($Detach) {
  $arguments += "--detach"
}

if ($Message) {
  $arguments += @("-m", $Message)
}

if ($DryRun) {
  Write-Output ("[dry-run] repo-root: {0}" -f $repoRoot)
  Write-Output ("[dry-run] writer-path: {0}" -f $resolvedWriterPath)
  Write-Output ("[dry-run] env-source: {0}" -f $(if ($envReport.envSource) { $envReport.envSource } else { "none" }))
  Write-Output ("[dry-run] auth-variable: {0}" -f $(if ($envReport.authVariableAfter) { $envReport.authVariableAfter } else { "none" }))
  if ($envReport.loadedEnvPath) {
    Write-Output ("[dry-run] loaded-env-path: {0}" -f $envReport.loadedEnvPath)
  }
  Write-Output ("[dry-run] {0} {1}" -f $RailwayBin, ($arguments -join " "))
  return
}

Write-Output ("[deploy] env-source: {0}" -f $(if ($envReport.envSource) { $envReport.envSource } else { "none" }))
Write-Output ("[deploy] auth-variable: {0}" -f $(if ($envReport.authVariableAfter) { $envReport.authVariableAfter } else { "none" }))
if ($envReport.loadedEnvPath) {
  Write-Output ("[deploy] loaded-env-path: {0}" -f $envReport.loadedEnvPath)
}

Push-Location $repoRoot
try {
  & $RailwayBin @arguments
} finally {
  Pop-Location
}
