---
projekt: ASWE_KnowledgeOS
dokumenttyp: referenz
version: V1
datum: 2026-03-26
status: entwurf
sprache: de
zweck: "Kanonische Relationsmatrix fuer die ontologische Basisschicht des ASWE-KnowledgeOS."
---

# Referenz: Relationsmatrix V1

## 1. Zweck

Diese Matrix legt fest, welche Relationen in der ontologischen Basisschicht zulaessig sind, zwischen welchen Klassen sie gelten und welche Modellfehler vermieden werden muessen.

Sie ist absichtlich klein.  
Ihr Zweck ist semantische Disziplin, nicht Vollstaendigkeit.

## 2. Primitive Klassen

Die Matrix verwendet nur diese zehn Klassen:

- Begriff
- Benennung
- Definition
- Kategorie
- Instanz
- Relation
- Artefakt
- Beobachtung
- Aussage
- Beleg

## 3. Erlaubte Grundrelationen

### 3.1 Terminologische Relationen

| Subjektklasse | Relation | Objektklasse | Status | Kurzregel |
|---|---|---|---|---|
| Benennung | benennt | Begriff | erlaubt | Eine Benennung bezeichnet genau einen gemeinten Begriff im gegebenen Kontext. |
| Definition | definiert | Begriff | erlaubt | Eine Definition grenzt einen Begriff explizit ab. |
| Begriff | steht in Bedeutungsbeziehung zu | Begriff | erlaubt | Nur fuer explizit typisierte Nachbarschaften; nie als Ersatz fuer Hierarchie. |

### 3.2 Klassifikationsrelationen

| Subjektklasse | Relation | Objektklasse | Status | Kurzregel |
|---|---|---|---|---|
| Kategorie | klassifiziert | Instanz | erlaubt | Kategorien ordnen Einzelfaelle ein. |
| Kategorie | ist Oberkategorie von | Kategorie | erlaubt | Hierarchische Klassifikation. |
| Kategorie | ist Unterkategorie von | Kategorie | erlaubt | Umkehrrelation der Oberkategorie. |
| Kategorie | ist assoziiert mit | Kategorie | erlaubt | Nur fuer nicht-hierarchische Nachbarschaft. |

### 3.3 Epistemische Relationen

| Subjektklasse | Relation | Objektklasse | Status | Kurzregel |
|---|---|---|---|---|
| Beobachtung | betrifft | Instanz | erlaubt | Eine Beobachtung bezieht sich auf einen Gegenstand, Fall oder Zustandstraeger. |
| Aussage | stuetzt sich auf | Beobachtung | erlaubt | Aussagen duerfen nicht beobachtungsfrei gesetzt werden, wenn sie empirisch klingen. |
| Beleg | stuetzt | Aussage | erlaubt | Ein Beleg stuetzt eine Aussage, ersetzt sie aber nicht. |
| Artefakt | enthaelt | Beobachtung | erlaubt | Artefakte koennen Beobachtungen dokumentieren. |
| Artefakt | enthaelt | Aussage | erlaubt | Artefakte koennen Aussagen dokumentieren. |
| Artefakt | enthaelt | Beleg | erlaubt | Artefakte oder Artefaktausschnitte koennen Belege tragen. |

### 3.4 Artefakt- und Autoritaetsrelationen

| Subjektklasse | Relation | Objektklasse | Status | Kurzregel |
|---|---|---|---|---|
| Artefakt | enthaelt | Benennung | erlaubt | Zum Beispiel Glossar- oder Referenzeintraege. |
| Artefakt | enthaelt | Definition | erlaubt | Zum Beispiel normierende Begriffsdateien. |
| Artefakt | ist kanonische Quelle fuer | Begriff | erlaubt | Zum Beispiel Glossar fuer Begriffe. |
| Artefakt | ist kanonische Quelle fuer | Kategorie | erlaubt | Zum Beispiel Taxonomie fuer Kategorien. |
| Artefakt | ist kanonische Quelle fuer | Relation | eingeschraenkt erlaubt | Nur wenn das Artefakt Relationen explizit normiert. |
| Artefakt | leitet weiter auf | Artefakt | erlaubt | Fuer Pointer-, Start- oder Router-Artefakte. |

## 4. Strikt verbotene Modellierungen

| Verbot | Warum verboten |
|---|---|
| Begriff benennt Benennung | Richtungsfehler; Benennung benennt Begriff, nicht umgekehrt. |
| Kategorie definiert Begriff | Kategorien klassifizieren; Definitionen definieren. |
| Beobachtung stuetzt Aussage | Beobachtung ist Grundlage, aber der stuetzende Traeger ist der Beleg. |
| Aussage ist Beleg | Ebenenvermischung zwischen Behauptung und Stuetzung. |
| Beleg ist Beobachtung | Ein Beleg kann eine Beobachtung enthalten, ist aber nicht mit ihr identisch. |
| Taxonomie ist Ontologie | Zu starke Gleichsetzung; Taxonomie ist nur ein Teilbereich. |
| SSOT ist Artefaktklasse | „Kanonische Quelle fuer“ ist eine Relation, keine eigene Dingart. |
| Rolle klassifiziert Instanz in der Basisschicht | Rollen gehoeren nicht in diese Grundschicht. |
| Pruefung ist Regel | Regeln setzen Normen; Pruefungen kontrollieren gegen Normen. |

## 5. Kardinalitaets- und Disziplinregeln

### 5.1 Benennung
Eine Benennung kann in verschiedenen Kontexten mehrdeutig sein.  
Deshalb gilt normativ: Im Glossar wird eine Benennung nur dann kanonisch, wenn sie genau einen gemeinten Begriff tragen soll.

### 5.2 Definition
Ein Begriff kann mehrere Definitionen in verschiedenen Diskursen haben.  
Im KnowledgeOS ist pro kanonischem Begriff genau eine bevorzugte kanonische Definition anzustreben.

### 5.3 Kategorie
Eine Instanz kann mehreren Kategorien zugeordnet sein, wenn die Kategorien auf unterschiedlichen Achsen liegen.  
Unmarkierte Mehrfachklassifikation ist zu vermeiden.

### 5.4 Aussage
Jede belastbare Aussage sollte mindestens einen expliziten Beleg besitzen.  
Ohne Beleg bleibt die Aussage vorlaeufig oder nur heuristisch.

### 5.5 Artefakt
Ein Artefakt kann mehrere ontologische Einheiten enthalten.  
Es darf aber nicht stillschweigend ihre Ebenen aufheben.

## 6. Ableitungsregeln fuer Repo-nahe Gebilde

### 6.1 Glossar
Ein Glossar ist ein Artefakt, das mindestens diese Relationen materialisiert:

- Benennung benennt Begriff
- Definition definiert Begriff
- Artefakt ist kanonische Quelle fuer Begriff

### 6.2 Taxonomie
Eine Taxonomie ist ein Artefakt, das mindestens diese Relationen materialisiert:

- Kategorie ist Oberkategorie von Kategorie
- Kategorie ist Unterkategorie von Kategorie
- Artefakt ist kanonische Quelle fuer Kategorie

### 6.3 Allowlist
Eine Allowlist ist kein primitives Objekt, sondern ein regeltragendes Artefakt.  
Sie ist typischerweise kanonische Quelle fuer **zulaessige Eintraege**, nicht fuer Bedeutungen.

### 6.4 Shared Output Contract
Der gemeinsame Ausgabevertrag ist kein semantisches Grundartefakt, sondern ein operativ-epistemischer Strukturvertrag.  
Er setzt die Trennung von Aussage, Beleg und Konfidenz praktisch um.

### 6.5 ENTRY_LATEST
`ENTRY_LATEST` ist ontologisch am saubersten als weiterleitendes Artefakt modelliert:

- Artefakt leitet weiter auf Artefakt

Es soll nicht zum Sammelbehaelter fuer operative Wahrheit werden.

## 7. Modellpruefungen fuer kuenftige Begriffe

Jeder neue vorgeschlagene Begriff ist gegen diese fuenf Fragen zu pruefen:

1. Ist es ein primitiver Grundbegriff oder nur ein abgeleitetes Gebilde?
2. Ist es eine Bedeutung, eine Benennung oder eine Definition?
3. Ist es eine Kategorie, eine Instanz oder eine Relation?
4. Ist es eine Beobachtung, eine Aussage oder ein Beleg?
5. Ist es semantische Grundschicht oder bereits operative Schicht?

Wenn eine Einheit auf mehrere Fragen zugleich „ja“ verlangt, liegt meistens Ebenenvermischung vor.

## 8. Empfohlene Kurztests gegen Drift

### Test A: Benennungsdrift
Wird ein bekanntes Wort ploetzlich fuer eine andere Bedeutung benutzt?

### Test B: Hierarchiedrift
Wird eine assoziative Beziehung stillschweigend als Ober-/Unterordnung behandelt?

### Test C: Evidenzdrift
Wird aus einem Beleg direkt eine Aussage gemacht, ohne die Behauptung selbst explizit zu formulieren?

### Test D: SSOT-Drift
Wird „SSOT“ als Etikett fuer zu viele verschiedene Autoritaetsarten benutzt?

### Test E: Ebenendrift
Wird ein Rollen-, Prozess- oder Implementierungsbegriff als Grundbegriff eingeschmuggelt?

## 9. Kleinste naechste Erweiterung nach V1

Wenn V2 noetig wird, ist die wahrscheinlich sinnvollste erste Erweiterung:

- **Merkmal** als eigene Klasse
- Relation: Beobachtung betrifft Merkmal
- Relation: Definition verwendet Merkmal zur Abgrenzung

Diese Erweiterung ist fachlich plausibel, wurde in V1 aber bewusst noch nicht primitiv gesetzt, um die Basis klein zu halten.

## 10. Quellen

### 10.1 Externe Quellen

- [E1] ISO 704:2022, *Terminology work — Principles and methods*.
- [E2] ISO 1087:2019, *Terminology work and terminology science — Vocabulary*.
- [E3] W3C, *SKOS Simple Knowledge Organization System Reference*.
- [E4] W3C, *OWL 2 Web Ontology Language Primer*.
- [E5] W3C, *PROV-O: The PROV Ontology*.
- [E6] W3C, *Semantic Sensor Network Ontology* bzw. die W3C-Einfuehrung zur Recommendation.

### 10.2 Interne Quellen

- [R1] `meta/AgenticSWE_KnowledgeOS_Glossary_20260217_V6.md`
- [R2] `handbook/reference/AgenticSWE_GPTPro_Shared_Output_Contract_20260318_V1.md`
- [R3] `meta/state/AgenticSWE_KnowledgeOS_RepoMeaningMap_20260311_V2.md`
- [R4] `scripts/validate_taxonomy_glossary_mapping.py`
- [R5] `handbook/runbooks/AgenticSWE_KnowledgeOS_Portal_OptionB_Runbook_20260217_V1.md`
