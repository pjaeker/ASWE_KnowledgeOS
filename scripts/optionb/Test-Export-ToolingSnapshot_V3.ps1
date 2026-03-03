<#
.SYNOPSIS
  Smoke tests for Export-ToolingSnapshot_V3.ps1.

.DESCRIPTION
  Covers critical path handling and file creation behavior:
  - Relative OutDir writes successfully.
  - Absolute OutDir inside repo writes successfully.
  - OutDir outside repo is blocked.
#>

[CmdletBinding()]
param(
  [Parameter(Mandatory=$false)]
  [string]$RepoPath = "",

  [Parameter(Mandatory=$false)]
  [string]$ScriptPath = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $PSCommandPath
if ([string]::IsNullOrWhiteSpace($ScriptPath)) {
  $ScriptPath = Join-Path $scriptDir "Export-ToolingSnapshot_V3.ps1"
}
if ([string]::IsNullOrWhiteSpace($RepoPath)) {
  $RepoPath = (Resolve-Path (Join-Path $scriptDir "..\..")).Path
}

function Cleanup-Dir([string]$path) {
  if (Test-Path $path) {
    Remove-Item -Path $path -Recurse -Force
  }
}

function Find-LatestSnapshot([string]$dir, [string]$project, [string]$dateStamp) {
  if (!(Test-Path $dir)) { return $null }
  $pattern = "{0}_ToolingSnapshot_{1}_V*.yml" -f $project, $dateStamp
  return Get-ChildItem -Path $dir -Filter $pattern -ErrorAction SilentlyContinue |
    Sort-Object LastWriteTime -Descending |
    Select-Object -First 1
}

function Record-Result(
  [System.Collections.Generic.List[object]]$results,
  [string]$name,
  [bool]$passed,
  [string]$detail
) {
  $results.Add([pscustomobject]@{
    Name = $name
    Passed = $passed
    Detail = $detail
  }) | Out-Null
}

$repoAbs = [System.IO.Path]::GetFullPath((Resolve-Path $RepoPath).Path)
$scriptAbs = [System.IO.Path]::GetFullPath((Resolve-Path $ScriptPath).Path)
$dateStamp = (Get-Date).ToString("yyyyMMdd")

$results = New-Object System.Collections.Generic.List[object]
$failCount = 0

$testRootRel = "meta/state/tooling/_v3_smoke"
$testRootAbs = Join-Path $repoAbs $testRootRel
Cleanup-Dir $testRootAbs

# Test 1: relative OutDir works
$projectRel = "AgenticSWE_V3SmokeRel"
$outRel = Join-Path $testRootRel "relative"
try {
  & $scriptAbs -RepoPath $repoAbs -OutDir $outRel -Project $projectRel | Out-Null
  $fileRel = Find-LatestSnapshot (Join-Path $repoAbs $outRel) $projectRel $dateStamp
  if ($fileRel) {
    Record-Result $results "relative_outdir" $true ("Created: " + $fileRel.FullName)
  } else {
    $failCount++
    Record-Result $results "relative_outdir" $false "No snapshot file found."
  }
} catch {
  $failCount++
  Record-Result $results "relative_outdir" $false $_.Exception.Message
}

# Test 2: absolute OutDir inside repo works
$projectAbs = "AgenticSWE_V3SmokeAbs"
$outAbs = Join-Path $testRootAbs "absolute"
try {
  & $scriptAbs -RepoPath $repoAbs -OutDir $outAbs -Project $projectAbs | Out-Null
  $fileAbs = Find-LatestSnapshot $outAbs $projectAbs $dateStamp
  if ($fileAbs) {
    Record-Result $results "absolute_outdir_inside_repo" $true ("Created: " + $fileAbs.FullName)
  } else {
    $failCount++
    Record-Result $results "absolute_outdir_inside_repo" $false "No snapshot file found."
  }
} catch {
  $failCount++
  Record-Result $results "absolute_outdir_inside_repo" $false $_.Exception.Message
}

# Test 3: OutDir outside repo is blocked
$projectOutside = "AgenticSWE_V3SmokeOutside"
$outsideAbs = Join-Path (Split-Path -Parent $repoAbs) "_v3_smoke_outside"
try {
  & $scriptAbs -RepoPath $repoAbs -OutDir $outsideAbs -Project $projectOutside | Out-Null
  $failCount++
  Record-Result $results "outdir_outside_repo_blocked" $false "Unexpected success."
} catch {
  $msg = $_.Exception.Message
  if ($msg -like "*outside repo root*") {
    Record-Result $results "outdir_outside_repo_blocked" $true $msg
  } else {
    $failCount++
    Record-Result $results "outdir_outside_repo_blocked" $false $msg
  }
}

foreach ($r in $results) {
  if ($r.Passed) {
    Write-Host ("[PASS] {0} - {1}" -f $r.Name, $r.Detail)
  } else {
    Write-Host ("[FAIL] {0} - {1}" -f $r.Name, $r.Detail)
  }
}

Cleanup-Dir $testRootAbs

if ($failCount -gt 0) {
  throw ("Smoke tests failed: {0}" -f $failCount)
}

Write-Host "All V3 smoke tests passed."
