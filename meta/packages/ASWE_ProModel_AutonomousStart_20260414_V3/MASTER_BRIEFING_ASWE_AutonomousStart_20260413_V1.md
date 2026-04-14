# Master Briefing - ASWE Autonomous Start / Pro-Model Package

## 1. Arbeitsauftrag
Formuliere eine **zusammenhaengende Sollarchitektur** fuer den Uebergang von einem bounded-autonomen Codex-App-Start zu einem **selbst-evolvierbaren Ausfuehrungssystem**.

Der Fokus liegt **nicht** auf unmittelbarer Implementierung, sondern auf:
- Zielbild
- Nutzen
- Integrationslogik
- Eval-/Gate-Logik
- Autonomieinfrastruktur
- Rollen-/Environment-Neuschnitt
- minimalem kanonischem Dokumentenset

## 2. Gerouteter Gegenstandsbereich
- primaerer Gegenstandsbereich: **System-/Repo-Architektur plus Adapter/Oberflaeche**
- Wissensebene: **Systemstruktur, Norm/Regel, operatives Vorgehen**
- Abstraktionsgrad: **systemisches Strukturmodell** mit nachgelagerten Arbeitsregeln

Nicht primaer:
- konkrete Einzelimplementierung
- GUI-Feininteraktion ohne Architekturrelevanz
- sofortige `.codex`-Materialisierung
- direkter Writer- oder Merge-Slice

## 3. Aktuelle Basisaussage
Der aktuelle Repo-Stand ist bounded-startfaehig, aber noch nicht robust selbst-evolvierbar.

Es gibt bereits:
- `ArchitectureEvolution` als Umbrella
- `EvidenceIntake` als ersten produktiven Primaerpfad
- `SemanticEvolution` als parallel vorbereiteten primaeren Folgepfad
- einen Start Contract und ein E2E-Protokoll fuer die Codex-App
- modelportable Shared Governance fuer bounded Rollen

Es fehlen bzw. sind noch nicht ausreichend expliziert:
- expliziter informationsflusssicherer Thread-Integrationsmechanismus
- abstrakte Eval-/Gate-Logik fuer semantische und architektonische Promotionsfragen
- Langlauf-/Autonomieinfrastruktur
- adapter-spezifische Environment- und Oberflaechenlogik
- rollenbezogene Neubewertung fuer Evidence-/Semantic-Arbeit

## 4. Zielzustand
Das Ziel ist ein System, in dem folgende Ordnung tragfaehig wird:

1. Evidenz aufnehmen
2. Bedeutungen stabilisieren
3. Architekturkanonisierung vorbereiten
4. spaeter in Harness-/Operationalisierungslogik ueberfuehren

und zwar unter folgenden Bedingungen:
- expliziter Informationsfluss statt implizitem Thread-Sharing
- abstrahierte, aber operative Eval-/Gate-Kriterien
- stabile Langlaufsteuerung
- klare Rollen- und Autoritaetsgrenzen
- eine zur Codex-App passende Adapter-/Environment-Schicht
- unveraenderte one-writer-many-readers-Governance

## 5. Paketstruktur, die auszuarbeiten ist

### Paket A - Codex-App Adapter- und Integrationsmodell
Auszuarbeiten:
- Projekt-/Thread-Topologie
- Handoff-Packets zwischen Threads
- Umbrella als Integrationsinstanz
- Return-/Stop-Punkte
- Regeln fuer Thread, Worktree, Branch, Writer-Grenze

Ziel:
Die Repo-Logik muss oberflaechen- und runtime-kompatibel in die Codex-App uebersetzt werden.

### Paket B - Evolution Target + Eval-/Gate-Modell
Auszuarbeiten:
- evolvierbare Systemelemente
- abstrakte Guete- und Promotionskriterien
- Trigger-, Delta- und Review-Schwellen
- minimale Meta-Evaluationslogik

Ziel:
Es muss explizit werden, **was** evolvieren soll und **wann** eine semantische oder architektonische Promotion legitim ist.

### Paket C - Autonomieinfrastruktur V1
Auszuarbeiten:
- Progress Ledger
- Supervisor Routing Contract
- Verify Gates
- Resume/Handoff Sidecar
- Dead-End Registry
- Iteration-/Budget-Governance

Ziel:
Langlaufende, selbstverbessernde Arbeit stabilisieren.

### Paket D - Environment- und Rollen-Neuschnitt
Auszuarbeiten:
- spezifischere Environment-Trennung
- read-first vs. mutierende Writer-Umgebung
- Capability-basierte Rollen-Neubewertung
- explizite Role Gaps statt forciertem Altrollen-Fit

Ziel:
Runtime, Oberflaeche und Rollen muessen der realen ArchitectureEvolution-Aufgabe entsprechen.

## 6. Bereits getroffene Vorentscheidungen
Diese Vorentscheidungen sollen als Arbeitsannahme gelten, sofern die kanonischen Quellen sie nicht widerlegen:
- Paket A und B bleiben im Kern erhalten.
- Paket C und D muessen detaillierter ausgearbeitet werden.
- Eval-/Gate-Arbeit ist der anspruchsvollste Teil.
- Der Rollenfit ist aktuell unsicher und darf nicht aus historischem Bridge-/Railway-Fit abgeleitet werden.
- Die Codex-App ist als Adapter/Oberflaeche mitzudenken, nicht nur als neutrale Laufzeitbox.

## 7. Prueffragen, die beantwortet werden muessen
1. Wie wird Informationsaustausch zwischen Threads robust organisiert, ohne implizites Thread-Sharing vorauszusetzen?
2. Welcher minimale Environment-Schnitt ist fuer read-first, bounded Analyse und spaetere Mutation sinnvoll?
3. Welche Systemelemente sollen explizit evolvieren?
4. Welche abstrakten Guetekriterien und Gates sind fuer semantische und architektonische Promotionsarbeit tragfaehig?
5. Welche Teile der heutigen Rollenlandschaft sind wiederverwendbar, welche unpassend, welche fehlen?
6. Welche Artefakte muessen kanonische Referenzen sein, welche nur Arbeits- oder Runtime-Adapter?
7. Wie wird die Codex-App-Topologie sauber mit one-writer-many-readers-Governance kompatibel gehalten?

## 8. Ueberlappungspruefung
Bitte unnoetige Ueberlappung aktiv vermeiden:
- Handoff-Packet != Resume Sidecar
- Eval-/Gate-Modell != Verify Gates
- Topologie/Writer-Grenze != Environment/Write Modes

Bitte stattdessen explizit machen, wie diese Schichten aufeinander aufbauen.

## 9. Erwartete Outputs des Pro-Modells
Erwartet wird **kein** loser Ideenbericht, sondern ein gebrauchstaugliches Dokumentenpaket mit mindestens:
- einem konsistenten Zielbild
- Paket A-D mit Ziel, Nutzen, Nicht-Ziel, Inputs, Outputs, Abhaengigkeiten
- Ueberlappungs- und Lueckenanalyse
- Informationsflussmodell
- Autoritaets- und Schreibgrenzen
- Eval-/Gate-Grundmodell
- Autonomieinfrastruktur V1
- Environment- und Rollen-Neuschnitt
- minimalem kanonischen Soll-Dokumentenset
- klarer Priorisierung der naechsten Thin Slices

## 10. Harte Invarianten
- kein zweiter Writer-Pfad
- keine implizite Fokusverschiebung
- keine verfruehte `.codex`-Fuehrung
- keine finale SSOT-Umschreibung durch bounded Rollen
- Main Agent bleibt letzte Synthese- und Schreibinstanz

## 11. Gewuenschter Arbeitsstil
- begrifflich praezise
- struktur- statt workflow-zentriert
- package- und workstream-bewusst
- router-diszipliniert
- evidenz- und governance-sensitiv
- UI-/adapter-kompatibel gedacht
