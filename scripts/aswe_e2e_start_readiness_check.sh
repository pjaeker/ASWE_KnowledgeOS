#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
missing=0
failed=0

check_file() {
  if [ ! -f "$ROOT/$1" ]; then
    echo "MISSING: $1"
    missing=1
  fi
}

check_contains() {
  local file="$1"
  local pattern="$2"
  local label="$3"
  if ! grep -Fq "$pattern" "$ROOT/$file"; then
    echo "CHECK FAILED: $label"
    failed=1
  fi
}

check_file ".codex/config.toml"
check_file ".codex/requirements.toml"
check_file ".codex/environments/environment.toml"
check_file "PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt"
check_file "handbook/reference/ASWE_CodexApp_StartContract_20260415_V2.md"
check_file "handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260415_V2.md"
check_file "handbook/reference/ASWE_CodexApp_BootstrapPromptPack_20260415_V2.md"
check_file "handbook/reference/ASWE_CodexApp_UI_Runbook_ArchitectureEvolution_20260415_V2.md"
check_file "handbook/reference/ASWE_CodexApp_EvidenceIntake_Systemprompt_20260415_V2.md"
check_file "handbook/reference/ASWE_CodexApp_SemanticEvolution_Systemprompt_20260415_V2.md"
check_file "handbook/reference/ASWE_CodexApp_E2E_Startability_Audit_20260415_V2.md"
check_file "handbook/reference/ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md"
check_file "handbook/reference/ASWE_ExecutionPackets_MinimumSet_20260413_V2.md"
check_file "handbook/reference/ASWE_CodexApp_ThreadOrchestration_Routing_Contract_20260413_V1.md"
check_file "handbook/reference/ASWE_CodexApp_M2_CoordinationSurface_Contract_20260413_V1.md"
check_file "handbook/reference/ASWE_CodexApp_SharedWorktree_Automation_Contract_20260413_V1.md"
check_file "scripts/aswe_codex_runtime_bootstrap.sh"

if [ -f "$ROOT/.codex/config.toml" ]; then
  check_contains ".codex/config.toml" 'approval_policy = "never"' ".codex/config.toml approval_policy never"
  check_contains ".codex/config.toml" 'sandbox_mode = "workspace-write"' ".codex/config.toml workspace-write"
  check_contains ".codex/config.toml" 'web_search = "live"' ".codex/config.toml web_search live"
  check_contains ".codex/config.toml" 'PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V2.txt' ".codex/config.toml project_doc fallback V2"
  check_contains ".codex/config.toml" 'network_access = true' ".codex/config.toml network access"
fi

if [ -f "$ROOT/.codex/requirements.toml" ]; then
  check_contains ".codex/requirements.toml" 'allowed_approval_policies = ["never"]' ".codex/requirements.toml approval policy allowlist"
  check_contains ".codex/requirements.toml" 'allowed_sandbox_modes = ["workspace-write"]' ".codex/requirements.toml sandbox allowlist"
fi

if [ -f "$ROOT/.codex/environments/environment.toml" ]; then
  check_contains ".codex/environments/environment.toml" 'script = "scripts/aswe_codex_runtime_bootstrap.sh"' ".codex/environments/environment.toml bootstrap script"
fi

if [ "$missing" -ne 0 ] || [ "$failed" -ne 0 ]; then
  echo "NOT READY: V2 startset missing or inconsistent"
  exit 1
fi

echo "READY: V2 Evidence-Intake self-evolution startset present and config aligned"
