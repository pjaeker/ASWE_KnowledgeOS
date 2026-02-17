#!/usr/bin/env python3
"""
check_links.py

Link-Check (link check, broken links): Prüft relative Markdown-Links innerhalb allowlist paths.

Usage:
  python scripts/check_links.py --repo-root .
"""
from __future__ import annotations
import argparse
import re
from pathlib import Path

LINK_RE = re.compile(r"\[[^\]]*\]\(([^)]+)\)")

def is_external(url: str) -> bool:
    return url.startswith("http://") or url.startswith("https://") or url.startswith("mailto:")

def list_md(repo_root: Path) -> list[Path]:
    scopes = ["meta", "handbook", "templates-harness", "decisions-adr"]
    out=[]
    for s in scopes:
        p = repo_root / s
        if p.exists():
            out += list(p.rglob("*.md"))
    return out

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo-root", default=".")
    args = ap.parse_args()
    root = Path(args.repo_root)

    errors=[]
    files = list_md(root)
    for f in files:
        txt = f.read_text(encoding="utf-8")
        for m in LINK_RE.finditer(txt):
            url = m.group(1).strip()
            if not url or is_external(url) or url.startswith("#"):
                continue
            url = url.split("#",1)[0]
            if url.startswith("/"):
                target = root / url.lstrip("/")
            else:
                target = (f.parent / url).resolve()
            if not target.exists():
                errors.append(f"{f}: broken link -> {url}")

    if errors:
        print("FAILED: broken links:\n")
        for e in errors:
            print(f"- {e}")
        return 1

    print(f"OK: checked links in {len(files)} markdown files.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())

