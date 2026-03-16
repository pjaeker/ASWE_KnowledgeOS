# operate

Inspect health, review logs, and recover Railway services.

## first-line checks

Start with lightweight evidence:

```bash
railway status --json
railway service status --all --json
railway logs --service <service> --lines 200 --json
```

Clarify the exact service and environment before interpreting symptoms.

## classify the failure

Use logs and status to sort problems into one of these buckets:

- build failure
- startup failure
- runtime crash or restart loop
- bad configuration or missing variables
- networking or domain issue
- external dependency failure

Route to configuration or deployment guidance when the root cause is not purely operational.

## recovery actions

Typical safe actions:

```bash
railway restart --service <service>
railway redeploy --service <service>
```

Use restart for transient issues. Use redeploy when the artifact, config, or release state should be refreshed.

## logs

Read logs with intent:

- build logs for dependency, buildpack, Docker, and command failures
- runtime logs for crashes, port binding errors, missing secrets, and healthcheck failures

Do not guess from a single line when the log stream points to a broader pattern.

## observability mindset

If the user mentions latency, errors, saturation, or healthchecks, respond like an operator:

1. establish scope
2. inspect current status
3. gather logs or metrics
4. apply the smallest reasonable fix
5. verify recovery

## post-fix verification

Always finish with a read-back step, for example:

```bash
railway service status --all --json
railway logs --service <service> --lines 100 --json
```

If the service is user-facing, add one external verification step such as hitting the service URL or checking the domain response.
