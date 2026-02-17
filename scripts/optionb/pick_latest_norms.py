#!/usr/bin/env python3
import glob, os, re, sys

def pick(pattern: str):
    best = None
    for p in glob.glob(pattern):
        bn = os.path.basename(p)
        m = re.search(r'_(\d{8})_V(\d+)\.(md|json|yml|yaml)$', bn)
        if not m:
            continue
        d = int(m.group(1))
        v = int(m.group(2))
        key = (v, d, bn)
        if best is None or key > best[0]:
            best = (key, p)
    return best[1] if best else None

gloss = pick("meta/AgenticSWE_KnowledgeOS_Glossary_*_V*.md") or pick("**/AgenticSWE_KnowledgeOS_Glossary_*_V*.md")
tax = pick("meta/AgenticSWE_KnowledgeOS_Taxonomy_*_V*.md") or pick("**/AgenticSWE_KnowledgeOS_Taxonomy_*_V*.md")

print(f"GLOSSARY={gloss or 'NOT_FOUND'}")
print(f"TAXONOMY={tax or 'NOT_FOUND'}")

if not gloss or not tax:
    sys.exit(2)
