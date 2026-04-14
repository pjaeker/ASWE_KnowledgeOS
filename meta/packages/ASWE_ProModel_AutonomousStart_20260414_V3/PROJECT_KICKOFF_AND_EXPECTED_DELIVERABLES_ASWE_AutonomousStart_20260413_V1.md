# Project Kickoff Prompt + Expected Deliverables

## Zweck
Dieses Dokument ist der kompakte Startpunkt fuer den ersten grossen Pro-Lauf.
Es soll Interpretationsspielraum reduzieren und sofort auf ein konsistentes Architekturpaket fuehren.

## Wann verwenden
Verwende dieses Dokument:
- nachdem die kanonischen Quelldokumente in das Projekt hochgeladen wurden,
- zusammen mit dem Master Briefing,
- als erste aktive Arbeitsanweisung fuer den Pro-Lauf.

Nicht verwenden als alleinige Quelle ohne die kanonischen Repo-Dokumente.

---

## Project Kickoff Prompt

Arbeite an einem **zusammenhaengenden Architektur- und Governance-Paket** fuer `ASWE_KnowledgeOS`.

### Geroutete Aufgabe
- primaerer Gegenstandsbereich: **System-/Repo-Architektur plus Adapter/Oberflaeche**
- primaere Wissensebene: **Systemstruktur, Norm/Regel, operatives Vorgehen**
- primaerer Abstraktionsgrad: **systemisches Strukturmodell**

Behandle die Aufgabe **nicht** als Implementierungs- oder UI-Feintuning-Aufgabe.

### Kernauftrag
Formuliere aus dem heutigen bounded-autonomen Codex-App-Start ein **selbst-evolvierbares, governance-kompatibles, adapter-passendes Ausfuehrungssystem**.

Arbeite dazu ein grosses Paket entlang der vier Teilpakete aus:
- **Paket A:** Codex-App Adapter- und Integrationsmodell
- **Paket B:** Evolution Target + Eval-/Gate-Modell
- **Paket C:** Autonomieinfrastruktur V1
- **Paket D:** Environment- und Rollen-Neuschnitt

### Arbeitsdisziplin
- Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung.
- Keine implizite Thread-Kommunikation annehmen.
- Keine stillschweigende Fokusverschiebung.
- Kein zweiter Writer-Pfad.
- Main Agent bleibt finale Synthese- und Schreibinstanz.
- `.codex` ist Spiegelung, nicht Ursprung.
- Handoff, Resume, Eval, Gate und Runtime-Policy nicht vermischen.

### Fuehrende Quellenlogik
Nutze die aktuelle kanonische Kette:
`ENTRY_LATEST -> RepoStatusUpdate -> ArchitectureEvolution -> EvidenceIntake / SemanticEvolution -> Start Contract -> E2E Protocol`

Zusatzlich fuehrend fuer bounded Rollen und Runtime:
- Shared Role Contract
- Shared Output Contract
- Shared Handoff Patterns
- Codex Subagent Runtime Policy
- Shared Failure Modes

Das Handoff von 2026-04-02 ist nur Kontext fuer Genese und offene Motive, nicht aktuelle Routing-Wahrheit.

### Was explizit geleistet werden muss
1. konsistentes Zielbild
2. Nutzen fuer alle Stichpunkte in Paket A-D
3. saubere Trennung echter Ueberlappung vs. komplementaerer Schichten
4. Schliessen oder explizites Benennen logisch-inhaltlicher Luecken
5. explizites Informationsflussmodell zwischen Umbrella, Evidence Intake, Semantic Evolution und spaeteren Promotionspfaden
6. abstraktes, aber operatives Eval-/Gate-Grundmodell
7. Autonomieinfrastruktur V1 fuer Langlaeufe, Resume und Dead-End-Kontrolle
8. Environment- und Rollen-Neuschnitt auf Capability-Basis
9. minimales kanonisches Soll-Dokumentenset
10. priorisierte naechste Thin Slices

### Harte Verbote
- keine Implementierungsdetails als Hauptoutput
- keine Repo-Mutation vorschlagen, als waere sie bereits erfolgt
- keine finale SSOT-Umschreibung durch bounded Rollen
- keine Rollenueberdehnung alter Bridge-/Railway-Rollen in neue Evidence-/Semantic-Arbeit
- keine implizite Gleichsetzung von Workstream, Role Contract und Runtime Mirror

### Arbeitsziel
Liefere eine Ausarbeitung, mit der anschliessend ein kleiner, gezielter Dokumentations- und Struktur-Slice geschnitten werden kann, ohne dass die Gesamtarchitektur erneut unklar ist.

---

## Expected Deliverables

### D1. Executive Architecture Memo
Ein kompaktes Leitdokument, das in 1 bis 3 Seiten das Zielbild, die Hauptlogik und die entscheidenden Grenzen zusammenzieht.

Muss enthalten:
- warum der heutige Stand nur bounded-startfaehig ist,
- was fuer echte Selbst-Evolution zusaetzlich gebraucht wird,
- wie Codex-App-Oberflaeche, Repo-Governance und Evolutionslogik zusammenpassen.

### D2. Paketausarbeitung A-D
Fuer jedes Paket getrennt:
- Ziel
- Nutzen
- Nicht-Ziel
- Kernobjekte
- notwendige Inputs
- zulaessige Outputs
- Abhaengigkeiten
- Risiken bei Auslassung

### D3. Ueberlappungs- und Lueckenanalyse
Eine explizite Analyse mit mindestens zwei Spalten:
- **echte Ueberlappung vermeiden**
- **notwendige Anschlussstellen bewusst erhalten**

Dazu zusaetzlich eine Lueckenliste mit:
- fehlendem Contract,
- fehlendem Packet-Schema,
- fehlender Autoritaetsgrenze,
- fehlender Eval-/Gate-Schwelle,
- fehlender Runtime-/Adapter-Ausgestaltung.

### D4. Informationsflussmodell
Ein explizites Modell fuer:
- Entry in das System,
- Uebergabe von Evidence Intake an Umbrella,
- Trigger-basierte Zuschaltung von Semantic Evolution,
- Rueckgabe an Main Agent,
- spaetere Eskalation in ArchitectureCanonicalization / SSOT-Update-Entscheidung / Harness-Operationalisierung,
- Resume und Wiederaufnahme ueber mehrere Sessions.

Der Fluss darf keine impliziten Informationsspruenge enthalten.

### D5. Eval-/Gate-Grundmodell
Ein abstraktes, aber operatives Modell mit:
- Gueteachsen,
- Promotionsschwellen,
- Triggerbedingungen,
- Review-Gates,
- Stop-/Return-Bedingungen,
- Meta-Evaluation fuer die Qualitaet der eigenen Evolutionsentscheidungen.

### D6. Autonomieinfrastruktur V1
Eine zusammenhaengende V1-Spezifikation fuer:
- Progress Ledger
- Supervisor Routing Contract
- Verify Gates
- Resume Sidecar
- Dead-End Registry
- Iteration-/Budget-Governance

Wichtig:
Nicht nur auflisten, sondern zueinander in Beziehung setzen.

### D7. Environment- und Rollen-Neuschnitt
Eine capability-basierte Neubewertung der Rollenlandschaft mit:
- wiederverwendbar,
- nicht passend,
- fehlt noch,
- spaeterer Runtime Mirror moeglich,
- jetzt schon spawn-ready,
- bewusst noch nicht spawn-ready.

Zusaetzlich:
- Zielbild fuer Environment-Trennung,
- read-first vs. mutierende Writer-Umgebung,
- Oberflaechen-/Adapter-Fit zur Codex-App.

### D8. Minimales Soll-Dokumentenset
Ein priorisiertes Soll-Set mit Dokumentklassen, Zweck und Reihenfolge.

Mindestens unterscheiden:
- kanonische Reference-Dokumente
- Workstream-Dokumente
- Role Contracts
- Protocols
- Runtime-/Adapter-Dokumente
- optionale spaetere `.codex`-Mirrors

### D9. Priorisierte Thin Slices
Eine kurze, belastbare Reihenfolge der naechsten kleinen Slices mit Begruendung.
Nicht mehr als 5 Slices.

---

## Minimaler Qualitaetsmassstab fuer die Antwort

Die Antwort ist nur dann brauchbar, wenn sie:
- systemisch statt additiv denkt,
- Paket A-D als ein zusammenhaengendes System behandelt,
- die Codex-App nicht nur als Tool, sondern als Adapter/Oberflaeche beruecksichtigt,
- Governance und Runtime zusammen denkt,
- offene Punkte sauber markiert statt wegzuglaetten,
- direkt als Grundlage fuer einen spaeteren kleinen Dokumentations-/Repo-Slice taugt.

## Nicht ausreichend waere
- ein Ideenbericht ohne Sollarchitektur,
- eine Rollenliste ohne Informationsfluss,
- ein Gate-Modell ohne Evolutionsgegenstand,
- eine Codex-App-Beschreibung ohne Governancebezug,
- eine Infrastruktur-Liste ohne Zusammenhaenge.
