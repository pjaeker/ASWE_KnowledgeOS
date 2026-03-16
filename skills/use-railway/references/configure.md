# configure

Change Railway environments, variables, domains, and networking.

## variables

List variables for a service:

```bash
railway variable list --service <service> --json
```

Set or update variables:

```bash
railway variable set KEY=value --service <service>
railway variable set DATABASE_URL='${{Postgres.DATABASE_URL}}' --service <service>
```

Prefer variable references for managed services over copying concrete secrets around.

## environments

When a problem may be environment-specific, state the exact environment up front and verify context with `railway status --json`.

Common patterns:

- production and staging have different variable sets
- preview environments may not mirror long-lived environments
- changing config in the wrong environment is a common mistake

## domains

Use domains when the user asks about public URLs, custom hostnames, or DNS.

Key checks:

- which service should receive traffic
- whether the app listens on the expected internal port
- whether DNS records match Railway's expectations
- whether the service is healthy before blaming DNS

If domain automation through CLI is insufficient, switch to the API path in [request.md](request.md).

## networking

Separate these questions clearly:

- **public networking**: should this service be reachable from the internet?
- **private networking**: should another Railway service reach it internally?

Prefer private connectivity for internal-only databases and backends. Expose only the edge service publicly when possible.

## config changes that often matter

When a user reports misbehavior after deploy, inspect these first:

- port or listening address
- start command
- healthcheck path or expectations
- variable values or missing secrets
- image vs source build configuration
- domain target service

## safe response pattern

When changing configuration, return:

1. the current config area being changed
2. the precise command or action
3. the expected verification step
4. rollback or recovery note if the change is risky
