# ASWE_KnowledgeOS_Router-Skill_Gestaltung_V1

## Ziel

Der Skill soll **nicht** die Ontologie ersetzen.
Er soll ChatGPT vor der eigentlichen Bearbeitung zu einem kurzen, expliziten Routing-Schritt zwingen.

Kurz:
**erst einordnen, dann antworten**

## Sinnvolle Rolle des Skills

Der Skill ist sinnvoll, wenn der Router nicht nur im Hintergrund wirken soll,
sondern als wiederverwendbarer, expliziter Vorverarbeitungsschritt.

Er soll besonders dann ausloesen, wenn:
- eine Frage mehrdeutig ist
- mehrere Abstraktionsebenen moeglich sind
- externe Fachdomäne und repo-lokale Governance konkurrieren
- Werkzeug-/Umgebungsfragen mit Architektur- oder Policyfragen verwechselt werden koennten
- neue Begriffe oder Fragetypen auftauchen

## Empfohlener Skill-Name

`aswe-question-router`

## Empfohlene Kurzbeschreibung

fragt neue anliegen zuerst nach gegenstandsbereich, wissensebene und abstraktionsgrad ein und waehlt daraus den passenden erstzugriffspfad. verwenden, wenn eine frage mehrdeutig ist, zu schnell auf glossar, taxonomie, richtlinien, gates oder workflows gezogen werden koennte oder wenn zwischen fachdomäne, systemstruktur, governance, umgebung und einzelfall sauber unterschieden werden muss.

## Kernverhalten

Der Skill soll vor jeder tieferen Bearbeitung genau diese vier Schritte ausfuehren:

1. Primaeren Gegenstandsbereich bestimmen
2. Primaere Wissensebene bestimmen
3. Abstraktionsgrad bestimmen
4. Erstzugriffspfad bestimmen

Danach soll er nur eine kurze, disziplinierte Ausgabe machen.

## Pflichtausgabe des Skills

Der Skill sollte immer genau diese Bloecke liefern:

1. **Einordnung**
   - Gegenstandsbereich
   - Wissensebene
   - Abstraktionsgrad

2. **Begruendung**
   - warum diese Einordnung primaer ist
   - welche naheliegenden Fehlrouten vermieden werden

3. **Erstzugriffspfad**
   - welche Referenz- oder Artefaktklasse zuerst herangezogen werden soll

4. **Sekundaere Pfade**
   - was erst danach relevant wird

5. **Stoppregel**
   - wann nicht weiter auf operative oder implementative Ebenen gesprungen werden darf

## Harte Regeln

- nicht direkt loesen, wenn die Frage zuerst geroutet werden muss
- keine vorschnelle Verzweigung auf Glossar, Taxonomie, Richtlinie oder Workstream ohne explizite Router-Einordnung
- externe Fachfragen zuerst fachlich einordnen
- Umgebungsfragen zuerst als Adapter-/Oberflaechenfragen behandeln
- Beobachtung, Aussage und Beleg nicht vermischen
- bei Mehrdeutigkeit primaere und sekundaere Route explizit nennen
- wenn keine sichere Einordnung moeglich ist, die kleinste plausible Arbeitshypothese markieren

## Referenzen, die in den Skill gehoeren

### Pflichtreferenzen
- Ontologische Basis V1
- Relationsmatrix V1
- Abstraktions- und Ebenenrouter V1

### Sinnvolle Zusatzreferenzen
- Glossar
- RepoMeaningMap
- ChatGUI-/Adapter-Routingdokument
- Shared Output Contract

## Empfohlene Skill-Struktur

aswe-question-router/
- SKILL.md
- agents/openai.yaml
- references/
  - ontology-baseline.md
  - relations-matrix.md
  - router-v1.md
  - repo-anchors.md
  - worked-examples.md

## Minimaler Inhalt von SKILL.md

### Frontmatter
- name: aswe-question-router
- description: siehe Kurzbeschreibung oben

### Body
Der Body soll knapp bleiben und nur enthalten:
- den vierstufigen Router-Ablauf
- die Pflichtausgabe
- die harten Regeln
- Verweise auf die Referenzen
- 4 bis 8 kurze Beispielprompts

## Beispiel-Trigger

- „Ordne diese Frage zuerst sauber ein.“
- „Welche Ebene ist hier die richtige?“
- „Bevor du antwortest: route diese Frage.“
- „Ist das Theorie, Governance oder Implementierung?“
- „Ist das eine Fachfrage oder eine Repo-Frage?“
- „Wie sollte ich diese Frage im KnowledgeOS zuerst anfassen?“

## Gute Beispielanfragen fuer den Skill

1. „Was ist Optimierungstheorie im Unterschied zu Optimierung?“
2. „Ist die Frage nach Codex versus ChatGPT-Desktop eher Umgebungs- oder Architekturfrage?“
3. „Muss ich fuer diese Frage ins Glossar oder zuerst in externe Fachliteratur?“
4. „Ist das hier eine Beobachtung, eine Aussage oder schon eine Regel?“
5. „Welche Einstiegsebene ist fuer diese Frage im ASWE-KnowledgeOS richtig?“

## Nicht-Ziele des Skills

- keine direkte Architekturentscheidung
- keine Policy-Formulierung
- keine Implementierungsausarbeitung
- kein voller Ontologievalidator
- kein Workstream-Manager

## Empfohlene Ausbaustufen

### Stufe 1
Reiner Text-Skill ohne Skripte.
Ziel: disziplinierte Vor-Einordnung.

### Stufe 2
Zusatzreferenz mit 15 bis 25 Beispielrouten aus realen ASWE-Fragen.

### Stufe 3
Optionaler leichter Validator oder Checkliste fuer typische Fehlrouten.

## Praktische Einfuehrungsempfehlung

1. Zuerst die Kurzfassung in Benutzerdefinierte Anweisungen einsetzen.
2. Danach den Router-Skill bauen.
3. Den Skill zunaechst fuer mehrdeutige oder foundations-nahe Fragen aktiv nutzen.
4. Erst spaeter pruefen, ob eine automatische Kopplung an andere Skills sinnvoll ist.
