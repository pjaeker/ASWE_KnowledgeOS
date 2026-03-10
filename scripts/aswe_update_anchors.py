#!/usr/bin/env python3
from __future__ import annotations

import argparse
import datetime as dt
import pathlib
import re
import sys
from dataclasses import dataclass
from typing import Iterable, List, Optional

VERSION_RE = re.compile(r"(?P<date>20\d{6})_V(?P<version>\d+)")
PROJECT = "ASWE_KnowledgeOS"


@dataclass(order=True)
class RankedPath:
    date: str
    version: int
    path: pathlib.Path


@dataclass
class AnchorState:
    entry_latest: Optional[pathlib.Path]
    repo_status: Optional[pathlib.Path]
    meaning_map: Optional[pathlib.Path]
    snapshot: Optional[pathlib.Path]
    manifest: Optional[pathlib.Path]
    workstreams: List[pathlib.Path]


def repo_root_from(start: pathlib.Path) -> pathlib.Path:
    for candidate in [start, *start.parents]:
        if (candidate / ".git").exists() or (candidate / "meta").exists():
            return candidate
    return start


def rank_path(path: pathlib.Path) -> Optional[RankedPath]:
    match = VERSION_RE.search(path.name)
    if not match:
        return None
    return RankedPath(match.group("date"), int(match.group("version")), path)


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


def next_version(dir_path: pathlib.Path, stem_prefix: str, yyyymmdd: str, suffix: str) -> int:
    pattern = f"{stem_prefix}_{yyyymmdd}_V*{suffix}"
    versions = []
    for path in dir_path.glob(pattern):
        match = VERSION_RE.search(path.name)
        if match and match.group("date") == yyyymmdd:
            versions.append(int(match.group("version")))
    return (max(versions) + 1) if versions else 1


def rel(path: Optional[pathlib.Path], root: pathlib.Path) -> str:
    if path is None:
        return "MISSING"
    return path.relative_to(root).as_posix()


def collect(repo_root: pathlib.Path) -> AnchorState:
    return AnchorState(
        entry_latest=newest((repo_root / "meta/state/entry").glob("*ENTRY_LATEST*_V*.md")),
        repo_status=newest((repo_root / "meta/state").glob("*RepoStatusUpdate*_V*.md")),
        meaning_map=newest((repo_root / "meta/state").glob("*RepoMeaningMap*_V*.md")),
        snapshot=newest((repo_root / "meta/state").glob("*RepoStateSnapshot*_V*.md")),
        manifest=newest((repo_root / "meta/state").glob("*RepoManifest*_V*.json")),
        workstreams=newest_n((repo_root / "blackboard/workstreams").glob("*.md"), 3),
    )


def build_markdown(state: AnchorState, repo_root: pathlib.Path, today: dt.date, version: int) -> str:
    date_iso = today.isoformat()
    date_compact = today.strftime("%Y%m%d")
    workstream_lines = "\n".join(f"- `{rel(ws, repo_root)}`" for ws in state.workstreams) or "- `blackboard/workstreams/*.md`"
    return f"""---
project: {PROJECT}
doc_type: state
version: V{version}
date: {date_iso}
status: draft
audience: [human, llm]
intent: \"Single Entry Point: minimaler Startpunkt fuer neue Chats/Tools. Zeigt auf die neuesten SSOT-Anker + aktive Workstreams.\"
tags:
  - layer/state
  - artifact/entry
  - topic/router
  - topic/ssot
  - topic/workstreams
---

# ENTRY (LATEST) — Start Here

## 0) Read first
- Status Update: `{rel(state.repo_status, repo_root)}`
- Vorherige Entry-Version: `{rel(state.entry_latest, repo_root)}`

## 1) SSOT-Anker (aktuell verlinkte Versionen)
1. MeaningMap: `{rel(state.meaning_map, repo_root)}`
2. State Snapshot: `{rel(state.snapshot, repo_root)}`
3. Manifest: `{rel(state.manifest, repo_root)}`

## 2) Workstreams (Top 3 aktuellste Kapseln)
{workstream_lines}

## 3) Schreibpfad und Governance
- Writer bleibt der einzige autoritative PR-Erzeuger.
- Codex/Copilot sind Change-Generatoren und Feedback-Helfer.
- Hooks sind Feedback, nicht Enforcement.
- Stop-&-Ask bei `.github/workflows/**`, Secrets, Tokens, riskanten Allowlist-Erweiterungen und neuen GitHub-App-Permissions.

## 4) Standard-Tasks
- `ASWE: Bootstrap (Read Entry + Status + WS)`
- `ASWE: Update Anchors`
- `ASWE: Preflight Changed Files`
- `ASWE: Export Tooling Snapshot`

## 5) Hinweise
- Diese Entry-Version wurde am {date_iso} neu geschrieben.
- Die Datei aktualisiert Pointer auf die neuesten vorhandenen Anker.
- Manifest, Snapshot und MeaningMap werden durch diesen Schritt **nicht** neu erzeugt, sondern nur neu referenziert.
- Dateikonvention: `meta/state/entry/AgenticSWE_KnowledgeOS_ENTRY_LATEST_{date_compact}_Vx.md`
"""


def main() -> int:
    parser = argparse.ArgumentParser(description="Refresh ENTRY_LATEST pointers to the newest existing anchors")
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--write", action="store_true", help="write the refreshed ENTRY_LATEST file")
    args = parser.parse_args()

    repo_root = repo_root_from(pathlib.Path(args.repo_root).resolve())
    state = collect(repo_root)
    today = dt.date.today()
    yyyymmdd = today.strftime("%Y%m%d")

    entry_dir = repo_root / "meta/state/entry"
    entry_dir.mkdir(parents=True, exist_ok=True)
    version = next_version(entry_dir, f"AgenticSWE_KnowledgeOS_ENTRY_LATEST", yyyymmdd, ".md")
    target = entry_dir / f"AgenticSWE_KnowledgeOS_ENTRY_LATEST_{yyyymmdd}_V{version}.md"

    markdown = build_markdown(state, repo_root, today, version)

    print(f"repo_root: {repo_root}")
    print(f"target: {target.relative_to(repo_root).as_posix()}")
    print()
    print(markdown)

    if args.write:
        target.write_text(markdown, encoding="utf-8")
        print()
        print(f"WROTE: {target}")
    else:
        print()
        print("DRY RUN ONLY. Re-run with --write to create the refreshed entry file.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
