import { HttpError } from "../errors.js";
import {
  getGrantedScopes,
  getRequestedTool,
  MCP_READ_SCOPE,
  MCP_WRITE_SCOPE
} from "../mcp/tools.js";

function readBearerToken(req) {
  const authorization = String(req.headers.authorization || "");
  return authorization.startsWith("Bearer ")
    ? authorization.slice("Bearer ".length)
    : "";
}

function readLegacyApiKey(req) {
  return String(req.headers["x-api-key"] || "");
}

function hasLegacyWriterAccess(req, config) {
  if (!config.mcpSharedSecret) {
    return false;
  }

  const bearerToken = readBearerToken(req);
  const legacyApiKey = readLegacyApiKey(req);

  return (
    bearerToken === config.mcpSharedSecret ||
    legacyApiKey === config.mcpSharedSecret
  );
}

export function createMcpScopeMiddleware(config) {
  return function requireMcpScope(req, res, next) {
    const requestedTool = getRequestedTool(req.body, config.policy);
    if (!requestedTool) {
      next();
      return;
    }

    if (req.oauth) {
      const grantedScopes = getGrantedScopes(req.oauth.scope, config.policy);
      req.authz = {
        type: "oauth",
        scopes: Array.from(grantedScopes)
      };

      if (!grantedScopes.has(requestedTool.requiredScope)) {
        next(
          new HttpError(
            403,
            `OAuth scope '${requestedTool.requiredScope}' is required for tool '${requestedTool.toolName}'`,
            {
              tool: requestedTool.toolName,
              requiredScope: requestedTool.requiredScope,
              grantedScopes: Array.from(grantedScopes)
            }
          )
        );
        return;
      }

      next();
      return;
    }

    if (hasLegacyWriterAccess(req, config)) {
      req.authz = {
        type: "legacy-shared-secret",
        scopes: [MCP_READ_SCOPE, MCP_WRITE_SCOPE]
      };
    }

    next();
  };
}
