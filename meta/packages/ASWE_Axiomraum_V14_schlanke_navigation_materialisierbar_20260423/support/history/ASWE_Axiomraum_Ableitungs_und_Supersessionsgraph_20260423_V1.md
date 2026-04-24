# ASWE_Axiomraum_Ableitungs_und_Supersessionsgraph_20260423_V1

## Zielbild
Dieses Pruefartefakt stellt die ersetzenden, pruefenden und dokumentierenden Beziehungen zwischen den wichtigsten Dateien dar. Es ist ein Navigations- und Pruefartefakt, keine fachliche Neusetzung.

## Mermaid-Graph

```mermaid
flowchart TD
  ASWE_Axiomraum_Grundlagendokument_20260423_V1["ASWE_Axiomraum_Grundlagendokument_20260423_V1.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V2["ASWE_Axiomraum_Grundlagendokument_20260423_V2.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V3["ASWE_Axiomraum_Grundlagendokument_20260423_V3.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V4["ASWE_Axiomraum_Grundlagendokument_20260423_V4.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V5["ASWE_Axiomraum_Grundlagendokument_20260423_V5.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V6["ASWE_Axiomraum_Grundlagendokument_20260423_V6.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V7["ASWE_Axiomraum_Grundlagendokument_20260423_V7.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V8["ASWE_Axiomraum_Grundlagendokument_20260423_V8.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V9["ASWE_Axiomraum_Grundlagendokument_20260423_V9.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V10["ASWE_Axiomraum_Grundlagendokument_20260423_V10.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V11["ASWE_Axiomraum_Grundlagendokument_20260423_V11.md"]
  ASWE_Axiomraum_Grundlagendokument_20260423_V1 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V2
  ASWE_Axiomraum_Grundlagendokument_20260423_V2 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V3
  ASWE_Axiomraum_Grundlagendokument_20260423_V3 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V4
  ASWE_Axiomraum_Grundlagendokument_20260423_V4 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V5
  ASWE_Axiomraum_Grundlagendokument_20260423_V5 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V6
  ASWE_Axiomraum_Grundlagendokument_20260423_V6 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V7
  ASWE_Axiomraum_Grundlagendokument_20260423_V7 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V8
  ASWE_Axiomraum_Grundlagendokument_20260423_V8 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V9
  ASWE_Axiomraum_Grundlagendokument_20260423_V9 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V10
  ASWE_Axiomraum_Grundlagendokument_20260423_V10 -->|ersetzt/korrigiert| ASWE_Axiomraum_Grundlagendokument_20260423_V11
  Zeilenbelegmatrix_V1["ASWE_Axiomraum_Zeilenbelegmatrix_20260423_V1.md"] -->|prueft| ASWE_Axiomraum_Grundlagendokument_20260423_V11
  ASWE_Axiomraum_Grundlagendokument_20260423_V11 -->|aktueller Stand in| FINAL["final/"]
  Zeilenbelegmatrix_V1 -->|aktuelles Pruefartefakt in| CURRENT["support/current/"]
  HIST["support/history/unique/"] -. "enthaelt eindeutige historische Markdown-Dateien" .-> FINAL
```

## Legende

| Relation | Bedeutung |
|---|---|
| ersetzt/korrigiert | spaetere Version der gleichen Dateifamilie |
| prueft | Pruefartefakt bewertet oder belegt Zielartefakt |
| aktueller Stand in | Materialisierbare Paketrolle |
| enthaelt | Historiencontainer fuer eindeutige Inhalte |
