# paket_pruefung

## Pruefung
| Pruefpunkt | Ergebnis |
|---|---|
| `final/` enthaelt ausschliesslich das aktuelle Grundlagendokument | erfuellt |
| historische Markdown-Inhalte in `support/history/unique/` sind pruefsummenbasiert duplettenfrei | erfuellt |
| jede Originalquelle ist im Deduplizierungsbericht erfasst | erfuellt |
| jede eindeutige Datei hat eine Rolle | erfuellt |
| Vorgaenger/Nachfolger sind soweit rekonstruierbar dokumentiert | erfuellt |
| alte ZIPs sind registriert, aber nicht verschachtelt | erfuellt |
| Manifest und JSON-Manifest sind vorhanden | erfuellt |
| Pruefsummen sind vorhanden | erfuellt |
| fehlende Pflichtpfade | keine |

## Zahlen
- Quellen insgesamt: 120
- top-level Markdown: 45
- top-level ZIP: 13
- Markdown-Quellen inklusive ZIP-Eintraegen: 107
- eindeutige Markdown-Inhalte: 74
- historische eindeutige Markdown-Dateien: 72
- interne ZIP-Dateien im Paket: 0
- historische Inhaltsduplikate im Paket: 0

## Urteil
repo-materialisierbar vorbereitet, ohne direkte Repo-Integration zu erzwingen.

## ZIP-Validierung
- testzip: None
- Dateien im ZIP: 86


## V13-Navigationspruefung
| Pruefpunkt | Ergebnis |
|---|---|
| Root-README vorhanden | erfuellt |
| Navigationsindex vorhanden | erfuellt |
| Paketkarte vorhanden | erfuellt |
| Historienindex vorhanden | erfuellt |
| Dateifamilienindex vorhanden | erfuellt |
| Elementklassen- und Paketrollenindex vorhanden | erfuellt |
| fehlende Pflichtpfade nach V13 | keine |
| final/ enthaelt weiterhin nur das Grundlagendokument | erfuellt |
| Historien-Duplikate | 0 |
| ZIP-in-ZIP innerhalb Paket | 0 |

## V13-ZIP-Validierung
- testzip: None
- Dateien im ZIP: 93
- maximale Pfadlaenge: 178


## V14-Schlankheits- und Navigationspruefung
| Pruefpunkt | Ergebnis |
|---|---|
| zentrale Paketnavigation vorhanden | erfuellt |
| V13-Einzelnavigationsdateien entfernt | erfuellt |
| Integrationsoptionen vorhanden | erfuellt |
| fehlende Pflichtpfade | keine |
| stale aktive Verweise | keine |
| final/ enthaelt weiterhin nur das Grundlagendokument | erfuellt |
| Historien-Duplikate | 0 |
| ZIP-in-ZIP innerhalb Paket | 0 |

## V14-ZIP-Validierung
- testzip: None
- Dateien im ZIP: 89
- maximale Pfadlaenge: 180
