---
project: AgenticSWE_KnowledgeOS
doc_type: glossary
version: V6
date: 2026-02-17
status: draft
audience: [human, llm]
intent: "Normatives Glossar für das ASWE Knowledge-OS. SSOT für Canonical Terms und Synonympolitik."
tags:
  - layer/glossar
  - artifact/reference
  - topic/knowledge-os
  - topic/governance
  - topic/ssot
  - topic/gate
---
# ASWE Knowledge-OS – Glossar (V6)

## 0) Zweck
Dieses Glossar definiert **kanonische Begriffe** für das ASWE Knowledge-OS. Es ist **normativ**: Wenn Begriffe kollidieren, gewinnt die Glossar-Definition (oder der Begriff wird als *mehrdeutig* markiert und aufgespalten).

**Quelle dieses Startbestands:** diese Unterhaltung (ASWE Knowledge-OS Chat, 2026-02-13); ergänzt durch glossary.md, GitHubCodex_Tutorial_20260209_V3.md, KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md und KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md.

---

## 1) Formatregeln (normativ)
- **Ein Begriff = eine Bedeutung** (Canonicalization).
- **Definitionen sind 1 Satz** und müssen eindeutig sein.
- **Synonyme** nur, wenn explizit als *allowed* markiert.
- **Forbidden/avoid** markiert Begriffe/Verwendungen, die die Sprache verwässern oder Mehrdeutigkeit erzeugen.
- **See also** verlinkt auf benachbarte canonical terms (kein Fließtext).
- **Refs**: mindestens `source_ref:` oder `decision_ref:` (woher kommt die Norm/Definition?).

---

## 2) Eintragsformat (Template)
- **Term (canonical):** …
- **Definition:** …
- **Allowed synonyms:** …
- **Forbidden/avoid:** …
- **See also:** …
- **Refs:** source_ref / decision_ref

---

## 3) Glossar

### A) Knowledge-OS Schichten & Dokumenttypen

- **Term (canonical): Knowledge-OS**  
  **Definition:** Knowledge-OS ist ein System aus Artefakten, Regeln und Workflows, das Wissen versioniert, prüft und operationalisiert.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** „Ordnerchaos“  
  **See also:** Single Source of Truth (SSOT); Library; Handbook; Governance  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Single Source of Truth (SSOT)**  
  **Definition:** SSOT ist die eindeutig definierte Quelle, die bei Konflikten und Updates als maßgebliche Wahrheit gilt.  
  **Allowed synonyms:** Quelle der Wahrheit  
  **Forbidden/avoid:** mehrere gleichberechtigte Wahrheiten  
  **See also:** Glossar; Policy; Repository  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Library**  
  **Definition:** Library ist der geordnete Bestand an Quellen/Dokumenten, die als Input für Synthese und Claims dienen.  
  **Allowed synonyms:** Quellenbibliothek  
  **Forbidden/avoid:** ungeordnete Link-Sammlungen  
  **See also:** Source Card; source_ref; Evidenzgrad  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Glossar**  
  **Definition:** Das Glossar ist das normative Wörterbuch, das canonical terms, Synonympolitik und Bedeutungsgrenzen festlegt.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** „Jeder nutzt seine Begriffe“  
  **See also:** Canonical term; Disambiguation; Dedupe; Consistency  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Templates & Harness**  
  **Definition:** Templates & Harness ist die Schicht für wiederverwendbare Vorlagen und ausführbare Prüf-/Eval-Bausteine (z. B. Gates, Schemas, Harness).  
  **Allowed synonyms:** Vorlagen & Harness  
  **Forbidden/avoid:** „nur Doku“ ohne Ausführbarkeit  
  **See also:** Template; Harness; Gate; CI/CD  
  **Refs:** source_ref: README_2026-02-13  

- **Term (canonical): Canonical term**  
  **Definition:** Ein canonical term ist die einzige erlaubte Benennung für eine bestimmte Bedeutung im Knowledge-OS.  
  **Allowed synonyms:** kanonischer Begriff  
  **Forbidden/avoid:** parallele Begriffswelten  
  **See also:** Glossar; Disambiguation; Dedupe  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Handbook**  
  **Definition:** Handbook ist ein kuratiertes, prozessorientiertes Dokument, das Standards, Workflows und Entscheidungsregeln für ASWE festhält.  
  **Allowed synonyms:** Living Handbook  
  **Forbidden/avoid:** lose Notizen ohne Struktur  
  **See also:** Tutorial; How-to; Reference; Policy  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): DocType**  
  **Definition:** DocType ist ein Dokumenttyp (z. B. tutorial/how-to/reference/explanation), der Struktur und Erwartung an Inhalt festlegt.  
  **Allowed synonyms:** Dokumenttyp  
  **Forbidden/avoid:** Mischform ohne Kennzeichnung  
  **See also:** Diátaxis; Template; Policy  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Template**  
  **Definition:** Ein Template ist eine fest definierte Dokumentstruktur mit Pflichtfeldern, die Konsistenz und Verifizierbarkeit erhöht.  
  **Allowed synonyms:** Vorlage  
  **Forbidden/avoid:** Freitext ohne Pflichtfelder  
  **See also:** Policy; Gate; Checklist  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Checklist**  
  **Definition:** Eine Checklist ist eine kurze, binäre Prüfliste, die Gates operationalisiert (ja/nein pro Punkt).  
  **Allowed synonyms:** Prüfliste  
  **Forbidden/avoid:** „wird schon passen“  
  **See also:** Gate; Scorecard; CI/CD  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): status**  
  **Definition:** status ist ein Feld/Tag, das Reife und Verbindlichkeit eines Artefakts markiert (z. B. draft/stable/deprecated).  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** unmarkierte Reife  
  **See also:** Staleness; deprecated; Promotion Policy  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): deprecated**  
  **Definition:** deprecated markiert einen Begriff/Prozess als nicht mehr zu verwenden, meist mit Verweis auf Ersatz.  
  **Allowed synonyms:** veraltet (wenn explizit als Status)  
  **Forbidden/avoid:** stillschweigend ignorieren  
  **See also:** status; Revisit-When; Dedupe  
  **Refs:** source_ref: this_chat_2026-02-13  

### B) Diátaxis & Dokuformen

- **Term (canonical): Diátaxis**  
  **Definition:** Diátaxis ist ein Dokumentations-Framework, das Inhalte strikt in Tutorial, How-to, Reference und Explanation trennt.  
  **Allowed synonyms:** Diataxis  
  **Forbidden/avoid:** Mischseiten (Anleitung+Erklärung in einem)  
  **See also:** Tutorial; How-to; Reference; Explanation  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Tutorial**  
  **Definition:** Ein Tutorial führt schrittweise durch ein Lernziel und ist auf Verständnisaufbau statt Nachschlagen optimiert.  
  **Allowed synonyms:** Lernpfad  
  **Forbidden/avoid:** Referenzliste  
  **See also:** Diátaxis; How-to  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): How-to**  
  **Definition:** Ein How-to ist eine knappe Handlungsanleitung für ein konkretes Ziel, die schnelle Ausführung ermöglicht.  
  **Allowed synonyms:** Vorgehensanleitung  
  **Forbidden/avoid:** Hintergrundessay  
  **See also:** Diátaxis; Gate; Checklist  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Reference**  
  **Definition:** Reference ist eine präzise Nachschlageform mit Definitionen/Schemas, ohne Prozess- oder Motivationsanteil.  
  **Allowed synonyms:** Referenz  
  **Forbidden/avoid:** Storytelling  
  **See also:** Diátaxis; Schema  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Explanation**  
  **Definition:** Explanation erklärt Hintergründe und Begründungen, ohne als Schritt-für-Schritt Anleitung gedacht zu sein.  
  **Allowed synonyms:** Erklärungsteil  
  **Forbidden/avoid:** “Do this” ohne Kontext  
  **See also:** Diátaxis; ADR-Lite  
  **Refs:** source_ref: this_chat_2026-02-13  

### C) Orchestrierung & Team-Topologien

- **Term (canonical): Topologie (Team/Agenten)**  
  **Definition:** Topologie ist die Struktur der Interaktionskanten zwischen Rollen/Agenten (wer triggert wen, über welche Kanäle, mit welchen Gates).  
  **Allowed synonyms:** Netzwerkstruktur  
  **Forbidden/avoid:** „einfach Chat“  
  **See also:** Trigger; Pipeline; Blackboard; Supervisor; Committee  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Pipeline**  
  **Definition:** Eine Pipeline ist eine sequenzielle Verarbeitungskette mit definierten Übergaben und Gates zwischen Schritten.  
  **Allowed synonyms:** Prozesskette  
  **Forbidden/avoid:** Mesh  
  **See also:** DAG; Gate  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): DAG**  
  **Definition:** Ein DAG (Directed Acyclic Graph) modelliert Workflow-Schritte als gerichteten Graph ohne Zyklen zur Darstellung von Abhängigkeiten.  
  **Allowed synonyms:** Workflow-DAG  
  **Forbidden/avoid:** Kreis ohne Stop-Condition  
  **See also:** Pipeline; Abhängigkeit  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Router**  
  **Definition:** Ein Router ist eine Komponente/Rolle, die Ereignisse oder Aufgaben anhand von Regeln an zuständige Spezialisten weiterleitet.  
  **Allowed synonyms:** Dispatcher  
  **Forbidden/avoid:** jeder bekommt alles  
  **See also:** Trigger; Event Schema  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Supervisor**  
  **Definition:** Ein Supervisor ist eine steuernde Rolle, die Entscheidungen trifft, Prioritäten setzt und Promotions/Gates verantwortet.  
  **Allowed synonyms:** Meta-Supervisor  
  **Forbidden/avoid:** unsichtbare Entscheidungen  
  **See also:** Gate; Promotion Policy; Judge  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Hierarchie**  
  **Definition:** Hierarchie ist eine Topologie, in der Entscheidungen/Änderungen über definierte Ebenen weitergereicht und geprüft werden.  
  **Allowed synonyms:** Maintainer-Tree  
  **Forbidden/avoid:** Full Mesh bei großem Team  
  **See also:** Supervisor; Gate  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Committee**  
  **Definition:** Committee ist ein kurzfristiges Mehrfach-Review durch mehrere Rollen/Agenten zur Konfliktauflösung oder Divergenz-Erzeugung.  
  **Allowed synonyms:** Ensemble  
  **Forbidden/avoid:** Dauer-Mesh  
  **See also:** Disagreement; Judge  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Mesh**  
  **Definition:** Mesh ist eine Topologie mit vielen direkten Kanten zwischen allen Beteiligten, die schnell teuer durch Kommunikations-Overhead wird.  
  **Allowed synonyms:** Full Mesh  
  **Forbidden/avoid:** Standardmodus  
  **See also:** Committee; Brooks’ Law  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Task Allocation**  
  **Definition:** Task Allocation ist die Zuweisung von Aufgaben an Agenten/Rollen anhand von Regeln, Kapazitäten und Prioritäten.  
  **Allowed synonyms:** Aufgabenverteilung  
  **Forbidden/avoid:** zufällige Zuweisung  
  **See also:** Markt/Auktion (Task Allocation); MRTA; Router  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): MRTA (Multi-Robot Task Allocation)**  
  **Definition:** MRTA ist ein Forschungsbegriff für die algorithmische Aufgabenverteilung in Multi-Agent/Robotik-Systemen.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** unspezifisch „Zuteilung“  
  **See also:** Task Allocation; Markt/Auktion (Task Allocation)  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Markt/Auktion (Task Allocation)**  
  **Definition:** Markt/Auktion ist ein Mechanismus zur dynamischen Aufgabenverteilung, bei dem Agenten Aufgaben „bieten“ oder zugeteilt bekommen.  
  **Allowed synonyms:** Contract-Net (informell)  
  **Forbidden/avoid:** zentrale Mikrozuteilung bei hoher Dynamik  
  **See also:** Task Allocation; MRTA  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Koordination**  
  **Definition:** Koordination ist die Abstimmung zwischen Rollen/Agenten, um Abhängigkeiten, Konflikte und Reihenfolgen zu steuern.  
  **Allowed synonyms:** Coordination  
  **Forbidden/avoid:** ad-hoc ohne Protokoll  
  **See also:** Abhängigkeit; DAG; Supervisor  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Abhängigkeit**  
  **Definition:** Abhängigkeit ist eine Beziehung zwischen Aufgaben/Artefakten, bei der ein Schritt Ressourcen oder Ergebnisse eines anderen benötigt.  
  **Allowed synonyms:** Dependency  
  **Forbidden/avoid:** implizite Abhängigkeiten  
  **See also:** DAG; Koordination  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Blackboard**  
  **Definition:** Blackboard ist ein gemeinsamer Arbeitsraum, in dem Kandidaten, Claims, Konflikte und TODOs gesammelt werden, bevor sie promoted werden.  
  **Allowed synonyms:** Arbeitsfläche  
  **Forbidden/avoid:** flüchtige Chat-only Infos  
  **See also:** Claim; Conflict Cluster; Promotion Policy  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Disagreement**  
  **Definition:** Disagreement ist ein bewusst erzeugter Dissens zwischen Agenten/Reviews, um blinde Flecken und Alternativen sichtbar zu machen.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** Konsens erzwingen ohne Prüfung  
  **See also:** Committee; Judge; Conflict Cluster  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Judge**  
  **Definition:** Ein Judge ist eine Rolle/Komponente, die Outputs anhand definierter Kriterien bewertet und Entscheidungen protokolliert.  
  **Allowed synonyms:** Evaluator  
  **Forbidden/avoid:** Bauchgefühl  
  **See also:** Scorecard; Gate; Decision Trace  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Trigger**  
  **Definition:** Ein Trigger ist ein aus einem Event abgeleiteter Auslöser, der eine nächste Aktion oder Zuständigkeitsweitergabe startet.  
  **Allowed synonyms:** Auslöser  
  **Forbidden/avoid:** „mal schauen“  
  **See also:** Event Schema; Router  
  **Refs:** source_ref: this_chat_2026-02-13  

### D) Harness, Evals & RSI


- **Term (canonical): Loop (Self-Improvement)**  
  **Definition:** Ein Loop (Self-Improvement) ist ein wiederholbarer Zyklus aus Ziel → Messung → Änderung → Re-Messung zur Qualitätssteigerung.  
  **Allowed synonyms:** Verbesserungsloop; Schleife  
  **Forbidden/avoid:** „Iteration“ (wenn der Mess-/Re-Mess-Anteil fehlt)  
  **See also:** RSI (Recursive Self-Improvement); Fitness Function; Definition of Done (DoD)  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md  

- **Term (canonical): Meta-Loop**  
  **Definition:** Ein Meta-Loop ist ein übergeordnetes Verbesserungsmuster, das mehrere Artefakt-Stufen (Idee→Betrieb) gleichzeitig oder quer steuert.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** „Loop“ (wenn explizit M0–M9 gemeint ist)  
  **See also:** Loop (Self-Improvement); Artefakt-Stufe; RSI (Recursive Self-Improvement)  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md  

- **Term (canonical): Fitness Function**  
  **Definition:** Eine Fitness Function ist ein messbarer Check (idealerweise automatisiert), der Qualität in einem Loop quantifiziert.  
  **Allowed synonyms:** Fitness-Funktion  
  **Forbidden/avoid:** „Gefühl“ als Messsignal  
  **See also:** Proxy-Metriken; Scorecard; Gate  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md  

- **Term (canonical): Definition of Done (DoD)**  
  **Definition:** Definition of Done (DoD) ist die eindeutige, prüfbare Beschreibung, wann ein Artefakt oder Task als „fertig“ gilt.  
  **Allowed synonyms:** DoD; Fertig-Definition  
  **Forbidden/avoid:** „fertig“ ohne Kriterien  
  **See also:** Erfolgskriterium; Gate; DoD-Gate  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md  

- **Term (canonical): DoD-Gate**  
  **Definition:** Ein DoD-Gate ist ein Gate, das explizit die Definition of Done (DoD) als harte Freigabebedingung verwendet.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** DoD als „nice to have“  
  **See also:** Gate; Definition of Done (DoD); Promotion Policy  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md  

- **Term (canonical): Finding**  
  **Definition:** Ein Finding ist ein identifiziertes Problem oder Verbesserungspotenzial, das im Loop als Eingabe für Änderungen und Regression-Cases dient.  
  **Allowed synonyms:** Befund  
  **Forbidden/avoid:** „Bug“ (wenn es eigentlich ein Prozess-/Qualitätsbefund ist)  
  **See also:** Regression-Case; Patch; Decision Trace  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md  

- **Term (canonical): Regression-Case**  
  **Definition:** Ein Regression-Case ist ein gespeichertes Szenario/Test/Eval, das ein früheres Finding abdeckt und zukünftige Rückschritte verhindert.  
  **Allowed synonyms:** Regression Case  
  **Forbidden/avoid:** Fix ohne Regression-Absicherung  
  **See also:** Regression; Golden Prompts; Eval  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md  

- **Term (canonical): Artefakt-Stufe**  
  **Definition:** Artefakt-Stufe bezeichnet die Reifeebene eines Outputs (z. B. Idee, Konzept, Architektur, Code, Betrieb), auf der Loops angewendet werden.  
  **Allowed synonyms:** Artefakt-Ebene  
  **Forbidden/avoid:** „Phase“ (wenn es um versionierte Output-Artefakte geht)  
  **See also:** Meta-Loop; Deliverable; Handbuch  
  **Refs:** source_ref: RekursiveSelbstverbesserung_Strategie_20260209_V4.md

- **Term (canonical): Harness**  
  **Definition:** Ein Harness ist eine wiederholbare Ausführungs- und Prüf-Umgebung, die Outputs erzeugt, misst und mit Gates bewertet.  
  **Allowed synonyms:** Test-Harness; Eval-Harness  
  **Forbidden/avoid:** „einmal ausprobieren“  
  **See also:** Eval; Gate; Smoke Test  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Eval**  
  **Definition:** Ein Eval ist eine strukturierte Bewertung eines Systems/Artefakts anhand definierter Aufgaben und Kriterien (Qualität/Kosten/Latency).  
  **Allowed synonyms:** Evaluation  
  **Forbidden/avoid:** Bauchgefühl  
  **See also:** Harness; Golden Prompts; Proxy-Metriken  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Gate**  
  **Definition:** Ein Gate ist eine harte Freigaberegel, die Promotion/Merge/Adoption verhindert, wenn Kriterien nicht erfüllt sind.  
  **Allowed synonyms:** Qualitätsgate  
  **Forbidden/avoid:** „kann man später fixen“ ohne Tracking  
  **See also:** Promotion Policy; Regression  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Hardgates**  
  **Definition:** Hardgates sind nicht-umgehbare Gates, die serverseitig/CI-seitig enforced werden und Writes/Merges blockieren, bis Kriterien erfüllt sind.  
  **Allowed synonyms:** harte Gates  
  **Forbidden/avoid:** „Softgate“ ohne Enforcement  
  **See also:** Gate; Policy; Stop-Condition; Write-Gates  
  **Refs:** source_ref: portal_option_b_blueprint_2026-02-17  - **Term (canonical): Write-Gates**  
  **Definition:** Write-Gates sind Hardgates, die serverseitig Schreiboperationen auf Allowlist-Pfade beschränken und Blocklisten/Limits durchsetzen.  
  **Allowed synonyms:** Schreib-Gates  
  **Forbidden/avoid:** direkte Writes ohne PR  
  **See also:** Hardgates; Allowlist; Blocklist; PR (Pull Request)  
  **Refs:** source_ref: portal_option_b_blueprint_2026-02-17  

- **Term (canonical): Allowlist**  
  **Definition:** Allowlist ist eine explizite Menge erlaubter Pfade/Operationen; alles andere ist implizit verboten.  
  **Allowed synonyms:** Positivliste  
  **Forbidden/avoid:** Default-Allow ohne Kontrolle  
  **See also:** Blocklist; Write-Gates  
  **Refs:** source_ref: portal_option_b_blueprint_2026-02-17  

- **Term (canonical): Blocklist**  
  **Definition:** Blocklist ist eine explizite Menge verbotener Pfade/Operationen; wird zusätzlich zur Allowlist genutzt.  
  **Allowed synonyms:** Negativliste  
  **Forbidden/avoid:** „wird schon niemand anfassen“  
  **See also:** Allowlist; Write-Gates; Secrets  
  **Refs:** source_ref: portal_option_b_blueprint_2026-02-17  



- **Term (canonical): Promotion Policy**  
  **Definition:** Eine Promotion Policy definiert, unter welchen Bedingungen Artefakte von einer Schicht zur nächsten hochgestuft werden dürfen.  
  **Allowed synonyms:** Promotion-Regeln  
  **Forbidden/avoid:** „nach Gefühl“  
  **See also:** Gate; status  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): RSI (Recursive Self-Improvement)**  
  **Definition:** RSI ist ein iterativer Verbesserungsprozess, der Systemänderungen über Diagnose → Patch → Verifikation → Adoption rekursiv steuert.  
  **Allowed synonyms:** Selbstverbesserungsschleife  
  **Forbidden/avoid:** endloses Refactoring ohne Gates  
  **See also:** Harness; Proxy-Metriken; Golden Prompts  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Patch**  
  **Definition:** Ein Patch ist eine konkrete Änderung an einem Artefakt, die als Diff oder ersetzter Volltext versioniert und prüfbar ist.  
  **Allowed synonyms:** Änderungspaket  
  **Forbidden/avoid:** „einfach im Chat ändern“ ohne Version/Prüfung  
  **See also:** RSI (Recursive Self-Improvement); Diff; Regression; Decision Trace  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Diff**  
  **Definition:** Ein Diff ist eine textuelle Änderungsdarstellung, die Einfügungen und Löschungen zwischen zwei Versionen eindeutig beschreibt.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** unklare Änderungsbeschreibung ohne konkrete Einfügungen/Löschungen  
  **See also:** Patch; Dedupe; Decision Trace  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Proxy-Metriken**  
  **Definition:** Proxy-Metriken sind heuristische, reproduzierbare Stellvertreter-Kriterien zur Bewertung, wenn echte Telemetrie noch fehlt.  
  **Allowed synonyms:** Proxy-Kriterien  
  **Forbidden/avoid:** „klingt gut“  
  **See also:** Scorecard; Findability; Actionability  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Scorecard**  
  **Definition:** Eine Scorecard ist ein standardisiertes Bewertungsformular mit festen Feldern und Schwellenwerten für Gates.  
  **Allowed synonyms:** Bewertungsbogen  
  **Forbidden/avoid:** freie Essays als Bewertung  
  **See also:** Proxy-Metriken; Judge  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Golden Prompts**  
  **Definition:** Golden Prompts sind ein eingefrorenes Set repräsentativer Standard-Szenarien, das als Regressionstest für Struktur und Nutzbarkeit dient.  
  **Allowed synonyms:** Testset; Golden Set  
  **Forbidden/avoid:** ständig wechselnde Tests  
  **See also:** Eval; Regression  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Regression**  
  **Definition:** Regression ist eine Verschlechterung gegenüber dem vorherigen Stand in mindestens einem Gate-Kriterium.  
  **Allowed synonyms:** Rückschritt  
  **Forbidden/avoid:** „ist egal“  
  **See also:** Gate; Smoke Test  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Smoke Test**  
  **Definition:** Ein Smoke Test ist ein minimaler Testlauf, der grundlegende Funktionsfähigkeit prüft, ohne Tiefe zu garantieren.  
  **Allowed synonyms:** Sanity Check  
  **Forbidden/avoid:** „keine Tests“  
  **See also:** Harness; Gate  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Drift**  
  **Definition:** Drift ist die schleichende Abweichung von Struktur/Begriffen/Regeln, die Konsistenz und Auffindbarkeit über Zeit verschlechtert.  
  **Allowed synonyms:** Kontextdrift  
  **Forbidden/avoid:** unbegrenztes Wachstum  
  **See also:** Drift-Guards; Staleness  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Drift-Guards**  
  **Definition:** Drift-Guards sind harte Strukturregeln (z. B. Längenlimits, Typ-Pflicht, Promotion-Gates), die Drift automatisch begrenzen.  
  **Allowed synonyms:** Drift-Schutz  
  **Forbidden/avoid:** „alles erlaubt“  
  **See also:** Gate; Diátaxis  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Findability**  
  **Definition:** Findability ist die Fähigkeit, relevante Informationen schnell und zuverlässig zu finden (z. B. innerhalb von 60 Sekunden).  
  **Allowed synonyms:** Auffindbarkeit  
  **Forbidden/avoid:** „man muss es kennen“  
  **See also:** IA; Tags  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Actionability**  
  **Definition:** Actionability ist der Grad, in dem ein Artefakt zu konkreten nächsten Schritten oder ausführbaren Bausteinen führt.  
  **Allowed synonyms:** Umsetzbarkeit  
  **Forbidden/avoid:** reine Theorie ohne nächsten Schritt  
  **See also:** How-to; Template  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Non-Redundancy**  
  **Definition:** Non-Redundancy ist die Eigenschaft, dass ein Artefakt keine doppelte, parallele Wahrheit ohne Nutzen erzeugt.  
  **Allowed synonyms:** Nicht-Redundanz  
  **Forbidden/avoid:** „zweimal dasselbe“  
  **See also:** Dedupe; Consistency  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Consistency**  
  **Definition:** Consistency ist die Widerspruchsfreiheit zwischen Glossar, Taxonomie, Handbook-Regeln und Templates.  
  **Allowed synonyms:** Konsistenz  
  **Forbidden/avoid:** zwei widersprüchliche Standards ohne Markierung  
  **See also:** Conflict Cluster; ADR-Lite  
  **Refs:** source_ref: this_chat_2026-02-13  

### E) Governance & Entscheidungsprotokolle

- **Term (canonical): ADR (Architecture Decision Record)**  
  **Definition:** Ein ADR ist ein dokumentierter Architekturentscheid mit Kontext, Optionen, Entscheidung und Konsequenzen.  
  **Allowed synonyms:** Architekturentscheid  
  **Forbidden/avoid:** Entscheidung im Chat ohne Log  
  **See also:** ADR-Lite; Decision Trace  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): ADR-Lite**  
  **Definition:** ADR-Lite ist eine abgespeckte ADR-Form, die mindestens Kontext, Optionen, Entscheidung, Konsequenzen und Revisit-When enthält.  
  **Allowed synonyms:** Mini-ADR  
  **Forbidden/avoid:** “wir machen das jetzt so” ohne Revisit  
  **See also:** ADR; Revisit-When  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Decision Trace**  
  **Definition:** Decision Trace ist die nachvollziehbare Spur, warum ein Standard/Template/Regel existiert und welche Alternativen verworfen wurden.  
  **Allowed synonyms:** Entscheidungsspur  
  **Forbidden/avoid:** implizite Entscheidungen  
  **See also:** ADR-Lite; Promotion  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): decision_ref**  
  **Definition:** decision_ref ist ein eindeutiger Verweis auf einen dokumentierten Entscheid (z. B. ADR), der eine Norm oder Konvention begründet.  
  **Allowed synonyms:** Entscheidungsverweis  
  **Forbidden/avoid:** „haben wir mal so entschieden“ ohne Referenz  
  **See also:** ADR; ADR-Lite; Decision Trace; Revisit-When  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Revisit-When**  
  **Definition:** Revisit-When sind explizite Bedingungen oder Zeitpunkte, wann eine Entscheidung erneut geprüft werden muss.  
  **Allowed synonyms:** Review-Trigger  
  **Forbidden/avoid:** „für immer“  
  **See also:** ADR-Lite; Staleness  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Staleness**  
  **Definition:** Staleness ist der Zustand, dass ein Artefakt veraltet ist, weil es lange nicht überprüft wurde oder Rahmenbedingungen sich änderten.  
  **Allowed synonyms:** Veraltung  
  **Forbidden/avoid:** unmarkierte Altstände  
  **See also:** status; deprecated  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Dedupe**  
  **Definition:** Dedupe ist das Zusammenführen oder Entfernen inhaltlich gleicher Artefakte, um Redundanz und Widerspruchsrisiko zu reduzieren.  
  **Allowed synonyms:** Deduplication  
  **Forbidden/avoid:** parallele Definitionen  
  **See also:** Non-Redundancy; Consistency  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Disambiguation**  
  **Definition:** Disambiguation ist das Aufspalten eines mehrdeutigen Terms in mehrere eindeutige canonical terms.  
  **Allowed synonyms:** Bedeutungsauflösung  
  **Forbidden/avoid:** Mehrdeutigkeit tolerieren  
  **See also:** Glossar; Canonical term; Conflict Cluster; Dedupe  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Claim**  
  **Definition:** Ein Claim ist eine test- oder prüfbare Behauptung/Regel, die aus Quellen oder Erfahrung abgeleitet und im Blackboard verwaltet wird.  
  **Allowed synonyms:** Aussage  
  **Forbidden/avoid:** Meinung ohne Prüfpfad  
  **See also:** Blackboard; Gate; ADR-Lite  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Conflict Cluster**  
  **Definition:** Ein Conflict Cluster bündelt widersprüchliche Claims/Quellen an einem Ort und dokumentiert den aktuellen Entscheidungsstand.  
  **Allowed synonyms:** Konflikt-Cluster  
  **Forbidden/avoid:** Widerspruch ignorieren  
  **See also:** Blackboard; Consistency; ADR-Lite  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): RACI**  
  **Definition:** RACI ist ein Rollenmodell zur Klärung, wer Responsible, Accountable, Consulted und Informed ist.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** ungeklärte Ownership  
  **See also:** Governance; Supervisor  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Governance**  
  **Definition:** Governance ist das Set aus Rollen, Regeln und Entscheidungswegen, das Änderungen und Promotions kontrolliert.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** „jeder macht alles“  
  **See also:** Supervisor; Gate; Policy; RACI  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Policy**  
  **Definition:** Eine Policy ist eine normative Regel, die Verhalten und Grenzen für Systeme/Agenten/Repos verbindlich festlegt.  
  **Allowed synonyms:** Richtlinie  
  **Forbidden/avoid:** „Best practice“ ohne Verbindlichkeit  
  **See also:** Governance; Gate; SSOT; decision_ref  
  **Refs:** source_ref: this_chat_2026-02-13  

### F) Observability & Performance

- **Term (canonical): Observability**  
  **Definition:** Observability ist die Fähigkeit, Systemzustände über Logs, Metriken und Traces zu verstehen und zu debuggen.  
  **Allowed synonyms:** Beobachtbarkeit  
  **Forbidden/avoid:** Logging-only  
  **See also:** Distributed Tracing; OpenTelemetry  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): OpenTelemetry**  
  **Definition:** OpenTelemetry ist ein offener Standard und ein Tooling-Ökosystem zur Erfassung und Weitergabe von Logs, Metriken und Traces.  
  **Allowed synonyms:** OTel  
  **Forbidden/avoid:** proprietäres Tracing ohne Exportpfad  
  **See also:** Observability; Distributed Tracing; Trace; Span  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Distributed Tracing**  
  **Definition:** Distributed Tracing verfolgt einen Request über Systemgrenzen hinweg als Trace aus Spans, um Latenz und Fehlerpfade sichtbar zu machen.  
  **Allowed synonyms:** End-to-End Tracing  
  **Forbidden/avoid:** nur Einzelservice-Logs  
  **See also:** Trace; Span; OpenTelemetry  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Trace**  
  **Definition:** Ein Trace ist die vollständige Kette zusammenhängender Spans für eine End-to-End Anfrage oder einen Workflow-Lauf.  
  **Allowed synonyms:** Request-Trace  
  **Forbidden/avoid:** „irgendwo stand ein Log“  
  **See also:** Span; run_id  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Span**  
  **Definition:** Ein Span ist ein einzelnes Zeitsegment innerhalb eines Traces, das eine Operation mit Start/Ende und Attributen repräsentiert.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** Messen ohne Kontext  
  **See also:** Trace; Latency  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): run_id**  
  **Definition:** run_id ist eine eindeutige Kennung für einen Workflow-/Eval-Lauf, die Artefakte und Events über Schritte hinweg verbindet.  
  **Allowed synonyms:** execution_id  
  **Forbidden/avoid:** keine IDs  
  **See also:** Event Schema; Trace  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Event Schema**  
  **Definition:** Ein Event Schema definiert strukturierte Ereignisse (event_type, artifact, payload, next_actions), die Trigger und Routing deterministisch machen.  
  **Allowed synonyms:** Event-Format  
  **Forbidden/avoid:** freie Chat-Anweisungen ohne Struktur  
  **See also:** Trigger; Router  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Latency**  
  **Definition:** Latency ist die Zeitverzögerung eines Schritts oder End-to-End Flows, typischerweise gemessen als p50/p95/p99.  
  **Allowed synonyms:** Latenz  
  **Forbidden/avoid:** nur Durchschnittswerte  
  **See also:** Distributed Tracing; Load Test  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Load Test**  
  **Definition:** Ein Load Test erzeugt kontrollierte Last, um Performance- und Skalierungsverhalten (z. B. p95 Latenz) zu bewerten.  
  **Allowed synonyms:** Lasttest  
  **Forbidden/avoid:** Testen nur mit 1 Request  
  **See also:** Synthetic Monitoring; Smoke Test  
  **Refs:** source_ref: this_chat_2026-02-13  

- **Term (canonical): Synthetic Monitoring**  
  **Definition:** Synthetic Monitoring sind geplante Testläufe (Smoke/Check), die kontinuierlich Verfügbarkeit und Performance über Zeit beobachten.  
  **Allowed synonyms:** Synthetics  
  **Forbidden/avoid:** „merken wir schon“  
  **See also:** Smoke Test; Load Test  
  **Refs:** source_ref: this_chat_2026-02-13  

### G) DeepResearch & Literaturdatenbank

- **Term (canonical): Deep Research**  
  **Definition:** Deep Research ist ein workflow-orientierter Recherchemodus, der Web-, Datei- und Connector-Quellen systematisch nutzt und Ergebnisse versioniert.  
  **Allowed synonyms:** DeepResearch  
  **Forbidden/avoid:** „schnell googeln“ (wenn Search Log/Policy-Gates gefordert sind)  
  **See also:** Search Log; Literaturdatenbank; Evidence Card  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Literaturdatenbank**  
  **Definition:** Eine Literaturdatenbank ist ein versionierter Katalog deduplizierter Quellen mit Metadaten und Tags (z. B. CSV/JSON/BibTeX).  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** Linkliste ohne Dedupe/Tags  
  **See also:** Library; Evidence Card; Reading Queue  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Reading Queue**  
  **Definition:** Reading Queue ist eine priorisierte Leseliste, die Quellen nach Relevanz/Tier und Volltextstatus sortiert.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** ungesteuerte „Read later“-Sammlung  
  **See also:** Tier (Research); Volltextstatus; Literaturdatenbank  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Search Log**  
  **Definition:** Search Log ist ein versioniertes Protokoll der verwendeten Queries/Seeds/Schneeballpfade inklusive Datum und Ergebnisnotizen.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** Suche ohne Nachvollziehbarkeit  
  **See also:** Search Query; Seed Source (Research); Snowballing  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Tier (Research)**  
  **Definition:** Tier (Research) ist eine Quellenklassifizierung (A/B/C) nach Publisher-Qualität und Praxisrelevanz zur Priorisierung der Reading Queue.  
  **Allowed synonyms:** Tier A/B/C  
  **Forbidden/avoid:** Verwechslung mit Risiko-Klasse (A/B/C)  
  **See also:** Reading Queue; Publisher-Klasse; Risiko-Klasse (A/B/C)  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Volltextstatus**  
  **Definition:** Volltextstatus markiert, ob der überprüfbare Volltext einer Quelle verfügbar ist (z. B. vorhanden/fehlend/Paywall).  
  **Allowed synonyms:** Fulltext-Status  
  **Forbidden/avoid:** Abstract-only als „gelesen“ markieren  
  **See also:** Reading Queue; Search Log  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Seed Source (Research)**  
  **Definition:** Eine Seed Source ist eine initiale Startquelle, von der aus Suchpfade und Schneeballrecherche aufgebaut werden.  
  **Allowed synonyms:** Seed  
  **Forbidden/avoid:** Random Seed (wenn nicht Forschung gemeint ist)  
  **See also:** Snowballing; Search Query; Search Log  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Snowballing**  
  **Definition:** Snowballing ist eine Recherchetechnik, die ausgehend von Seeds über Zitations- und Referenzketten relevante Quellen erschließt.  
  **Allowed synonyms:** Schneeballrecherche  
  **Forbidden/avoid:** „zufällig klicken“  
  **See also:** Seed Source (Research); Search Log; Literaturdatenbank  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Search Query**  
  **Definition:** Eine Search Query ist eine dokumentierte Suchanfrage, die im Search Log reproduzierbar abgelegt wird.  
  **Allowed synonyms:** Query  
  **Forbidden/avoid:** nicht dokumentierte Einmal-Suche  
  **See also:** Search Log; Deep Research  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Publisher-Klasse**  
  **Definition:** Publisher-Klasse ist eine Gruppierung von Quellen nach Herkunft (z. B. Akademia, Industrie) zur Pflichtabdeckung in der Recherche.  
  **Allowed synonyms:** Quellenfamilie  
  **Forbidden/avoid:** unklare Mischklassen  
  **See also:** Tier (Research); Literaturdatenbank; Evidence Card  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

- **Term (canonical): Paywall-Bypass**  
  **Definition:** Paywall-Bypass ist der Versuch, Zugriffsbeschränkungen von Publikationen zu umgehen und ist im Deep-Research-Workflow verboten.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** jede Umgehung von Zugriffsbeschränkungen  
  **See also:** Volltextstatus; Policy; Deep Research  
  **Refs:** source_ref: AgenticSWE_MethodPolicy_DeepResearch_20260210_V2.md  

### H) Drive Reorganisation & Kontrollierte Ausführung

- **Term (canonical): Drive Reorganisation**  
  **Definition:** Drive Reorganisation ist der Aufbau einer neuen Ordnerstruktur per Kopie aus einem unveränderten Archiv, inklusive intelligenter Umbenennung.  
  **Allowed synonyms:** Drive-Reorg  
  **Forbidden/avoid:** Move/Delete im ersten Durchlauf  
  **See also:** ARCHIV (Drive Root); NEU (Drive Root); Dry Run  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): ARCHIV (Drive Root)**  
  **Definition:** ARCHIV (Drive Root) ist der unveränderte Quell-Root-Ordner, aus dem Inhalte nur gelesen und kopiert werden.  
  **Allowed synonyms:** Archiv-Root  
  **Forbidden/avoid:** Änderungen im ARCHIV  
  **See also:** Drive Reorganisation; NEU (Drive Root); Inventur  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): NEU (Drive Root)**  
  **Definition:** NEU (Drive Root) ist der Ziel-Root-Ordner, in dem die neue Struktur und kopierten Inhalte aufgebaut werden.  
  **Allowed synonyms:** Neu-Root  
  **Forbidden/avoid:** NEU ohne Plan/Review befüllen  
  **See also:** Drive Reorganisation; ARCHIV (Drive Root); Copy Plan  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): Inventur**  
  **Definition:** Inventur ist der initiale Read-only Scan, der Ordner-IDs, Dateilisten und Metadaten als Grundlage für Plan-Artefakte sammelt.  
  **Allowed synonyms:** Inventory  
  **Forbidden/avoid:** direkt kopieren ohne Inventur  
  **See also:** Dry Run; Control-Sheet; Search Log  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): Dry Run**  
  **Definition:** Dry Run ist ein Probelauf ohne schreibende Aktionen, der nur Pläne erzeugt und Validierungen ermöglicht.  
  **Allowed synonyms:** Trockenlauf  
  **Forbidden/avoid:** Execute ohne Dry Run  
  **See also:** Inventur; Human Approval; Gate  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): Control-Sheet**  
  **Definition:** Control-Sheet ist eine tabellarische Steuerzentrale (z. B. Google Sheet), in der Pläne, Status und Freigaben für Ausführung gepflegt werden.  
  **Allowed synonyms:** Steuer-Sheet  
  **Forbidden/avoid:** Steuerung nur per Chat  
  **See also:** Dry Run; Human Approval; Copy Plan  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): Copy Plan**  
  **Definition:** Copy Plan ist ein überprüfbares Plan-Artefakt, das alle vorgesehenen Kopieroperationen vor der Ausführung vollständig auflistet.  
  **Allowed synonyms:** COPY_PLAN  
  **Forbidden/avoid:** Kopieren ohne Plan-Artefakt  
  **See also:** Control-Sheet; Human Approval; Batch Processing  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): Batch Processing**  
  **Definition:** Batch Processing ist die Ausführung vieler API-Operationen in begrenzten Paketen, um Rate Limits und Fehler robust zu behandeln.  
  **Allowed synonyms:** Batching  
  **Forbidden/avoid:** ungebremste Massen-Requests  
  **See also:** Exponential Backoff; Außenwirkung; Dry Run  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): Exponential Backoff**  
  **Definition:** Exponential Backoff ist eine Retry-Strategie, bei der Wartezeiten nach Fehlern (z. B. 429/5xx) exponentiell erhöht werden.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** aggressives Retrying ohne Delay  
  **See also:** Batch Processing; Observability  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md  

- **Term (canonical): Human Approval**  
  **Definition:** Human Approval ist eine explizite manuelle Freigabe vor schreibenden Schritten, basierend auf überprüften Plan-Artefakten.  
  **Allowed synonyms:** Human-in-the-Loop Approval  
  **Forbidden/avoid:** Execute ohne Review  
  **See also:** Dry Run; Stop-&-Ask; Gate  
  **Refs:** source_ref: DriveReorg_Instructions_20260206_V10.md


### I) Autonomie, Risiko & Operating Rules

- **Term (canonical): Automation-first**  
  **Definition:** Automation-first ist das Prinzip, wiederholbare automatisierte Abläufe gegenüber Einmal-Lösungen zu bevorzugen.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** One-off Lösung (wenn automatisierbar)  
  **See also:** Autonomie-Leiter; Runbook; Harness; CI/CD  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Friction-Minimization**  
  **Definition:** Friction-Minimization ist das Ziel, Reibungsverluste durch klare Arbeitspakete, Defaults und Automationen zu reduzieren.  
  **Allowed synonyms:** Friction-Minimierung  
  **Forbidden/avoid:** lange Theorie ohne nächsten Schritt  
  **See also:** Actionability; Automation-first; Runbook  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Verifizierbarkeit**  
  **Definition:** Verifizierbarkeit ist die Eigenschaft, dass ein Ergebnis über Inputs/Outputs, Checks und Logs nachvollziehbar überprüfbar ist.  
  **Allowed synonyms:** Nachvollziehbarkeit  
  **Forbidden/avoid:** Ergebnis ohne Prüfpfad  
  **See also:** Gate; Smoke Test; Test Evidence; Artifact (GitHub Actions)  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Jargon-Rule**  
  **Definition:** Jargon-Rule ist die Regel, dass technische Begriffe beim ersten Auftauchen in genau 1 Satz erklärt werden.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** Abkürzungen ohne Erst-Erklärung  
  **See also:** Tutorial; Explanation  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Autonomie-Leiter**  
  **Definition:** Autonomie-Leiter ist ein Stufenmodell von manuell bis vollautonom, das die maximal sinnvolle Autonomie für eine Aufgabe vorgibt.  
  **Allowed synonyms:** Autonomy Ladder  
  **Forbidden/avoid:** Vollautonomie ohne Gates und Stop-Conditions  
  **See also:** Autopilot; Stop-Condition; Gate  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Scope**  
  **Definition:** Scope ist die explizite Abgrenzung, welche Komponenten/Dateien/Outcomes in-scope bzw. out-of-scope sind.  
  **Allowed synonyms:** Umfang  
  **Forbidden/avoid:** Scope-Creep ohne Re-Plan  
  **See also:** Erfolgskriterium; Deliverable; Stop-Condition  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Erfolgskriterium**  
  **Definition:** Ein Erfolgskriterium ist ein messbarer Zustand, der festlegt, wann eine Aufgabe als erledigt gilt.  
  **Allowed synonyms:** Success Criteria  
  **Forbidden/avoid:** „fertig“ ohne Messpunkt  
  **See also:** Gate; Verifizierbarkeit; Deliverable  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Deliverable**  
  **Definition:** Deliverable ist die eindeutig definierte Endausgabe einer Aufgabe (z. B. PR + Report oder Release-Artefakt).  
  **Allowed synonyms:** Lieferobjekt  
  **Forbidden/avoid:** Ergebnisform offen lassen  
  **See also:** Artefakt; Pull Request (PR); PR Report  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Runbook**  
  **Definition:** Ein Runbook ist eine kurze, konkrete Anleitung „So startest du es“, die Inputs, Startkommando und erwartete Outputs benennt.  
  **Allowed synonyms:** Betriebsanleitung  
  **Forbidden/avoid:** implizite Startschritte  
  **See also:** Harness; CI/CD; Verifizierbarkeit  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Fallback**  
  **Definition:** Fallback ist eine sichere Ausweichstrategie, die genutzt wird, wenn ein automatisierter Pfad scheitert.  
  **Allowed synonyms:** Plan B  
  **Forbidden/avoid:** „wird schon gehen“ ohne Alternative  
  **See also:** Runbook; Debug-Fahrplan; Stop-Condition  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Stop-Condition**  
  **Definition:** Eine Stop-Condition ist eine vordefinierte Grenze, bei deren Eintritt ein Agent stoppt und Freigabe oder Klarstellung einholt.  
  **Allowed synonyms:** Stop Condition  
  **Forbidden/avoid:** weiterlaufen trotz Risiko oder Unklarheit  
  **See also:** Stop-&-Ask; Risiko-Klasse (A/B/C); Außenwirkung; Gate  
  **Refs:** source_ref: KI_Softwareentwicklung_ChatGPT-Leitlinie_20260211_V2.md  

- **Term (canonical): Stop-&-Ask**  
  **Definition:** Stop-&-Ask ist das Verhalten, bei unklarer oder riskanter Außenwirkung die Ausführung zu stoppen und explizit nach Freigabe zu fragen.  
  **Allowed synonyms:** Stop & Ask  
  **Forbidden/avoid:** raten und ausführen  
  **See also:** Stop-Condition; Risiko-Klasse (A/B/C); Außenwirkung  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Autopilot**  
  **Definition:** Autopilot ist ein Vollautonomie-Modus, in dem ein Agent innerhalb definierter Grenzen iteriert, bis Gates erfüllt sind, und ein Deliverable liefert.  
  **Allowed synonyms:** —  
  **Forbidden/avoid:** Autopilot ohne Scope und Stop-Conditions  
  **See also:** Autonomie-Leiter; Gate; Feature-Branch; Pull Request (PR); PR Report  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Risiko-Klasse (A/B/C)**  
  **Definition:** Risiko-Klasse (A/B/C) klassifiziert Aufgaben nach Außenwirkung, wobei A sicher, B vorsichtig und C nur nach Freigabe erlaubt ist.  
  **Allowed synonyms:** Risk Class (A/B/C)  
  **Forbidden/avoid:** Klasse-C Änderung ohne Freigabe  
  **See also:** Außenwirkung; Stop-&-Ask; Gate; Policy  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Außenwirkung**  
  **Definition:** Außenwirkung ist jede Aktion, die außerhalb des Repos Systeme, Daten, Secrets oder Kosten beeinflusst.  
  **Allowed synonyms:** External impact  
  **Forbidden/avoid:** „harmlos“ labeln ohne Prüfung  
  **See also:** Risiko-Klasse (A/B/C); Deploy; Secret (Credential); CI/CD  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Secret (Credential)**  
  **Definition:** Ein Secret (Credential) ist ein sensitiver Zugangswert (z. B. Token/Key), der niemals im Klartext in Code, Logs oder Issues stehen darf.  
  **Allowed synonyms:** Credential  
  **Forbidden/avoid:** Secrets committen oder teilen  
  **See also:** Secret Scanning; Policy; Außenwirkung  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Feature-Branch**  
  **Definition:** Ein Feature-Branch ist ein isolierter Arbeitsbranch für eine Änderung, der via Pull Request geprüft und gemerged wird.  
  **Allowed synonyms:** Feature Branch  
  **Forbidden/avoid:** direkt auf main/master arbeiten  
  **See also:** Branch; Pull Request (PR); Branch Protection  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Force Push**  
  **Definition:** Force Push ist ein erzwungenes Umschreiben der Branch-Historie, das kollaborative Arbeit destabilisieren kann und daher zu vermeiden ist.  
  **Allowed synonyms:** --force push  
  **Forbidden/avoid:** Force-Push auf gemeinsam genutzte Branches  
  **See also:** Branch; Governance; Branch Protection  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Thin slice**  
  **Definition:** Thin slice ist eine kleine, additive Änderungseinheit, die schnell verifiziert und inkrementell erweitert werden kann.  
  **Allowed synonyms:** thin slice; Thin Slice  
  **Forbidden/avoid:** Big-bang Refactor ohne Gates  
  **See also:** Patch; Diff; Gate; CI/CD  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): PR Report**  
  **Definition:** Ein PR Report ist ein standardisierter Pull-Request-Text, der Summary, Risk Class, Files Touched, Commands Run, Test Evidence und Rollback beschreibt.  
  **Allowed synonyms:** PR-Report  
  **Forbidden/avoid:** PR ohne Risk/Tests/Commands  
  **See also:** Pull Request (PR); Risiko-Klasse (A/B/C); Test Evidence; Rollback  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Test Evidence**  
  **Definition:** Test Evidence ist ein minimaler Nachweis (z. B. CI-Resultat oder Logauszug), dass relevante Gates/Checks bestanden wurden.  
  **Allowed synonyms:** Testnachweis  
  **Forbidden/avoid:** „Tests sind bestimmt ok“  
  **See also:** Gate; CI/CD; PR Report; Artifact (GitHub Actions)  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

- **Term (canonical): Rollback**  
  **Definition:** Rollback ist ein geplanter Rückweg, um Änderungen sicher rückgängig zu machen oder einen vorherigen Zustand wiederherzustellen.  
  **Allowed synonyms:** Rückabwicklung  
  **Forbidden/avoid:** irreversible Änderungen ohne Recovery-Pfad  
  **See also:** Deploy; PR Report; Außenwirkung  
  **Refs:** source_ref: KI_Softwareentwicklung_Codex-Leitlinie_20260211_V2.md  

---

## 4) Offene Kandidaten & TODOs (Blackboard)
- TODO: Disambiguation für „A/B/C“: Risiko-Klasse vs Tier (Research) (Naming + See-also konsequent).
- TODO: Canonicalize EN/DE für Autonomie-Begriffe (z. B. Thin slice/Thin Slice; Stop-&-Ask/Stop & Ask).
- TODO: Map Risiko-Klasse (A/B/C) auf konkrete Gates/Policies (z. B. CI/CD + Review-Requirements).
- TODO: Entscheiden, ob PR Report als eigenes Template im Bereich „Templates & Harness“ geführt wird.
- TODO: Standardisieren, wie Plan-Artefakte (z. B. Copy Plan) benannt und versioniert werden (DocType/Template).
