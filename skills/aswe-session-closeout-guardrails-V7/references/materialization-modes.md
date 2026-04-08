# Materialization modes

## plan_only
Use when the user wants the closeout decision and writingslice, but no repo mutation.

## batch_materialize
Use when GitHub write capability is available and the user wants real branch materialization now.
Requirements:
- decide artifact families first
- build one explicit file package
- prefer a package-first git backend
- materialize as one commit on the branch
- do not open a PR by default

## open_pr
Use only after batch materialization and only when the user explicitly requests PR creation.
