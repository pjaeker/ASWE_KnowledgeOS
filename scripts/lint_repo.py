#!/usr/bin/env python3
"""
lint_repo.py

Lint (linting, style checks): sehr leichte Repo-Lints:
- keine Tabs
- Datei endet mit Newline

Usage:
  python scripts/lint_repo.py --repo-root .
"""
from __future__ import annotations
import argparse
from pathlib import Path

def list_files(root: Path) -> list[Path]:
    scopes = ["meta", "handbook", "templates-harness", "decisions-adr", "scripts"]
    out=[]
    for s in scopes:
        p = root / s
        if p.exists():
            for f in p.rglob("*"):
                if f.is_file() and f.suffix in [".md", ".py", ".json", ".yml", ".yaml", ".ts", ".tsx"]:
                    out.append(f)
    return out

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo-root", default=".")
    args = ap.parse_args()
    root = Path(args.repo_root)

    errors=[]
    for f in list_files(root):
        b = f.read_bytes()
        if b and b[-1] != 10:
            errors.append(f"{f}: missing trailing newline")
        if b.find(b"\t") != -1:
            errors.append(f"{f}: contains tab character")

    if errors:
        print("FAILED: lint errors:\n")
        for e in errors:
            print(f"- {e}")
        return 1
    print("OK: lint passed.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())

