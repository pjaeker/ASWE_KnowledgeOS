# ASWE profile

Use this profile when the task explicitly targets an ASWE-style repository, workflow, or architecture effort.

## Core adaptation

Adapt the generic orchestration plan to these repo-local principles:
- route first
- evidence before semantics
- semantics before architecture
- architecture before harness or implementation
- one-writer-many-readers by default
- bounded helper roles only
- explicit spawn-readiness vs materialization
- repo artifacts remain canonical over mirrors or runtime materializations

## Existing role classes
When mapping roles, check whether one of these bounded classes fits before inventing a new one:
- mapper
- test-agent
- doc-agent
- observer
- triager

Do not force-fit them. If the task is evidence-heavy or semantics-heavy and these are not passable fits, state the role gap explicitly.

## Existing friction to watch
Watch for these known mismatches when adapting a plan to ASWE-style contexts:
- too much bias toward active technical slices
- no dedicated semantic or ontology role
- no dedicated evidence-intake role contract
- risk of creating a second writer path
- risk of mirror drift between shared governance, skills, and `.codex` materializations

## Default ASWE-specific outputs
When useful, recommend outputs like:
- workstream files
- reference or policy documents
- role contracts
- shared output or handoff contracts
- bounded `.codex` materialization only after fit is shown
