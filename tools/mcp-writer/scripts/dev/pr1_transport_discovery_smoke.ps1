param(
  [Parameter(Mandatory = $true)]
  [string]$BaseUrl,

  [ValidateSet("GET", "POST")]
  [string]$McpMethod = "POST",

  [string]$McpBody = '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{}}',

  [string]$OutDir = "",

  [switch]$ProbeOAuthPreview
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Join-Url {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Left,

    [Parameter(Mandatory = $true)]
    [string]$Right
  )

  return ("{0}/{1}" -f $Left.TrimEnd("/"), $Right.TrimStart("/"))
}

function New-HttpClient {
  $handler = [System.Net.Http.HttpClientHandler]::new()
  $handler.AllowAutoRedirect = $false

  $client = [System.Net.Http.HttpClient]::new($handler)
  $client.Timeout = [TimeSpan]::FromSeconds(15)
  return $client
}

function Save-Text {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Path,

    [AllowEmptyString()]
    [string]$Value
  )

  $parent = Split-Path -Parent $Path
  if ($parent -and -not (Test-Path -LiteralPath $parent)) {
    New-Item -ItemType Directory -Path $parent -Force | Out-Null
  }

  [System.IO.File]::WriteAllText($Path, $Value, [System.Text.Encoding]::UTF8)
}

function Get-HeaderMap {
  param(
    [Parameter(Mandatory = $true)]
    [System.Net.Http.HttpResponseMessage]$Response
  )

  $map = [ordered]@{}

  foreach ($header in $Response.Headers) {
    $map[$header.Key] = ($header.Value -join ", ")
  }

  foreach ($header in $Response.Content.Headers) {
    $map[$header.Key] = ($header.Value -join ", ")
  }

  return $map
}

function Parse-JsonSafely {
  param(
    [AllowEmptyString()]
    [string]$Body
  )

  if ([string]::IsNullOrWhiteSpace($Body)) {
    return $null
  }

  try {
    return $Body | ConvertFrom-Json -Depth 20
  } catch {
    return $null
  }
}

function Invoke-Probe {
  param(
    [Parameter(Mandatory = $true)]
    [System.Net.Http.HttpClient]$Client,

    [Parameter(Mandatory = $true)]
    [int]$Index,

    [Parameter(Mandatory = $true)]
    [string]$Name,

    [Parameter(Mandatory = $true)]
    [string]$Method,

    [Parameter(Mandatory = $true)]
    [string]$Url,

    [int[]]$ExpectedStatus = @(),

    [hashtable]$Headers = @{},

    [AllowEmptyString()]
    [string]$Body = "",

    [switch]$Required,

    [Parameter(Mandatory = $true)]
    [scriptblock]$Assertion
  )

  $request = [System.Net.Http.HttpRequestMessage]::new(
    [System.Net.Http.HttpMethod]::new($Method),
    $Url
  )

  foreach ($headerName in $Headers.Keys) {
    $request.Headers.TryAddWithoutValidation($headerName, [string]$Headers[$headerName]) | Out-Null
  }

  if ($Body -and @("POST", "PUT", "PATCH").Contains($Method)) {
    $request.Content = [System.Net.Http.StringContent]::new($Body, [System.Text.Encoding]::UTF8, "application/json")
  }

  $response = $null
  $responseBody = ""

  try {
    $response = $Client.SendAsync($request).GetAwaiter().GetResult()
    $responseBody = $response.Content.ReadAsStringAsync().GetAwaiter().GetResult()
  } finally {
    $request.Dispose()
  }

  $headerMap = Get-HeaderMap -Response $response
  $jsonBody = Parse-JsonSafely -Body $responseBody
  $statusCode = [int]$response.StatusCode
  $prefix = "{0:D2}-{1}" -f $Index, $Name

  Save-Text -Path (Join-Path $OutDir "$prefix.status.txt") -Value $statusCode
  Save-Text -Path (Join-Path $OutDir "$prefix.headers.txt") -Value (($headerMap.GetEnumerator() | ForEach-Object {
        "{0}: {1}" -f $_.Key, $_.Value
      }) -join [Environment]::NewLine)
  Save-Text -Path (Join-Path $OutDir "$prefix.body.txt") -Value $responseBody

  $result = [ordered]@{
    name = $Name
    required = [bool]$Required
    method = $Method
    url = $Url
    expectedStatus = $ExpectedStatus
    status = $statusCode
    passed = $false
    notes = @()
  }

  if ($ExpectedStatus.Count -gt 0 -and -not $ExpectedStatus.Contains($statusCode)) {
    $result.notes += "Expected HTTP status in [$($ExpectedStatus -join ', ')], got $statusCode."
  }

  $assertionNotes = & $Assertion $response $headerMap $responseBody $jsonBody
  if ($assertionNotes -is [System.Array]) {
    $result.notes += $assertionNotes
  } elseif ($assertionNotes) {
    $result.notes += [string]$assertionNotes
  }

  $result.passed = ($result.notes.Count -eq 0)
  $response.Dispose()
  return $result
}

$scriptRoot = if ($PSScriptRoot) {
  $PSScriptRoot
} elseif ($PSCommandPath) {
  Split-Path -Parent $PSCommandPath
} else {
  (Get-Location).Path
}

if (-not $OutDir) {
  $OutDir = Join-Path $scriptRoot (".artifacts\\pr1-smoke\\{0}" -f (Get-Date -Format 'yyyyMMdd-HHmmss'))
}

$normalizedBaseUrl = $BaseUrl.TrimEnd("/")
$expectedMetadataUrl = Join-Url -Left $normalizedBaseUrl -Right "/.well-known/oauth-protected-resource"
$expectedMcpUrl = Join-Url -Left $normalizedBaseUrl -Right "/mcp"
$expectedAuthServer = Join-Url -Left $normalizedBaseUrl -Right "/oauth"
$outDirResolved = [System.IO.Path]::GetFullPath($OutDir)

if (-not (Test-Path -LiteralPath $outDirResolved)) {
  New-Item -ItemType Directory -Path $outDirResolved -Force | Out-Null
}

$script:OutDir = $outDirResolved
$client = New-HttpClient
$results = @()

try {
  $results += Invoke-Probe -Client $client -Index 1 -Name "healthz" -Method "GET" -Url (Join-Url -Left $normalizedBaseUrl -Right "/healthz") -ExpectedStatus @(200) -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()

    if ($headers.Contains("WWW-Authenticate")) {
      $notes += "Health endpoint should not advertise an auth challenge."
    }

    if (-not $json) {
      $notes += "Health endpoint should return JSON."
      return $notes
    }

    if ($json.ok -ne $true) {
      $notes += "Expected health JSON field ok=true."
    }

    if ($json.status -ne "ok") {
      $notes += "Expected health JSON field status='ok'."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 2 -Name "protected-resource" -Method "GET" -Url $expectedMetadataUrl -ExpectedStatus @(200) -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()

    if ($response.Headers.Location) {
      $notes += "Protected-resource metadata should not redirect."
    }

    if (-not $json) {
      $notes += "Protected-resource endpoint should return JSON metadata."
      return $notes
    }

    $authServers = @()
    if ($json.authorization_servers) {
      $authServers = @($json.authorization_servers)
    }

    if ($authServers.Count -eq 0) {
      $notes += "Expected authorization_servers array in protected-resource metadata."
    } elseif ($authServers -notcontains $expectedAuthServer) {
      $notes += "authorization_servers should contain '$expectedAuthServer'."
    }

    if (-not $json.resource) {
      $notes += "Expected resource field in protected-resource metadata."
    } elseif ($json.resource -ne $expectedMcpUrl) {
      $notes += "resource should match '$expectedMcpUrl'."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 3 -Name "mcp-missing-token" -Method $McpMethod -Url $expectedMcpUrl -ExpectedStatus @(401) -Headers @{
    Accept = "application/json, text/event-stream"
  } -Body $McpBody -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()
    $challenge = ""

    if ($headers.Contains("WWW-Authenticate")) {
      $challenge = [string]$headers["WWW-Authenticate"]
    } else {
      $notes += "Missing WWW-Authenticate header."
      return $notes
    }

    if ($challenge -notmatch "Bearer") {
      $notes += "WWW-Authenticate should announce a Bearer challenge."
    }

    if ($challenge -notmatch [Regex]::Escape("/.well-known/oauth-protected-resource")) {
      $notes += "WWW-Authenticate should reference the protected-resource metadata URL."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 4 -Name "mcp-wrong-bearer" -Method $McpMethod -Url $expectedMcpUrl -ExpectedStatus @(401) -Headers @{
    Accept = "application/json, text/event-stream"
    Authorization = "Bearer not-the-right-token"
  } -Body $McpBody -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()

    if (-not $headers.Contains("WWW-Authenticate")) {
      $notes += "Wrong bearer token should still produce WWW-Authenticate."
    }

    return $notes
  }

  if ($ProbeOAuthPreview) {
    $results += Invoke-Probe -Client $client -Index 5 -Name "oauth-preview" -Method "GET" -Url (Join-Url -Left $normalizedBaseUrl -Right "/oauth/.well-known/oauth-authorization-server") -ExpectedStatus @(200, 404, 405, 501) -Assertion {
      param($response, $headers, $body, $json)

      $notes = @()
      if ([int]$response.StatusCode -ge 500 -and [int]$response.StatusCode -ne 501) {
        $notes += "PR-1 should not regress into an unexpected 5xx on the preview OAuth discovery path."
      }

      return $notes
    }
  }
} finally {
  $client.Dispose()
}

$summary = [ordered]@{
  generatedAt = (Get-Date).ToString("o")
  baseUrl = $normalizedBaseUrl
  outDir = $outDirResolved
  contract = [ordered]@{
    protectedResourceUrl = $expectedMetadataUrl
    mcpUrl = $expectedMcpUrl
    expectedAuthorizationServer = $expectedAuthServer
    mcpMethod = $McpMethod
    mcpBody = $McpBody
    notes = @(
      "POST initialize is the default PR-1 smoke because the current transport lands as JSON-RPC over HTTP.",
      "OAuth preview probing is informational only until the PR-2 OAuth server exists."
    )
  }
  checks = $results
}

$summaryJson = $summary | ConvertTo-Json -Depth 20
Save-Text -Path (Join-Path $outDirResolved "summary.json") -Value $summaryJson

$failedRequired = @($results | Where-Object { $_.required -and -not $_.passed })

foreach ($result in $results) {
  $state = if ($result.passed) { "PASS" } else { "FAIL" }
  Write-Host ("[{0}] {1} {2} -> {3}" -f $state, $result.method, $result.url, $result.status)
  foreach ($note in $result.notes) {
    Write-Host ("  - {0}" -f $note)
  }
}

Write-Host ("Evidence written to {0}" -f $outDirResolved)

if ($failedRequired.Count -gt 0) {
  exit 1
}
