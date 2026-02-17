#!/usr/bin/env python3
"""
validate_frontmatter_tags.py

Hardgate (hard gate, blocks merge): Prüft Markdown-Frontmatter (YAML):
- genau 1x tag `layer/*`
- genau 1x tag `artifact/*`
- alle tags müssen in Taxonomy-Allowlist sein

Scope (allowlist paths):
- meta/**
- handbook/**
- templates-harness/**
- decisions-adr/**

Usage:
  python scripts/validate_frontmatter_tags.py --repo-root .
"""
from __future__ import annotations
import argparse
import json
import re
import sys
from pathlib import Path

FM_RE = re.compile(r"^---\n(.*?)\n---\n", re.S)
TAGS_RE = re.compile(r"^tags:\s*(.*)$", re.M)

def load_allowlist(repo_root: Path) -> set[str]:
    p = repo_root / "meta" / "AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json"
    data = json.loads(p.read_text(encoding="utf-8"))
    return set(data["tags"])

def parse_frontmatter(md_text: str) -> dict | None:
    m = FM_RE.match(md_text)
    if not m:
        return None
    fm = m.group(1)
    # minimal YAML parsing for tags list
    tags = []
    in_tags = False
    for ln in fm.splitlines():
        if ln.strip().startswith("tags:"):
            # could be inline list, or start of block
            in_tags = True
            inline = ln.split(":",1)[1].strip()
            if inline.startswith("[") and inline.endswith("]"):
                inner = inline.strip("[]").strip()
                if inner:
                    tags += [t.strip().strip("'").strip('"') for t in inner.split(",")]
            continue
        if in_tags:
            if re.match(r"^\w+:", ln):  # next YAML key
                in_tags = False
                continue
            m2 = re.match(r"^\s*-\s*(.+)$", ln)
            if m2:
                tags.append(m2.group(1).strip().strip("'").strip('"'))
    return {"tags": tags}

def list_markdown_files(repo_root: Path) -> list[Path]:
    scopes = ["meta", "handbook", "templates-harness", "decisions-adr"]
    out=[]
    for s in scopes:
        p = repo_root / s
        if not p.exists():
            continue
        out += list(p.rglob("*.md"))
    return out

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo-root", default=".")
    args = ap.parse_args()
    repo_root = Path(args.repo_root)

    allow = load_allowlist(repo_root)
    errors=[]
    files = list_markdown_files(repo_root)

    for f in files:
        txt = f.read_text(encoding="utf-8")
        fm = parse_frontmatter(txt)
        if fm is None:
            errors.append(f"{f}: missing YAML frontmatter")
            continue
        tags = fm["tags"]
        layer = [t for t in tags if t.startswith("layer/")]
        art = [t for t in tags if t.startswith("artifact/")]

        if len(layer) != 1:
            errors.append(f"{f}: expected exactly 1 layer/* tag, got {layer}")
        if len(art) != 1:
            errors.append(f"{f}: expected exactly 1 artifact/* tag, got {art}")

        unknown = [t for t in tags if t not in allow]
        if unknown:
            errors.append(f"{f}: unknown tags (not in taxonomy allowlist): {unknown}")

    if errors:
        print("FAILED: frontmatter/tag validation:\n")
        for e in errors:
            print(f"- {e}")
        return 1

    print(f"OK: validated {len(files)} markdown files in scope.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())

