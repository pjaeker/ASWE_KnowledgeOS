#!/usr/bin/env python3
"""
validate_taxonomy_glossary_mapping.py

Hardgate (hard gate, blocks merge): Validiert, dass jeder Taxonomie-Tag genau 1 Glossar-Canonical-Term mapped
und dass keine TBD-Mappings existieren.

Usage:
  python scripts/validate_taxonomy_glossary_mapping.py \
    --glossary meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md \
    --taxonomy meta/AgenticSWE_KnowledgeOS_Taxonomy_20260217_V2.md
"""
from __future__ import annotations
import argparse
import re
import sys
from pathlib import Path

TERM_RE = re.compile(r"- \*\*Term \(canonical\):\s*(.+?)\*\*")
TABLE_HEADER = "| tag | maps_to_canonical_term | short_intent |"

def parse_glossary_terms(text: str) -> set[str]:
    terms = set()
    for m in TERM_RE.finditer(text):
        terms.add(m.group(1).strip())
    return terms

def parse_taxonomy_table(text: str) -> list[tuple[str,str,str]]:
    start = text.find(TABLE_HEADER)
    if start == -1:
        raise ValueError("Mapping table header not found in taxonomy.")
    lines = text[start:].splitlines()
    rows = []
    for ln in lines[2:]:
        if not ln.strip().startswith("|"):
            break
        cols = [c.strip() for c in ln.strip().strip("|").split("|")]
        if len(cols) < 3:
            continue
        tag, maps_to, intent = cols[0], cols[1], cols[2]
        rows.append((tag, maps_to, intent))
    return rows

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--glossary", required=True)
    ap.add_argument("--taxonomy", required=True)
    args = ap.parse_args()

    g = Path(args.glossary).read_text(encoding="utf-8")
    t = Path(args.taxonomy).read_text(encoding="utf-8")

    terms = parse_glossary_terms(g)
    rows = parse_taxonomy_table(t)

    errors = []
    for tag, maps_to, _ in rows:
        if maps_to.strip() == "TBD":
            errors.append(f"TBD mapping not allowed: {tag} -> TBD")
            continue
        if maps_to not in terms:
            errors.append(f"Missing glossary canonical term: {tag} -> {maps_to}")

    if errors:
        print("FAILED: taxonomy↔glossary mapping invalid:\n")
        for e in errors:
            print(f"- {e}")
        return 1

    print(f"OK: {len(rows)} taxonomy tags map to existing glossary canonical terms.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())

