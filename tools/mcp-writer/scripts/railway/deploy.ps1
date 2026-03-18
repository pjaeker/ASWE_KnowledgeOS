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
  Write-Output ("[dry-run] {0} {1}" -f $RailwayBin, ($arguments -join " "))
  return
}

Push-Location $repoRoot
try {
  & $RailwayBin @arguments
} finally {
  Pop-Location
}
