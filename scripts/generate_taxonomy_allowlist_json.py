#!/usr/bin/env python3
"""
generate_taxonomy_allowlist_json.py

Export (export, machine-readable): erzeugt JSON-Allowlist aus Taxonomie-Mappingtabelle.

Usage:
  python scripts/generate_taxonomy_allowlist_json.py \
    --taxonomy meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md \
    --out meta/AgenticSWE_KnowledgeOS_Taxonomy_Allowlist_20260217_V1.json
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path

TABLE_HEADER = "| tag | maps_to_canonical_term | short_intent |"

def parse_tags(text: str) -> list[str]:
    start = text.find(TABLE_HEADER)
    if start == -1:
        raise ValueError("Mapping table header not found.")
    lines = text[start:].splitlines()
    tags=[]
    for ln in lines[2:]:
        if not ln.strip().startswith("|"):
            break
        cols = [c.strip() for c in ln.strip().strip("|").split("|")]
        if len(cols) >= 1:
            tags.append(cols[0])
    return tags

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--taxonomy", required=True)
    ap.add_argument("--out", required=True)
    args = ap.parse_args()

    tax = Path(args.taxonomy).read_text(encoding="utf-8")
    tags = sorted(set(parse_tags(tax)))
    data = {
        "generated_from": args.taxonomy,
        "tag_count": len(tags),
        "tags": tags,
    }
    Path(args.out).write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"OK: wrote {len(tags)} tags to {args.out}")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())

