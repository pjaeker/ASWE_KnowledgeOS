import crypto from "crypto";
import { Router } from "express";
import { HttpError, toErrorPayload } from "../errors.js";
import { resolvePublicOrigin } from "./protected-resource.js";
import { createSigningKeyMaterial, signJwt, verifyJwt } from "./keys.js";
import { createOAuthState } from "./state.js";

function ensureLeadingSlash(value) {
  const normalized = String(value || "").trim();
  if (!normalized) {
    return "/";
  }

  return normalized.startsWith("/") ? normalized : `/${normalized}`;
}

function joinUrl(origin, pathname) {
  return `${String(origin || "").replace(/\/+$/, "")}${ensureLeadingSlash(pathname)}`;
}

function escapeHtml(value) {
  return String(value || "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#39;");
}

function ensureArray(value, fallback) {
  if (Array.isArray(value) && value.length > 0) {
    return value;
  }

  return fallback;
}

function getDefaultScopes(config) {
  return config.oauth.defaultScope
    .split(/\s+/)
    .filter(Boolean);
}

function getRequestedScope(scopeValue, config) {
  return String(scopeValue || config.oauth.defaultScope)
    .trim()
    .replace(/\s+/g, " ");
}

function validateAbsoluteUrl(urlValue, fieldName) {
  try {
    return new URL(String(urlValue)).toString();
  } catch {
    throw new HttpError(400, `${fieldName} must be an absolute URL`);
  }
}

function appendQueryParams(baseUrl, params) {
  const url = new URL(baseUrl);

  for (const [key, value] of Object.entries(params)) {
    if (value !== undefined && value !== null && value !== "") {
      url.searchParams.set(key, String(value));
    }
  }

  return url.toString();
}

function buildOAuthUrls(req, config) {
  const origin = resolvePublicOrigin(req, config);
  const oauthRoot = joinUrl(origin, config.oauthBasePath);

  return {
    origin,
    issuer: oauthRoot,
    authorizationEndpoint: joinUrl(origin, `${config.oauthBasePath}/authorize`),
    tokenEndpoint: joinUrl(origin, `${config.oauthBasePath}/token`),
    registrationEndpoint: joinUrl(origin, `${config.oauthBasePath}/register`),
    jwksUri: joinUrl(origin, `${config.oauthBasePath}/jwks`),
    mcpResource: joinUrl(origin, config.mcpBasePath)
  };
}

function buildAuthorizationServerMetadata(req, config) {
  const urls = buildOAuthUrls(req, config);

  return {
    issuer: urls.issuer,
    authorization_endpoint: urls.authorizationEndpoint,
    token_endpoint: urls.tokenEndpoint,
    registration_endpoint: urls.registrationEndpoint,
    jwks_uri: urls.jwksUri,
    response_types_supported: ["code"],
    response_modes_supported: ["query"],
    grant_types_supported: ["authorization_code"],
    token_endpoint_auth_methods_supported: ["none"],
    code_challenge_methods_supported: ["S256"],
    scopes_supported: getDefaultScopes(config)
  };
}

function buildOpenIdConfiguration(req, config) {
  return {
    ...buildAuthorizationServerMetadata(req, config),
    subject_types_supported: ["public"],
    id_token_signing_alg_values_supported: ["RS256"],
    claims_supported: ["iss", "sub", "aud", "exp", "iat", "nonce"]
  };
}

function createPkceChallenge(codeVerifier) {
  return crypto
    .createHash("sha256")
    .update(String(codeVerifier || ""))
    .digest("base64url");
}

function sendOAuthJsonError(res, statusCode, errorCode, description, extra = {}) {
  res.status(statusCode).json({
    error: errorCode,
    error_description: description,
    ...extra
  });
}

function redirectWithParams(res, redirectUri, params) {
  res
    .status(302)
    .set("Location", appendQueryParams(redirectUri, params))
    .end();
}

function getAuthorizeParams(req) {
  const source = req.method === "POST" ? (req.body || {}) : (req.query || {});

  return {
    client_id: String(source.client_id || ""),
    redirect_uri: String(source.redirect_uri || ""),
    response_type: String(source.response_type || ""),
    scope: String(source.scope || ""),
    state: String(source.state || ""),
    nonce: String(source.nonce || ""),
    code_challenge: String(source.code_challenge || ""),
    code_challenge_method: String(source.code_challenge_method || "S256"),
    decision: String(source.decision || "approve")
  };
}

function normalizeRegistration(payload, config) {
  const redirectUris = ensureArray(payload.redirect_uris, [])
    .map((value) => validateAbsoluteUrl(value, "redirect_uris"));

  if (redirectUris.length === 0) {
    throw new HttpError(400, "redirect_uris must contain at least one absolute URL");
  }

  const grantTypes = ensureArray(payload.grant_types, ["authorization_code"])
    .map((value) => String(value || ""));
  const responseTypes = ensureArray(payload.response_types, ["code"])
    .map((value) => String(value || ""));
  const tokenEndpointAuthMethod = String(payload.token_endpoint_auth_method || "none");

  if (grantTypes.some((value) => value !== "authorization_code")) {
    throw new HttpError(400, "Only authorization_code grant type is supported in PR-2");
  }

  if (responseTypes.some((value) => value !== "code")) {
    throw new HttpError(400, "Only response_type=code is supported in PR-2");
  }

  if (tokenEndpointAuthMethod !== "none") {
    throw new HttpError(400, "Only public clients with token_endpoint_auth_method=none are supported in PR-2");
  }

  return {
    clientName: String(payload.client_name || "Dynamic OAuth Client"),
    redirectUris,
    grantTypes,
    responseTypes,
    scope: getRequestedScope(payload.scope, config),
    tokenEndpointAuthMethod,
    applicationType: String(payload.application_type || "web")
  };
}

function validateAuthorizeRequest(params, state, config) {
  if (!params.client_id) {
    throw new HttpError(400, "client_id is required");
  }

  if (params.response_type !== "code") {
    throw new HttpError(400, "response_type must be 'code'");
  }

  if (!params.code_challenge) {
    throw new HttpError(400, "code_challenge is required");
  }

  if (params.code_challenge_method !== "S256") {
    throw new HttpError(400, "Only code_challenge_method=S256 is supported in PR-2");
  }

  const client = state.getClient(params.client_id);
  if (!client) {
    throw new HttpError(400, "Unknown client_id");
  }

  const redirectUri = params.redirect_uri
    ? validateAbsoluteUrl(params.redirect_uri, "redirect_uri")
    : (client.redirectUris.length === 1 ? client.redirectUris[0] : "");

  if (!redirectUri) {
    throw new HttpError(400, "redirect_uri is required for clients with multiple registered redirect URIs");
  }

  if (!client.redirectUris.includes(redirectUri)) {
    throw new HttpError(400, "redirect_uri is not registered for this client");
  }

  return {
    client,
    redirectUri,
    scope: getRequestedScope(params.scope || client.scope, config),
    state: params.state,
    nonce: params.nonce,
    codeChallenge: params.code_challenge,
    codeChallengeMethod: params.code_challenge_method
  };
}

function renderAuthorizePage({ actionUrl, client, redirectUri, requestedScope, subject, rawParams }) {
  const hiddenFields = Object.entries(rawParams)
    .filter(([key]) => key !== "decision")
    .map(([key, value]) => `<input type="hidden" name="${escapeHtml(key)}" value="${escapeHtml(value)}" />`)
    .join("\n");

  return `<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>ASWE MCP Writer OAuth Approval</title>
    <style>
      body { font-family: sans-serif; max-width: 42rem; margin: 2rem auto; line-height: 1.5; }
      code { background: #f3f3f3; padding: 0.15rem 0.35rem; }
      button { padding: 0.7rem 1rem; }
    </style>
  </head>
  <body>
    <h1>Authorize Client</h1>
    <p>The development OAuth server is ready to issue an authorization code for the configured subject.</p>
    <p><strong>Client:</strong> ${escapeHtml(client.clientName)} (<code>${escapeHtml(client.clientId)}</code>)</p>
    <p><strong>Redirect URI:</strong> <code>${escapeHtml(redirectUri)}</code></p>
    <p><strong>Requested scope:</strong> <code>${escapeHtml(requestedScope)}</code></p>
    <p><strong>Subject:</strong> <code>${escapeHtml(subject)}</code></p>
    <form method="post" action="${escapeHtml(actionUrl)}">
      ${hiddenFields}
      <button type="submit" name="decision" value="approve">Approve</button>
    </form>
  </body>
</html>`;
}

function renderMissingSubjectPage() {
  return `<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>OAuth Subject Missing</title>
  </head>
  <body>
    <h1>OAuth authorization is not configured yet</h1>
    <p>Set <code>OAUTH_DEV_SUBJECT</code> in the environment to enable development authorization codes for PR-2.</p>
  </body>
</html>`;
}

export function createOAuthService(config) {
  const router = Router();
  const state = createOAuthState(config);
  const keyMaterial = createSigningKeyMaterial(config);

  function authenticateAccessToken(req) {
    const authorization = String(req.headers.authorization || "");
    if (!authorization.startsWith("Bearer ")) {
      return null;
    }

    const token = authorization.slice("Bearer ".length);
    const urls = buildOAuthUrls(req, config);

    try {
      const payload = verifyJwt({
        token,
        keyMaterial,
        issuer: urls.issuer,
        audience: urls.mcpResource
      });

      return payload.token_use === "access_token" ? payload : null;
    } catch {
      return null;
    }
  }

  router.get("/.well-known/openid-configuration", (req, res) => {
    res.json(buildOpenIdConfiguration(req, config));
  });

  router.get("/.well-known/oauth-authorization-server", (req, res) => {
    res.json(buildAuthorizationServerMetadata(req, config));
  });

  router.get("/jwks", (req, res) => {
    res.json(keyMaterial.jwks);
  });

  router.post("/register", (req, res, next) => {
    try {
      if (!config.oauth.registrationEnabled) {
        throw new HttpError(404, "Dynamic client registration is disabled");
      }

      const client = state.registerClient(normalizeRegistration(req.body || {}, config));
      res.status(201).json({
        client_id: client.clientId,
        client_id_issued_at: client.clientIdIssuedAt,
        client_secret_expires_at: 0,
        redirect_uris: client.redirectUris,
        grant_types: client.grantTypes,
        response_types: client.responseTypes,
        token_endpoint_auth_method: client.tokenEndpointAuthMethod,
        scope: client.scope,
        client_name: client.clientName,
        application_type: client.applicationType
      });
    } catch (error) {
      next(error);
    }
  });

  router.get("/authorize", (req, res, next) => {
    try {
      const rawParams = getAuthorizeParams(req);
      const request = validateAuthorizeRequest(rawParams, state, config);
      const urls = buildOAuthUrls(req, config);

      if (!config.oauth.devSubject) {
        res
          .status(503)
          .set("Content-Type", "text/html; charset=utf-8")
          .end(renderMissingSubjectPage());
        return;
      }

      res
        .status(200)
        .set("Content-Type", "text/html; charset=utf-8")
        .end(renderAuthorizePage({
          actionUrl: urls.authorizationEndpoint,
          client: request.client,
          redirectUri: request.redirectUri,
          requestedScope: request.scope,
          subject: config.oauth.devSubject,
          rawParams
        }));
    } catch (error) {
      next(error);
    }
  });

  router.post("/authorize", (req, res, next) => {
    try {
      const rawParams = getAuthorizeParams(req);
      const request = validateAuthorizeRequest(rawParams, state, config);

      if (!config.oauth.devSubject) {
        throw new HttpError(503, "OAUTH_DEV_SUBJECT must be configured to issue authorization codes");
      }

      if (rawParams.decision !== "approve") {
        redirectWithParams(res, request.redirectUri, {
          error: "access_denied",
          state: request.state
        });
        return;
      }

      const code = state.createAuthorizationCode({
        clientId: request.client.clientId,
        redirectUri: request.redirectUri,
        codeChallenge: request.codeChallenge,
        codeChallengeMethod: request.codeChallengeMethod,
        scope: request.scope,
        nonce: request.nonce,
        subject: config.oauth.devSubject
      });

      redirectWithParams(res, request.redirectUri, {
        code,
        state: request.state
      });
    } catch (error) {
      next(error);
    }
  });

  router.post("/token", (req, res, next) => {
    try {
      const body = req.body || {};
      const grantType = String(body.grant_type || "");

      if (grantType !== "authorization_code") {
        sendOAuthJsonError(res, 400, "unsupported_grant_type", "Only authorization_code is supported in PR-2.");
        return;
      }

      const client = state.getClient(body.client_id);
      if (!client) {
        sendOAuthJsonError(res, 400, "invalid_client", "Unknown client_id.");
        return;
      }

      const redirectUri = String(body.redirect_uri || "");
      if (!client.redirectUris.includes(redirectUri)) {
        sendOAuthJsonError(res, 400, "invalid_grant", "redirect_uri does not match the registered client.");
        return;
      }

      const codeRecord = state.consumeAuthorizationCode(body.code);
      if (!codeRecord) {
        sendOAuthJsonError(res, 400, "invalid_grant", "Authorization code is missing, expired, or already used.");
        return;
      }

      if (codeRecord.clientId !== client.clientId || codeRecord.redirectUri !== redirectUri) {
        sendOAuthJsonError(res, 400, "invalid_grant", "Authorization code does not match this client or redirect_uri.");
        return;
      }

      const codeVerifier = String(body.code_verifier || "");
      if (!codeVerifier) {
        sendOAuthJsonError(res, 400, "invalid_grant", "code_verifier is required.");
        return;
      }

      if (codeRecord.codeChallengeMethod !== "S256") {
        sendOAuthJsonError(res, 400, "invalid_grant", "Only S256 PKCE is supported.");
        return;
      }

      if (createPkceChallenge(codeVerifier) !== codeRecord.codeChallenge) {
        sendOAuthJsonError(res, 400, "invalid_grant", "code_verifier does not match the original code_challenge.");
        return;
      }

      const urls = buildOAuthUrls(req, config);
      const accessToken = signJwt({
        payload: {
          token_use: "access_token",
          client_id: client.clientId,
          scope: codeRecord.scope
        },
        keyMaterial,
        issuer: urls.issuer,
        audience: urls.mcpResource,
        subject: codeRecord.subject,
        expiresIn: config.oauth.tokenTtlSeconds,
        header: { typ: "at+jwt" }
      });

      const responsePayload = {
        access_token: accessToken,
        token_type: "Bearer",
        expires_in: config.oauth.tokenTtlSeconds,
        scope: codeRecord.scope
      };

      if (codeRecord.scope.split(/\s+/).includes("openid")) {
        responsePayload.id_token = signJwt({
          payload: codeRecord.nonce ? { nonce: codeRecord.nonce } : {},
          keyMaterial,
          issuer: urls.issuer,
          audience: client.clientId,
          subject: codeRecord.subject,
          expiresIn: config.oauth.tokenTtlSeconds,
          header: { typ: "JWT" }
        });
      }

      res.set("Cache-Control", "no-store");
      res.set("Pragma", "no-cache");
      res.json(responsePayload);
    } catch (error) {
      next(error);
    }
  });

  return {
    router,

    authenticateAccessToken,

    createMcpBridgeMiddleware() {
      return function bridgeOAuthToMcp(req, res, next) {
        const payload = authenticateAccessToken(req);
        if (payload) {
          req.oauth = payload;
          req.headers["x-api-key"] = config.mcpSharedSecret;
        }

        next();
      };
    }
  };
}
