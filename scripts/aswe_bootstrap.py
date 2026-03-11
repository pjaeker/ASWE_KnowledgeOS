#!/usr/bin/env python3
from __future__ import annotations

import argparse
import pathlib
import re
import sys
from dataclasses import dataclass
from typing import Iterable, List, Optional

from validate_session_contract import print_report, run_validation

VERSION_RE = re.compile(r"(?P<date>20\d{6})_V(?P<version>\d+)")


@dataclass(order=True)
class RankedPath:
    date: str
    version: int
    path: pathlib.Path


@dataclass
class BootstrapState:
    repo_root: pathlib.Path
    entry_latest: Optional[pathlib.Path]
    repo_status: Optional[pathlib.Path]
    workstreams: List[pathlib.Path]
    meaning_map: Optional[pathlib.Path]
    snapshot: Optional[pathlib.Path]
    manifest: Optional[pathlib.Path]


def repo_root_from(start: pathlib.Path) -> pathlib.Path:
    for candidate in [start, *start.parents]:
        if (candidate / ".git").exists() or (candidate / "meta").exists():
            return candidate
    return start


def rank_path(path: pathlib.Path) -> Optional[RankedPath]:
    match = VERSION_RE.search(path.name)
    if not match:
        return None
    return RankedPath(
        date=match.group("date"),
        version=int(match.group("version")),
        path=path,
    )


def newest(paths: Iterable[pathlib.Path]) -> Optional[pathlib.Path]:
    ranked = [r for p in paths if (r := rank_path(p)) is not None]
    if not ranked:
        return None
    ranked.sort()
    return ranked[-1].path


def newest_n(paths: Iterable[pathlib.Path], count: int) -> List[pathlib.Path]:
    ranked = [r for p in paths if (r := rank_path(p)) is not None]
    ranked.sort(reverse=True)
    return [r.path for r in ranked[:count]]


def collect_state(repo_root: pathlib.Path) -> BootstrapState:
    entry_latest = newest((repo_root / "meta/state/entry").glob("*ENTRY_LATEST*_V*.md"))
    repo_status = newest((repo_root / "meta/state").glob("*RepoStatusUpdate*_V*.md"))
    workstreams = newest_n((repo_root / "blackboard/workstreams").glob("*.md"), 3)
    meaning_map = newest((repo_root / "meta/state").glob("*RepoMeaningMap*_V*.md"))
    snapshot = newest((repo_root / "meta/state").glob("*RepoStateSnapshot*_V*.md"))
    manifest = newest((repo_root / "meta/state").glob("*RepoManifest*_V*.json"))
    return BootstrapState(
        repo_root=repo_root,
        entry_latest=entry_latest,
        repo_status=repo_status,
        workstreams=workstreams,
        meaning_map=meaning_map,
        snapshot=snapshot,
        manifest=manifest,
    )


def rel(path: Optional[pathlib.Path], root: pathlib.Path) -> str:
    if path is None:
        return "MISSING"
    return path.relative_to(root).as_posix()


def main() -> int:
    parser = argparse.ArgumentParser(description="ASWE repo bootstrap helper")
    parser.add_argument("--repo-root", default=".", help="repo root or any child path")
    parser.add_argument(
        "--validate-session-contract",
        action="store_true",
        help="run the session-contract validator before returning bootstrap guidance",
    )
    args = parser.parse_args()

    repo_root = repo_root_from(pathlib.Path(args.repo_root).resolve())
    state = collect_state(repo_root)

    print("# ASWE Bootstrap")
    print()
    print(f"repo_root: {repo_root}")
    print()
    print("## Read first")
    print(f"- Entry-LATEST: {rel(state.entry_latest, repo_root)}")
    print(f"- RepoStatusUpdate: {rel(state.repo_status, repo_root)}")
    print()
    print("## Active workstreams (top 3 newest by filename version)")
    if state.workstreams:
        for ws in state.workstreams:
            print(f"- {rel(ws, repo_root)}")
    else:
        print("- MISSING")
    print()
    print("## Deeper SSOT anchors")
    print(f"- MeaningMap: {rel(state.meaning_map, repo_root)}")
    print(f"- StateSnapshot: {rel(state.snapshot, repo_root)}")
    print(f"- Manifest: {rel(state.manifest, repo_root)}")

    if args.validate_session_contract:
        print()
        report = run_validation(repo_root)
        print_report(report)
        if report.fail_count:
            print("Bootstrap aborted: session-contract validation reported fail findings.")
            return 1

    print()
    print("## Next step")
    print("- Open Entry-LATEST, then RepoStatusUpdate, then the active workstream you want to advance.")
    print("- Pull MeaningMap, Snapshot and Manifest only if routing, structure or audit context is still needed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
