---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-03-13
status: draft
audience: [human, llm]
intent: "Kurze Muss-Checkliste fuer die operative Verifikation bei Session-Initialisierung in ASWE-artigen Repos."
tags:
  - layer/handbook
  - artifact/reference
  - topic/skills
  - topic/checklist
  - topic/verification
---

# Reference: Verification Checklist

## Zweck

Diese Checkliste operationalisiert die Mindestpruefung, bevor ein einzelner kanonischer Entry-Point mit mittlerer oder hoher Confidence ausgegeben wird.

## Muss-Checks

1. **Entry sibling sweep**
   - Wurden gleichartige Entry-Kandidaten im relevanten Pfad aktiv gesucht?
   - Wurden Datums- oder Versionsvarianten verglichen?

2. **Newer-candidate veto**
   - Gibt es einen plausibel frischeren same-pattern Kandidaten?
   - Wenn ja: wurde er aktiv widerlegt oder bleibt die Finalisierung offen?

3. **Commit probe**
   - Wurden juengste Commits auf relevanten Entry-Pfaden geprueft?
   - Deuten Commit-Signale auf eine frischere Variante?

4. **Reference probe**
   - Referenzieren Status-, Workstream- oder State-Artefakte den Kandidaten konsistent?
   - Gibt es Referenzen auf einen frischeren Kandidaten?

5. **Fallback probe**
   - Wenn der Connector- oder Indexzustand unvollstaendig wirken koennte: wurde repo-naher Public-GitHub-Webabgleich genutzt, falls das Repo public ist?

6. **Confidence gate**
   - `hoch` nur, wenn alle obigen Checks fuer den finalen Kandidaten positiv oder belastbar geklaert sind
   - `mittel`, wenn der Fuehrungskandidat plausibel ist, aber einzelne Freshness-Fragen offen bleiben
   - `niedrig`, wenn eine Kandidatenmenge bestehen bleibt oder Primarevidenz unvollstaendig ist

## Minimalregel

Wenn ein juengerer plausibler same-pattern Kandidat nicht aktiv aufgeloest wurde, ist ein einzelner kanonischer Entry-Point mit hoher Confidence nicht zulaessig.
