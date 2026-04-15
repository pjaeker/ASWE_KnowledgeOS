---
project: ASWE_KnowledgeOS
doc_type: reference
version: V1
date: 2026-04-15
status: draft
audience: [human, llm]
intent: "Vertrag fuer die kontrollierte Portierung geeigneter Personalisierungen aus dem ChatGPT-App-Kontext in Codex-Wissensarbeit."
tags:
  - layer/handbook
  - artifact/reference
  - topic/codex
  - topic/personalization
  - topic/adapter
  - topic/instructions
---

# ASWE Codex App Personalization Porting Contract

## 0. Zweck

Dieses Dokument legt fest,
welche Personalisierungen aus dem ChatGPT-App-Kontext fuer Codex-Wissensarbeit tragfaehig sind,
wie sie materialisiert werden muessen,
und welche Elemente gerade nicht blind uebernommen werden duerfen.

## 1. Grundsatz

Personalisierung ist im ASWE-Sonderpfad keine zweite Governancequelle.
Sie ist nur zulaessig als:
- Verhaltensdisziplin,
- Prioritaetsregel,
- Strukturhilfe,
- oder Adapterhilfe.

Sie darf nicht:
- kanonische Repo-Referenzen ersetzen,
- Gate-/Writer-Grenzen ueberschreiben,
- implizite fachliche Wahrheit setzen.

## 2. Fuehrende Quelltypen

### 2.1 Tragfaehige Quellen
- explizite Projektinstruktionen
- explizite handbook-Referenzen
- sauber materialisierte Nutzerpraeferenzen mit Strukturbezug

### 2.2 Nicht fuehrende Quellen
- blosse Erinnerung an Chat-App-Verhalten
- UI-spezifische Defaults ohne repo-lokale Materialisierung
- private oder situative Annahmen ohne K5- oder Referenzanschluss

## 3. Portierbare Personalisierungsinhalte

### P1 Voll portierbar als Arbeitsdisziplin
- Frage zuerst nach Gegenstandsbereich, Wissensebene und Abstraktionsgrad einordnen
- Begriffe vor Strukturen, Strukturen vor Prozessen, Prozesse vor Implementierung
- Beobachtung, Claim und Beleg sauber trennen
- externe Fachdomänen zuerst fachlich einordnen, erst danach lokal abbilden
- Umgebungsfragen zuerst als Adapter-/Oberflaechenfragen behandeln
- Ebenenvermischung explizit benennen und vermeiden

### P2 Portierbar nur mit Adaptionsschritt
- bevorzugte Antwortsprache
- bevorzugte Ausgabeformate
- gewuenschte Knappheit oder Ausfuehrlichkeit
- erhöhter Reasoning-Einsatz fuer bestimmte Rollentypen

Diese Inhalte muessen von einem ChatGPT-Profil in konkrete Codex-Flaechen uebersetzt werden.

### P3 Nicht portierbar als direkte Laufzeitannahme
- app-spezifische Personalisierungsfeatures als vermeintlich identische Codex-Funktion
- implizite Hidden-Memory-Annahmen
- private Kontexte ohne repo-lokale Dokumentation
- jede Personalisierung, die K5, Gates oder Rollenfit aushebelt

## 4. Materialisierungsflaechen

### M1 Projektweit
`PROJECT_INSTRUCTIONS_*`

Zweck:
- stabile Prioritaetsregeln
- globale Strukturdisziplin
- Grundhaltung fuer den Sonderpfad

### M2 Threadnah
`ASWE_CodexApp_BootstrapPromptPack_*`

Zweck:
- Rollen- und Pfadbindung pro Thread
- konkrete Start- und Rueckgabegrenzen
- portierte Kurzfassungen nur soweit fuer den Thread relevant

### M3 Dauerhaft erklaerend
handbook-Referenzen

Zweck:
- lesbare Begruendung
- spaetere Merge-/Review-Faehigkeit
- keine versteckte Personalisierung

### M4 Additive Runtime-Spiegel
lokale, nicht kanonische Mirrors

Zweck:
- ergonomische Verfuegbarkeit
- nie semantischer Ursprung

## 5. Minimales portierbares Kernprofil fuer Codex-Wissensarbeit

Ein minimales, tragfaehiges Kernprofil besteht aus:
- Router-Disziplin vor Artefaktwahl,
- Ebenen- und Begriffsdisziplin,
- Beobachtung/Claim/Beleg-Trennung,
- Adapter-first bei Umgebungsfragen,
- externer Fachvorrang vor lokaler Governanceabbildung,
- Bevorzugung deterministischer Tools fuer schemafeste Arbeit,
- K5-Fuehrung vor shared-local Sichtbarkeit.

## 6. Verifikationsfragen

Vor jeder Uebernahme einer Personalisierung ist zu pruefen:
1. Ist sie Verhaltensdisziplin oder versteckte Governance?
2. Ist sie fuer Codex als Runtime ueberhaupt sinnvoll?
3. Muss sie projektweit oder threadlokal materialisiert werden?
4. Kollisioniert sie mit Rollen-, Gate- oder Writer-Grenzen?
5. Ist sie spaeter fuer Dritte lesbar und auditierbar?

## 7. Nicht-Ziele

Dieses Dokument garantiert nicht:
- identische Produktmechanik zwischen ChatGPT und Codex,
- automatische Uebernahme von ChatGPT-Custom-Instructions,
- persoenliche Praeferenzen als dauerhafte Repo-Wahrheit.
