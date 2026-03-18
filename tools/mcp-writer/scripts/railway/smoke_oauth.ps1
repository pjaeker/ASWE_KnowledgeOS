param(
  [Parameter(Mandatory = $true)]
  [string]$BaseUrl,

  [string]$OutDir = "",

  [switch]$PlanOnly,
  [switch]$ProbeDcr,
  [switch]$ReadSmoke,

  [string]$ClientName = "ChatGPT Connector",
  [string]$RedirectUri = "https://chat.openai.com/aip/callback",
  [string]$Scope = "openid mcp.read",

  [string]$ClientId = "",
  [string]$AuthorizationCode = "",
  [string]$CodeVerifier = "",
  [string]$AccessToken = "",

  [string]$ReadRepo = "pjaeker/ASWE_KnowledgeOS",
  [string]$ReadPath = "blackboard/"
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

. (Join-Path $scriptRoot "railway_env_common.ps1")
Ensure-SystemNetHttp

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
  $client.Timeout = [TimeSpan]::FromSeconds(20)
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
    return ConvertFrom-JsonCompat -Text $Body
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

  $request = $null
  $response = $null
  $prefix = "{0:D2}-{1}" -f $Index, $Name
  $result = [ordered]@{
    name = $Name
    required = [bool]$Required
    method = $Method
    url = $Url
    expectedStatus = $ExpectedStatus
    status = $null
    passed = $false
    notes = @()
  }

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

  try {
    $response = $Client.SendAsync($request).GetAwaiter().GetResult()
    $responseBody = $response.Content.ReadAsStringAsync().GetAwaiter().GetResult()
    $headerMap = Get-HeaderMap -Response $response
    $jsonBody = Parse-JsonSafely -Body $responseBody
    $statusCode = [int]$response.StatusCode
    $result.status = $statusCode

    Save-Text -Path (Join-Path $script:OutDir "$prefix.status.txt") -Value $statusCode
    Save-Text -Path (Join-Path $script:OutDir "$prefix.headers.txt") -Value (($headerMap.GetEnumerator() | ForEach-Object {
          "{0}: {1}" -f $_.Key, $_.Value
        }) -join [Environment]::NewLine)
    Save-Text -Path (Join-Path $script:OutDir "$prefix.body.txt") -Value $responseBody

    if ($ExpectedStatus.Count -gt 0 -and -not $ExpectedStatus.Contains($statusCode)) {
      $result.notes += "Expected HTTP status in [$($ExpectedStatus -join ', ')], got $statusCode."
    }

    try {
      $assertionNotes = & $Assertion $response $headerMap $responseBody $jsonBody
    } catch {
      $result.notes += 'Assertion failed: ' + $_.Exception.Message
      $assertionNotes = @()
    }

    if ($assertionNotes -is [System.Array]) {
      $result.notes += $assertionNotes
    } elseif ($assertionNotes) {
      $result.notes += [string]$assertionNotes
    }
  } catch {
    $message = $_.Exception.Message
    if ($_.Exception.InnerException) {
      $message = "{0} :: {1}" -f $message, $_.Exception.InnerException.Message
    }

    Save-Text -Path (Join-Path $script:OutDir "$prefix.status.txt") -Value "REQUEST_ERROR"
    Save-Text -Path (Join-Path $script:OutDir "$prefix.headers.txt") -Value ""
    Save-Text -Path (Join-Path $script:OutDir "$prefix.body.txt") -Value ""
    Save-Text -Path (Join-Path $script:OutDir "$prefix.error.txt") -Value $message
    $result.notes += "Request failed: $message"
  } finally {
    if ($null -ne $response) {
      $response.Dispose()
    }

    if ($null -ne $request) {
      $request.Dispose()
    }
  }

  $result.passed = ($result.notes.Count -eq 0)
  return $result
}

if (-not $OutDir) {
  $OutDir = Join-Path $scriptRoot (".artifacts\\pr4-smoke\\{0}" -f (Get-Date -Format 'yyyyMMdd-HHmmss'))
}

$normalizedBaseUrl = $BaseUrl.TrimEnd("/")
$script:OutDir = [System.IO.Path]::GetFullPath($OutDir)

if ($PlanOnly) {
  $plan = [ordered]@{
    baseUrl = $normalizedBaseUrl
    required = @(
      "/healthz",
      "/.well-known/oauth-protected-resource",
      "/oauth/.well-known/openid-configuration",
      "/oauth/.well-known/oauth-authorization-server",
      "/oauth/jwks",
      "POST /mcp without token"
    )
    optional = @()
  }

  if ($ProbeDcr) {
    $plan.optional += "POST /oauth/register"
  }

  if ($AuthorizationCode -and $ClientId -and $CodeVerifier) {
    $plan.optional += "POST /oauth/token"
  }

  if ($AccessToken -or ($AuthorizationCode -and $ClientId -and $CodeVerifier)) {
    $plan.optional += "POST /mcp initialize"
  }

  if ($ReadSmoke) {
    $plan.optional += "POST /mcp tools/call list_tree"
  }

  $plan | ConvertTo-Json -Depth 5
  return
}

if (-not (Test-Path -LiteralPath $script:OutDir)) {
  New-Item -ItemType Directory -Path $script:OutDir -Force | Out-Null
}

$client = New-HttpClient
$results = @()

try {
  $protectedResourceUrl = Join-Url -Left $normalizedBaseUrl -Right "/.well-known/oauth-protected-resource"
  $oauthRoot = Join-Url -Left $normalizedBaseUrl -Right "/oauth"
  $mcpUrl = Join-Url -Left $normalizedBaseUrl -Right "/mcp"

  $results += Invoke-Probe -Client $client -Index 1 -Name "healthz" -Method "GET" -Url (Join-Url -Left $normalizedBaseUrl -Right "/healthz") -ExpectedStatus @(200) -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()
    if (-not $json) {
      $notes += "Expected JSON body from /healthz."
      return $notes
    }

    if ($json.ok -ne $true) {
      $notes += "Expected /healthz to return ok=true."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 2 -Name "protected-resource" -Method "GET" -Url $protectedResourceUrl -ExpectedStatus @(200) -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()
    if (-not $json) {
      $notes += "Expected protected-resource metadata JSON."
      return $notes
    }

    if ($json.resource -ne $mcpUrl) {
      $notes += "resource should equal '$mcpUrl'."
    }

    if (-not (@($json.authorization_servers) -contains $oauthRoot)) {
      $notes += "authorization_servers should include '$oauthRoot'."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 3 -Name "openid-configuration" -Method "GET" -Url (Join-Url -Left $normalizedBaseUrl -Right "/oauth/.well-known/openid-configuration") -ExpectedStatus @(200) -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()
    if (-not $json) {
      $notes += "Expected OpenID metadata JSON."
      return $notes
    }

    if ($json.issuer -ne $oauthRoot) {
      $notes += "issuer should equal '$oauthRoot'."
    }

    if (-not $json.authorization_endpoint) {
      $notes += "authorization_endpoint is missing."
    }

    if (-not $json.token_endpoint) {
      $notes += "token_endpoint is missing."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 4 -Name "oauth-authorization-server" -Method "GET" -Url (Join-Url -Left $normalizedBaseUrl -Right "/oauth/.well-known/oauth-authorization-server") -ExpectedStatus @(200) -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()
    if (-not $json) {
      $notes += "Expected OAuth authorization-server JSON."
      return $notes
    }

    if ($json.issuer -ne $oauthRoot) {
      $notes += "issuer should equal '$oauthRoot'."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 5 -Name "jwks" -Method "GET" -Url (Join-Url -Left $normalizedBaseUrl -Right "/oauth/jwks") -ExpectedStatus @(200) -Required -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()
    if (-not $json) {
      $notes += "Expected JWKS JSON."
      return $notes
    }

    if (-not $json.keys -or @($json.keys).Count -eq 0) {
      $notes += "Expected at least one JWK."
    }

    return $notes
  }

  $results += Invoke-Probe -Client $client -Index 6 -Name "mcp-missing-token" -Method "POST" -Url $mcpUrl -ExpectedStatus @(401) -Required -Headers @{
    Accept = "application/json, text/event-stream"
  } -Body '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{}}' -Assertion {
    param($response, $headers, $body, $json)

    $notes = @()
    if (-not $headers.Contains("WWW-Authenticate")) {
      $notes += "Missing WWW-Authenticate header on unauthorized MCP request."
    }

    return $notes
  }

  if ($ProbeDcr) {
    $dcrBody = @{
      client_name = $ClientName
      redirect_uris = @($RedirectUri)
      scope = $Scope
      grant_types = @("authorization_code")
      response_types = @("code")
      token_endpoint_auth_method = "none"
    } | ConvertTo-Json -Depth 10

    $results += Invoke-Probe -Client $client -Index 7 -Name "dcr-register" -Method "POST" -Url (Join-Url -Left $normalizedBaseUrl -Right "/oauth/register") -ExpectedStatus @(201) -Headers @{
      Accept = "application/json"
    } -Body $dcrBody -Assertion {
      param($response, $headers, $body, $json)

      $notes = @()
      if (-not $json) {
        $notes += "Expected DCR response JSON."
        return $notes
      }

      if (-not $json.client_id) {
        $notes += "Expected client_id in DCR response."
      }

      return $notes
    }
  }

  if (-not $AccessToken -and $AuthorizationCode -and $ClientId -and $CodeVerifier) {
    $tokenBody = @{
      grant_type = "authorization_code"
      client_id = $ClientId
      redirect_uri = $RedirectUri
      code = $AuthorizationCode
      code_verifier = $CodeVerifier
    } | ConvertTo-Json -Depth 10

    $tokenResult = Invoke-Probe -Client $client -Index 8 -Name "token" -Method "POST" -Url (Join-Url -Left $normalizedBaseUrl -Right "/oauth/token") -ExpectedStatus @(200) -Headers @{
      Accept = "application/json"
    } -Body $tokenBody -Assertion {
      param($response, $headers, $body, $json)

      $notes = @()
      if (-not $json) {
        $notes += "Expected token response JSON."
        return $notes
      }

      if (-not $json.access_token) {
        $notes += "Expected access_token in token response."
      }

      return $notes
    }

    $results += $tokenResult

    if ($tokenResult.passed) {
      $parsedToken = Parse-JsonSafely -Body (Get-Content -Raw -Path (Join-Path $script:OutDir "08-token.body.txt"))
      if ($parsedToken) {
        $AccessToken = [string]$parsedToken.access_token
      }
    }
  }

  if ($AccessToken) {
    $results += Invoke-Probe -Client $client -Index 9 -Name "mcp-initialize" -Method "POST" -Url $mcpUrl -ExpectedStatus @(200) -Headers @{
      Accept = "application/json"
      Authorization = "Bearer $AccessToken"
    } -Body '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{}}' -Assertion {
      param($response, $headers, $body, $json)

      $notes = @()
      if (-not $json) {
        $notes += "Expected MCP initialize JSON-RPC response."
      }

      return $notes
    }
  }

  if ($AccessToken -and $ReadSmoke) {
    $readBody = @{
      jsonrpc = "2.0"
      id = 2
      method = "tools/call"
      params = @{
        name = "list_tree"
        arguments = @{
          repo = $ReadRepo
          path = $ReadPath
        }
      }
    } | ConvertTo-Json -Depth 10

    $results += Invoke-Probe -Client $client -Index 10 -Name "mcp-read-smoke" -Method "POST" -Url $mcpUrl -ExpectedStatus @(200) -Headers @{
      Accept = "application/json"
      Authorization = "Bearer $AccessToken"
    } -Body $readBody -Assertion {
      param($response, $headers, $body, $json)

      $notes = @()
      if (-not $json) {
        $notes += "Expected JSON-RPC read response."
      }

      return $notes
    }
  }

  $summary = [ordered]@{
    baseUrl = $normalizedBaseUrl
    outDir = $script:OutDir
    passed = @($results | Where-Object { $_.passed }).Count
    failed = @($results | Where-Object { -not $_.passed }).Count
    results = $results
  }

  $summaryJson = $summary | ConvertTo-Json -Depth 10
  Save-Text -Path (Join-Path $script:OutDir "summary.json") -Value $summaryJson
  $summaryJson

  if (@($results | Where-Object { $_.required -and -not $_.passed }).Count -gt 0) {
    exit 1
  }
} finally {
  $client.Dispose()
}
