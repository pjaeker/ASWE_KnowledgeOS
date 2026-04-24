# ASWE_Repo_Integration_Materialisierung_Adapterkonzept_20260423_V1

## 1. Ausgangspunkt
Die zuvor vorgeschlagene direkte Repo-Integrationslogik wird in diesem Paket **nicht** weiterverfolgt. Dieses Dokument setzt daher absichtlich einen **anderen Grundsatz**:

> Erst konzeptionelle Schliessung als selbststaendiges Paket, dann explizite Adapter- und Materialisierungsentscheidung.

## 2. Grundsatzentscheidung
Repo-Integration ist **nicht** die direkte Fortschreibung des Dokumentenraums in bestehende Pfade, Writer oder SSOT-Artefakte.  
Stattdessen ist Repo-Integration ein **separates Adapterproblem** mit eigenem Vertrag.

## 3. Was nicht getan wird
Aus diesem Paket heraus werden **nicht** vorgenommen:
- direkte SSOT-Umschreibung
- direkte Architecture-Canonicalization
- direkte Writer- oder Runtime-Materialisierung
- direkte `.codex`-Rollenmaterialisierung
- direkte Einspeisung in bestehende Pfade ohne Adaptervertrag

## 4. Neue Integrationslogik
Vor jeder Repo-Integration muessen zuerst fuenf Adapterfragen explizit beantwortet werden:

### A. Zielobjektfrage
In welches konkrete Repo-Artefakt oder welche Artefaktfamilie soll ueberhaupt integriert werden?

### B. Aequivalenzfrage
Welcher Teil des Abschlussraums ist:
- kanonischer Inhalt,
- Aenderungslog,
- Auditbeleg,
- Reserve-/Nichtaufnahmebegriff,
- oder Integrationsanweisung?

### C. Transformationsfrage
Welche inhaltliche Umformung ist fuer das Zielobjekt zulaessig?
- 1:1 Uebernahme
- Verdichtung
- Zerlegung in mehrere Artefakte
- Umformung in Payload/Schema
- vorlaeufige Nicht-Integration

### D. Autorisationsfrage
Wer oder welches Verfahren darf den Uebergang in Repo-Artefakte freigeben?

### E. Rueckrollfrage
Wie wird eine fehlerhafte Materialisierung dokumentiert, ruecknehmbar gemacht und vom konzeptionellen Paketstand getrennt?

## 5. Mindestartefakte fuer spaetere Repo-Integration
Eine spaetere Repo-Integration sollte **erst dann** erfolgen, wenn mindestens diese Zusatzartefakte existieren:

1. **Integrations-Mapping**
   - Quellelement
   - Zielartefakt
   - Transformationsmodus
   - Autorisationsstatus

2. **Materialisierungs-Allowlist**
   - was darf jetzt materialisiert werden
   - was darf ausdruecklich noch nicht materialisiert werden

3. **Rueckroll- und Deprekationsprotokoll**
   - wie werden Fehluebernahmen rueckgaengig gemacht
   - wie werden ersetzte Begriffe protokolliert

4. **Abnahmekriterien**
   - inhaltliche Aequivalenz
   - Trennschaerfeerhalt
   - Rueckbindungs- und Leitplankenschutz
   - keine implizite Rangverschiebung

## 6. Konzeptionelle Folgeentscheidung
Die naechste sinnvolle Arbeit ist **nicht** Repo-Write, sondern ein **separates Integrations-Adapterdokument**, falls und nur falls eine konkrete Materialisierung wirklich benoetigt wird.

## 7. Schlussurteil
Dieses Abschlusspaket ist absichtlich:
- **selbststaendig**
- **repo-unabhaengig geschlossen**
- **materialisierungsfrei**
- und damit erst sinnvoll in einen spaeteren, ausdruecklich vertraglich geregelten Integrationsschritt ueberfuehrbar.
