function stripTrailingSlash(value) {
  return String(value || "").replace(/\/+$/, "");
}

function ensureLeadingSlash(value) {
  const normalized = String(value || "").trim();
  if (!normalized) {
    return "/";
  }
  return normalized.startsWith("/") ? normalized : `/${normalized}`;
}

function firstHeaderValue(value) {
  if (Array.isArray(value)) {
    return String(value[0] || "").trim();
  }

  return String(value || "")
    .split(",")[0]
    .trim();
}

function joinUrl(origin, pathname) {
  return `${stripTrailingSlash(origin)}${ensureLeadingSlash(pathname)}`;
}

function escapeHeaderValue(value) {
  return String(value || "").replace(/(["\\])/g, "\\$1");
}

export function resolvePublicOrigin(req, config) {
  if (config.publicBaseUrl) {
    return stripTrailingSlash(config.publicBaseUrl);
  }

  if (config.railwayPublicDomain) {
    return `https://${stripTrailingSlash(config.railwayPublicDomain)}`;
  }

  const forwardedProto = firstHeaderValue(req.headers["x-forwarded-proto"]);
  const forwardedHost = firstHeaderValue(req.headers["x-forwarded-host"]);
  const protocol = forwardedProto || req.protocol || "http";
  const host = forwardedHost || firstHeaderValue(req.headers.host);

  return `${protocol}://${host}`;
}

export function buildProtectedResourceMetadata(req, config) {
  const origin = resolvePublicOrigin(req, config);
  const mcpResource = joinUrl(origin, config.mcpBasePath);
  const authorizationServer = joinUrl(origin, config.oauthBasePath);

  return {
    resource: mcpResource,
    resource_name: "ASWE MCP Writer",
    authorization_servers: [authorizationServer],
    bearer_methods_supported: ["header"]
  };
}

export function buildWwwAuthenticateHeader(req, config, options = {}) {
  const origin = resolvePublicOrigin(req, config);
  const resourceMetadata = joinUrl(origin, "/.well-known/oauth-protected-resource");
  const description =
    options.description || "OAuth is required for the MCP endpoint.";
  const parts = [
    `Bearer realm="${escapeHeaderValue(config.serviceName)}"`,
    `resource_metadata="${escapeHeaderValue(resourceMetadata)}"`,
    `error="invalid_token"`,
    `error_description="${escapeHeaderValue(description)}"`
  ];

  return parts.join(", ");
}
