param(
  [string]$BaseUrl = "https://writer.example.com",
  [string]$Service = "aswe-mcp-writer",
  [string]$Environment = "production"
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

$railwayRoot = [System.IO.Path]::GetFullPath((Join-Path $scriptRoot "..\railway"))

$placeholders = @{
  PUBLIC_BASE_URL = $BaseUrl
  GITHUB_APP_ID = "123456"
  GITHUB_INSTALLATION_ID = "654321"
  GITHUB_PRIVATE_KEY = "REDACTED_PRIVATE_KEY_VALUE"
  NODE_ENV = "production"
  OAUTH_DCR_ENABLED = "true"
  OAUTH_DEFAULT_SCOPE = "openid mcp.read"
  OAUTH_CODE_TTL_SECONDS = "600"
  OAUTH_TOKEN_TTL_SECONDS = "3600"
  POLICY_FILE = "./policy.json"
}

foreach ($entry in $placeholders.GetEnumerator()) {
  [Environment]::SetEnvironmentVariable($entry.Key, $entry.Value, "Process")
}

Write-Output "== set_env.ps1 dry-run =="
& (Join-Path $railwayRoot "set_env.ps1") -Service $Service -Environment $Environment -DryRun

Write-Output ""
Write-Output "== deploy.ps1 dry-run =="
& (Join-Path $railwayRoot "deploy.ps1") -Service $Service -Environment $Environment -DryRun

Write-Output ""
Write-Output "== smoke_oauth.ps1 plan-only =="
& (Join-Path $railwayRoot "smoke_oauth.ps1") -BaseUrl $BaseUrl -ProbeDcr -ReadSmoke -PlanOnly

