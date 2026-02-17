#requires -Version 5.1
<#
Installs local-first security CLI tools used by OptionB Scan All.
Run from PowerShell in repo root:
  powershell -ExecutionPolicy Bypass -File scripts/optionb/install_security_tools_windows.ps1
#>

$ErrorActionPreference = "Stop"

function Have($cmd) { return (Get-Command $cmd -ErrorAction SilentlyContinue) -ne $null }

Write-Host "== OptionB Security Tools (Windows) =="

if (-not (Have "winget")) {
  Write-Host "WARN: winget not found. Install tools manually:"
  Write-Host "- Git for Windows (provides bash)"
  Write-Host "- gitleaks, trivy, osv-scanner (via choco/scoop/winget)"
  Write-Host "- pip-audit (python -m pip install --user pip-audit)"
  exit 1
}

$packages = @(
  @{ name="Gitleaks"; id="Gitleaks.Gitleaks"; cmd="gitleaks" },
  @{ name="Trivy"; id="AquaSecurity.Trivy"; cmd="trivy" }
)

foreach ($p in $packages) {
  if (Have $p.cmd) {
    Write-Host "OK: $($p.name) already installed ($($p.cmd))"
  } else {
    Write-Host "Installing: $($p.name) ($($p.id))"
    winget install --id $p.id -e --source winget
  }
}

if (-not (Have "osv-scanner")) {
  Write-Host "Trying to install OSV-Scanner via winget (best-effort)..."
  try {
    winget install --id "Google.OSVScanner" -e --source winget
  } catch {
    Write-Host "WARN: winget package for osv-scanner not found on this system."
    Write-Host "Manual install options:"
    Write-Host "  - Download release binary from google/osv-scanner"
  }
} else {
  Write-Host "OK: osv-scanner already installed"
}

if (-not (Have "pip-audit")) {
  if (Have "python") {
    Write-Host "Installing pip-audit via pip --user"
    python -m pip install --user --upgrade pip pip-audit
  } else {
    Write-Host "WARN: python not found; cannot install pip-audit automatically."
  }
} else {
  Write-Host "OK: pip-audit already installed"
}

Write-Host "DONE. Reopen VS Code terminal if commands aren't found (PATH refresh)."
