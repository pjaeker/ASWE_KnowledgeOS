---
project: ASWE_KnowledgeOS
doc_type: reference
version: V3
date: 2026-03-18
status: draft
audience: [human, llm]
intent: "Kurze Muss-Checkliste fuer die operative Verifikation bei Session-Initialisierung mit symmetrischem Session-Contract."
---

# Reference: Verification Checklist

## Muss-Checks

1. **Entry sibling sweep**
   - Wurden gleichartige Entry-Kandidaten im relevanten Pfad aktiv gesucht?
   - Wurden Datums- oder Versionsvarianten verglichen?

2. **Newer-candidate veto**
   - Gibt es einen plausibel frischeren same-pattern Entry-Kandidaten?
   - Wenn ja: wurde er aktiv widerlegt oder bleibt die Finalisierung offen?

3. **Entry commit probe**
   - Wurden juengste Commits auf relevanten Entry-Pfaden geprueft?
   - Deuten Commit-Signale auf eine frischere Variante?

4. **Latest-status probe**
   - Wurde das juengste belastbare Status-Dokument separat gesucht?
   - Wurde es vom Entry-referenzierten Status getrennt ausgewiesen?

5. **Entry-vs-status reconciliation**
   - Ist klar, ob Latest Status und Entry-referenzierter Status deckungsgleich, fortgeschrieben oder inkonsistent sind?

6. **Workstream probe**
   - Ist der aktive Workstream durch Entry, Status oder juengeres Status-Update konsistent gestuetzt?

7. **Named-focus probe**
   - Wenn der Nutzer einen Workstream, ein Dokument oder eine Dokumentfamilie explizit genannt hat: wurde dafuer ein same-pattern sibling sweep gefahren?
   - Wenn der gewuenschte Fokus frischer ist als der Entry-verlinkte Stand: wurde er als Arbeitsfokus explizit vom kanonischen Routing getrennt ausgewiesen?

8. **Handoff probe**
   - Wurde explizit entschieden, ob `NextChat-Handoff` nicht noetig, optional verfuegbar oder erforderlich ist?

9. **Fallback probe**
   - Wenn der Connector- oder Indexzustand unvollstaendig wirken koennte: wurde repo-naher Public-GitHub-Webabgleich genutzt, falls das Repo public ist?

10. **Confidence gate**
   - `hoch` nur, wenn Entry-Freshness und Latest-Status-Freshness positiv oder belastbar geklaert sind und keine ungelosten Contract-Widersprueche bestehen
   - `mittel`, wenn ein Fuehrungskandidat plausibel ist, aber einzelne Freshness- oder Contract-Fragen offen bleiben
   - `niedrig`, wenn eine Kandidatenmenge bestehen bleibt oder Primarevidenz unvollstaendig ist
