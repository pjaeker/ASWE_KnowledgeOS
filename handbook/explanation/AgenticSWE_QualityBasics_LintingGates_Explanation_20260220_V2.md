---
project: "ASWE Knowledge-OS"
doc_type: explanation
version: "V2"
date: "2026-02-20"
status: draft
audience: ["human", "llm"]
intent: "Ich verstehe die Grundbegriffe (Linting, Formatierung, Validierung, Tests, Gates), kann Findings triagieren und weiß, wie ich mit VS Code + Extensions die Qualität im Option‑B Portal-Workflow stabil halte."
tags:
  - layer/handbook
  - artifact/explanation
  - topic/consistency
  - topic/gate
  - topic/observability
---

# Qualitäts-Basics im Docs-as-Code Workflow
**Linting, Formatierung, Validierung, Tests & Gates – verständlich erklärt (mit Beispielen)**

## Für wen ist das?
Du hast bisher wenig Praxis mit Softwareentwicklung, willst aber **zuverlässig** mit einem Repo arbeiten, in dem Doku wie Code behandelt wird. Du nutzt VS Code und bekommst Feedback über Extensions wie **markdownlint**, **Code Spell Checker**, **YAML**, **ShellCheck** und Security-Scanner. Das Ziel dieses Dokuments ist, dass du diese Signale **einordnen** kannst: Was ist wichtig, was ist nur Lärm? — und daraus eine **klare Routine** ableitest.

> Merksatz: Qualitätstools sollen dir nicht „mehr Arbeit“ machen, sondern **Review-Reibung** reduzieren und **Fehler früh** finden – bevor du im PR oder in CI debuggen musst.

---

## 0) Mentales Modell: So sieht „Qualität“ im Portal-Option‑B Ablauf aus
Stell dir den Workflow wie eine **Qualitätskette** vor – ähnlich wie in einem Laborprozess:

| Labor-Analogie | Docs-as-Code Entsprechung |
|---|---|
| SOP/Arbeitsanweisung | Style-Regeln, Lint-Regeln, Taxonomie/Frontmatter-Regeln |
| Geräte-Check vor Messung | Preflight (preflight, lokale Vorprüfung) |
| Messung + QC | PR-Änderung + automatische Checks |
| Peer Review des Reports | PR-Review (review, Gegensicht) |
| Freigabe/Archiv | Merge in main + versionierte Artefakte |

**Praktisch heißt das:**
1) Du schreibst/änderst Dateien (Doku/Config)  
2) VS Code zeigt sofort Hinweise im **Problems Panel** (problems panel, Fehlerliste)  
3) Du führst lokale Gates aus (Preflight)  
4) Du öffnest einen PR (write-via-PR: nur per Pull Request)  
5) CI/Checks laufen nochmals (zweite Sicherheitsstufe)  
6) Erst dann wird gemerged

> Warum doppelt (lokal + CI)? Lokal ist „schnell und billig“. CI ist „unabhängig und reproduzierbar“.

---

## 1) Begriffskarte: Was ist was?
Hier die wichtigsten Begriffe in **einem** konsistenten Raster:

### Linting (linting, Regelprüfung)
Linting bedeutet: Ein Tool prüft deinen Text/Code gegen **Regeln** und meldet Abweichungen.  
- Ergebnis: **Findings** (finding: Tool-Hinweis) – oft als Warnung/Fehler im Editor.

### Formatierung (formatting, Auto-Layout)
Formatierung bedeutet: Ein Tool **ändert** deinen Text automatisch, um ein einheitliches Layout zu erzeugen (Einrückung, Zeilenumbrüche, Leerzeichen).

### Validierung (validation, Strukturcheck)
Validierung bedeutet: Ein Tool prüft, ob die **Struktur** stimmt. Beispiele: YAML ist syntaktisch korrekt, Frontmatter hat erlaubte Felder, Tags sind aus der Taxonomie.

### Tests (tests, Laufzeitprüfung)
Tests prüfen Verhalten „in Aktion“: Code läuft und erfüllt Erwartungen. Bei reiner Doku sind Tests oft selten, aber z. B. Link-Checks oder Parser-Checks sind „test-ähnlich“.

### Gate (gate, harte Schranke)
Ein Gate ist ein „**Stoppschild**“: Wenn es rot ist, soll nichts weitergehen (z. B. PR nicht mergen).

### CI (CI, automatischer Prüflauf)
CI (continuous integration) führt Checks reproduzierbar aus, meist auf GitHub. Praktisch: Bei PR/Push laufen automatisierte Prüfungen, damit Fehler nicht „durchrutschen“.

---

## 2) Warum du das brauchst (und was ohne passiert)
Ohne diese Werkzeuge passiert in Doku/Repo-Projekten typischerweise:

- **Diff-Noise**: Diffs werden unnötig groß (z. B. durch inkonsistente Einrückung), Reviews werden langsam.
- **Späte Fehler**: Kaputte Links, falsche YAML-Einrückung, falsche Tags tauchen erst im PR oder bei Nutzern auf.
- **Agenten-Chaos**: Copilot/Codex können viel erzeugen – ohne Gates entsteht schnell „groß, aber fragil“.
- **Unklare Regeln**: Ohne normierte Begriffe/Tags werden Inhalte schwer auffindbar und schlecht routbar.

**Mit** Linting/Validierung/Gates passiert das Gegenteil:
- Fehler werden früh sichtbar
- PRs sind kleiner und reviewbar
- Agenten werden kontrollierbar (kleine Patches + grüne Gates)

---

## 3) Linting im Detail: Was genau prüft das?
Linting ist „Regelprüfung“ und hat zwei große Rollen:
1) **Stil & Lesbarkeit** (Markdown, Prosa)  
2) **Fehlervermeidung** (Shell-Skripte, YAML-Patterns)

### 3.1 Markdown-Linting (markdownlint, Markdown-Regeln)
Typische Regeln (anschaulich, nicht vollständig):
- Überschriften haben eine saubere Hierarchie (`#` → `##` → `###`)
- Listen sind konsistent
- Leerzeilen an erwarteten Stellen
- Codeblöcke korrekt eingezäunt

**Beispiel:**
```md
# Titel
Text
## Untertitel
- item
 - item2
```

Was kann der Linter bemängeln?
- fehlende Leerzeile zwischen Text und `##`
- inkonsistente Einrückung in Listen (z. B. unterschiedliche Einrücktiefe bei `- item` und `- item2`)

**Warum wichtig?**
Markdown wird in GitHub/Keystatic gerendert. Kleine Stilfehler verursachen:
- unlesbare Darstellung
- nervige Review-Diskussionen („bitte überall gleich“)

**Wie du es in VS Code nutzt**
- Öffne **Problems Panel** → gruppiert nach Datei/Regel
- Nutze **Quick Fix** (Code Action: Kontext-Aktion), wenn vorhanden
- Halte Regeln projektweit stabil: Konfiguration (z. B. `.markdownlint…`) reduziert Diskussionen

### 3.2 Prosa-Linting vs. Rechtschreibung
Rechtschreibung/Terminologie läuft bei dir über **Code Spell Checker** (cSpell, Rechtschreibprüfung).
- Das ist nicht „Sprachstil“, sondern primär Tippfehler + Wortlisten-Management.

**Warum wichtig?**
- Tippfehler senken Vertrauen und machen Suche schlechter (findability: Auffindbarkeit).
- In einem Glossar-/Taxonomie-System willst du konsistente Schreibweisen.

**False Positives (false positives, Fehlalarm)**
cSpell markiert Fachbegriffe (ASWE, Keystatic, MCP) erstmal als Fehler. Das ist normal.
- Lösung: Projekt-Wörterbuch pflegen (userWords) – idealerweise aus dem Glossar abgeleitet.

### 3.3 Shell-Linting (ShellCheck, Shell-Regeln)
ShellCheck prüft Bash-Skripte (`*.sh`) auf typische Fehler, die in der Praxis oft wehtun.

**Beispiel (klassischer Fehler):**
```sh
rm -rf $TARGET
```
Wenn `TARGET` leer ist oder Leerzeichen enthält, kann das katastrophal sein.

ShellCheck empfiehlt z. B. Quoting:
```sh
rm -rf "$TARGET"
```

**Warum wichtig?**
Skripte sind häufig „Klebstoff“ für Preflight/CI. Kleine Fehler erzeugen:
- kaputte Automatisierung
- schwer reproduzierbare Bugs

---

## 4) Formatierung im Detail: Warum ist das nicht dasselbe wie Linting?
Formatierung ist wie ein „Automatiklineal“. Sie ist vor allem dafür da, **Diffs klein** zu halten.

### 4.1 EditorConfig (EditorConfig, Formatgrundregeln)
EditorConfig ist eine einfache, repo-weite Konvention:
- Einrückung (2 vs 4 Spaces)
- Zeilenenden (LF/CRLF)
- Trailing whitespace (Leerzeichen am Zeilenende)
- Finale Newline

**Warum wichtig?**
Wenn zwei Personen (oder ein Agent und du) unterschiedliche Editor-Einstellungen haben, sieht ein Diff plötzlich so aus:
- „Alles geändert“ – obwohl nur Format.

Das ist wie in der Analytik: Du willst nicht, dass der „Messaufbau“ (Editor) dein Ergebnis verfälscht (Diff-Noise).

### 4.2 Formatter-Fights vermeiden
Wenn mehrere Formatter gleichzeitig arbeiten, kommt es zu:
- Hin-und-her Formatierungen
- unstabilen Diffs

**Regel: pro Funktion genau ein Primary Tool.**
- Linting: markdownlint
- Editorgrundregeln: EditorConfig
- (Optional später) ein dedizierter Formatter, aber nur wenn klar nötig

---

## 5) Validierung im Detail: Struktur, Schemas, Taxonomie
Validierung prüft nicht „schön“, sondern „**korrekt aufgebaut**“.

### 5.1 YAML-Validierung (YAML, Struktur)
YAML wirkt simpel, ist aber empfindlich:
- falsche Einrückung = andere Struktur
- `:` an falscher Stelle = Parser-Fehler

**Beispiel:**
```yaml
tags:
 - layer/handbook
 - artifact/runbook
```
vs.
```yaml
tags:
  - layer/handbook
  - artifact/runbook
```
Das erste kann funktionieren, aber bei gemischter Einrückung passieren schnell Fehler.

Die YAML-Extension hilft durch:
- Syntax-Highlighting
- Fehlermeldungen (z. B. „unexpected indent“)
- teilweise Schema-Hinweise

### 5.2 Frontmatter-Validierung (frontmatter, Metadatenblock)
Frontmatter ist der YAML-Block am Anfang eines Markdown-Dokuments (`--- ... ---`).
Bei dir ist Frontmatter besonders wichtig, weil darüber:
- Dokumentklasse (tutorial/how-to/runbook/reference/explanation/policy)
- Version
- Tags (Taxonomie)
- Routing für Agenten

### 5.3 Taxonomie-Regel: 1× layer/* und 1× artifact/*
Das ist ein **Routing-Contract**:
- `layer/*` sagt: „Wo gehört es hin?“ (z. B. handbook)
- `artifact/*` sagt: „Was ist es?“ (z. B. runbook, tutorial, explanation)

**Warum so streng?**
Weil „fast richtig“ für Maschinen oft „kaputt“ ist.
- Menschen verstehen „naja, ist doch fast ein Runbook“.
- Ein Agent/Router braucht deterministische Regeln, sonst landet das Dokument im falschen Kontext.

---

## 6) Gates: Wie du entscheidest, was ein Gate sein darf
Ein Gate ist ein Stoppschild. Zu viele Stoppschilder blockieren, zu wenige lassen Müll durch.

### 6.1 Gate-Pyramide
1) **Sofort-Feedback** (VS Code Problems Panel)  
2) **Preflight** (lokale Gates)  
3) **CI** (PR-Checks)

Je „weiter rechts“, desto teurer (zeitlich/mental). Deshalb:
- so viel wie möglich früh (Editor + Preflight)

### 6.2 Must-Fix vs. Nice-to-Have
Eine einfache Klassifikation, die du in PR-Reports benutzen kannst:

**Must-Fix (blockiert Merge)**
- Taxonomie/Frontmatter ungültig
- YAML kaputt (Parser-Fehler)
- No-secrets Alarm (potenzieller Leak)
- ShellCheck High-Risk in Build-Skripten
- Security-Scanner meldet echte Schwachstellen (wenn konkret belegt)

**Nice-to-Have (kann man notfalls später)**
- einzelne Prosa-Warnungen, wenn Terminologie noch im Aufbau ist
- einzelne Markdown-Stilpunkte, wenn inhaltliche Arbeit dringender ist

> In Option‑B gilt: Must-Fix sind Gates. Nice-to-Have sind “Review Notes”.

---

## 7) Findings triagieren: Wie du aus Tool-Hinweisen Entscheidungen machst
Tools liefern Signale. Du brauchst eine Triage-Routine (triage, Priorisierung).

### 7.1 Triage-Checkliste (in 60 Sekunden)
1) **Blockiert es ein Gate?**  
2) **Ist es ein echter Fehler oder ein Fehlalarm?**  
3) **Wie groß ist der Fix?** (thin slice: klein halten)  
4) **Kann ich den Fix direkt beweisen?** (Evidence: Log/Exit-Code)  
5) **Wenn nicht: dokumentiere die Ausnahme** (z. B. im PR-Report)

### 7.2 Typische Fehlalarme und was du dann tust
- cSpell markiert Fachbegriffe → ins Wörterbuch aufnehmen
- markdownlint meckert über Regel, die ihr nicht wollt → Regel projektweit anpassen (nicht ad hoc)
- YAML Schema meckert bei Custom-Feldern → prüfen, ob Frontmatter-Felder wirklich normativ sind

---

## 8) Security-Scanner: Was sie typischerweise abdecken (Klassen, nicht konkrete CVEs)
Ohne konkrete Scan-Outputs bleiben wir bewusst auf **Klassenebene**.

### 8.1 SAST (SAST, Quellcodeprüfung)
Statische Analyse sucht Muster im Code, z. B. unsichere Nutzung bestimmter APIs.
- Typische Risiken: Injection-Patterns, unsichere String-Konkatenation, fehlende Validierung

**SonarQube** passt oft in diese Ecke plus Wartbarkeit (code smells).

### 8.2 SCA (SCA, Dependency-Scan)
Scan der Abhängigkeiten (npm/pnpm/yarn lockfiles):
- bekannte Schwachstellen in Dependencies
- veraltete/unsichere Versionen

**Snyk** ist hier häufig stark.

### 8.3 IaC (IaC, Infrastruktur-Code)
Wenn ihr Terraform/Kubernetes/Cloud-Configs habt:
- Fehlkonfigurationen (z. B. öffentliche Buckets)
- zu breite Berechtigungen

Snyk/Trivy können das teilweise scannen.

### 8.4 Container (container, Image-Scan)
Container-Images enthalten Pakete mit CVEs.
**Trivy** ist hier oft schnell und pragmatisch.

### 8.5 Secrets (secrets, Zugangsdaten)
Scanner suchen Muster, die wie Tokens/Keys aussehen.
- Achtung: kann Fehlalarme geben (z. B. Beispielstrings)
- Trotzdem: Policy ist hart – niemals echte Tokens ins Repo.

> Wichtig: „Tool sagt ok“ ist kein Beweis für „sicher“. Es ist ein Sicherheitsnetz, kein Garant.

---

## 9) Warum das für Agenten (Copilot/Codex) noch wichtiger ist
Agenten sind schnell und “gut genug” im Textgenerieren. Ohne Qualitätskette entstehen:
- große Diffs
- inkonsistente Terminologie
- versehentlich riskante Writes

Mit Linting/Validierung/Gates wird der Agent **steuerbar**:
- Agent erzeugt einen kleinen Patch
- VS Code zeigt sofort Probleme (Problems Panel)
- du fixst/triagierst
- erst dann PR

Das ist die „Kontrollierbarkeit“ im Option‑B Ansatz.

---

## 10) Mini-Übung: 10 Minuten, um das Prinzip zu „fühlen“
1) Öffne irgendein Markdown-Dokument und baue absichtlich einen kleinen Stilbruch ein (z. B. Listen-Einrückung).
2) Schau ins Problems Panel: erscheint markdownlint?
3) Füge absichtlich einen Fachbegriff ein (z. B. „Keystatic“) und schau, ob cSpell meckert.
4) Nimm ihn ins Wörterbuch auf — oder notiere, dass du das später zentral machen willst.
5) Schreib einen kurzen PR-Report Abschnitt: “Findings → Fix/Evidence”.

Wenn du das einmal gemacht hast, sind die Tools nicht mehr “mystisch”, sondern fühlbar wie QC-Instrumente.

---

## 11) Häufige Missverständnisse (und die saubere Antwort)
- **„Linting macht meinen Inhalt besser.“**  
  Nein. Linting macht primär Struktur/Stil/Fehler sichtbar. Inhalt bleibt deine Verantwortung.
- **„Formatter ersetzt Regeln.“**  
  Nein. Formatter macht Layout konsistent; Regeln definieren, was erlaubt ist.
- **„CI reicht, lokal brauche ich nichts.“**  
  CI ist langsamer und teurer. Lokal ist dein Schnelltest.
- **„Ein Gate muss alles prüfen.“**  
  Gates sollen minimal aber wirkungsvoll sein: das, was häufig schiefgeht und teuer ist.

---

## 12) Kurz-Zusammenfassung (als mentale Checkliste)
- **Linting** = Regelprüfung (Was ist falsch?)  
- **Formatierung** = Auto-Layout (Mach’s überall gleich)  
- **Validierung** = Strukturcheck (Ist es überhaupt korrekt gebaut?)  
- **Gates** = Stoppschilder (rot = nicht weiter)  
- **Preflight** = lokale Gates (billig & schnell)  
- **CI** = unabhängige Prüfung (reproduzierbar)  
- **Triage** = entscheiden, was Must-Fix ist

