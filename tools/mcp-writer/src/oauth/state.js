import crypto from "crypto";

const CLIENT_TOKEN_AUDIENCE = "aswe-mcp-writer/oauth-client";
const AUTHORIZATION_CODE_TOKEN_AUDIENCE = "aswe-mcp-writer/oauth-authorization-code";

function nowSeconds() {
  return Math.floor(Date.now() / 1000);
}

function randomId(prefix) {
  return `${prefix}_${crypto.randomBytes(16).toString("hex")}`;
}

function normalizeStringArray(value, fallback = []) {
  if (Array.isArray(value) && value.length > 0) {
    return value
      .map((entry) => String(entry || ""))
      .filter(Boolean);
  }

  return [...fallback];
}

function normalizeClientRecord(payload, clientId) {
  return {
    clientId,
    clientName: String(payload.clientName || "Dynamic OAuth Client"),
    redirectUris: normalizeStringArray(payload.redirectUris),
    grantTypes: normalizeStringArray(payload.grantTypes, ["authorization_code"]),
    responseTypes: normalizeStringArray(payload.responseTypes, ["code"]),
    scope: String(payload.scope || ""),
    tokenEndpointAuthMethod: String(payload.tokenEndpointAuthMethod || "none"),
    applicationType: String(payload.applicationType || "web"),
    clientIdIssuedAt: Number(payload.clientIdIssuedAt || payload.iat || nowSeconds())
  };
}

export function createOAuthState({ config, signToken, verifyToken }) {
  const usedAuthorizationCodes = new Map();

  function cleanupExpiredUsedCodes() {
    const currentTime = nowSeconds();

    for (const [codeId, expiresAt] of usedAuthorizationCodes.entries()) {
      if (expiresAt <= currentTime) {
        usedAuthorizationCodes.delete(codeId);
      }
    }
  }

  return {
    registerClient(registration) {
      const currentTime = nowSeconds();
      const clientPayload = {
        token_use: "oauth_client",
        version: 1,
        clientName: registration.clientName,
        redirectUris: registration.redirectUris,
        grantTypes: registration.grantTypes,
        responseTypes: registration.responseTypes,
        scope: registration.scope,
        tokenEndpointAuthMethod: registration.tokenEndpointAuthMethod,
        applicationType: registration.applicationType,
        clientIdIssuedAt: currentTime
      };
      const clientId = signToken({
        audience: CLIENT_TOKEN_AUDIENCE,
        payload: clientPayload,
        header: { typ: "oauth-client-id+jwt" }
      });

      return normalizeClientRecord(clientPayload, clientId);
    },

    getClient(clientId) {
      const token = String(clientId || "");
      if (!token) {
        return null;
      }

      try {
        const payload = verifyToken({
          token,
          audience: CLIENT_TOKEN_AUDIENCE
        });

        if (payload?.token_use !== "oauth_client") {
          return null;
        }

        return normalizeClientRecord(payload, token);
      } catch {
        return null;
      }
    },

    createAuthorizationCode(record) {
      return signToken({
        audience: AUTHORIZATION_CODE_TOKEN_AUDIENCE,
        expiresIn: config.oauth.codeTtlSeconds,
        payload: {
          token_use: "authorization_code",
          version: 1,
          codeId: randomId("code"),
          clientId: String(record.clientId || ""),
          redirectUri: String(record.redirectUri || ""),
          codeChallenge: String(record.codeChallenge || ""),
          codeChallengeMethod: String(record.codeChallengeMethod || ""),
          scope: String(record.scope || config.oauth.defaultScope),
          nonce: String(record.nonce || ""),
          subject: String(record.subject || "")
        },
        header: { typ: "oauth-authorization-code+jwt" }
      });
    },

    consumeAuthorizationCode(code) {
      cleanupExpiredUsedCodes();

      try {
        const payload = verifyToken({
          token: String(code || ""),
          audience: AUTHORIZATION_CODE_TOKEN_AUDIENCE
        });

        if (payload?.token_use !== "authorization_code") {
          return null;
        }

        const codeId = String(payload.codeId || "");
        const expiresAt = Number(payload.exp || 0);

        if (!codeId || !Number.isFinite(expiresAt) || expiresAt <= nowSeconds()) {
          return null;
        }

        if (usedAuthorizationCodes.has(codeId)) {
          return null;
        }

        usedAuthorizationCodes.set(codeId, expiresAt);

        return {
          clientId: String(payload.clientId || ""),
          redirectUri: String(payload.redirectUri || ""),
          codeChallenge: String(payload.codeChallenge || ""),
          codeChallengeMethod: String(payload.codeChallengeMethod || ""),
          scope: String(payload.scope || config.oauth.defaultScope),
          nonce: String(payload.nonce || ""),
          subject: String(payload.subject || ""),
          expiresAt
        };
      } catch {
        return null;
      }
    }
  };
}
