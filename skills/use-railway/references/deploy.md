# deploy

Deploy code, redeploy services, and manage release flow on Railway.

## deploy preflight

Before deploying, confirm:

```bash
railway status --json
railway whoami --json
railway service status --all --json
```

Check that the intended service, environment, branch, and root directory are correct.

## standard deploy

Deploy the current directory:

```bash
railway up --detach -m "<summary>"
```

Use a short, meaningful message so deployment history is readable.

## redeploy and restart

When source or image is already configured and you need another rollout:

```bash
railway redeploy --service <service>
railway restart --service <service>
```

Use **redeploy** when you want a fresh deployment. Use **restart** for transient runtime issues when config and artifact are already correct.

## build troubleshooting checks

When builds fail, inspect:

- build logs
- selected source repo and branch
- monorepo root directory
- build command and start command
- Dockerfile presence and expected build context
- environment variables required at build time

Then use:

```bash
railway logs --service <service> --lines 200 --json
```

If the user mentions Docker, verify whether Railway should build from source or pull an existing image.

## monorepo guidance

For monorepos, do not assume the repository root is the service root.

Validate:

- correct service name
- correct root directory
- correct build and start commands for that sub-application

A common failure mode is deploying the right repo with the wrong subdirectory.

## post-deploy verification

Always verify after deployment:

```bash
railway service status --all --json
railway logs --service <service> --lines 100 --json
```

If the service is public, also verify the reachable domain and app health.

## recommended response pattern

For deployment help, answer in this order:

1. target service and environment
2. exact deploy or redeploy command
3. expected status or verification command
4. next fix if healthchecks or logs fail
