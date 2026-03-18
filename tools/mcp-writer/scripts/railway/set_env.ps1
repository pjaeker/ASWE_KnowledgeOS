param(
  [string]$RailwayBin = "railway",
  [string]$Service = "",
  [string]$Environment = "",
  [switch]$SkipDeploys = $true,
  [switch]$DryRun
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function New-VariableSpec {
  return @(
    @{ Name = "PUBLIC_BASE_URL"; Required = $true },
    @{ Name = "GITHUB_APP_ID"; Required = $true },
    @{ Name = "GITHUB_INSTALLATION_ID"; Required = $true },
    @{ Name = "GITHUB_PRIVATE_KEY"; Required = $true },
    @{ Name = "NODE_ENV"; Required = $false },
    @{ Name = "PORT"; Required = $false },
    @{ Name = "MCP_SHARED_SECRET"; Required = $false },
    @{ Name = "OAUTH_DCR_ENABLED"; Required = $false },
    @{ Name = "OAUTH_ALLOWED_REDIRECT_URIS"; Required = $false },
    @{ Name = "OAUTH_DEV_SUBJECT"; Required = $false },
    @{ Name = "OAUTH_DEFAULT_SCOPE"; Required = $false },
    @{ Name = "OAUTH_CODE_TTL_SECONDS"; Required = $false },
    @{ Name = "OAUTH_TOKEN_TTL_SECONDS"; Required = $false },
    @{ Name = "OAUTH_JWT_PRIVATE_KEY"; Required = $false },
    @{ Name = "POLICY_FILE"; Required = $false }
  )
}

function Get-EnvironmentValue {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Name
  )

  return [Environment]::GetEnvironmentVariable($Name)
}

function Format-CommandPreview {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Binary,

    [Parameter(Mandatory = $true)]
    [string[]]$Arguments,

    [Parameter(Mandatory = $true)]
    [string]$VariableName
  )

  return "[dry-run] {0} {1} <env:{2}>" -f $Binary, ($Arguments -join " "), $VariableName
}

$missing = @()
$commands = @()

foreach ($spec in New-VariableSpec) {
  $value = Get-EnvironmentValue -Name $spec.Name

  if ([string]::IsNullOrEmpty($value)) {
    if ($spec.Required) {
      $missing += $spec.Name
    }

    continue
  }

  $arguments = @("variables", "set", $spec.Name, "--stdin")

  if ($Service) {
    $arguments += @("--service", $Service)
  }

  if ($Environment) {
    $arguments += @("--environment", $Environment)
  }

  if ($SkipDeploys) {
    $arguments += "--skip-deploys"
  }

  $commands += [pscustomobject]@{
    Name = $spec.Name
    Value = $value
    Arguments = $arguments
  }
}

if ($missing.Count -gt 0) {
  throw "Missing required environment variables for Railway upload: $($missing -join ', ')"
}

if ($commands.Count -eq 0) {
  throw "No environment variables were resolved for Railway upload."
}

foreach ($command in $commands) {
  if ($DryRun) {
    Write-Output (Format-CommandPreview -Binary $RailwayBin -Arguments $command.Arguments -VariableName $command.Name)
    continue
  }

  $command.Value | & $RailwayBin @($command.Arguments)
}
