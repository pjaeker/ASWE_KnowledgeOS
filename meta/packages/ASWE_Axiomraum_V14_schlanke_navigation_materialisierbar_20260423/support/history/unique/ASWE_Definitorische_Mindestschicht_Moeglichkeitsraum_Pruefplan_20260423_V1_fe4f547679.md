---
document_id: ASWE_Definitorische_Mindestschicht_Moeglichkeitsraum_Pruefplan_20260423_V1
document_role: support_document
status: explanatory_and_planning
scope: logisch-definitorische Mindestschicht und formalisierbare Pruefung
version_date: 2026-04-23
---

# ASWE_Definitorische_Mindestschicht_Moeglichkeitsraum_Pruefplan_20260423_V1

## 1. Voranalyse

### Zielbild
Dieses Dokument klaert, warum eine definitorische Mindestschicht notwendig ist, welche Alternativen moeglich waren und wie ihre Anwendung moeglichst nachvollziehbar geprueft werden kann.

### Gegenstand
Gegenstand ist die Bruecke zwischen:

```text
Kernaxiom -> Designprinzip -> Qualitaetsattribut -> operative Regel
```

### Geltungsbereich
Das Dokument dient als ausgelagerter Planungs- und Pruefadapter. Es ersetzt nicht das Grundlagendokument.

### Nicht-Geltung
Es erzeugt keine neuen Kernaxiome, keine neuen Folgeebenen und keine direkte Repo-Materialisierung.

### Epistemischer Status
Die Feststellung ist: Vor Integration der definitorischen Mindestschicht trug das Grundlagendokument eine erhoehte heuristische Last. Die Axiome und Folgeebenen waren gelistet und geordnet, aber die Brueckenregeln zwischen den Ebenen waren noch nicht streng genug expliziert.

## 2. Antwort auf die Grundfrage

Ja: Wenn die definitorische Mindestschicht erst jetzt erstellt wird, war sie zuvor nicht voll explizit vorhanden. Daraus folgt nicht, dass das Grundlagendokument unbrauchbar war. Es bedeutet aber:

- Ebenenklassifikation war plausibel, aber teilweise heuristisch.
- Ableitungen waren nachvollziehbar, aber nicht streng genug regelgebunden.
- Messbarkeit von Qualitaetsattributen war anschlussfaehig, aber noch nicht sauber von Axiomen und Designprinzipien abgegrenzt.
- Die Objektivierung war strukturiert, aber noch nicht maximal reproduzierbar.

## 3. Erweiterter Moeglichkeitsraum

| Option | Beschreibung | Vorteil | Risiko | Entscheidung |
|---|---|---|---|---|
| Natuerlichsprachliche Definitionen | Klassen und Regeln werden in praeziser Prosa formuliert | gut lesbar | Interpretationsspielraum bleibt | notwendig, aber allein nicht genug |
| Typisiertes Tabellenmodell | Jede Klasse hat Pflichtfelder und Relationstypen | auditierbar | kann schematisch werden | verwenden |
| Kontrollierte Sprachformen | Aussagen folgen festen Mustern | reduziert Mehrdeutigkeit | wirkt sperrig | fuer Pruefung nutzen |
| Graphmodell | Elemente als Knoten, Relationen als Kanten | maschinenanschlussfaehig | hoeherer Aufwand | spaeter sinnvoll |
| Formale Praedikatenlogik | `Axiom(x)`, `leitet_ab(y,x)` usw. | streng | schwer lesbar | als Pruefsemantik verwenden, nicht als Haupttext |
| YAML/JSON-Schema | strukturierte Pruefdaten | automatisierbar | Zusatzartefakt noetig | spaeterer Adapter |
| Review-Algorithmus | feste Pruefschritte | reproduzierbar | braucht Disziplin | sofort verwenden |

## 4. Empfohlener Ansatz

Der beste Ansatz ist hybrid:

1. Grundlagendokument enthaelt die definitorische Mindestschicht in lesbarer, normativer Form.
2. Support-Dokument enthaelt den Moeglichkeitsraum und Pruefplan.
3. Spaetere Operationalisierung kann daraus ein Schema, eine Checkliste oder einen Skill ableiten.
4. Messbarkeit beginnt erst bei Qualitaetsattributen; Axiome und Designprinzipien bleiben logisch-definitorisch zu pruefen.

## 5. Formale Pruefsemantik

### 5.1 Typ-Praedikate

```text
Kernaxiom(x)
Designprinzip(x)
Qualitaetsattribut(x)
OperativeRegel(x)
Kopplungsfolge(x)
Auditkriterium(x)
Reservebegriff(x)
```

### 5.2 Relations-Praedikate

```text
leitet_ab(y, x)
operationalisiert(r, x)
bewertet_durch(q, i)
begrenzt_durch(x, g)
steht_in_spannung_mit(x, y)
vererbt_an(x, y)
deprekiert(x)
koppelt(k, x, y)
```

### 5.3 Ausschlussregeln

```text
Kernaxiom(x) -> nicht Qualitaetsattribut(x)
Kernaxiom(x) -> nicht OperativeRegel(x)
Designprinzip(x) -> nicht Messgroesse(x)
Qualitaetsattribut(x) -> indikatorfaehig(x)
OperativeRegel(x) -> ausfuehrbar(x)
```

### 5.4 Mindestableitung

```text
Designprinzip(y) -> existiert x: Kernaxiom(x) und leitet_ab(y, x)
Qualitaetsattribut(y) -> existiert x: Kernaxiom(x) oder Designprinzip(x), leitet_ab(y, x)
OperativeRegel(y) -> existiert x: Kernaxiom(x) oder Designprinzip(x) oder Qualitaetsattribut(x), operationalisiert(y, x)
Kopplungsfolge(k) -> existiert x,y: Bereich(x) != Bereich(y) und koppelt(k, x, y)
```

## 6. Algorithmisierter Pruefplan

### Schritt 1: Elementinventar
Alle Elemente aus Grundlagendokument extrahieren.

### Schritt 2: Typisierung
Jedem Element genau einen primaeren Typ zuweisen.

### Schritt 3: Pflichtfelder pruefen
Je Typ Pflichtfelder pruefen:

| Typ | Pflichtfelder |
|---|---|
| Kernaxiom | Bereich, basale Funktion, Geltung, Nicht-Geltung, Folgefaehigkeit |
| Designprinzip | Rueckbindung, Konstruktionsfunktion, Abgrenzung, Folgefaehigkeit |
| Qualitaetsattribut | Rueckbindung, bewertbare Eigenschaft, Indikatorfaehigkeit, Grenze |
| Operative Regel | Trigger, Handlung, Pruefung, Stoppregel, Rueckbindung |
| Kopplungsfolge | gekoppelte Bereiche, Richtung/Asymmetrie, Grenze |

### Schritt 4: Relationsmatrix pruefen
Alle Relationen muessen erlaubten Richtungen entsprechen.

### Schritt 5: Ebenenfehler suchen
Pruefe:
- Axiom als Messgroesse formuliert?
- Prinzip als operative Anweisung formuliert?
- Attribut ohne Bewertbarkeit?
- Regel ohne Ausfuehrbarkeit?
- Kopplung nur analog statt explizit?

### Schritt 6: Konfliktlage pruefen
Spannungen, vererbte Spannungen, Redundanz und Widerspruch erfassen.

### Schritt 7: Beurteilbarkeitsstatus vergeben
Jede Pruefaussage wird markiert als:
- objektiv artefaktbelegt,
- prozessual rekonstruierbar,
- heuristisch plausibel,
- nicht belastbar beurteilbar.

### Schritt 8: Entscheidung
Pro Element:
- beibehalten,
- enger fassen,
- unterordnen,
- umklassifizieren,
- deprekieren,
- verwerfen.

## 7. Erwarteter Objektivierungsgewinn

| Bereich | Vor Mindestschicht | Nach Mindestschicht |
|---|---|---|
| Ebenenklassifikation | strukturiert, aber teilweise heuristisch | regelgebunden |
| Ableitung | plausibel | relationell pruefbar |
| Messbarkeit | frueh vermischt moeglich | erst ab Attributebene |
| Repo-Materialisierung | gut begrenzt | besser typisierbar |
| Folgeebenen-Nachzug | angelegt | algorithmisierbar |
| Beurteilbarkeit | gemischt | Statuspflicht |

## 8. Naechster Operationalisierungsschritt

Noch nicht sofort ins Repo schreiben. Zuerst eine kleine Prueftabelle fuer das bestehende Grundlagendokument erzeugen:

```text
Element | Typ | Rueckbindung | Pflichtfelder erfuellt | Relation gueltig | Beurteilbarkeitsstatus | Entscheidung
```

Diese Tabelle ist der kleinste sinnvolle Schritt von der definitorischen Mindestschicht zur objektivierten Pruefung.


## 9. V13-Integration

Die logische Konsistenzschicht wurde in das Grundlagendokument V4 integriert. Sie priorisiert:
1. Vorrang der Definition vor der Pruefung,
2. strikte Primaertypisierung,
3. Verbot von Ebenenvermischung,
4. gerichtete azyklische Ableitung,
5. mengenlogische Disjunktheit,
6. Zirkularitaetssperren,
7. Invarianten,
8. Gegenmodellpruefung,
9. Beurteilbarkeitsstatus,
10. Messbarkeit erst ab Qualitaetsattributen.
