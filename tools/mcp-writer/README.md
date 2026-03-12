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
- Protected resource discovery at `/.well-known/oauth-protected-resource`
- MCP JSON-RPC over `POST /mcp` for `initialize`, `tools/list`, and `tools/call`
- OAuth metadata at `/oauth/.well-known/openid-configuration`
- OAuth authorization-server metadata at `/oauth/.well-known/oauth-authorization-server`
- DCR at `POST /oauth/register`
- Authorization Code + PKCE endpoints at `/oauth/authorize` and `/oauth/token`
- JWKS at `/oauth/jwks`

## What is intentionally still thin

- Client registrations and authorization codes are in-memory for PR-2.
- `OAUTH_DEV_SUBJECT` is required before `/oauth/authorize` will issue codes.
- Tool-specific OAuth scopes stay for PR-3; PR-2 keeps the OAuth bootstrap generic.
- Legacy `MCP_SHARED_SECRET` remains an optional fallback for non-OAuth clients, but OAuth is now the primary path for ChatGPT setup.
- No persistence layer.

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
- `OAUTH_DEV_SUBJECT` enables development authorization codes for PR-2.
- `OAUTH_JWT_PRIVATE_KEY` is optional; if omitted, the service generates an ephemeral signing key at boot.

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
    "redirect_uris": ["https://chat.openai.com/aip/callback"],
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
2. Optionally set `OAUTH_JWT_PRIVATE_KEY` for stable JWKS
3. Set `OAUTH_DEV_SUBJECT` for development authorization codes
4. Deploy
5. Hit `GET /healthz`
6. Hit `GET /.well-known/oauth-protected-resource`
7. Hit `GET /oauth/.well-known/openid-configuration`
8. Hit `GET /oauth/.well-known/oauth-authorization-server`
9. Register a client with `POST /oauth/register`
10. Confirm unauthenticated `POST /mcp` returns `401` + `WWW-Authenticate`

## Next step after this scaffold

If you want, the next upgrade should be:
- bind OAuth scopes to MCP tool groups in PR-3
- harden the authorization subject / consent layer beyond the PR-2 development bootstrap
- add Railway CLI automation and end-to-end smoke scripts in PR-4
