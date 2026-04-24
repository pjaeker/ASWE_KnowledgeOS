# ASWE_Axiomraum_RepoMaterialisierung_20260423_V1_manifest

## Purpose

This payload is structured for direct extraction at the repository root. It materializes:

1. the current axiom-space foundation document as a reference document;
2. the complete V14 materialization package under `meta/packages/`;
3. the expanded repository-integration planning document under the proposed ArchitectureEvolution integration workspace.

## Target paths

| Payload path | Intended role |
|---|---|
| `handbook/reference/ASWE_Axiomraum_Grundlagendokument_20260423_V11.md` | reference document; future architecture-shaping foundation |
| `meta/packages/ASWE_Axiomraum_V14_schlanke_navigation_materialisierbar_20260423/` | complete traceability package with deduplicated history |
| `blackboard/workstreams/architecture-evolution/axiomraum-integration/ASWE_Axiomraum_Repo_Integrationsoptionen_20260423_V2.md` | read-only integration planning and follow-up analysis surface |

## Materialization boundaries

This payload does not update:

- `ENTRY_LATEST`
- `RepoStatusUpdate`
- `.codex/`
- existing ArchitectureEvolution contracts
- workstream source-of-truth files
- gates or runtime surfaces

Those updates require a separate read-only compatibility audit and an explicit architecture decision.
