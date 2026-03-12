import express from "express";
import { HttpError, toErrorPayload } from "./errors.js";
import { createMcpRouter } from "./mcp/http.js";
import { createOAuthService } from "./oauth/server.js";
import { buildProtectedResourceMetadata } from "./oauth/protected-resource.js";
import { toolDefinitions } from "./tools.js";

export function createApp({ config, github }) {
  const app = express();
  const oauth = createOAuthService(config);

  app.use(
    express.json({
      limit: "2mb",
      type: ["application/json", "application/*+json"]
    })
  );
  app.use(express.urlencoded({ extended: false }));

  app.get("/healthz", (req, res) => {
    res.json({
      ok: true,
      status: "ok",
      service: config.serviceName,
      environment: config.nodeEnv
    });
  });

  app.get("/.well-known/oauth-protected-resource", (req, res) => {
    res.json(buildProtectedResourceMetadata(req, config));
  });

  app.get("/tools", (req, res) => {
    res.json({
      ok: true,
      tools: toolDefinitions(config.policy)
    });
  });

  app.use(config.oauthBasePath, oauth.router);
  app.use(config.mcpBasePath, oauth.createMcpBridgeMiddleware());
  app.use(config.mcpBasePath, createMcpRouter({ config, github }));

  app.use((error, req, res, next) => {
    if (error instanceof SyntaxError && error.status === 400 && "body" in error) {
      res.status(400).json(
        toErrorPayload(new HttpError(400, "Malformed request body"))
      );
      return;
    }

    const status = error instanceof HttpError ? error.statusCode : 500;
    res.status(status).json(toErrorPayload(error));
  });

  return app;
}
