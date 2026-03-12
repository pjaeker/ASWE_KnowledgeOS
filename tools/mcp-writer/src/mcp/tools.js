export const MCP_READ_SCOPE = "mcp.read";
export const MCP_WRITE_SCOPE = "mcp.write";

const DEFAULT_TOOL_SCOPES = {
  read_file: MCP_READ_SCOPE,
  list_tree: MCP_READ_SCOPE,
  create_branch: MCP_WRITE_SCOPE,
  commit_files: MCP_WRITE_SCOPE,
  open_pr: MCP_WRITE_SCOPE
};

const DEFAULT_SCOPE_ALIASES = {
  mcp: [MCP_READ_SCOPE, MCP_WRITE_SCOPE]
};

const SCOPE_FREE_METHODS = new Set([
  "initialize",
  "ping",
  "notifications/initialized",
  "tools/list"
]);

function readPolicyObject(value) {
  return value && typeof value === "object" && !Array.isArray(value)
    ? value
    : {};
}

function readScopeClaim(scopeClaim) {
  return String(scopeClaim || "")
    .split(/\s+/)
    .map((value) => value.trim())
    .filter(Boolean);
}

export function getToolScopeMap(policy) {
  return {
    ...DEFAULT_TOOL_SCOPES,
    ...readPolicyObject(policy?.toolScopes)
  };
}

export function getScopeAliases(policy) {
  return {
    ...DEFAULT_SCOPE_ALIASES,
    ...readPolicyObject(policy?.scopeAliases)
  };
}

export function getRequiredScopeForTool(toolName, policy) {
  const normalizedToolName = String(toolName || "").trim();
  return getToolScopeMap(policy)[normalizedToolName] || null;
}

export function getGrantedScopes(scopeClaim, policy) {
  const aliases = getScopeAliases(policy);
  const grantedScopes = new Set();

  for (const scope of readScopeClaim(scopeClaim)) {
    grantedScopes.add(scope);

    const impliedScopes = Array.isArray(aliases[scope]) ? aliases[scope] : [];
    for (const impliedScope of impliedScopes) {
      grantedScopes.add(String(impliedScope));
    }
  }

  return grantedScopes;
}

export function getRequestedTool(body, policy) {
  if (!body || typeof body !== "object" || Array.isArray(body)) {
    return null;
  }

  if (typeof body.method === "string") {
    if (SCOPE_FREE_METHODS.has(body.method)) {
      return null;
    }

    if (body.method !== "tools/call") {
      return null;
    }

    const toolName = String(body.params?.name || "").trim();
    const requiredScope = getRequiredScopeForTool(toolName, policy);

    return toolName && requiredScope
      ? { toolName, requiredScope }
      : null;
  }

  const toolName = String(body.tool || "").trim();
  const requiredScope = getRequiredScopeForTool(toolName, policy);

  return toolName && requiredScope
    ? { toolName, requiredScope }
    : null;
}

export function annotateToolDefinitions(definitions, policy) {
  return definitions.map((definition) => ({
    ...definition,
    requiredScope: getRequiredScopeForTool(definition.name, policy)
  }));
}
