# Gap and Decision Log - ASWE Autonomous Start / Pro Model

## Bereits akzeptierte Richtungsentscheidungen
- Paket A und B bleiben im Kern erhalten.
- Paket C und D muessen tiefer ausgearbeitet werden.
- Die Eval-/Gate-Arbeit ist der anspruchsvollste Teil.
- Die Codex-App ist explizit als Adapter/Oberflaeche mitzudenken.
- Rollenfit darf nicht aus historischem Bridge-/Railway-Fit abgeleitet werden.

## Bekannte Luecken

### L1 - Evolution Target Contract fehlt
Das Gesamtframework beschreibt das grosse Zielbild, aber noch nicht operativ, welche Systemelemente explizit evolvieren sollen.

### L2 - Packet-Schema ueber die Pfade fehlt
Es fehlt ein kanonischer Uebergang von:
`Observation/Claim/Conflict/Trigger -> Semantic Delta/SSOT Impact -> spaetere Architecture Review Candidate`

### L3 - Autoritaetsmatrix ist noch zu duenn
Die Main-Agent-Regel ist da, aber die Promotions- und Rueckgabeautoritaet zwischen Umbrella, Evidence, Semantic und spaeteren Pfaden ist noch nicht voll ausbuchstabiert.

### L4 - Eval-/Gate-Schwellen fehlen als eigener Contract
Methodenmodelle benennen Gueteachsen und Promotionsstufen, aber nicht genug konkrete, abstrahierte Gate-Schwellen fuer echte Langlaufarbeit.

### L5 - Langlauf-/Autonomieinfrastruktur fehlt noch als V1-Satz
Progress Ledger, Supervisor Routing, Verify Gates, Resume Sidecar, Dead-End Registry und Iteration-/Budget-Governance sind als Bedarf bekannt, aber noch kein ausformulierter Gesamtvertrag.

### L6 - Adapter-/Environment-Schicht ist zu generisch
Die aktuelle `.codex`-Umgebung ist fuer die neue Arbeit zu duenn. Es fehlt ein oberflaechenpassender Schnitt fuer read-first, bounded Analyse und spaetere Mutation.

### L7 - Rollen-Neuschnitt ist offen
Evidence- und Semantic-spezifische Runtime-Rollen gelten noch nicht als passgenau genug; Role Gaps muessen explizit behandelt werden.

## Ueberlappungen, die sauber zu trennen sind
- Live-Handoff-Packet != Resume Sidecar
- Eval-/Gate-Grundmodell != Verify Gates
- Thread-Topologie != Environment-Modi
- Role Contract != Runtime Materialization

## Gewuenschte Form der Pro-Ausarbeitung
Die Ausarbeitung soll diese Luecken **nicht** isoliert, sondern als zusammenhaengende Architektur beantworten.
