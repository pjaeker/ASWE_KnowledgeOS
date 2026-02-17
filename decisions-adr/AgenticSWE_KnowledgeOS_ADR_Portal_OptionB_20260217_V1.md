---
project: AgenticSWE_KnowledgeOS
doc_type: adr
version: V1
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Architecture Decision Record: Option B Portal/Keystatic + Chat writes via PR with hard Glossary/Taxonomy gates."
tags:
  - layer/handbook
  - artifact/adr
  - topic/knowledge-os
  - topic/governance
  - topic/ssot
  - topic/gate
  - topic/hardgates
---

# ADR: Option B Portal/Keystatic + Chat writes via PR (V1)

## Kontext
- SSOT ist Repo-Inhalt (Markdown).
- Schreiben darf nur auditierbar erfolgen: PR mit Review und CI-Gates.
- Glossar ist normativ für Begriffe; Taxonomie ist normativ für Tags/Routing.

## Entscheidung
Wir implementieren ein Portal (Next.js) mit:
- `/keystatic` (Keystatic GitHub mode) für menschliche Editor:innen
- `/chat` + `/api/chat` für read-only Assistenz
- `/api/pr` für Write-via-PR unter **Write-Gates (hard gates, enforced)**

## Begründung
- PR-Flow liefert Audit-Trail, Review, Rollback.
- Keystatic reduziert Editor-Reibung, bleibt aber Git-native.
- Hardgates erzwingen Kohärenz: Tags/Frontmatter/Glossar↔Taxonomie.

## Konsequenzen
- Kein Direkt-Write in geschützte Pfade (Blocklist).
- CI Aktivierung in `.github/workflows/**` bleibt ein separater, freigabepflichtiger Schritt.
- Portal-Deployment/Secrets sind out-of-scope bis Freigabe.

## Alternativen
- Option A: rein manuell (ohne Portal) → weniger UX, aber minimal.
- Option C: Autopilot (plan→change→check→deliver) → höheres Risiko, braucht Stop-Conditions.

## Referenzen
- Blueprint: `meta/AgenticSWE_KnowledgeOS_Portal_OptionB_Blueprint_20260217_V2.md`
- Runbook: `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V1.md`
