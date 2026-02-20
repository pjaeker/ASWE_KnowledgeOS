# KI_Softwareentwicklung_Diagramme_Tutorial_20260220_V1

Stand: 2026-02-20 (Europe/Berlin)  
Ziel: Ein **Tutorial-Dokument** zur Diagrammerstellung/Visualisierung für GitHub-/Markdown-/Docs-Setups im ASWE-Kontext – mit Fokus auf **klar**, **attraktiv**, **versionierbar**, **automatisierbar**.

> Dieses Tutorial baut auf unserem Gespräch auf: Mermaid ist oft zu „raw“; wir wollen hochwertige Diagramme, ohne die Workflow-Automatisierung zu verlieren.

---

## 1) Lernziele & Prinzipien

### 1.1 Was ein gutes Diagramm leisten muss
- **Blickführung:** der Leser erkennt in <10 Sekunden, „was ist die Story?“
- **Trust-Boundaries sichtbar:** wo endet Vertrauen, wo beginnt Macht?
- **Aktionen vs Daten:** Text/Context ist Daten – Tools sind Privilegien
- **Diffbar & CI-fähig:** Quellen im Repo, automatische Exporte, reviewbar

### 1.2 Anti-Patterns (was vermeiden)
- „Spaghetti-Flows“ ohne Ebenen
- zu viele Farben/Legenden gleichzeitig
- Symbole ohne wiederkehrende Bedeutung
- Diagramme ohne klare Aussage („nice picture“ ohne Entscheidungshilfe)

---

## 2) Tool-Auswahl-Matrix (welches Tool für welchen Zweck)

### 2.1 Kriterien
- Optik/Lesbarkeit
- Git-Workflow (Diffs, Reviews)
- Automatisierbarkeit (CLI, CI)
- Einbettung (GitHub Markdown, Docs-Portal)
- Teamgröße (Solo vs Team)

### 2.2 Kandidaten (Überblick)
- **D2**: Diagram-as-code, sehr gute SVGs, CI-friendly
- **diagrams.net (draw.io)**: WYSIWYG, poliert, `.drawio.svg` als Repo-Format
- **Excalidraw**: didaktisch, Whiteboard-Storytelling, schnell erklärend
- **Structurizr (C4)**: interaktive Architekturmodelle (Portal)
- **Kroki**: zentraler Renderer für viele Diagrammsprachen (self-host möglich)

---

## 3) Fokus-Track 1: D2 End-to-End (unser Standard-Track)

### 3.1 Setup
- Installation (macOS/Linux/Windows)
- Repo-Struktur: `diagrams/src/*.d2` → `diagrams/rendered/*.svg`

### 3.2 Style Guide (wichtig für Konsistenz)
- Shapes: Rechtecke für Systeme, Zylinder für Daten, Wolke für Internet
- Farben: 3–4 Signalfarben (untrusted, policy, tools, assets)
- Labels: kurze Nomen, keine Romane
- Layout: links→rechts, maximal 2 Ebenen pro Diagramm

### 3.3 Export & Einbettung
- `d2 in.d2 out.svg` (SVG Default) citeturn0search1  
- Markdown embedding
- GitHub SVG Sanitization: worauf achten (keine Scripts)

### 3.4 Patterns (Vorlagen)
- Trust-Boundary Map
- Text-to-Action Pipeline
- Control Ladder L0–L3
- Incident Runbook Flow
- Tool Capability Map (als Diagramm oder Tabelle)

### 3.5 CI-Automation (optional)
- GitHub Actions: render diagrams on PR
- fail if sources changed but rendered artefacts not updated

---

## 4) Track 2: draw.io für „Hero“-Diagramme (optional)
- Warum `.drawio.svg` im Repo
- VS Code Workflow
- Export-Checks & Versionspflege

---

## 5) Track 3: Excalidraw Storyboards (optional)
- Wann „Whiteboard“ besser ist als Architektur
- Export (SVG/PNG) und Einbettung
- CI-Export (wenn nötig)

---

## 6) Governance: Diagramme als Artefakte im ASWE Knowledge-OS
- Naming: `Projektname_YYYYMMDD_Vx` + Diagramm-ID
- Review-Regeln: wer approved normative diagrams?
- Change-Log: was hat sich im Systemmodell geändert?
- Mapping: Diagramm ↔ Risiko-Karten ↔ Controls

---

## 7) Übungen (hands-on)
1) Erstelle Trust-Boundary Map für dein Setup (D2)
2) Ergänze 3 Attack Chains mit Controls (D2)
3) Erstelle Incident Flow (D2)
4) Automatisiere Export in CI (optional)

---

## 8) Cheatsheets (copy/paste)
- D2 Skeletons für die 5 wichtigsten Diagrammtypen
- GitHub Markdown Embedding Snippets
- Minimal CI workflow template (render + check)

---

## 9) Glossar (kurz)
- Diagram-as-Code (diagram as code, Text→Bild)
- Trust Boundary (trust boundary, Vertrauensgrenze)
- Capability (capability, minimale Tool-Funktion)
- Policy-Enforcer (policy, Gatekeeper)
