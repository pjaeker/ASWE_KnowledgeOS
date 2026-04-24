# ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V2

## 1. Ausgangspunkt
Die direkte Repo-Integrationslogik wird in diesem Paket nicht verfolgt. Repo-Integration ist daher ein separates Adapterproblem mit eigenem Vertrag.

## 2. Grundsatz
Erst konzeptionelle Schliessung als selbststaendiges Paket, dann explizite Adapter- und Materialisierungsentscheidung.

## 3. Was nicht getan wird
Aus diesem Paket heraus werden nicht vorgenommen:
- direkte SSOT-Umschreibung
- direkte Writer-, Runtime- oder Rollenmaterialisierung
- direkte `.codex`-Materialisierung
- direkte Einspeisung in Repo-Pfade ohne Adaptervertrag

## 4. Fuenf Adapterfragen
### A. Zielobjektfrage
In welches konkrete Repo-Artefakt oder welche Artefaktfamilie soll integriert werden?

### B. Aequivalenzfrage
Welcher Teil des Pakets ist kanonischer Inhalt, Auditbeleg, Aenderungslog, Reservebegriff oder Integrationsanweisung?

### C. Transformationsfrage
Welche Umformung ist zulaessig?
- 1:1 Uebernahme
- Verdichtung
- Zerlegung
- Mapping in Payload oder Schema
- vorlaeufige Nicht-Integration

### D. Autorisationsfrage
Wer oder welches Verfahren darf den Uebergang freigeben?

### E. Rueckrollfrage
Wie wird fehlerhafte Materialisierung dokumentiert und ruecknehmbar gemacht?

## 5. Minimal notwendige Zusatzartefakte
Vor spaeterer Integration muessen existieren:
1. Integrations-Mapping
2. Materialisierungs-Allowlist
3. Rueckroll- und Deprekationsprotokoll
4. Abnahmekriterien

## 6. Ergebnis
Die naechste sinnvolle Arbeit ist kein Repo-Write, sondern nur dann ein separates Integrations-Adapterdokument, wenn konkrete Materialisierung wirklich erforderlich wird.
