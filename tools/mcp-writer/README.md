# ASWE MCP Writer (Richer Scaffold)

This service is a **remote PR broker** for `pjaeker/ASWE_KnowledgeOS`.

It is designed to sit behind Railway and expose a small HTTP tool surface
that can later be adapted to a full MCP transport.

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

## What is intentionally still thin

- The HTTP transport is a lightweight JSON tool broker at `POST /mcp`
  instead of the full official MCP SDK transport.
- Auth is optional bearer-token style (`MCP_SHARED_SECRET`) for simple deployment.
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
   - `GET /tools`

## Environment variables

See `.env.example`.

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

### Tools
```bash
curl https://YOUR-DOMAIN/tools
```

### Create branch
```bash
curl -X POST https://YOUR-DOMAIN/mcp \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_SHARED_SECRET" \
  -d '{
    "tool": "create_branch",
    "args": {
      "repo": "pjaeker/ASWE_KnowledgeOS",
      "base": "main",
      "name": "chatgpt/demo-mcp-branch"
    }
  }'
```

### Commit files
```bash
curl -X POST https://YOUR-DOMAIN/mcp \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_SHARED_SECRET" \
  -d '{
    "tool": "commit_files",
    "args": {
      "repo": "pjaeker/ASWE_KnowledgeOS",
      "branch": "chatgpt/demo-mcp-branch",
      "message": "docs: add demo note",
      "files": [
        {
          "path": "meta/demo-note.md",
          "content": "# Demo\n\nHello from MCP writer.\n"
        }
      ]
    }
  }'
```

### Open draft PR
```bash
curl -X POST https://YOUR-DOMAIN/mcp \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_SHARED_SECRET" \
  -d '{
    "tool": "open_pr",
    "args": {
      "repo": "pjaeker/ASWE_KnowledgeOS",
      "base": "main",
      "head": "chatgpt/demo-mcp-branch",
      "title": "docs: add demo note",
      "body": "Draft PR created by MCP writer.",
      "draft": true
    }
  }'
```

## Recommended first deployment sequence

1. Deploy with `MCP_SHARED_SECRET` set
2. Hit `GET /healthz`
3. Hit `GET /tools`
4. Try `read_file`
5. Try `create_branch`
6. Try `commit_files` on an allowed docs path
7. Try `open_pr`

## Next step after this scaffold

If you want, the next upgrade should be:
- replace the thin `/mcp` JSON broker with the official MCP SDK transport
- add OAuth / stronger auth in front of the service
- add request / audit logging
