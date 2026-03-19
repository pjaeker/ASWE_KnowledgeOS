# ASWE MCP Writer (Richer Scaffold)

This service is a **remote PR broker** for `pjaeker/ASWE_KnowledgeOS`.

It is designed to sit behind Railway and expose a protected MCP endpoint
with ChatGPT-compatible discovery and an OAuth-first bootstrap path.

## Included capabilities

- `read_file`
- `list_tree`
- `create_branch`
- `commit_files`
- `open_pr`

## Included safety controls

- OAuth scope gate before MCP tool execution
- Repo allowlist
- Path allowlist / blocklist
- Max changed files
- Max diff lines
- Simple secret quick scan
- Draft PR default

## What is implemented here

- Real GitHub App JWT auth
- Real installation token exchange
- Real GitHub API calls for:
  - branch creation
  - commit via Git trees / commits / refs
  - draft PR creation
  - file read
  - tree listing
- Runtime policy validation
- OAuth scope enforcement for `mcp.read` and `mcp.write`
- Protected resource discovery at `/.well-known/oauth-protected-resource`
- MCP JSON-RPC over `POST /mcp` for `initialize`, `tools/list`, and `tools/call`
- OAuth metadata at `/oauth/.well-known/openid-configuration`
- OAuth authorization-server metadata at `/oauth/.well-known/oauth-authorization-server`
- DCR at `POST /oauth/register`
- Authorization Code + PKCE endpoints at `/oauth/authorize` and `/oauth/token`
- JWKS at `/oauth/jwks`

## What is intentionally still thin

- There is still no external OAuth persistence layer; instead, client registrations and authorization codes are carried as signed bootstrap artifacts so they survive deploys and restarts as long as the signing identity stays stable.
- `OAUTH_ALLOWED_REDIRECT_URIS` must be configured before DCR or `/oauth/authorize` will accept redirect URIs.
- `OAUTH_DEV_SUBJECT` is required before `/oauth/authorize` will issue codes.
- Legacy `mcp` remains a transitional superset alias for `mcp.read` + `mcp.write`.
- Legacy `MCP_SHARED_SECRET` remains an optional fallback for non-OAuth clients.
- Authorization-code replay protection remains exact within a live process; cross-restart one-time enforcement would still require an external persistence layer.

## Deploy on Railway

1. Commit this directory into your repo at `tools/mcp-writer`
2. In Railway choose **GitHub Repository**
3. Select `pjaeker/ASWE_KnowledgeOS`
4. Set **Root Directory** to:
   `tools/mcp-writer`
5. Add environment variables from `.env.example`
6. Deploy
7. Check:
   - `GET /healthz`
   - `GET /.well-known/oauth-protected-resource`
   - `GET /oauth/.well-known/openid-configuration`
   - `GET /oauth/.well-known/oauth-authorization-server`
   - `POST /oauth/register`
   - unauthenticated `POST /mcp` returns `401` + `WWW-Authenticate`

## Environment variables

See `.env.example`.

Key OAuth notes:
- `PUBLIC_BASE_URL` keeps discovery URLs stable behind Railway.
- `OAUTH_ALLOWED_REDIRECT_URIS` is a comma- or newline-separated allowlist of exact absolute callback URLs for DCR and authorization. Do not use wildcards or host-only patterns.
- `OAUTH_DEV_SUBJECT` enables development authorization codes for the thin-slice flow and is required before `/oauth/authorize` will issue codes.
- A successful DCR response registers a public client with `token_endpoint_auth_method=none`, and that `client_id` can be reused through ChatGPT's static custom OAuth client path across deploys and restarts while the signing identity stays stable.
- `OAUTH_JWT_PRIVATE_KEY` is optional. If it is unset, OAuth signing falls back to `GITHUB_PRIVATE_KEY`, which keeps the bootstrap path restart-stable without introducing a second production secret. A dedicated OAuth key is still the cleaner later hardening path if you want to decouple GitHub App and OAuth identities.

## AuthN / AuthZ / Policy

- OAuth authenticates the caller and scopes MCP access.
- `mcp.read` is required for `read_file` and `list_tree`.
- `mcp.write` is required for `create_branch`, `commit_files`, and `open_pr`.
- The transitional `mcp` scope still expands to both scopes for pre-PR-3 clients.
- Writer policy still enforces repo allowlist, blocked paths, diff-size limits, and secret-pattern quickscan on the server.

## Required GitHub App permissions

Repository permissions:
- Contents: Read and write
- Pull requests: Read and write
- Metadata: Read-only

Install the app on `pjaeker/ASWE_KnowledgeOS`.

## Example requests

### Health
```bash
curl https://YOUR-DOMAIN/healthz
```

### Protected resource metadata
```bash
curl https://YOUR-DOMAIN/.well-known/oauth-protected-resource
```

### OIDC metadata
```bash
curl https://YOUR-DOMAIN/oauth/.well-known/openid-configuration
```

### OAuth authorization-server metadata
```bash
curl https://YOUR-DOMAIN/oauth/.well-known/oauth-authorization-server
```

### Dynamic client registration
```bash
curl -X POST https://YOUR-DOMAIN/oauth/register \
  -H "Content-Type: application/json" \
  -d '{
    "client_name": "ChatGPT Connector",
    "redirect_uris": ["https://chatgpt.com/connector/oauth/YOUR_CONNECTOR_ID"],
    "scope": "openid mcp.read",
    "grant_types": ["authorization_code"],
    "response_types": ["code"],
    "token_endpoint_auth_method": "none"
  }'
```

### MCP auth challenge
```bash
curl -i -X POST https://YOUR-DOMAIN/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{}}'
```

### MCP initialize (legacy shared-secret fallback)
```bash
curl -X POST https://YOUR-DOMAIN/mcp \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_SHARED_SECRET" \
  -d '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{}}'
```

## Recommended first deployment sequence

1. Set `PUBLIC_BASE_URL`
2. Optionally set `OAUTH_JWT_PRIVATE_KEY` to decouple OAuth signing from the GitHub App key
3. Set `OAUTH_ALLOWED_REDIRECT_URIS` to the exact absolute callback URLs you intend to accept
4. Set `OAUTH_DEV_SUBJECT` only if you intentionally want development authorization codes
5. Deploy
6. Hit `GET /healthz`
7. Hit `GET /.well-known/oauth-protected-resource`
8. Hit `GET /oauth/.well-known/openid-configuration`
9. Hit `GET /oauth/.well-known/oauth-authorization-server`
10. Register a client with `POST /oauth/register`
11. Request `mcp.read` for read-only use or `mcp.write` for write-capable use
12. Confirm unauthenticated `POST /mcp` returns `401` + `WWW-Authenticate`

## CLI-first Railway workflow

The scripts under `scripts/railway` keep the flow CLI-first and avoid storing
real secrets in repo files.

1. Export the values from `.env.example` into your shell or CI environment.
2. Dry-run the variable upload:
   `pwsh ./scripts/railway/set_env.ps1 -Service aswe-mcp-writer -Environment production -DryRun`
3. Upload variables from process environment to Railway:
   `pwsh ./scripts/railway/set_env.ps1 -Service aswe-mcp-writer -Environment production`
4. Dry-run the deploy command:
   `pwsh ./scripts/railway/deploy.ps1 -Service aswe-mcp-writer -Environment production -DryRun`
5. Deploy the writer from the repo root so Railway can reuse the configured `rootDirectory` and `dockerfilePath`:
   `pwsh ./scripts/railway/deploy.ps1 -Service aswe-mcp-writer -Environment production`
6. Run discovery and OAuth smoke checks:
   `pwsh ./scripts/railway/smoke_oauth.ps1 -BaseUrl https://YOUR-DOMAIN`

For hosts where Windows PowerShell produces transport false negatives, use the host-neutral Node probe instead:
`node ./scripts/railway/bridge_readiness_probe.mjs --base-url https://YOUR-DOMAIN`

To prove the full OAuth-to-MCP read path without a browser, add:
`node ./scripts/railway/bridge_readiness_probe.mjs --base-url https://YOUR-DOMAIN --full-auth --read-smoke`

Useful flags:
- `-ProbeDcr` also probes `POST /oauth/register`.
- `-AuthorizationCode`, `-ClientId`, and `-CodeVerifier` let the script exchange a manually obtained code at `/oauth/token`.
- `-AccessToken -ReadSmoke` lets the script do an authenticated MCP read smoke via `list_tree`.
- `-PlanOnly` prints the smoke plan without making network calls.

Node probe notes:
- `--probe-dcr` adds `POST /oauth/register`.
- `--full-auth` runs Authorization Code + PKCE, token exchange, and MCP initialize in one host-neutral flow. It auto-adds DCR unless you supply `--client-id`.
- `--client-id` reuses a previously issued public client for the static ChatGPT OAuth client path.
- `--read-smoke` adds an authenticated `list_tree` call after a usable token exists.
- The probe writes redacted local artifacts under `scripts/railway/.artifacts/bridge-readiness/`.
- `pwsh ./scripts/railway/doctor_readonly.ps1 -HostNeutralSummaryPath <summary.json>` lets the read-only doctor reuse a fresh host-neutral summary when local PowerShell HTTP is unreliable.

For the next bridge bootstrap check, use the sanitized Railway env inspector:
`pwsh ./scripts/railway/inspect_bootstrap_readonly.ps1 -EmitJson`

It verifies key bootstrap variables such as `PUBLIC_BASE_URL`, `PORT`, `OAUTH_ALLOWED_REDIRECT_URIS`, and `OAUTH_DEV_SUBJECT` without printing secret values.
It also reports `stableSigningReady`, `signingIdentitySource`, and `restartSafeBootstrapReady` so you can separate a green same-process bootstrap from a deploy-safe bootstrap.

`set_env.ps1` now forwards `OAUTH_ALLOWED_REDIRECT_URIS` too, so the CLI upload path matches the stricter OAuth bootstrap contract.

`doctor_readonly.ps1` also reuses that bootstrap inspection and surfaces redirect-allowlist blockers separately from `OAUTH_DEV_SUBJECT`.

## ChatGPT Custom App bootstrap

Use this operator path when ChatGPT App Create shows a concrete callback such as `https://chatgpt.com/connector/oauth/<connector-id>` and you want a small, exact-match bootstrap flow.

1. Start ChatGPT Custom App creation and copy the exact callback URL shown by the UI.
   Current live evidence used `https://chatgpt.com/connector/oauth/ijq0caHmR1iW`.
2. Inspect the active Railway allowlist and exact-match status without mutating anything:
   `pwsh ./scripts/railway/inspect_bootstrap_readonly.ps1 -RedirectUri "https://chatgpt.com/connector/oauth/<connector-id>"`
3. If the callback is missing, append only that exact URI without overwriting existing allowlist entries:
   `pwsh ./scripts/railway/set_env.ps1 -Service <service-from-railway.target.json> -Environment production -OnlyAllowedRedirectUris -AppendAllowedRedirectUri "https://chatgpt.com/connector/oauth/<connector-id>" -DryRun`
4. Apply the append once the dry run looks correct:
   `pwsh ./scripts/railway/set_env.ps1 -Service <service-from-railway.target.json> -Environment production -OnlyAllowedRedirectUris -AppendAllowedRedirectUri "https://chatgpt.com/connector/oauth/<connector-id>"`
5. Read back or mint a public client for that exact callback:
   `node ./scripts/railway/bridge_readiness_probe.mjs --base-url https://YOUR-DOMAIN --redirect-uri "https://chatgpt.com/connector/oauth/<connector-id>" --probe-dcr`
6. Re-run the host-neutral probe against that exact callback:
   `node ./scripts/railway/bridge_readiness_probe.mjs --base-url https://YOUR-DOMAIN --redirect-uri "https://chatgpt.com/connector/oauth/<connector-id>" --full-auth --read-smoke`
   If ChatGPT UI DCR already failed but the probe returned `chatgptCustomClient.clientId`, retry with that static client:
   `node ./scripts/railway/bridge_readiness_probe.mjs --base-url https://YOUR-DOMAIN --redirect-uri "https://chatgpt.com/connector/oauth/<connector-id>" --client-id "<public-client-id>" --full-auth --read-smoke`
7. Interpret the probe summary:
   - `allowlist-mismatch`: the exact callback is still missing from `OAUTH_ALLOWED_REDIRECT_URIS`.
   - `missing-dev-subject`: set `OAUTH_DEV_SUBJECT` before expecting `/oauth/authorize` to issue codes.
   - `unknown-client-id-or-lost-state`: the provided or previously issued `client_id` is no longer recognized; treat this as lost bootstrap state or rotated signing identity.
   - `dcr-interop-gap`: discovery and baseline OAuth probes are green, but `POST /oauth/register` still fails for that exact callback.
   - `other-oauth-bootstrap-gap`: another metadata or bootstrap issue still needs diagnosis.

Use DCR directly when ChatGPT can complete RFC 7591 registration itself.

Use the static `Benutzerdefinierter OAuth-Client` path when the probe registers successfully but the ChatGPT UI still reports that the server does not support RFC 7591. In that case, reuse the `chatgptCustomClient.clientId` from `bridge_readiness_probe.mjs`, or pass a previously captured value back into the probe with `--client-id`; the current thin slice registers a public client with `token_endpoint_auth_method=none`, so no client secret is expected. That static path remains deploy-safe while the signing identity stays stable through `OAUTH_JWT_PRIVATE_KEY` or the GitHub App key fallback.

The legacy callback `https://chat.openai.com/aip/callback` can still be probed explicitly in the same way when you need parity with older evidence:
`node ./scripts/railway/bridge_readiness_probe.mjs --base-url https://YOUR-DOMAIN --redirect-uri "https://chat.openai.com/aip/callback" --full-auth --read-smoke`

For the static-client retry path against a previously captured ChatGPT client id, run:
`node ./scripts/railway/bridge_readiness_probe.mjs --base-url https://YOUR-DOMAIN --redirect-uri "https://chatgpt.com/connector/oauth/<connector-id>" --client-id "<public-client-id>" --full-auth --read-smoke`

For a local OAuth guardrail smoke, run:
`npm run test:oauth`

For a no-side-effect local rehearsal, run:
`pwsh ./scripts/dev/pr4_railway_cli_dry_run.ps1 -BaseUrl https://writer.example.com`

## Next step after this CLI baseline

If you want, the next upgrade should be:
- harden the authorization subject / consent layer beyond the PR-2 development bootstrap
- run an end-to-end ChatGPT Custom App test and capture a status/handover update

