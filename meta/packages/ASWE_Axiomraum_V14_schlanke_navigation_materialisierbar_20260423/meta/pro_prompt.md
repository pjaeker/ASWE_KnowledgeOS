# pro_prompt

Pruefe das Paket `ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423` read-only.

## Startlogik
1. `README.md`, dann `meta/README.md` lesen.
2. `meta/ASWE_Axiomraum_Paketnavigation_20260423_V1.md` lesen.
2. `meta/manifest.md` und `meta/manifest.json` spiegeln.
3. `final/ASWE_Axiomraum_Grundlagendokument_20260423_V11.md` als aktuelles Zielartefakt lesen.
4. `support/current/ASWE_Axiomraum_Zeilenbelegmatrix_20260423_V1.md` als aktuelle Zeilenbelegung lesen.
5. Historie ueber Dateirollen, Versionschronik, Deduplizierungsbericht und Supersessionsgraph pruefen.
6. Alte ZIPs nur ueber Paketquellenregister beruecksichtigen.

## Pruefziele
- `final/` enthaelt nur das Grundlagendokument.
- Historische Markdown-Inhalte sind duplettenfrei.
- Jede Quelle ist im Deduplizierungsbericht erfasst.
- Alte ZIPs sind registriert, aber nicht verschachtelt.
- Pruefsummen sind vollstaendig.
- Paket ist repo-materialisierbar, ohne direkte Repo-Integration zu erzwingen.

## Nicht-Ziel
Keine fachliche Revision, keine neuen Axiome, keine quellenexterne Belegung, keine Repo-Mutation.

## V13-Zusatzpruefung
- Pruefe, ob Navigationsindex, Paketkarte, Historienindex und Dateifamilienindex mit Manifest und Paketstruktur uebereinstimmen.
- Pruefe, ob Paketrollen nicht mit Raumelementen verwechselt werden.
- Pruefe, ob Navigationsartefakte nicht als fachliche Belege behandelt werden.

## V14-Zusatzpruefung
- Pruefe, ob die zentrale Paketnavigation die entfernten V13-Einzelindizes vollstaendig ersetzt.
- Pruefe, ob keine stale Verweise auf entfernte Navigationsdateien aktiv bleiben.
- Pruefe, ob `support/integration/ASWE_Axiomraum_Repo_Integrationsoptionen_20260423_V1.md` nur Optionen vorbereitet und keine Repo-Integration ausfuehrt.
