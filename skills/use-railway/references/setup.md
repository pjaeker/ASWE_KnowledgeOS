# setup

Create, link, and organize Railway projects, services, databases, and buckets.

## project discovery and linking

Use these first:

```bash
railway project list --json
railway list --json
railway whoami --json
railway status --json
```

Link explicitly when you know the target:

```bash
railway link --project <project-id-or-name>
railway status --json
```

Inside an already linked project, switch service context with:

```bash
railway service link
railway service link <service-name>
```

## create a new project

```bash
railway init --name <project-name>
railway init --name <project-name> --workspace <workspace-id-or-name>
```

Prefer explicit workspace selection when multiple workspaces exist.

## create services and databases

```bash
railway add --service <service-name>
railway add --database postgres
railway add --database redis
railway add --database mysql
railway add --database mongodb
```

Before creating a new database, inspect existing services first so you do not duplicate managed databases unnecessarily.

## connect database variables to an app

Use service variable references rather than copying secrets manually. Typical patterns:

```bash
railway variable set DATABASE_URL='${{Postgres.DATABASE_URL}}' --service <app-service>
railway variable set REDIS_URL='${{Redis.REDIS_URL}}' --service <app-service>
```

Service names inside variable references are case-sensitive.

## bootstrap an empty service

After creating an empty service, wire a source repo, branch, or image before first deploy.

Typical next moves:

- set repo and branch in service config
- or point the service at a container image
- then deploy and verify health

If the user is in a monorepo, make sure the service uses the correct root directory.

## templates

For quick provisioning, consider templates instead of manual setup:

```bash
railway deploy --template <template-code>
```

Good candidates include databases and common self-hosted tools.

## storage buckets

Buckets are S3-compatible object storage resources.

List buckets:

```bash
railway bucket list --json
railway bucket list --environment production --json
```

Create a bucket:

```bash
railway bucket create my-bucket --region ams
railway bucket create --region sjc --json
```

Useful regions commonly seen in docs:

- `sjc` us west
- `iad` us east
- `ams` eu west
- `sin` asia pacific

Fetch credentials after creation:

```bash
railway bucket credentials --bucket <bucket-name> --json
```

Then wire those credentials into the consuming service as variables.

## when to escalate to api use

Use the API path when the CLI does not expose the setting you need, especially for deeper project or domain automation. Load [request.md](request.md) for that path.
