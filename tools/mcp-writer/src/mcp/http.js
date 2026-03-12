import { Router } from "express";
import { HttpError, toErrorPayload } from "../errors.js";
import { buildWwwAuthenticateHeader } from "../oauth/protected-resource.js";
import { runTool, toolDefinitions } from "../tools.js";

function inferPrimitiveType(value) {
  const description = String(value || "").toLowerCase();

  if (description.includes("boolean")) {
    return "boolean";
  }

  if (description.includes("number") || description.includes("integer")) {
    return "number";
  }

  return "string";
}

function isOptionalDescription(value) {
  return typeof value === "string" && value.toLowerCase().includes("optional");
}

function toJsonSchema(definition) {
  if (Array.isArray(definition)) {
    const itemSchema = definition.length > 0 ? toJsonSchema(definition[0]) : {};
    return {
      type: "array",
      items: itemSchema
    };
  }

  if (definition && typeof definition === "object") {
    const properties = {};
    const required = [];

    for (const [key, value] of Object.entries(definition)) {
      properties[key] = toJsonSchema(value);
      if (!isOptionalDescription(value)) {
        required.push(key);
      }
    }

    const schema = {
      type: "object",
      properties,
      additionalProperties: false
    };

    if (required.length > 0) {
      schema.required = required;
    }

    return schema;
  }

  return {
    type: inferPrimitiveType(definition),
    description: String(definition || "")
  };
}

function toMcpToolDefinition(definition) {
  return {
    name: definition.name,
    description: definition.description,
    inputSchema: toJsonSchema(definition.input || {})
  };
}

function jsonRpcSuccess(id, result) {
  return {
    jsonrpc: "2.0",
    id,
    result
  };
}

function jsonRpcError(id, code, message, data) {
  const error = { code, message };

  if (data !== undefined && data !== null) {
    error.data = data;
  }

  return {
    jsonrpc: "2.0",
    id: id ?? null,
    error
  };
}

function toJsonRpcFailure(error, id) {
  if (error instanceof HttpError) {
    const code = error.statusCode === 404
      ? -32601
      : error.statusCode === 400
        ? -32602
        : -32000;

    return {
      status: error.statusCode,
      payload: jsonRpcError(id, code, error.message, error.details)
    };
  }

  return {
    status: 500,
    payload: jsonRpcError(id, -32603, error?.message || "Internal server error")
  };
}

function readBearerToken(req) {
  const authorization = String(req.headers.authorization || "");
  return authorization.startsWith("Bearer ")
    ? authorization.slice("Bearer ".length)
    : "";
}

function readLegacyApiKey(req) {
  return String(req.headers["x-api-key"] || "");
}

function isJsonRpcRequest(body) {
  return Boolean(
    body &&
    typeof body === "object" &&
    !Array.isArray(body) &&
    typeof body.method === "string"
  );
}

function sendUnauthorized(req, res, config) {
  res.set("WWW-Authenticate", buildWwwAuthenticateHeader(req, config));
  res.status(401).json(
    toErrorPayload(
      new HttpError(401, "Unauthorized", {
        resourceMetadata: "/.well-known/oauth-protected-resource",
        authorizationServer: config.oauthBasePath
      })
    )
  );
}

function createAuthMiddleware(config) {
  return function requireMcpAuth(req, res, next) {
    const bearerToken = readBearerToken(req);
    const legacyApiKey = readLegacyApiKey(req);

    if (
      config.mcpSharedSecret &&
      (bearerToken === config.mcpSharedSecret || legacyApiKey === config.mcpSharedSecret)
    ) {
      return next();
    }

    return sendUnauthorized(req, res, config);
  };
}

async function handleJsonRpcRequest(body, { config, github }) {
  switch (body.method) {
    case "initialize":
      return {
        protocolVersion: config.mcpProtocolVersion,
        capabilities: {
          tools: {}
        },
        serverInfo: {
          name: config.serviceName,
          version: config.serviceVersion
        },
        instructions:
          "Use OAuth discovery from /.well-known/oauth-protected-resource. Authorization server endpoints follow under /oauth in the next slice."
      };

    case "ping":
      return {};

    case "notifications/initialized":
      return {};

    case "tools/list":
      return {
        tools: toolDefinitions(config.policy).map(toMcpToolDefinition)
      };

    case "tools/call": {
      const toolName = body.params?.name;
      const args = body.params?.arguments || {};

      if (!toolName) {
        throw new HttpError(400, "params.name is required");
      }

      const result = await runTool({
        tool: toolName,
        args,
        github,
        policy: config.policy
      });

      return {
        structuredContent: result,
        content: [
          {
            type: "text",
            text: JSON.stringify(result, null, 2)
          }
        ]
      };
    }

    default:
      throw new HttpError(404, `Unknown MCP method: ${body.method}`);
  }
}

export function createMcpRouter({ config, github }) {
  const router = Router();
  const requireMcpAuth = createAuthMiddleware(config);

  router.get("/", requireMcpAuth, (req, res) => {
    res.set("Allow", "POST");
    res.status(405).json(
      toErrorPayload(new HttpError(405, "Use POST /mcp for MCP JSON-RPC requests"))
    );
  });

  router.post("/", requireMcpAuth, async (req, res, next) => {
    try {
      const body = req.body;

      if (!body || typeof body !== "object" || Array.isArray(body)) {
        throw new HttpError(400, "Request body must be a JSON object");
      }

      if (isJsonRpcRequest(body)) {
        const isNotification = body.id === undefined || body.id === null;

        try {
          const result = await handleJsonRpcRequest(body, { config, github });

          if (isNotification) {
            res.status(202).end();
            return;
          }

          res.json(jsonRpcSuccess(body.id, result));
          return;
        } catch (error) {
          const failure = toJsonRpcFailure(error, body.id);
          res.status(failure.status).json(failure.payload);
          return;
        }
      }

      const tool = body.tool;
      const args = body.args || {};

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

  return router;
}
