---
name: use-railway
description: manage railway projects, services, deployments, variables, domains, storage buckets, and troubleshooting. use when the user asks to set up, deploy, configure, inspect, debug, or operate anything on railway, even if they mention only an app, service, environment, build failure, logs, or domain.
---

# use railway

Provide production-oriented help for Railway operations.

This skill is an adaptation of Railway's public `use-railway` agent skill for ChatGPT-style skills and Codex-style shell agents. Keep the skill route-first and concise.

## working modes

Choose the mode that matches the runtime:

- **shell-capable agent**: run commands directly when safe and useful.
- **chat-only environment**: do not pretend to execute commands. Give the user exact commands, explain expected output, and ask only for the minimum follow-up evidence needed.

## resource model

Use Railway's hierarchy consistently:

- **workspace**: billing and team scope
- **project**: collection of services
- **environment**: isolated config and deployment plane inside a project
- **service**: one deployable unit such as an app or managed database
- **bucket**: S3-compatible object storage resource
- **deployment**: point-in-time release of a service in an environment

Most commands depend on current context. Resolve the active project, environment, and service before mutating anything.

## preflight

Before mutations, verify:

```bash
command -v railway
railway --version
railway whoami --json
railway status --json
```

If the CLI is missing, prefer one of these install paths:

```bash
brew install railway
npm i -g @railway/cli
```

If authentication is missing, use `railway login`.

For CI or non-interactive environments, prefer token-based auth and avoid assuming browser login is available.

## quick operations

Handle these without loading extra references unless the user needs deeper guidance:

```bash
railway status --json
railway whoami --json
railway list --json
railway project list --json
railway service status --all --json
railway variable list --service <service> --json
railway variable set KEY=value --service <service>
railway logs --service <service> --lines 200 --json
railway up --detach -m "<summary>"
railway redeploy --service <service>
railway restart --service <service>
railway bucket list --json
railway bucket info --bucket <name> --json
railway bucket credentials --bucket <name> --json
```

## routing

Load only the references needed for the task.

| intent | reference | use for |
|---|---|---|
| create or connect resources | [setup.md](references/setup.md) | projects, services, databases, buckets, templates, workspaces |
| ship code or manage releases | [deploy.md](references/deploy.md) | deploy, redeploy, restart, build config, docker, monorepo |
| change configuration | [configure.md](references/configure.md) | variables, environments, domains, networking, ports |
| check health or debug failures | [operate.md](references/operate.md) | status, logs, metrics, recovery, post-deploy verification |
| use api or official docs | [request.md](references/request.md) | graphql queries, docs lookup, community escalation |

If the request spans two areas, combine them into one coherent answer.

## execution rules

1. Prefer Railway CLI for routine operations.
2. Use `--json` whenever available.
3. Resolve context before mutation.
4. For destructive actions, confirm the exact target and likely impact first.
5. After mutations, verify with a read-back command.
6. When using the API, prefer scoped tokens over broad tokens.
7. Do not invent Railway resource IDs, domain status, or deployment state.

## setup decision flow

When the user wants to create or deploy something:

1. Run `railway status --json` in the current directory.
2. If already linked, add or configure a service in the existing project unless the user explicitly asks for a separate project.
3. If not linked, check whether the parent directory is linked. Treat linked parent directories as likely monorepos.
4. If still unlinked, run `railway list --json` and look for a project matching the repo or directory name.
5. If no good match exists, create a new project with `railway init --name <project-name>`.

Naming heuristic: app names like `api`, `web`, or `worker` are often service names; the repo or directory name is often the project name.

## response format

For operational answers, return:

1. **what was done or should be done**
2. **scope**: workspace, project, environment, service
3. **result or expected result**
4. **next step**

Keep outputs concise. Show commands only when they help the user act or verify.
