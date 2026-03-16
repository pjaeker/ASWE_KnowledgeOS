param(
  [string]$TargetConfigPath = "",
  [string]$RailwayBin = "railway",
  [switch]$IncludeLogs
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
    $railwayFallback = $false

    if ($headers.Contains("X-Railway-Fallback")) {
      $railwayFallback = ([string]$headers["X-Railway-Fallback"]).Trim().ToLowerInvariant() -eq "true"
    }

    $healthy = ($statusCode -eq 200) -and ($null -ne $json) -and ($json.ok -eq $true)

    return [pscustomobject]@{
      Success = $true
      Url = $healthUrl
      StatusCode = $statusCode
      Headers = $headers
      Body = $body
      Json = $json
      Healthy = $healthy
      RailwayFallback = $railwayFallback
      Error = ""
    }
  } catch {
    return [pscustomobject]@{
      Success = $false
      Url = $healthUrl
      StatusCode = $null
      Headers = [ordered]@{}
      Body = ""
      Json = $null
      Healthy = $false
      RailwayFallback = $false
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

function Get-LogItemCount {
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

function Get-DiagnosisPriority {
  param(
    [Parameter(Mandatory = $true)]
    [pscustomobject]$Health,

    [Parameter(Mandatory = $true)]
    [pscustomobject]$DeployDryRun,

    [Parameter(Mandatory = $true)]
    [pscustomobject]$SetEnvDryRun,

    [Parameter(Mandatory = $true)]
    [pscustomobject]$Target
  )

  $items = @()
  $hasPortEvidence = ($null -ne $Target.PSObject.Properties["targetPort"]) -and ($null -ne $Target.PSObject.Properties["observedListenPort"])
  $hasPortMismatch = $hasPortEvidence -and ([int]$Target.targetPort -ne [int]$Target.observedListenPort)

  if ($Health.Healthy) {
    $portState = "clear"
    $portReason = "No active /healthz symptom remains."
  } elseif ($hasPortMismatch) {
    $portState = "active"
    $portReason = "Railway status reports targetPort $($Target.targetPort) while recent runtime logs report the app listening on $($Target.observedListenPort); treat PORT_OR_HEALTHCHECK as the leading work hypothesis until /healthz is green."
  } elseif ($Health.Success -and ($Health.StatusCode -eq 502)) {
    $portState = "active"
    $portReason = "The health endpoint still fails; verify PORT binding and Railway healthcheck expectations first."
  } elseif (-not $Health.Success) {
    $portState = "active"
    $portReason = "Timeout or connection failure keeps PORT/healthcheck verification first in the queue."
  } else {
    $portState = "pending"
    $portReason = "Health is still red, but there is not enough evidence yet to isolate port mismatch as primary."
  }

  $items += [pscustomobject]@{
    Rank = 1
    Class = "PORT_OR_HEALTHCHECK"
    State = $portState
    Reason = $portReason
  }

  if ($Health.Healthy) {
    $bootState = "clear"
    $bootReason = "/healthz is green, so runtime is no longer the leading blocker."
  } elseif ($hasPortMismatch) {
    $bootState = "pending"
    $bootReason = "The container appears to boot and run node src/index.js, so BOOT_OR_RUNTIME stays secondary behind the current port hypothesis."
  } elseif ($Health.Success -and (($Health.RailwayFallback) -or ($Health.StatusCode -ge 500))) {
    $bootState = "active"
    $bootReason = "/healthz is not green and the response still points at Railway fallback or a 5xx symptom."
  } elseif (-not $Health.Success) {
    $bootState = "active"
    $bootReason = "/healthz could not be validated, so runtime stays first until proven otherwise."
  } else {
    $bootState = "active"
    $bootReason = "/healthz is not green, so runtime stays ahead of discovery and OAuth detail work."
  }

  $items += [pscustomobject]@{
    Rank = 2
    Class = "BOOT_OR_RUNTIME"
    State = $bootState
    Reason = $bootReason
  }

  if ($DeployDryRun.Available -and -not $DeployDryRun.Success) {
    $startState = "active"
    $startReason = "deploy.ps1 -DryRun did not complete cleanly, so writer path or deploy context needs review."
  } elseif ($DeployDryRun.Available) {
    $startState = "pending"
    $startReason = "deploy.ps1 -DryRun resolved the repo-local writer path; live start command and deploy context still need Railway read-back."
  } else {
    $startState = "pending"
    $startReason = "deploy.ps1 is missing, so start path and deploy context are still unverified."
  }

  $items += [pscustomobject]@{
    Rank = 3
    Class = "STARTPATH_OR_DEPLOY_CONTEXT"
    State = $startState
    Reason = $startReason
  }

  if ($SetEnvDryRun.Available -and -not $SetEnvDryRun.Success -and ($SetEnvDryRun.Output -match "Missing required environment variables")) {
    $envState = "pending"
    $envReason = "Local dry-run is missing required variables, but ENV_DRIFT stays behind health and runtime until /healthz is green."
  } elseif ($SetEnvDryRun.Available) {
    $envState = "pending"
    $envReason = "set_env.ps1 was checked in dry-run mode; live variable drift still needs explicit operator review."
  } else {
    $envState = "pending"
    $envReason = "set_env.ps1 is missing, so ENV_DRIFT remains unverified."
  }

  $items += [pscustomobject]@{
    Rank = 4
    Class = "ENV_DRIFT"
    State = $envState
    Reason = $envReason
  }

  if ($Health.Healthy) {
    $discoveryState = "next"
    $discoveryReason = "/healthz is green, so Discovery/OAuth smoke can move back into the active queue."
  } else {
    $discoveryState = "deferred"
    $discoveryReason = "Do not classify Discovery/OAuth as primary while /healthz is still red."
  }

  $items += [pscustomobject]@{
    Rank = 5
    Class = "DISCOVERY_OAUTH_ONLY"
    State = $discoveryState
    Reason = $discoveryReason
  }

  return $items
}

if (-not $TargetConfigPath) {
  $TargetConfigPath = "tools/mcp-writer/config/railway.target.json"
}

$resolvedTargetPath = Resolve-RepoPath -Path $TargetConfigPath
$target = Load-TargetConfig -Path $resolvedTargetPath
$resolvedWriterPath = Resolve-RepoPath -Path ([string]$target.writerPath)
$railwayCommandPath = Get-CommandPathSafe -Name $RailwayBin
$contextArguments = Get-RailwayContextArguments -Target $target

Write-Section "Target"
Write-Host ("Target config: {0}" -f $resolvedTargetPath)
Write-Host ("Project: {0}" -f $target.project)
Write-Host ("Service: {0}" -f $target.service)
Write-Host ("Environment: {0}" -f $target.environment)
Write-Host ("Base URL: {0}" -f $target.baseUrl)
Write-Host ("Writer path: {0}" -f $resolvedWriterPath)
if ($null -ne $target.PSObject.Properties["rootDirectory"]) {
  Write-Host ("Root directory: {0}" -f $target.rootDirectory)
}
if ($null -ne $target.PSObject.Properties["dockerfilePath"]) {
  Write-Host ("Dockerfile path: {0}" -f $target.dockerfilePath)
}
if ($null -ne $target.PSObject.Properties["targetPort"]) {
  Write-Host ("Target port: {0}" -f $target.targetPort)
}
if ($null -ne $target.PSObject.Properties["observedListenPort"]) {
  Write-Host ("Observed listen port: {0}" -f $target.observedListenPort)
}

Write-Section "CLI preflight"
if (-not $railwayCommandPath) {
  Write-Host ("Railway CLI not found on PATH for '{0}'." -f $RailwayBin)
  $versionResult = [pscustomobject]@{ Success = $false; ExitCode = 1; Output = "Railway CLI not found."; Json = $null }
  $whoamiResult = [pscustomobject]@{ Success = $false; ExitCode = 1; Output = "Railway CLI not found."; Json = $null }
  $statusResult = [pscustomobject]@{ Success = $false; ExitCode = 1; Output = "Railway CLI not found."; Json = $null }
} else {
  Write-Host ("Railway CLI: {0}" -f $railwayCommandPath)
  $versionResult = Invoke-CapturedCommand -Label "version" -Executable $railwayCommandPath -Arguments @("--version") -EchoOutput
  $whoamiResult = Invoke-CapturedCommand -Label "whoami (optional)" -Executable $railwayCommandPath -Arguments @("whoami", "--json") -ParseJson -EchoOutput
  if (-not $whoamiResult.Success) {
    Write-Host "whoami is optional here and remains non-fatal when project-scoped Railway tokens already allow status/log access."
  }
  $statusResult = Invoke-CapturedCommand -Label "status" -Executable $railwayCommandPath -Arguments (@("status", "--json") + $contextArguments) -ParseJson -EchoOutput
}

Write-Section "Health"
$health = Invoke-HealthCheck -BaseUrl ([string]$target.baseUrl)
Write-Host ("GET {0}" -f $health.Url)

if ($health.Success) {
  Write-Host ("Status: {0}" -f $health.StatusCode)

  if ($health.Headers.Contains("X-Railway-Fallback")) {
    Write-Host ("X-Railway-Fallback: {0}" -f $health.Headers["X-Railway-Fallback"])
  }

  if ($health.Headers.Contains("server")) {
    Write-Host ("server: {0}" -f $health.Headers["server"])
  }

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

Write-Section "Repo-local safe scripts"
$setEnvDryRun = Invoke-RepoScriptIfPresent -Label "set_env dry-run" -RelativePath "tools/mcp-writer/scripts/railway/set_env.ps1" -Arguments @(
  "-RailwayBin", $RailwayBin,
  "-Service", [string]$target.service,
  "-Environment", [string]$target.environment,
  "-DryRun"
)

$deployDryRun = Invoke-RepoScriptIfPresent -Label "deploy dry-run" -RelativePath "tools/mcp-writer/scripts/railway/deploy.ps1" -Arguments @(
  "-RailwayBin", $RailwayBin,
  "-Service", [string]$target.service,
  "-Environment", [string]$target.environment,
  "-WriterPath", [string]$target.writerPath,
  "-DryRun"
)

Write-Host ""
Write-Host "Discovery/OAuth smoke stays secondary until /healthz is green."
$smokePlan = Invoke-RepoScriptIfPresent -Label "smoke plan" -RelativePath "tools/mcp-writer/scripts/railway/smoke_oauth.ps1" -Arguments @(
  "-BaseUrl", [string]$target.baseUrl,
  "-PlanOnly"
)

Write-Section "Prepared read-only Railway commands"
$preparedCommands = @(
  (Join-CommandPreview -Binary $RailwayBin -Arguments (@("status", "--json") + $contextArguments)),
  (Join-CommandPreview -Binary $RailwayBin -Arguments (@("deployment", "list", "--limit", "10", "--json") + $contextArguments)),
  (Join-CommandPreview -Binary $RailwayBin -Arguments (@("logs", "--lines", "200", "--json") + $contextArguments)),
  (Join-CommandPreview -Binary $RailwayBin -Arguments (@("logs", "--build", "--lines", "200", "--json") + $contextArguments))
)

foreach ($preparedCommand in $preparedCommands) {
  Write-Host $preparedCommand
}

if ($IncludeLogs -and $railwayCommandPath) {
  Write-Section "Read-only Railway read-back"
  $deploymentList = Invoke-CapturedCommand -Label "deployment list" -Executable $railwayCommandPath -Arguments (@("deployment", "list", "--limit", "10", "--json") + $contextArguments) -ParseJson
  Write-Host ("deployment list success: {0}" -f $deploymentList.Success)
  Write-Host ("deployment items: {0}" -f (Get-LogItemCount -Json $deploymentList.Json -FallbackText $deploymentList.Output))

  $runtimeLogs = Invoke-CapturedCommand -Label "runtime logs" -Executable $railwayCommandPath -Arguments (@("logs", "--lines", "200", "--json") + $contextArguments) -ParseJson
  Write-Host ("runtime logs success: {0}" -f $runtimeLogs.Success)
  Write-Host ("runtime log items: {0}" -f (Get-LogItemCount -Json $runtimeLogs.Json -FallbackText $runtimeLogs.Output))

  $buildLogs = Invoke-CapturedCommand -Label "build logs" -Executable $railwayCommandPath -Arguments (@("logs", "--build", "--lines", "200", "--json") + $contextArguments) -ParseJson
  Write-Host ("build logs success: {0}" -f $buildLogs.Success)
  Write-Host ("build log items: {0}" -f (Get-LogItemCount -Json $buildLogs.Json -FallbackText $buildLogs.Output))
}

$diagnosis = Get-DiagnosisPriority -Health $health -DeployDryRun $deployDryRun -SetEnvDryRun $setEnvDryRun -Target $target

Write-Section "Diagnosis priority"
foreach ($item in $diagnosis) {
  Write-Host ("{0}. {1} [{2}] {3}" -f $item.Rank, $item.Class, $item.State, $item.Reason)
}

$leadingClass = $diagnosis | Where-Object { $_.State -eq "active" } | Sort-Object Rank | Select-Object -First 1
if ($null -eq $leadingClass) {
  $leadingClass = $diagnosis | Sort-Object Rank | Select-Object -First 1
}

Write-Host ("Leading class (heuristic): {0}" -f $leadingClass.Class)

Write-Section "Doctor result"
$cliPreflightOk = $versionResult.Success -and $statusResult.Success
Write-Host ("CLI preflight ok: {0}" -f $cliPreflightOk)
Write-Host ("whoami optional ok: {0}" -f $whoamiResult.Success)
Write-Host ("Health ok: {0}" -f $health.Healthy)
Write-Host ("Smoke plan available: {0}" -f $smokePlan.Available)

if ($cliPreflightOk -and $health.Healthy) {
  exit 0
}

exit 1
