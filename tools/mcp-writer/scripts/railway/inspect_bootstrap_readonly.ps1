param(
  [string]$TargetConfigPath = "",
  [string]$RailwayBin = "railway",
  [string]$RedirectUri = "",
  [switch]$EmitJson,
  [switch]$RequireAuthorizeBootstrap
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

function Resolve-RepoPath {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Path
  )

  if ([string]::IsNullOrWhiteSpace($Path)) {
    throw "Path must not be empty."
  }

  if ([System.IO.Path]::IsPathRooted($Path)) {
    return [System.IO.Path]::GetFullPath($Path)
  }

  return [System.IO.Path]::GetFullPath((Join-Path $repoRoot $Path))
}

function ConvertFrom-JsonSafe {
  param(
    [AllowEmptyString()]
    [string]$Text
  )

  if ([string]::IsNullOrWhiteSpace($Text)) {
    return $null
  }

  try {
    return ConvertFrom-JsonCompat -Text $Text
  } catch {
    return $null
  }
}

function Load-TargetConfig {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Path
  )

  if (-not (Test-Path -LiteralPath $Path)) {
    throw "Railway target config not found: $Path"
  }

  $config = ConvertFrom-JsonCompat -Text (Get-Content -Raw -Path $Path)

  foreach ($name in @("project", "service", "environment", "baseUrl")) {
    $value = $config.$name
    if ([string]::IsNullOrWhiteSpace([string]$value)) {
      throw "Railway target config is missing required field '$name'."
    }
  }

  return $config
}

function Get-CommandPathSafe {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Name
  )

  try {
    return (Get-Command -Name $Name -ErrorAction Stop | Select-Object -First 1 -ExpandProperty Source)
  } catch {
    return $null
  }
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

  return [pscustomobject]@{
    Success = ($exitCode -eq 0)
    ExitCode = $exitCode
    Output = $text
    Json = ConvertFrom-JsonSafe -Text $text
  }
}

function Get-VariableSnapshot {
  param(
    [Parameter(Mandatory = $true)]
    [object]$Variables,

    [Parameter(Mandatory = $true)]
    [string]$Name,

    [switch]$Secret,

    [string]$ExpectedValue = ""
  )

  $exists = $Variables.PSObject.Properties.Name -contains $Name
  $value = if ($exists) { [string]$Variables.$Name } else { "" }
  $nonEmpty = -not [string]::IsNullOrWhiteSpace($value)

  $snapshot = [ordered]@{
    name = $Name
    present = $exists
    nonEmpty = $nonEmpty
    status = if (-not $exists) { "missing" } elseif ($nonEmpty) { "set" } else { "empty" }
    secret = [bool]$Secret
  }

  if (-not $Secret) {
    $snapshot.value = $value
  }

  if (-not [string]::IsNullOrWhiteSpace($ExpectedValue)) {
    $snapshot.expectedValue = $ExpectedValue
    $snapshot.matchesExpected = $nonEmpty -and ($value -eq $ExpectedValue)
  }

  return [pscustomobject]$snapshot
}

function Get-AbsoluteUrlListSnapshot {
  param(
    [Parameter(Mandatory = $true)]
    [object]$Variables,

    [Parameter(Mandatory = $true)]
    [string]$Name
  )

  $snapshot = Get-VariableSnapshot -Variables $Variables -Name $Name
  $entries = @()

  if ($snapshot.nonEmpty) {
    $entries = @(
      [regex]::Split([string]$snapshot.value, "[,\r\n]+") |
        ForEach-Object { [string]$_ } |
        Where-Object { -not [string]::IsNullOrWhiteSpace($_) } |
        ForEach-Object { $_.Trim() }
    )
  }

  $invalidEntries = @()

  foreach ($entry in $entries) {
    $absoluteUri = $null
    if (-not [System.Uri]::TryCreate($entry, [System.UriKind]::Absolute, [ref]$absoluteUri)) {
      $invalidEntries += $entry
    }
  }

  $snapshot | Add-Member -NotePropertyName entries -NotePropertyValue @($entries)
  $snapshot | Add-Member -NotePropertyName entryCount -NotePropertyValue @($entries).Count
  $snapshot | Add-Member -NotePropertyName invalidEntries -NotePropertyValue @($invalidEntries)
  $snapshot | Add-Member -NotePropertyName validAbsoluteUrlCount -NotePropertyValue (@($entries).Count - @($invalidEntries).Count)

  return $snapshot
}

function Get-RequestedRedirectSnapshot {
  param(
    [AllowEmptyString()]
    [string]$RedirectUri,

    [Parameter(Mandatory = $true)]
    [object]$AllowlistSnapshot
  )

  $requested = [string]$RedirectUri
  $normalized = ""
  $validAbsoluteUrl = $false

  if (-not [string]::IsNullOrWhiteSpace($requested)) {
    $parsedUri = $null
    if ([System.Uri]::TryCreate($requested, [System.UriKind]::Absolute, [ref]$parsedUri)) {
      $normalized = $parsedUri.AbsoluteUri
      $validAbsoluteUrl = $true
    }
  }

  $exactMatch = $validAbsoluteUrl -and (@($AllowlistSnapshot.entries) -contains $normalized)

  return [pscustomobject]@{
    requested = $requested
    normalized = $normalized
    provided = (-not [string]::IsNullOrWhiteSpace($requested))
    validAbsoluteUrl = $validAbsoluteUrl
    exactMatch = $exactMatch
  }
}

if (-not $TargetConfigPath) {
  $TargetConfigPath = "tools/mcp-writer/config/railway.target.json"
}

$resolvedTargetPath = Resolve-RepoPath -Path $TargetConfigPath
$target = Load-TargetConfig -Path $resolvedTargetPath
$envReport = Import-RailwaySecretFallback -RepoRoot $repoRoot
$railwayCommandPath = Get-CommandPathSafe -Name $RailwayBin

$summary = [ordered]@{
  target = [ordered]@{
    configPath = $resolvedTargetPath
    project = [string]$target.project
    service = [string]$target.service
    environment = [string]$target.environment
    baseUrl = [string]$target.baseUrl
    targetPort = if ($null -ne $target.PSObject.Properties["targetPort"]) { [string]$target.targetPort } else { "" }
  }
  auth = [ordered]@{
    envSource = if ($envReport.envSource) { [string]$envReport.envSource } else { "none" }
    authVariable = if ($envReport.authVariableAfter) { [string]$envReport.authVariableAfter } else { "none" }
    loadedEnvPath = if ($envReport.loadedEnvPath) { [string]$envReport.loadedEnvPath } else { "" }
  }
  inspection = [ordered]@{
    cliPresent = [bool]$railwayCommandPath
    variableListOk = $false
    authorizeBootstrapReady = $false
    blockers = @()
  }
  requestedRedirect = [ordered]@{
    requested = [string]$RedirectUri
    normalized = ""
    provided = (-not [string]::IsNullOrWhiteSpace($RedirectUri))
    validAbsoluteUrl = $false
    exactMatch = $false
  }
  variables = [ordered]@{}
}

if (-not $railwayCommandPath) {
  $summary.inspection.blockers += "Railway CLI not found."
} else {
  $variableResult = Invoke-CapturedCommand -Executable $railwayCommandPath -Arguments @(
    "variable", "list",
    "--service", [string]$target.service,
    "--environment", [string]$target.environment,
    "--json"
  )

  if (-not $variableResult.Success -or $null -eq $variableResult.Json) {
    $summary.inspection.blockers += "railway variable list did not return parseable JSON."
    $summary.inspection.variableListOk = $false
    $summary.inspection.error = $variableResult.Output
  } else {
    $variables = $variableResult.Json
    $summary.inspection.variableListOk = $true

    $summary.variables.PUBLIC_BASE_URL = Get-VariableSnapshot -Variables $variables -Name "PUBLIC_BASE_URL" -ExpectedValue ([string]$target.baseUrl)
    $summary.variables.PORT = Get-VariableSnapshot -Variables $variables -Name "PORT" -ExpectedValue ([string]$target.targetPort)
    $summary.variables.NODE_ENV = Get-VariableSnapshot -Variables $variables -Name "NODE_ENV"
    $summary.variables.OAUTH_DCR_ENABLED = Get-VariableSnapshot -Variables $variables -Name "OAUTH_DCR_ENABLED"
    $summary.variables.OAUTH_ALLOWED_REDIRECT_URIS = Get-AbsoluteUrlListSnapshot -Variables $variables -Name "OAUTH_ALLOWED_REDIRECT_URIS"
    $summary.variables.OAUTH_DEFAULT_SCOPE = Get-VariableSnapshot -Variables $variables -Name "OAUTH_DEFAULT_SCOPE"
    $summary.variables.OAUTH_DEV_SUBJECT = Get-VariableSnapshot -Variables $variables -Name "OAUTH_DEV_SUBJECT"
    $summary.variables.GITHUB_APP_ID = Get-VariableSnapshot -Variables $variables -Name "GITHUB_APP_ID" -Secret
    $summary.variables.GITHUB_INSTALLATION_ID = Get-VariableSnapshot -Variables $variables -Name "GITHUB_INSTALLATION_ID" -Secret
    $summary.variables.GITHUB_PRIVATE_KEY = Get-VariableSnapshot -Variables $variables -Name "GITHUB_PRIVATE_KEY" -Secret
    $summary.variables.MCP_SHARED_SECRET = Get-VariableSnapshot -Variables $variables -Name "MCP_SHARED_SECRET" -Secret
    $summary.variables.OAUTH_JWT_PRIVATE_KEY = Get-VariableSnapshot -Variables $variables -Name "OAUTH_JWT_PRIVATE_KEY" -Secret

    if (-not $summary.variables.PUBLIC_BASE_URL.matchesExpected) {
      $summary.inspection.blockers += "PUBLIC_BASE_URL does not match the target base URL."
    }

    if (-not $summary.variables.PORT.matchesExpected) {
      $summary.inspection.blockers += "PORT does not match the target port."
    }

    if (-not $summary.variables.OAUTH_ALLOWED_REDIRECT_URIS.nonEmpty) {
      $summary.inspection.blockers += "OAUTH_ALLOWED_REDIRECT_URIS is missing or empty; redirect allowlist bootstrap is blocked."
    } elseif ($summary.variables.OAUTH_ALLOWED_REDIRECT_URIS.invalidEntries.Count -gt 0) {
      $summary.inspection.blockers += "OAUTH_ALLOWED_REDIRECT_URIS contains invalid absolute URLs."
    }

    $summary.requestedRedirect = Get-RequestedRedirectSnapshot -RedirectUri $RedirectUri -AllowlistSnapshot $summary.variables.OAUTH_ALLOWED_REDIRECT_URIS

    if ($summary.requestedRedirect.provided -and (-not $summary.requestedRedirect.validAbsoluteUrl)) {
      $summary.inspection.blockers += "Requested redirect URI is not a valid absolute URL."
    } elseif ($summary.requestedRedirect.provided -and (-not $summary.requestedRedirect.exactMatch)) {
      $summary.inspection.blockers += "Requested redirect URI is not currently present in OAUTH_ALLOWED_REDIRECT_URIS."
    }

    if (-not $summary.variables.OAUTH_DEV_SUBJECT.nonEmpty) {
      $summary.inspection.blockers += "OAUTH_DEV_SUBJECT is missing or empty; authorization code bootstrap is blocked."
    }

    $summary.inspection.authorizeBootstrapReady = (
      $summary.variables.PUBLIC_BASE_URL.matchesExpected -and
      $summary.variables.PORT.matchesExpected -and
      ($summary.variables.OAUTH_ALLOWED_REDIRECT_URIS.validAbsoluteUrlCount -gt 0) -and
      $summary.variables.OAUTH_DEV_SUBJECT.nonEmpty -and
      (
        (-not $summary.requestedRedirect.provided) -or
        $summary.requestedRedirect.exactMatch
      )
    )
  }
}

if ($EmitJson) {
  $summary | ConvertTo-Json -Depth 10
} else {
  Write-Host "== Bootstrap inspection =="
  Write-Host ("Target: {0} / {1} / {2}" -f $summary.target.project, $summary.target.service, $summary.target.environment)
  Write-Host ("CLI present: {0}" -f $summary.inspection.cliPresent)
  Write-Host ("Variable list ok: {0}" -f $summary.inspection.variableListOk)
  Write-Host ("Authorize bootstrap ready: {0}" -f $summary.inspection.authorizeBootstrapReady)
  Write-Host ("PUBLIC_BASE_URL: {0}" -f $summary.variables.PUBLIC_BASE_URL.status)
  Write-Host ("PORT: {0}" -f $summary.variables.PORT.status)
  Write-Host ("NODE_ENV: {0}" -f $summary.variables.NODE_ENV.status)
  Write-Host ("OAUTH_DCR_ENABLED: {0}" -f $summary.variables.OAUTH_DCR_ENABLED.status)
  Write-Host ("OAUTH_ALLOWED_REDIRECT_URIS: {0} ({1} valid absolute URL(s))" -f $summary.variables.OAUTH_ALLOWED_REDIRECT_URIS.status, $summary.variables.OAUTH_ALLOWED_REDIRECT_URIS.validAbsoluteUrlCount)
  Write-Host ("OAUTH_DEFAULT_SCOPE: {0}" -f $summary.variables.OAUTH_DEFAULT_SCOPE.status)
  Write-Host ("OAUTH_DEV_SUBJECT: {0}" -f $summary.variables.OAUTH_DEV_SUBJECT.status)

  foreach ($entry in @($summary.variables.OAUTH_ALLOWED_REDIRECT_URIS.entries)) {
    Write-Host ("Active redirect URI: {0}" -f $entry)
  }

  if ($summary.requestedRedirect.provided) {
    Write-Host ("Requested redirect URI valid: {0}" -f $summary.requestedRedirect.validAbsoluteUrl)
    Write-Host ("Requested redirect URI exact match: {0}" -f $summary.requestedRedirect.exactMatch)
    if ($summary.requestedRedirect.normalized) {
      Write-Host ("Requested redirect URI normalized: {0}" -f $summary.requestedRedirect.normalized)
    }
  }

  foreach ($blocker in @($summary.inspection.blockers)) {
    Write-Host ("Blocker: {0}" -f $blocker)
  }
}

if ($RequireAuthorizeBootstrap -and (-not $summary.inspection.authorizeBootstrapReady)) {
  exit 1
}

exit 0
