# ASWE Axiomkandidatenraum – Verbesserungsschleife V2 durch Selbstanwendung und Folgeprompt (20260423 V1)

## Einordnung

- **Gegenstandsbereich:** Systemgegenstand
- **Wissensebene:** methodische und sprachliche Revisionssteuerung
- **Abstraktionsgrad:** systemisches Strukturmodell mit konkreten Arbeitsregeln

Dieses Dokument nimmt die vorherige Verbesserungsschleife **auf sich selbst** in Anwendung.  
Ziel ist nicht eine neue allgemeine Wunschliste, sondern die **Selbstverbesserung des Verbesserungsschleifendokuments** und daraus abgeleitet die Konstruktion der **naechsten, enger gefuehrten Revisionsschleife** fuer das Hauptdokument.

---

## 1. Selbstanwendungsprämisse

Die vorherige Schleife hat Parameter formuliert, die nicht nur das Hauptdokument, sondern bereits das Verbesserungsschleifendokument selbst verbessern koennen. Selbstanwendbar sind vor allem jene Parameter, die:

1. die **Sprache und Benennungsschicht** regeln,
2. die **Statusklarheit von Aussagen** erhoehen,
3. die **Ableitungslogik** des Dokuments schaerfen,
4. die **Ausfuehrbarkeit der naechsten Schleife** verbessern.

Nicht primaer selbstanwendbar sind Parameter, die vor allem die **inhaltliche Bewertung der Kernaxiome im Hauptdokument** betreffen, etwa Phasenrobustheit einzelner Axiome oder deren Rangwechsel unter steigendem Automationsgrad. Diese bleiben Ziel der naechsten Schleife am Hauptdokument.

---

## 2. Parameter aus V1, die das Verbesserungsschleifendokument selbst verbessern

## 2.1 Direkt selbstanwendbare Parameter

| Parameter aus V1 | Warum selbstanwendbar | Umsetzung in diesem Dokument |
|---|---|---|
| **P12 Sprachgovernance statt Sprachmischung als Default** | Das Dokument selbst mischte Deutsch, Englisch und Hybridformen | Deutsche Primaerbegriffe; englische Aliase nur dort, wo fachlich oder referenziell noetig |
| **P13 Jargon-Lizenz nur bei Mehrwert** | Mehrere Begriffe waren feldnah, aber nicht immer begrifflich noetig | Schwache Jargonformen reduziert oder ersetzt |
| **P14 Bindestrich-Komposita nur unter formaler Disziplin** | Einige Bindestrichformen verdichteten mehrere Ebenen ohne Rueckdefinition | Bindestriche nur fuer scope-klaerende oder lokal-kontraktuelle Begriffe |
| **P15 Alias-Disziplin** | Das vorige Dokument wechselte teils unruhig zwischen deutschen und englischen Formen | Erstnennung deutsch, Alias knapp in Klammern, danach konsistent |
| **P2 Aussage-Quellen-Passung** | Das vorige Dokument mischte normative Regeln, Sprachurteile und Arbeitsanweisungen ohne klare Rollenmarkierung | In diesem Dokument wird zwischen Selbstanwendungsregel, Revisionskriterium und Folgeauftrag getrennt |
| **P4 Gegenbeispielsensitivitaet** | Die vorige Sprachkritik war im Ergebnis korrekt, aber noch zu pauschal | Dieses Dokument benennt explizit Ausnahmefaelle, in denen englische Terme beibehalten werden sollen |
| **P8 Trennschaerfe zu Nachbarbegriffen** | Begriffe wie Alias, Eigenname, Originalterm und Hybridform wurden noch nicht sauber genug getrennt | Eigene Benennungsklassen eingefuehrt |

## 2.2 Mittelbar selbstanwendbare Parameter

| Parameter aus V1 | Warum nur mittelbar selbstanwendbar | Umgang in diesem Dokument |
|---|---|---|
| **P1 Quellenklassen-Gewichtung** | Diese Schleife ist primaer ein Revisions- und Sprachsteuerungsdokument, kein neues Literaturdokument | Nur als Revisionsregel fuer die naechste Schleife am Hauptdokument uebernommen |
| **P3 Evidenzheterogenitaetsquote** | Fuer dieses Dokument nicht der zentrale Engpass | Als Auftrag an die Folgeversion des Hauptdokuments weitergereicht |
| **P5 Axiomstatus-Schaerfe** | Betrifft primaer den Status von Axiomkandidaten im Hauptdokument | Als Folgeauftrag beibehalten |
| **P9 Phasenrobustheit** | Betrifft die Rangstabilitaet von Kernaxiomen, nicht die Revisionssprache dieses Dokuments | In der naechsten Schleife zu bearbeiten |
| **P10 Automationssensitivitaet** | Betrifft spaetere Systemreifegrade des Hauptdokuments | In der naechsten Schleife zu bearbeiten |
| **P11 Kopplungsstabilitaet zwischen A und B** | Betrifft das Axiommodell selbst | In der naechsten Schleife am Hauptdokument zu pruefen |

---

## 3. Umgesetzte Selbstverbesserungen in diesem Dokument

## 3.1 Terminologiepolitik des Dokuments

Dieses Dokument verwendet nur noch vier Benennungsklassen:

1. **deutscher Primaerbegriff**  
   Standardform des Fliesstexts.
2. **englischer Alias**  
   nur bei erster Nennung, wenn ein klarer fachlicher Anschlussgewinn entsteht.
3. **Eigenname eines repo-lokalen Artefakts oder Vertrags**  
   bleibt in der etablierten Form erhalten.
4. **literaturgebundener Originalterm**  
   bleibt erhalten, wenn eine Uebersetzung den Anschluss an die Fachliteratur spuerbar verschlechtert.

### Folgeregel
Nicht zulaessig als Default sind:
- unkommentierte Hybridbildungen,
- feldnahe Modeterme ohne begrifflichen Mehrwert,
- wechselnde Benennungen fuer denselben Gegenstand.

## 3.2 Ersetzte oder geschaerfte Termformen

| Bisher schwach oder unruhig | Neue bevorzugte Form | Begründung |
|---|---|---|
| Self-Audit | Selbstpruefung | Deutsch gleich praezise; kein Fachverlust |
| Claim-Source-Fit | Aussage-Quellen-Passung | Deutsch tragfaehig; englischer Alias nicht erforderlich |
| boundedness | Begrenzungsdisziplin | funktional klarer als der importierte Term |
| Red-Teamability | adversariale Pruefbarkeit | sauberes Deutsch, hoehere Rueckdefinierbarkeit |
| Governance-vorrangige Adaptivitaet | governierte Adaptivitaet | kuerzer, begrifflich schaerfer |
| hybrider Jargon ohne Status | deutscher Primaerbegriff mit knappem Alias | stabilere Terminologie |

## 3.3 Ausnahmefaelle, in denen Englisch bestehen bleiben darf

Englische Formen bleiben nur in drei Faellen stehen:

1. **repo-lokaler Eigenname**  
   etwa konkrete Vertragstitel, etablierte Artefaktnamen oder technische Labels.
2. **literaturgebundener Originalterm**  
   wenn der englische Ausdruck ein klar abgegrenztes Diskursfeld bezeichnet.
3. **Benchmark- oder Methodentitel**  
   wenn eine standardisierte Bezeichnung zitiert oder referenziert wird.

### Gegenbeispielregel
Wenn ein englischer oder hybrider Begriff ohne einen dieser drei Gruende verwendet wird, ist er in der naechsten Revision **ersetzungsbeduerftig**.

## 3.4 Strukturverbesserung des Dokuments

Das vorige Verbesserungsschleifendokument enthielt:
- Zielbild-Guardrails,
- Parameter,
- Sprachurteil,
- naechste Schritte.

Diese Bausteine bleiben, werden jetzt aber deutlicher getrennt in:

1. **Selbstanwendungsregel**
2. **bereits umgesetzte Verbesserungen**
3. **Revisionsauftrag an das Hauptdokument**
4. **naechster Ausfuehrungsprompt**

Damit wird das Dokument selbst ausfuehrbarer und weniger meta-unscharf.

---

## 4. Revisionsauftrag, der aus der Selbstanwendung fuer das Hauptdokument folgt

Die Selbstanwendung zeigt, welche Verbesserungen nun **nicht mehr nur als abstrakte Parameter**, sondern als konkrete Revisionspflicht am Hauptdokument zu behandeln sind.

## 4.1 Revisionspflichten erster Ordnung

Diese Punkte sollen in der naechsten Schleife am Hauptdokument verbindlich umgesetzt werden:

1. **Terminologie-Register einfuehren**  
   Jeder tragende Begriff erhaelt einen Status:
   - deutscher Primaerbegriff,
   - englischer Alias,
   - Eigenname,
   - literaturgebundener Originalterm.

2. **Aussagearten trennen**  
   Jeder zentrale Abschnitt trennt:
   - Beobachtung,
   - Aussage,
   - Hypothese,
   - Kriterium,
   - Empfehlung.

3. **Kernaxiomstatus explizit markieren**  
   Jeder Kandidat wird als
   - Kernaxiom,
   - starkes Designprinzip,
   - sekundaeres Qualitaetsattribut,
   - operative Regel
   gekennzeichnet.

4. **Aussage-Quellen-Passung explizit machen**  
   Pro tragender Aussage ist anzugeben, ob ihre Funktion:
   - definitorisch,
   - empirisch,
   - standardsetzend,
   - oder repo-lokal anwendend ist.

5. **Gegenbeispiele und Nicht-Geltung einbauen**  
   Jeder Kernaxiomcluster bekommt mindestens:
   - eine Nicht-Geltung,
   - eine Spannungsbeziehung,
   - ein Gegenbeispiel oder einen Grenzfall.

## 4.2 Revisionspflichten zweiter Ordnung

Diese Punkte sollen in derselben oder unmittelbar folgenden Schleife aufgenommen werden, falls die Dokumentgroesse beherrschbar bleibt:

1. **Phasenrobustheit der Axiome**  
   fruehe Aufbauphase, Ordnungsphase, spaetere Automationsphase.
2. **Automationssensitivitaet**  
   welche Kriterien werden mit steigender agentischer Ausfuehrung aufgewertet?
3. **Kopplungsstabilitaet zwischen A und B**  
   echtes gemeinsames Axiom, asymmetrische Kopplung oder nur Analogie?

---

## 5. Konstruierte naechste Verbesserungsschleife

## 5.1 Ziel der naechsten Schleife
Das Hauptdokument wird von einer **starken ersten Synthese** zu einer **terminologisch, epistemisch und evidenziell schärferen V2** ueberfuehrt, ohne den axiombasierten Charakter aufzuweichen.

## 5.2 Nicht-Ziel
Die naechste Schleife dient **nicht** dazu:
- neue breite Kandidatenlisten zu erzeugen,
- in Tool- oder Repo-Implementierung abzurutschen,
- das Zielbild von Kernaxiomen in einen allgemeinen Qualitaetskatalog umzubauen,
- deutsche Primaerbegriffe wieder durch ungovernierte Mischsprache zu ersetzen.

## 5.3 Pflichtaenderungen an V2 des Hauptdokuments
Die Folgeversion des Hauptdokuments muss mindestens enthalten:

1. **Terminologie-Register am Anfang**
2. **Klassifizierung jedes Kandidaten nach Statusklasse**
3. **Quellenrollenkennzeichnung pro tragendem Satz oder Abschnitt**
4. **Nicht-Geltung und Grenzfaelle fuer die Kernaxiome**
5. **separaten Abschnitt zu Phasenrobustheit und Automationssensitivitaet**
6. **Pruefung der Kopplungsaxiome auf Symmetrie oder Asymmetrie**
7. **sprachlich bereinigte Benennungsschicht nach der hier definierten Terminologiepolitik**

## 5.4 Abnahmekriterien der naechsten Schleife
Die naechste Schleife ist nur dann gelungen, wenn das neue Hauptdokument:

- die Zahl unkommentierter englischer oder hybrider Terme deutlich senkt,
- dennoch literatur- und anschlussfaehig bleibt,
- Kernaxiome klarer von Designprinzipien und Qualitaetsattributen trennt,
- pro zentralem Axiom mindestens eine Nicht-Geltung oder einen Grenzfall nennt,
- die Evidenzbasis von A staerker typisiert und, soweit moeglich, mit Primaerquellen nachschaerft,
- keine Aufweichung der Zielbild-Guardrails enthaelt.

---

## 6. Konkreter Ausfuehrungsprompt mit Dokumentenreferenzierung

### 6.1 Fuehrende Dokumente fuer die naechste Schleife

Verwende die folgenden Dokumente in genau dieser Rollenlogik:

- **D1:** `ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V1.md`  
  Rolle: zu revidierendes Hauptdokument.

- **D2:** `ASWE_Axiomkandidaten_Verbesserungsschleife_Sprachgovernance_20260423_V1.md`  
  Rolle: erste Verbesserungsschleife; Parameterpool und Sprachkritik.

- **D3:** `ASWE_Axiomkandidatenraum_Verbesserungsschleife_Selbstanwendung_Folgeprompt_20260423_V1.md`  
  Rolle: fuehrende Schleife; enthaelt die selbstangewandten Verbesserungen, Revisionspflichten und die Terminologiepolitik fuer V2.

- **D4:** `ASWE_Axiomenkandidaten_Kernaxiomen_Promptanalyse_20260423_V1.md`  
  Rolle: verhaltenssteuernde Ausfuehrungslogik fuer Pre-Flight, Phasentrennung und Scope-Disziplin.

### 6.2 Konkreter Prompt

```text
Revidiere das Hauptdokument D1 unter Fuehrung von D3 und unter Rueckgriff auf D2 und D4.

Dokumentenrollen:
- D1 = zu revidierendes Hauptdokument
- D2 = erste Verbesserungsschleife mit Parameterpool
- D3 = fuehrende Verbesserungsschleife mit Selbstanwendung, Terminologiepolitik und Revisionspflichten
- D4 = Ausfuehrungslogik fuer Pre-Flight, Phasentrennung und Scope-Disziplin

Arbeite strikt in dieser Reihenfolge:

PHASE 0 – PRE-FLIGHT
- Expliziere Zielbild, Gegenstand, Geltungsbereich, Nicht-Geltung, epistemischen Status und Abstraktionsniveau.
- Markiere, was aus D1 inhaltlich tragend bleibt und was aus D3 zwingend zu ueberarbeiten ist.
- Das Zielbild darf nicht aufgeweicht werden:
  - Kernaxiome bleiben Kernaxiome.
  - Externe wissenschaftliche Quellen bleiben primaer.
  - Begriffe bleiben vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
  - Governierte statt freie Selbstverbesserung.
  - A und B bleiben getrennt; Kopplungen nur explizit.

PHASE 1 – TERMINOLOGIE-REVISION
- Fuehre am Anfang von D1 ein Terminologie-Register ein.
- Ordne jeden tragenden Begriff genau einer Benennungsklasse zu:
  1. deutscher Primaerbegriff
  2. englischer Alias
  3. Eigenname
  4. literaturgebundener Originalterm
- Ersetze schwache Hybrid- und Jargonformen.
- Behalte englische Terme nur, wenn ihr Erhalt nach der in D3 definierten Terminologiepolitik gerechtfertigt ist.

PHASE 2 – STATUS- UND EVIDENZ-REVISION
- Markiere jeden Kandidaten explizit als:
  - Kernaxiom
  - starkes Designprinzip
  - sekundaeres Qualitaetsattribut
  - operative Regel
- Weise pro tragendem Satz oder Abschnitt die Quellenrolle aus:
  - definitorisch
  - empirisch
  - standardsetzend
  - repo-lokal anwendend
- Schaerfe A-seitige Aussagen, falls sie primaer auf Preprints oder Reports beruhen; ziehe den Geltungsanspruch enger, wenn Primaerquellen nicht ausreichen.

PHASE 3 – GRENZFAELLE UND NICHT-GELTUNG
- Ergaenze fuer jeden Kernaxiomcluster:
  - mindestens eine Nicht-Geltung,
  - mindestens eine Spannungsbeziehung,
  - mindestens einen Grenzfall oder ein Gegenbeispiel.

PHASE 4 – PHASEN- UND KOPPLUNGSREVISION
- Fuege einen Abschnitt ein zu:
  - Phasenrobustheit
  - Automationssensitivitaet
  - Kopplungsstabilitaet zwischen A und B
- Klassifiziere Kopplungsaxiome als:
  - echt gemeinsam
  - asymmetrisch gekoppelt
  - nur analog uebertragen

PHASE 5 – SELBSTPRUEFUNG
- Pruefe explizit:
  - ob die Terminologiepolitik eingehalten wurde,
  - ob unkommentierte Mischsprache reduziert wurde,
  - ob Kernaxiome klarer von abgeleiteten Begriffen getrennt wurden,
  - ob das Zielbild unversehrt blieb.

QUELLENREGEL
- Externe akademische Primaerquellen und Standards bleiben vorrangig.
- Repo-interne Referenzen duerfen nur als Anwendungs- oder Passungsbelege dienen.
- Wenn fuer A keine hinreichend starke Primaerquelle verfuegbar ist, markiere die Aussage als enger geltend statt sie mit schwacher Evidenz zu verallgemeinern.

AUSGABEKONTRAKT
- Gib genau eine Markdown-Datei aus.
- Keine Chat-Zusammenfassung.
- Dateiname:
  ASWE_Axiomkandidatenraum_Analyse_Kernaxiome_20260423_V2.md

PFLICHTSTRUKTUR
1. Pre-Flight
2. Terminologie-Register
3. Revidierter Kandidatenraum
4. Status- und Evidenzmatrix
5. Kernaxiome
6. Nicht-Geltung, Spannungen und Grenzfaelle
7. Phasenrobustheit, Automationssensitivitaet und Kopplungsstabilitaet
8. Selbstpruefung
9. Quellen
```

---

## 7. Kurzurteil zur Selbstanwendung

Die staerksten selbstanwendbaren Parameter waren nicht die rein axiominhaltlichen, sondern die **sprach- und ableitungslogischen Parameter**.  
Gerade sie verbessern das Verbesserungsschleifendokument unmittelbar, weil sie:

- die Benennungsschicht ordnen,
- unnoetigen Hybridjargon reduzieren,
- die Rollen von Aussagen klarer trennen,
- und den Folgeprompt deutlich ausfuehrbarer machen.

Die naechste echte inhaltliche Verbesserungsschleife muss nun wieder am **Hauptdokument D1** ansetzen; D3 dient dafuer als fuehrender Revisionsrahmen.
