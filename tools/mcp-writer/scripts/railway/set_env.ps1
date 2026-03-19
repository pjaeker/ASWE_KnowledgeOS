param(
  [string]$RailwayBin = "railway",
  [string]$Service = "",
  [string]$Environment = "",
  [string[]]$AppendAllowedRedirectUri = @(),
  [switch]$OnlyAllowedRedirectUris,
  [switch]$SkipDeploys = $true,
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
. (Join-Path $scriptRoot "railway_env_common.ps1")
[void](Import-RailwaySecretFallback -RepoRoot $repoRoot)

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

function Invoke-CapturedCommand {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Executable,

    [string[]]$Arguments = @()
  )

  try {
    $output = & $Executable @Arguments 2>&1
    $exitCode = if ($null -ne $LASTEXITCODE) { [int]$LASTEXITCODE } else { 0 }
  } catch {
    return [pscustomobject]@{
      Success = $false
      ExitCode = 1
      Output = $_.Exception.Message
      Json = $null
    }
  }

  $text = if ($null -eq $output) {
    ""
  } else {
    (($output | ForEach-Object { [string]$_ }) -join [Environment]::NewLine).Trim()
  }

  $json = $null
  if (-not [string]::IsNullOrWhiteSpace($text)) {
    try {
      $json = $text | ConvertFrom-Json
    } catch {
      $json = $null
    }
  }

  return [pscustomobject]@{
    Success = ($exitCode -eq 0)
    ExitCode = $exitCode
    Output = $text
    Json = $json
  }
}

function Split-RedirectUriValues {
  param(
    [AllowEmptyString()]
    [string]$Value
  )

  if ([string]::IsNullOrWhiteSpace($Value)) {
    return @()
  }

  return @(
    [regex]::Split([string]$Value, "[,\r\n]+") |
      ForEach-Object { [string]$_ } |
      Where-Object { -not [string]::IsNullOrWhiteSpace($_) } |
      ForEach-Object { $_.Trim() }
  )
}

function Normalize-RedirectUri {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Value
  )

  $absoluteUri = $null
  if (-not [System.Uri]::TryCreate($Value, [System.UriKind]::Absolute, [ref]$absoluteUri)) {
    throw "AppendAllowedRedirectUri requires absolute redirect URIs. Invalid value: $Value"
  }

  return $absoluteUri.AbsoluteUri
}

function Merge-RedirectUriValues {
  param(
    [string[]]$Values = @()
  )

  $seen = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::Ordinal)
  $merged = New-Object 'System.Collections.Generic.List[string]'

  foreach ($value in @($Values)) {
    foreach ($entry in @(Split-RedirectUriValues -Value ([string]$value))) {
      $normalized = Normalize-RedirectUri -Value $entry
      if ($seen.Add($normalized)) {
        $merged.Add($normalized) | Out-Null
      }
    }
  }

  return @($merged)
}

function Get-RailwayVariableValue {
  param(
    [Parameter(Mandatory = $true)]
    [string]$RailwayBin,

    [Parameter(Mandatory = $true)]
    [string]$Name,

    [string]$Service = "",

    [string]$Environment = ""
  )

  $arguments = @("variable", "list")

  if ($Service) {
    $arguments += @("--service", $Service)
  }

  if ($Environment) {
    $arguments += @("--environment", $Environment)
  }

  $arguments += "--json"
  $result = Invoke-CapturedCommand -Executable $RailwayBin -Arguments $arguments

  if (-not $result.Success -or $null -eq $result.Json) {
    throw "Unable to read current Railway variables for redirect allowlist merge: $($result.Output)"
  }

  if ($result.Json.PSObject.Properties.Name -contains $Name) {
    return [string]$result.Json.$Name
  }

  return ""
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
$selectedSpecs = @(New-VariableSpec)

if ($OnlyAllowedRedirectUris) {
  $selectedSpecs = @($selectedSpecs | Where-Object { $_.Name -eq "OAUTH_ALLOWED_REDIRECT_URIS" })
}

foreach ($spec in $selectedSpecs) {
  $value = Get-EnvironmentValue -Name $spec.Name
  $previewEntries = @()

  if (($spec.Name -eq "OAUTH_ALLOWED_REDIRECT_URIS") -and (@($AppendAllowedRedirectUri).Count -gt 0)) {
    $existingValue = Get-RailwayVariableValue -RailwayBin $RailwayBin -Name $spec.Name -Service $Service -Environment $Environment
    $mergedEntries = Merge-RedirectUriValues -Values (@($existingValue, $value) + @($AppendAllowedRedirectUri))

    if ($mergedEntries.Count -gt 0) {
      $value = ($mergedEntries -join [Environment]::NewLine)
      $previewEntries = @($mergedEntries)
    }
  } elseif ($spec.Name -eq "OAUTH_ALLOWED_REDIRECT_URIS") {
    $previewEntries = @(Split-RedirectUriValues -Value $value)
  }

  if ([string]::IsNullOrEmpty($value)) {
    if ($spec.Required) {
      $missing += $spec.Name
    }

    continue
  }

  $arguments = @("variable", "set", $spec.Name, "--stdin")

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
    PreviewEntries = @($previewEntries)
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
    if (($command.Name -eq "OAUTH_ALLOWED_REDIRECT_URIS") -and (@($command.PreviewEntries).Count -gt 0)) {
      foreach ($entry in @($command.PreviewEntries)) {
        Write-Output ("  redirect_uri: {0}" -f $entry)
      }
    }
    continue
  }

  $argumentList = @($command.Arguments)
  $command.Value | & $RailwayBin @argumentList
}
