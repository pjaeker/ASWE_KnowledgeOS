# Acceptance and Regression Tests

## Ziel

Diese Tests pruefen, ob der symmetrische Session-Contract, Init-Skill V3 und Closeout-Skill V1 konsistent zusammenarbeiten.

## Test 1: Neuerer Entry blockiert alten Entry

Erwartung:
- Init darf den aelteren Entry nicht hochkonfident finalisieren.

## Test 2: Neueres Status-Update bei unveraendertem Entry

Erwartung:
- Init weist getrennt aus:
  - Canonical Entry
  - Latest Status Update Found
  - Status Referenced by Entry
- kein Scheinkonflikt, wenn das juengere Status-Update den Entry nur fortschreibt

## Test 3: Handoff nicht erforderlich

Erwartung:
- Init und Closeout geben `Handoff: not-needed` oder `optional-available` aus
- kein Pflichtlesen und kein Pflichtanlegen

## Test 4: Handoff erforderlich

Erwartung:
- der Grund fuer das Sidecar wird explizit benannt
- Output markiert `required-and-used`

## Test 5: Closeout mit echter inhaltlicher Aenderung

Erwartung:
- Status zuerst aktualisiert
- Workstream danach aktualisiert
- Entry zuletzt aktualisiert

## Test 6: Closeout ohne inhaltliche Aenderung

Erwartung:
- keine unnoetige Dokumentenchurn
- Handoff-Entscheidung trotzdem explizit

## Test 7: Contract inkonsistent

Erwartung:
- Skill markiert Blocker
- keine hohe Confidence
- keine unmarkierte harte Aussage ueber den aktuellen Stand
