param(
  [Parameter(Mandatory = $true)]
  [ValidateSet("Restart", "Redeploy")]
  [string]$Action,

  [switch]$AllowMutation,

  [string]$TargetConfigPath = "",
  [string]$RailwayBin = "railway",

  [switch]$RunDoctorFirst,
  [switch]$RequireHealthyDoctor,
  [switch]$RunSmokeAfterHealthOk
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

function Write-Section {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Title
  )

  Write-Host ""
  Write-Host ("== {0} ==" -f $Title)
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
    return $Text | ConvertFrom-Json -Depth 20
  } catch {
    return $null
  }
}

function Format-Json {
  param(
    [Parameter(Mandatory = $true)]
    [object]$Value
  )

  return ($Value | ConvertTo-Json -Depth 20)
}

function Load-TargetConfig {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Path
  )

  if (-not (Test-Path -LiteralPath $Path)) {
    throw "Railway target config not found: $Path"
  }

  $config = Get-Content -Raw -Path $Path | ConvertFrom-Json -Depth 20

  foreach ($name in @("project", "service", "environment", "baseUrl", "writerPath")) {
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

function Get-PowerShellExecutable {
  try {
    return (Get-Process -Id $PID -ErrorAction Stop).Path
  } catch {
    return "pwsh"
  }
}

function Join-CommandPreview {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Binary,

    [Parameter(Mandatory = $true)]
    [string[]]$Arguments
  )

  if ($Arguments.Count -eq 0) {
    return $Binary
  }

  return "{0} {1}" -f $Binary, ($Arguments -join " ")
}

function Get-RailwayContextArguments {
  param(
    [Parameter(Mandatory = $true)]
    [pscustomobject]$Target
  )

  $arguments = @()

  if ($Target.project) {
    $arguments += @("--project", [string]$Target.project)
  }

  if ($Target.environment) {
    $arguments += @("--environment", [string]$Target.environment)
  }

  if ($Target.service) {
    $arguments += @("--service", [string]$Target.service)
  }

  return $arguments
}

function Invoke-CapturedCommand {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Label,

    [Parameter(Mandatory = $true)]
    [string]$Executable,

    [string[]]$Arguments = @(),

    [switch]$ParseJson,

    [switch]$EchoOutput
  )

  Write-Host ("[{0}] {1}" -f $Label, (Join-CommandPreview -Binary $Executable -Arguments $Arguments))

  try {
    $output = & $Executable @Arguments 2>&1
    $exitCode = if ($null -ne $LASTEXITCODE) { [int]$LASTEXITCODE } else { 0 }
  } catch {
    return [pscustomobject]@{
      Label = $Label
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
  if ($ParseJson) {
    $json = ConvertFrom-JsonSafe -Text $text
  }

  if ($EchoOutput -and -not [string]::IsNullOrWhiteSpace($text)) {
    if ($null -ne $json) {
      Write-Host (Format-Json -Value $json)
    } else {
      Write-Host $text
    }
  }

  return [pscustomobject]@{
    Label = $Label
    Success = ($exitCode -eq 0)
    ExitCode = $exitCode
    Output = $text
    Json = $json
  }
}

function Invoke-RequiredRailwayCommand {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Label,

    [Parameter(Mandatory = $true)]
    [string]$Executable,

    [string[]]$Arguments = @(),

    [switch]$ParseJson,

    [switch]$EchoOutput
  )

  $result = Invoke-CapturedCommand -Label $Label -Executable $Executable -Arguments $Arguments -ParseJson:$ParseJson -EchoOutput:$EchoOutput

  if (-not $result.Success) {
    throw ("{0} failed. {1}" -f $Label, $result.Output)
  }

  return $result
}

function Join-Url {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Left,

    [Parameter(Mandatory = $true)]
    [string]$Right
  )

  return "{0}/{1}" -f $Left.TrimEnd("/"), $Right.TrimStart("/")
}

function Invoke-HealthCheck {
  param(
    [Parameter(Mandatory = $true)]
    [string]$BaseUrl
  )

  $healthUrl = Join-Url -Left $BaseUrl -Right "/healthz"
  $client = [System.Net.Http.HttpClient]::new()
  $request = $null
  $response = $null
  $client.Timeout = [TimeSpan]::FromSeconds(20)

  try {
    $request = [System.Net.Http.HttpRequestMessage]::new([System.Net.Http.HttpMethod]::Get, $healthUrl)
    $request.Headers.TryAddWithoutValidation("Accept", "application/json") | Out-Null

    $response = $client.SendAsync($request).GetAwaiter().GetResult()
    $statusCode = [int]$response.StatusCode
    $body = $response.Content.ReadAsStringAsync().GetAwaiter().GetResult()
    $headers = [ordered]@{}

    foreach ($header in $response.Headers) {
      $headers[$header.Key] = ($header.Value -join ", ")
    }

    foreach ($header in $response.Content.Headers) {
      $headers[$header.Key] = ($header.Value -join ", ")
    }

    $json = ConvertFrom-JsonSafe -Text $body
    $healthy = ($statusCode -eq 200) -and ($null -ne $json) -and ($json.ok -eq $true)

    return [pscustomobject]@{
      Success = $true
      Url = $healthUrl
      StatusCode = $statusCode
      Body = $body
      Json = $json
      Headers = $headers
      Healthy = $healthy
      Error = ""
    }
  } catch {
    return [pscustomobject]@{
      Success = $false
      Url = $healthUrl
      StatusCode = $null
      Body = ""
      Json = $null
      Headers = [ordered]@{}
      Healthy = $false
      Error = $_.Exception.Message
    }
  } finally {
    if ($null -ne $request) {
      $request.Dispose()
    }

    if ($null -ne $response) {
      $response.Dispose()
    }

    $client.Dispose()
  }
}

function Get-ItemCount {
  param(
    [object]$Json,
    [string]$FallbackText
  )

  if ($null -ne $Json) {
    if ($Json -is [System.Array]) {
      return @($Json).Count
    }

    foreach ($name in @("logs", "entries", "deployments", "items")) {
      if ($Json.PSObject.Properties.Name -contains $name) {
        return @($Json.$name).Count
      }
    }

    return 1
  }

  if ([string]::IsNullOrWhiteSpace($FallbackText)) {
    return 0
  }

  return @($FallbackText -split "(\r?\n)+" | Where-Object { -not [string]::IsNullOrWhiteSpace($_) }).Count
}

function Invoke-LogSummary {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Label,

    [Parameter(Mandatory = $true)]
    [string]$Executable,

    [Parameter(Mandatory = $true)]
    [string[]]$Arguments
  )

  $result = Invoke-CapturedCommand -Label $Label -Executable $Executable -Arguments $Arguments -ParseJson
  Write-Host ("[{0}] success: {1}" -f $Label, $result.Success)
  Write-Host ("[{0}] items: {1}" -f $Label, (Get-ItemCount -Json $result.Json -FallbackText $result.Output))
  return $result
}

function Invoke-RepoScriptIfPresent {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Label,

    [Parameter(Mandatory = $true)]
    [string]$RelativePath,

    [string[]]$Arguments = @()
  )

  $fullPath = Resolve-RepoPath -Path $RelativePath

  if (-not (Test-Path -LiteralPath $fullPath)) {
    Write-Host ("[{0}] skip: file not found ({1})" -f $Label, $fullPath)
    return [pscustomobject]@{
      Label = $Label
      Available = $false
      Success = $true
      ExitCode = 0
      Output = ""
    }
  }

  Write-Host ("[{0}] {1} {2}" -f $Label, $fullPath, ($Arguments -join " "))
  $powerShellExecutable = Get-PowerShellExecutable

  try {
    $output = & $powerShellExecutable -NoProfile -File $fullPath @Arguments 2>&1
    $exitCode = if ($null -ne $LASTEXITCODE) { [int]$LASTEXITCODE } else { 0 }
  } catch {
    return [pscustomobject]@{
      Label = $Label
      Available = $true
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

  if (-not [string]::IsNullOrWhiteSpace($text)) {
    Write-Host $text
  }

  return [pscustomobject]@{
    Label = $Label
    Available = $true
    Success = ($exitCode -eq 0)
    ExitCode = $exitCode
    Output = $text
  }
}

if (-not $TargetConfigPath) {
  $TargetConfigPath = "tools/mcp-writer/config/railway.target.json"
}

if ($RequireHealthyDoctor) {
  $RunDoctorFirst = $true
}

$resolvedTargetPath = Resolve-RepoPath -Path $TargetConfigPath
$target = Load-TargetConfig -Path $resolvedTargetPath
$contextArguments = Get-RailwayContextArguments -Target $target
$railwayCommandPath = Get-CommandPathSafe -Name $RailwayBin

Write-Section "Target"
Write-Host ("Target config: {0}" -f $resolvedTargetPath)
Write-Host ("Action: {0}" -f $Action)
Write-Host ("Project: {0}" -f $target.project)
Write-Host ("Service: {0}" -f $target.service)
Write-Host ("Environment: {0}" -f $target.environment)
Write-Host ("Base URL: {0}" -f $target.baseUrl)
if ($null -ne $target.PSObject.Properties["targetPort"]) {
  Write-Host ("Target port: {0}" -f $target.targetPort)
}
if ($null -ne $target.PSObject.Properties["observedListenPort"]) {
  Write-Host ("Observed listen port: {0}" -f $target.observedListenPort)
}
Write-Host ("Doctor gate: {0}" -f ($(if ($RequireHealthyDoctor) { "run + require pass" } elseif ($RunDoctorFirst) { "run only" } else { "disabled" })))
Write-Host ("Smoke after health ok: {0}" -f ($(if ($RunSmokeAfterHealthOk) { "enabled" } else { "disabled" })))

if (-not $AllowMutation) {
  throw ("Mutation blocked. Re-run with -AllowMutation to confirm '{0}' for service '{1}' in environment '{2}'." -f $Action, $target.service, $target.environment)
}

if (-not $railwayCommandPath) {
  throw ("Railway CLI not found on PATH for '{0}'." -f $RailwayBin)
}

Write-Section "Preflight"
Write-Host ("Railway CLI: {0}" -f $railwayCommandPath)
$versionResult = Invoke-RequiredRailwayCommand -Label "version" -Executable $railwayCommandPath -Arguments @("--version") -EchoOutput
$whoamiResult = Invoke-CapturedCommand -Label "whoami (optional)" -Executable $railwayCommandPath -Arguments @("whoami", "--json") -ParseJson -EchoOutput
if (-not $whoamiResult.Success) {
  Write-Host "whoami is optional here and remains non-fatal when project-scoped Railway tokens already allow status/log access."
}
$statusBefore = Invoke-RequiredRailwayCommand -Label "status before" -Executable $railwayCommandPath -Arguments (@("status", "--json") + $contextArguments) -ParseJson -EchoOutput

if ($RunDoctorFirst) {
  Write-Section "Doctor gate"
  $doctorPath = Resolve-RepoPath -Path "tools/mcp-writer/scripts/railway/doctor_readonly.ps1"

  if (-not (Test-Path -LiteralPath $doctorPath)) {
    throw "Doctor script not found. Expected tools/mcp-writer/scripts/railway/doctor_readonly.ps1."
  }

  $doctorResult = Invoke-RepoScriptIfPresent -Label "doctor" -RelativePath "tools/mcp-writer/scripts/railway/doctor_readonly.ps1" -Arguments @(
    "-TargetConfigPath", $resolvedTargetPath,
    "-RailwayBin", $RailwayBin
  )

  if ($RequireHealthyDoctor -and -not $doctorResult.Success) {
    throw "Doctor gate failed and -RequireHealthyDoctor was set."
  }

  if (-not $doctorResult.Success) {
    Write-Host "Doctor did not pass. Continuing because -RequireHealthyDoctor was not set."
  }
}

Write-Section "Mutation"
switch ($Action) {
  "Restart" {
    $mutationArguments = @("restart", "--yes") + $contextArguments
  }
  "Redeploy" {
    $mutationArguments = @("redeploy", "--yes") + $contextArguments
  }
}

Write-Host ("Executing mutation: {0}" -f (Join-CommandPreview -Binary $RailwayBin -Arguments $mutationArguments))
$mutationResult = Invoke-RequiredRailwayCommand -Label $Action.ToLowerInvariant() -Executable $railwayCommandPath -Arguments $mutationArguments -EchoOutput

Write-Section "Read-back"
$statusAfter = Invoke-RequiredRailwayCommand -Label "status after" -Executable $railwayCommandPath -Arguments (@("status", "--json") + $contextArguments) -ParseJson -EchoOutput
$runtimeLogs = Invoke-LogSummary -Label "runtime logs" -Executable $railwayCommandPath -Arguments (@("logs", "--lines", "200", "--json") + $contextArguments)

$buildLogs = $null
if ($Action -eq "Redeploy") {
  $buildLogs = Invoke-LogSummary -Label "build logs" -Executable $railwayCommandPath -Arguments (@("logs", "--build", "--lines", "200", "--json") + $contextArguments)
}

$health = Invoke-HealthCheck -BaseUrl ([string]$target.baseUrl)
Write-Host ("GET {0}" -f $health.Url)

if ($health.Success) {
  Write-Host ("Status: {0}" -f $health.StatusCode)

  if ($health.Healthy) {
    Write-Host "Health classification: GREEN"
  } else {
    Write-Host "Health classification: RED"
  }

  if ($null -ne $health.Json) {
    Write-Host (Format-Json -Value $health.Json)
  } elseif (-not [string]::IsNullOrWhiteSpace($health.Body)) {
    Write-Host $health.Body
  }
} else {
  Write-Host ("Health request failed: {0}" -f $health.Error)
}

Write-Section "Smoke follow-up"
if ($RunSmokeAfterHealthOk) {
  if ($health.Healthy) {
    $smokeResult = Invoke-RepoScriptIfPresent -Label "smoke" -RelativePath "tools/mcp-writer/scripts/railway/smoke_oauth.ps1" -Arguments @(
      "-BaseUrl", [string]$target.baseUrl
    )

    if (-not $smokeResult.Success) {
      Write-Host "Smoke follow-up failed."
    }
  } else {
    Write-Host "Smoke follow-up skipped because /healthz is not green yet."
  }
} else {
  Write-Host "Smoke follow-up disabled. Re-run with -RunSmokeAfterHealthOk after /healthz is green."
}

Write-Section "Mutation result"
$readBackOk = $statusAfter.Success -and $runtimeLogs.Success -and $health.Healthy

if ($Action -eq "Redeploy") {
  $readBackOk = $readBackOk -and ($null -ne $buildLogs) -and $buildLogs.Success
}

Write-Host ("Mutation command ok: {0}" -f $mutationResult.Success)
Write-Host ("Read-back ok: {0}" -f $readBackOk)
Write-Host ("CLI/auth preflight ok: {0}" -f ($versionResult.Success -and $statusBefore.Success))
Write-Host ("whoami optional ok: {0}" -f $whoamiResult.Success)

if ($readBackOk) {
  exit 0
}

exit 1
