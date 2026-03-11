#!/usr/bin/env python3
from __future__ import annotations

import argparse
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Iterable, Optional

VERSION_RE = re.compile(r"(?P<date>20\d{6})_V(?P<version>\d+)")
CORE_FLOW_RE = re.compile(r"ENTRY_LATEST\s*->\s*RepoStatusUpdate\s*->\s*Workstreams?", re.IGNORECASE)
LEGACY_PROMPT_RE = re.compile(r"SESSION_BOOTSTRAP|SESSION_CLOSEOUT", re.IGNORECASE)


@dataclass(order=True)
class RankedPath:
    date: str
    version: int
    path: Path


@dataclass
class Finding:
    severity: str
    check_id: str
    message: str
    files: list[Path] = field(default_factory=list)


@dataclass
class ValidationReport:
    repo_root: Path
    findings: list[Finding]

    @property
    def pass_count(self) -> int:
        return sum(1 for item in self.findings if item.severity == "pass")

    @property
    def warn_count(self) -> int:
        return sum(1 for item in self.findings if item.severity == "warn")

    @property
    def fail_count(self) -> int:
        return sum(1 for item in self.findings if item.severity == "fail")

    @property
    def overall(self) -> str:
        if self.fail_count:
            return "fail"
        if self.warn_count:
            return "warn"
        return "pass"

    @property
    def exit_code(self) -> int:
        return 1 if self.fail_count else 0


@dataclass
class CanonicalPaths:
    agents: Path
    entry_latest: Optional[Path]
    business_sync: Optional[Path]
    meaning_map: Optional[Path]
    routing_strategy: Optional[Path]
    repo_status_runbook: Optional[Path]
    chatgui_routing_entry: Optional[Path]
    repo_status: Optional[Path]


def repo_root_from(start: Path) -> Path:
    for candidate in [start, *start.parents]:
        if (candidate / ".git").exists() or (candidate / "meta").exists():
            return candidate
    return start


def rank_path(path: Path) -> Optional[RankedPath]:
    match = VERSION_RE.search(path.name)
    if not match:
        return None
    return RankedPath(match.group("date"), int(match.group("version")), path)


def newest(paths: Iterable[Path]) -> Optional[Path]:
    ranked = [r for p in paths if (r := rank_path(p)) is not None]
    if not ranked:
        return None
    ranked.sort()
    return ranked[-1].path


def newest_from_patterns(repo_root: Path, patterns: list[str]) -> Optional[Path]:
    candidates: list[Path] = []
    for pattern in patterns:
        candidates.extend(repo_root.glob(pattern))
    return newest(candidates)


def rel(path: Path, repo_root: Path) -> str:
    return path.relative_to(repo_root).as_posix()


def read_text(path: Optional[Path]) -> str:
    if path is None or not path.exists():
        return ""
    return path.read_text(encoding="utf-8")


def normalize(text: str) -> str:
    return text.replace("`", "").lower()


def mentions_in_order(text: str, tokens: list[str]) -> bool:
    pos = -1
    for token in tokens:
        pos = text.find(token, pos + 1)
        if pos == -1:
            return False
    return True


def has_core_flow(text: str) -> bool:
    normalized = normalize(text)
    return bool(CORE_FLOW_RE.search(text)) or mentions_in_order(
        normalized,
        ["entry_latest", "repostatusupdate", "workstream"],
    )


def has_optional_handoff_language(text: str) -> bool:
    normalized = normalize(text)
    if "handoff" not in normalized:
        return False
    return any(
        phrase in normalized
        for phrase in [
            "optional",
            "keine standardvoraussetzung",
            "ohne handoff",
            "nur bei bedarf",
            "resume-sidecar",
            "resume sidecar",
        ]
    )


def canonical_paths(repo_root: Path) -> CanonicalPaths:
    return CanonicalPaths(
        agents=repo_root / "AGENTS.md",
        entry_latest=newest_from_patterns(repo_root, ["meta/state/entry/*ENTRY_LATEST*_V*.md"]),
        business_sync=newest_from_patterns(repo_root, ["handbook/howto/*BusinessSync_SessionRitual_HowTo*_V*.md"]),
        meaning_map=newest_from_patterns(repo_root, ["meta/state/*RepoMeaningMap*_V*.md"]),
        routing_strategy=newest_from_patterns(repo_root, ["handbook/explanation/*RoutingNavigationUX_Strategy*_V*.md"]),
        repo_status_runbook=newest_from_patterns(repo_root, ["handbook/runbooks/*RepoStatusUpdate_Runbook*_V*.md"]),
        chatgui_routing_entry=newest_from_patterns(
            repo_root,
            [
                "meta/state/*ChatGUI_RoutingEntry*_V*.md",
                "meta/state/entry/*ChatGUI_RoutingEntry*_V*.md",
            ],
        ),
        repo_status=newest_from_patterns(repo_root, ["meta/state/*RepoStatusUpdate*_V*.md"]),
    )


def make_finding(severity: str, check_id: str, message: str, files: Iterable[Path] = ()) -> Finding:
    unique_files = list(dict.fromkeys(files))
    return Finding(severity=severity, check_id=check_id, message=message, files=unique_files)


def validate_required_files(repo_root: Path, paths: CanonicalPaths) -> Finding:
    required = {
        "AGENTS.md": paths.agents,
        "ENTRY_LATEST": paths.entry_latest,
        "BusinessSync SessionRitual": paths.business_sync,
        "RepoMeaningMap": paths.meaning_map,
        "RoutingNavigationUX Strategy": paths.routing_strategy,
        "RepoStatusUpdate Runbook": paths.repo_status_runbook,
        "ChatGUI RoutingEntry": paths.chatgui_routing_entry,
    }
    missing = [label for label, path in required.items() if path is None or not path.exists()]
    if missing:
        return make_finding(
            "fail",
            "required_files",
            f"Missing canonical session-contract files: {', '.join(missing)}.",
        )
    return make_finding(
        "pass",
        "required_files",
        "All canonical session-contract files required for validation are present.",
        [path for path in required.values() if path is not None],
    )


def validate_agents_route(repo_root: Path, paths: CanonicalPaths) -> Finding:
    text = read_text(paths.agents)
    issues: list[str] = []
    if not has_core_flow(text):
        issues.append("missing core flow `ENTRY_LATEST -> RepoStatusUpdate -> Workstream`")
    normalized = normalize(text)
    if "repo-lokale operative startkarte" not in normalized:
        issues.append("missing repo-local adapter wording for Codex/Copilot")
    if "chatgpt gui startet semantisch" not in normalized:
        issues.append("missing GUI adapter wording for ENTRY_LATEST")
    if issues:
        return make_finding(
            "fail",
            "agents_route",
            "AGENTS.md does not fully describe the harmonized adapter + core-flow contract: " + "; ".join(issues) + ".",
            [paths.agents],
        )
    return make_finding(
        "pass",
        "agents_route",
        "AGENTS.md points Codex repo-locally into the shared `ENTRY_LATEST -> RepoStatusUpdate -> Workstream` flow.",
        [paths.agents],
    )


def validate_business_sync(repo_root: Path, paths: CanonicalPaths) -> Finding:
    text = read_text(paths.business_sync)
    issues: list[str] = []
    fail_patterns = [
        r"Beginne jede Session mit dem Session Bootstrap Prompt",
        r"Beende jede Session mit dem Session Closeout Prompt",
        r"^SESSION_BOOTSTRAP\s*\(ASWE\)",
        r"^SESSION_CLOSEOUT\s*\(ASWE\)",
    ]
    for pattern in fail_patterns:
        if re.search(pattern, text, re.IGNORECASE | re.MULTILINE):
            issues.append(f"reintroduces competing legacy prompt path via pattern `{pattern}`")
    normalized = normalize(text)
    for token in ["entry_latest", "repostatusupdate", "workstream"]:
        if token not in normalized:
            issues.append(f"missing `{token}` in latest BusinessSync how-to")
    if issues:
        return make_finding(
            "fail",
            "business_sync_primary_path",
            "Latest BusinessSync SessionRitual HowTo conflicts with the entry-first contract: " + "; ".join(issues) + ".",
            [paths.business_sync] if paths.business_sync is not None else [],
        )
    return make_finding(
        "pass",
        "business_sync_primary_path",
        "Latest BusinessSync SessionRitual HowTo keeps `ENTRY_LATEST -> RepoStatusUpdate -> Workstream` as the primary GUI path.",
        [paths.business_sync] if paths.business_sync is not None else [],
    )


def validate_meaningmap_and_strategy(repo_root: Path, paths: CanonicalPaths) -> Finding:
    checks = []
    for label, path in [("RepoMeaningMap", paths.meaning_map), ("RoutingNavigationUX", paths.routing_strategy)]:
        text = read_text(path)
        normalized = normalize(text)
        missing: list[str] = []
        if not has_core_flow(text):
            missing.append("core flow")
        if "agents.md" not in normalized:
            missing.append("AGENTS adapter")
        if "entry_latest" not in normalized:
            missing.append("ENTRY_LATEST adapter")
        if not has_optional_handoff_language(text):
            missing.append("optional handoff wording")
        checks.append((label, path, missing))

    problems = [f"{label}: {', '.join(missing)}" for label, _path, missing in checks if missing]
    if problems:
        files = [path for _label, path, missing in checks if missing and path is not None]
        return make_finding(
            "fail",
            "meaningmap_strategy_contract",
            "Current RepoMeaningMap / RoutingNavigationUX strategy do not express the same session contract: " + "; ".join(problems) + ".",
            files,
        )
    return make_finding(
        "pass",
        "meaningmap_strategy_contract",
        "Current RepoMeaningMap and RoutingNavigationUX strategy express the same adapter-based session contract.",
        [path for _label, path, _missing in checks if path is not None],
    )


def validate_entry_pointer_bundle(repo_root: Path, paths: CanonicalPaths) -> Finding:
    text = read_text(paths.entry_latest)
    normalized = normalize(text)
    issues: list[str] = []
    if not any(marker in normalized for marker in ["minimaler startpunkt", "pointer", "neu referenziert"]):
        issues.append("missing pointer/startpoint wording")
    if "status update:" not in normalized:
        issues.append("missing RepoStatusUpdate pointer")
    if "workstreams" not in normalized:
        issues.append("missing workstream pointer section")
    if "nicht neu erzeugt" not in normalized and "nur neu referenziert" not in normalized:
        issues.append("missing explicit no-full-refresh wording")
    if LEGACY_PROMPT_RE.search(text):
        issues.append("contains legacy SESSION_BOOTSTRAP / SESSION_CLOSEOUT prompt references")
    if issues:
        return make_finding(
            "fail",
            "entry_pointer_bundle",
            "Latest ENTRY_LATEST no longer looks like a thin pointer bundle: " + "; ".join(issues) + ".",
            [paths.entry_latest] if paths.entry_latest is not None else [],
        )
    return make_finding(
        "pass",
        "entry_pointer_bundle",
        "Latest ENTRY_LATEST remains a thin pointer bundle and does not imply a full refresh.",
        [paths.entry_latest] if paths.entry_latest is not None else [],
    )


def validate_optional_handoff(repo_root: Path, paths: CanonicalPaths) -> Finding:
    files = [
        paths.agents,
        paths.business_sync,
        paths.meaning_map,
        paths.routing_strategy,
        paths.repo_status_runbook,
        paths.chatgui_routing_entry,
    ]
    mandatory_hits: list[tuple[Path, str]] = []
    optional_hits: list[tuple[Path, str]] = []

    for path in files:
        if path is None:
            continue
        for raw_line in read_text(path).splitlines():
            line = raw_line.strip()
            lowered = line.lower()
            if "handoff" not in lowered:
                continue
            if any(token in lowered for token in ["optional", "keine standardvoraussetzung", "ohne handoff", "nur bei bedarf", "resume-sidecar", "resume sidecar"]):
                optional_hits.append((path, line))
                continue
            if any(token in lowered for token in ["pflicht", "verpflicht", "voraussetzung", " muss "]):
                if not any(negation in lowered for negation in ["kein ", "keine ", "nicht ", "ohne "]):
                    mandatory_hits.append((path, line))

    if mandatory_hits:
        return make_finding(
            "fail",
            "nextchat_optional",
            "Current canonical files still describe Handoff as mandatory or prerequisite in at least one line.",
            [path for path, _line in mandatory_hits],
        )
    if not optional_hits:
        return make_finding(
            "fail",
            "nextchat_optional",
            "Current canonical files do not positively describe `NextChat-Handoff` as optional resume-only context.",
            [path for path in files if path is not None],
        )
    return make_finding(
        "pass",
        "nextchat_optional",
        "Current canonical files consistently describe `NextChat-Handoff` as optional resume context, not a start prerequisite.",
        [path for path, _line in optional_hits],
    )


def warn_for_legacy_prompt_drift(repo_root: Path) -> Finding:
    files = []
    for pattern in [
        ".github/prompts/*SessionBootstrap*_V*.prompt.md",
        ".github/prompts/*SessionCloseout*_V*.prompt.md",
    ]:
        for path in repo_root.glob(pattern):
            if LEGACY_PROMPT_RE.search(read_text(path)):
                files.append(path)
    if files:
        return make_finding(
            "warn",
            "legacy_prompt_drift",
            "Legacy prompt files still exist and advertise `SESSION_BOOTSTRAP` / `SESSION_CLOSEOUT`; PR-B surfaces this drift but does not rewrite those files.",
            sorted(files),
        )
    return make_finding(
        "pass",
        "legacy_prompt_drift",
        "No legacy prompt-file drift detected under `.github/prompts/`.",
    )


def warn_for_legacy_session_entry_drift(repo_root: Path) -> Finding:
    files = []
    for path in repo_root.glob("meta/state/entry/*SessionEntry*_V*.md"):
        text = read_text(path)
        normalized = normalize(text)
        if LEGACY_PROMPT_RE.search(text) or "sessionentry -> repomeaningmap" in normalized:
            files.append(path)
    if files:
        return make_finding(
            "warn",
            "legacy_session_entry_drift",
            "Historical SessionEntry files still describe the older prompt- or MeaningMap-first start path.",
            sorted(files),
        )
    return make_finding(
        "pass",
        "legacy_session_entry_drift",
        "No historical SessionEntry drift detected.",
    )


def warn_for_legacy_router_drift(repo_root: Path, paths: CanonicalPaths) -> Finding:
    files = []
    candidates = [
        repo_root / "meta/state/entry/AgenticSWE_KnowledgeOS_ChatGUI_RoutingEntry_20260303_V1.md",
        repo_root / "handbook/runbooks/AgenticSWE_KnowledgeOS_RepoStatusUpdate_Runbook_20260305_V1.md",
        repo_root / "handbook/howto/AgenticSWE_BusinessSync_SessionRitual_HowTo_20260302_V1.md",
    ]
    for path in candidates:
        if not path.exists():
            continue
        text = read_text(path)
        normalized = normalize(text)
        if LEGACY_PROMPT_RE.search(text) or "entry-latest (start here):" in normalized or "meaningmap" in normalized:
            files.append(path)
    if files:
        return make_finding(
            "warn",
            "legacy_router_drift",
            "Older router/runbook/how-to files remain in the repo and still expose pre-entry-first navigation hints.",
            files,
        )
    return make_finding(
        "pass",
        "legacy_router_drift",
        "No older router/runbook drift detected in the tracked legacy candidates.",
    )


def warn_for_repo_status_adapter_drift(repo_root: Path, paths: CanonicalPaths) -> Finding:
    text = read_text(paths.repo_status)
    normalized = normalize(text)
    indicators = [
        "operative startkarte fuer chatgpt, codex und copilot",
        "ag ents.md wird als operative startkarte fuer chatgpt, codex und copilot",
    ]
    if any(indicator in normalized for indicator in indicators) or (
        "entry -> status -> workstreams" in normalized and "chatgpt gui startet semantisch" not in normalized
    ):
        return make_finding(
            "warn",
            "repo_status_adapter_drift",
            "Latest RepoStatusUpdate still compresses GUI and Codex adapters into older routing wording; visible drift only, not auto-rewritten in PR-B.",
            [paths.repo_status] if paths.repo_status is not None else [],
        )
    return make_finding(
        "pass",
        "repo_status_adapter_drift",
        "Latest RepoStatusUpdate does not expose obvious adapter drift.",
        [paths.repo_status] if paths.repo_status is not None else [],
    )


def run_validation(repo_root: Path) -> ValidationReport:
    paths = canonical_paths(repo_root)
    findings = [
        validate_required_files(repo_root, paths),
        validate_agents_route(repo_root, paths),
        validate_business_sync(repo_root, paths),
        validate_meaningmap_and_strategy(repo_root, paths),
        validate_entry_pointer_bundle(repo_root, paths),
        validate_optional_handoff(repo_root, paths),
        warn_for_legacy_prompt_drift(repo_root),
        warn_for_legacy_session_entry_drift(repo_root),
        warn_for_legacy_router_drift(repo_root, paths),
        warn_for_repo_status_adapter_drift(repo_root, paths),
    ]
    return ValidationReport(repo_root=repo_root, findings=findings)


def print_report(report: ValidationReport) -> None:
    print("== Session Contract Validation ==")
    for finding in report.findings:
        upper = finding.severity.upper()
        print(f"{upper} [{finding.check_id}] {finding.message}")
        for path in finding.files:
            print(f"  - {rel(path, report.repo_root)}")
    print()
    print(
        "Summary: "
        f"overall={report.overall} "
        f"pass={report.pass_count} warn={report.warn_count} fail={report.fail_count}"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description="Validate the harmonized ASWE session contract and surface routing drift")
    parser.add_argument("--repo-root", default=".")
    args = parser.parse_args()

    repo_root = repo_root_from(Path(args.repo_root).resolve())
    report = run_validation(repo_root)
    print_report(report)
    return report.exit_code


if __name__ == "__main__":
    sys.exit(main())


