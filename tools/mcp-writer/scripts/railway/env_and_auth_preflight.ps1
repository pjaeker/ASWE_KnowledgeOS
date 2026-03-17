\
    [CmdletBinding()]
    param(
      [string]$SecretsEnvPath = ".codex/secrets/railway.env",
      [switch]$LoadLocalEnvFile,
      [switch]$RequireRailwayAuth,
      [switch]$EmitJson
    )

    $ErrorActionPreference = "Stop"

    function Add-Blocker {
      param([string]$Code)
      if (-not ($report.blockers -contains $Code)) {
        $report.blockers += $Code
      }
    }

    function Set-EnvFromFile {
      param([string]$Path)
      if (-not (Test-Path $Path)) { return }
      Get-Content $Path | ForEach-Object {
        if ($_ -match '^\s*#') { return }
        if ($_ -match '^\s*$') { return }
        $parts = $_ -split '=', 2
        if ($parts.Count -ne 2) { return }
        $name = $parts[0].Trim()
        $value = $parts[1].Trim()
        if ([string]::IsNullOrWhiteSpace($name)) { return }
        if ([string]::IsNullOrWhiteSpace($value)) { return }
        [System.Environment]::SetEnvironmentVariable($name, $value)
      }
    }

    $report = [ordered]@{
      codex_config_present = (Test-Path ".codex/config.toml")
      codex_agents_dir_present = (Test-Path ".codex/agents")
      codex_cli_present = $false
      codex_mcp_check_attempted = $false
      codex_mcp_check_ok = $false
      codex_mcp_summary = $null

      web_permission_runtime_check_supported = $false
      network_permission_runtime_check_supported = $false
      permission_note = "Web-/Netzwerkberechtigungen sind laufzeit- bzw. hostabhaengig und muessen zusaetzlich auf Runtime-Ebene bestaetigt werden."

      railway_cli_present = $false
      railway_cli_version = $null
      railway_auth_present = $false
      railway_auth_source = $null
      railway_whoami_ok = $false
      railway_whoami_summary = $null

      blockers = @()
      next_step = $null
      recommended_command = $null
    }

    if ($LoadLocalEnvFile) {
      Set-EnvFromFile -Path $SecretsEnvPath
    }

    $codexCmd = Get-Command codex -ErrorAction SilentlyContinue
    if ($null -ne $codexCmd) {
      $report.codex_cli_present = $true
      try {
        $report.codex_mcp_check_attempted = $true
        $mcpOut = & codex mcp list 2>$null
        if ($LASTEXITCODE -eq 0) {
          $report.codex_mcp_check_ok = $true
          if ($mcpOut) {
            $report.codex_mcp_summary = ($mcpOut | Select-Object -First 20) -join "`n"
          }
        }
      } catch {
        # keep report-only
      }
    }

    $railwayCmd = Get-Command railway -ErrorAction SilentlyContinue
    if ($null -ne $railwayCmd) {
      $report.railway_cli_present = $true
      try {
        $report.railway_cli_version = (& railway --version 2>$null) -join "`n"
      } catch {
        # keep report-only
      }
    } else {
      Add-Blocker "railway_cli_missing"
    }

    if ($env:RAILWAY_TOKEN) {
      $report.railway_auth_present = $true
      $report.railway_auth_source = "RAILWAY_TOKEN"
    } elseif ($env:RAILWAY_API_TOKEN) {
      $report.railway_auth_present = $true
      $report.railway_auth_source = "RAILWAY_API_TOKEN"
    }

    if ($report.railway_cli_present) {
      try {
        $who = & railway whoami --json 2>$null
        if ($LASTEXITCODE -eq 0 -and $who) {
          $report.railway_whoami_ok = $true
          $report.railway_whoami_summary = ($who | Select-Object -First 1)
          if (-not $report.railway_auth_present) {
            $report.railway_auth_present = $true
            $report.railway_auth_source = "railway_cli_context"
          }
        }
      } catch {
        # keep report-only
      }
    }

    if (-not $report.codex_config_present) { Add-Blocker "codex_config_missing" }
    if (-not $report.codex_agents_dir_present) { Add-Blocker "codex_agents_dir_missing" }

    if ($RequireRailwayAuth -and -not $report.railway_auth_present) {
      Add-Blocker "railway_auth_missing"
    }

    if ($report.railway_auth_present) {
      $report.next_step = "run_doctor_readonly"
      $report.recommended_command = "tools/mcp-writer/scripts/railway/doctor_readonly.ps1"
    } else {
      $report.next_step = "stay_repo_local_or_request_auth"
      $report.recommended_command = "Provide local Railway auth or continue only with repo-local read-only analysis."
    }

    if ($EmitJson) {
      $json = $report | ConvertTo-Json -Depth 6
      Write-Output $json
    } else {
      $report
    }

    if ($report.blockers.Count -gt 0) {
      exit 2
    } else {
      exit 0
    }
