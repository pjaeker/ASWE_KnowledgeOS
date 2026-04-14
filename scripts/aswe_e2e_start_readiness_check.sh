#!/usr/bin/env bash
set -euo pipefail
ROOT="${1:-.}"
missing=0
check() {
  if [ ! -f "$ROOT/$1" ]; then
    echo "MISSING: $1"
    missing=1
  fi
}
check ".codex/config.toml"
check ".codex/requirements.toml"
check ".codex/environments/environment.toml"
check "PROJECT_INSTRUCTIONS_ASWE_EvidenceIntake_SelfEvolution_20260414_V1.txt"
check "handbook/reference/ASWE_CodexApp_StartContract_20260414_V1.md"
check "handbook/protocol/ASWE_CodexApp_AutonomousStart_E2E_20260414_V1.md"
check "handbook/reference/ASWE_CodexApp_BootstrapPromptPack_20260414_V1.md"
check "handbook/reference/ASWE_EvidenceIntake_OperationalizationEval_20260413_V1.md"
check "handbook/reference/ASWE_ExecutionPackets_MinimumSet_20260413_V2.md"
check "handbook/reference/ASWE_CodexApp_ThreadOrchestration_Routing_Contract_20260413_V1.md"
check "handbook/reference/ASWE_CodexApp_M2_CoordinationSurface_Contract_20260413_V1.md"
if [ "$missing" -eq 0 ]; then
  echo "READY: minimal E2E start set present"
else
  exit 1
fi
