import express from "express";
import { loadConfig } from "./config.js";
import { GitHubClient } from "./github.js";
import { toolDefinitions, runTool } from "./tools.js";
import { HttpError, toErrorPayload } from "./errors.js";

const config = loadConfig();
const github = new GitHubClient(config.github);

const app = express();
app.use(express.json({ limit: "2mb" }));

function maybeRequireSharedSecret(req, res, next) {
  if (!config.mcpSharedSecret) {
    return next();
  }

  const auth = req.headers.authorization || "";
  const token = auth.startsWith("Bearer ") ? auth.slice("Bearer ".length) : "";
  const xApiKey = req.headers["x-api-key"] || "";

  if (token !== config.mcpSharedSecret && xApiKey !== config.mcpSharedSecret) {
    return next(new HttpError(401, "Unauthorized"));
  }

  return next();
}

app.get("/healthz", (req, res) => {
  res.json({
    ok: true,
    status: "ok",
    service: "aswe-mcp-writer",
    environment: config.nodeEnv
  });
});

app.get("/tools", (req, res) => {
  res.json({
    ok: true,
    tools: toolDefinitions(config.policy)
  });
});

app.post("/mcp", maybeRequireSharedSecret, async (req, res, next) => {
  try {
    const tool = req.body?.tool;
    const args = req.body?.args || {};

    if (!tool) {
      throw new HttpError(400, "Request body must include 'tool'");
    }

    const result = await runTool({
      tool,
      args,
      github,
      policy: config.policy
    });

    res.json({
      ok: true,
      tool,
      result
    });
  } catch (error) {
    next(error);
  }
});

app.use((error, req, res, next) => {
  const status = error instanceof HttpError ? error.statusCode : 500;
  res.status(status).json(toErrorPayload(error));
});

app.listen(config.port, () => {
  console.log(`ASWE MCP writer listening on port ${config.port}`);
});
