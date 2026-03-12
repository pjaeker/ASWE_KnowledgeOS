import crypto from "crypto";

function nowSeconds() {
  return Math.floor(Date.now() / 1000);
}

function randomId(prefix) {
  return `${prefix}_${crypto.randomBytes(16).toString("hex")}`;
}

export function createOAuthState(config) {
  const clients = new Map();
  const authorizationCodes = new Map();

  function cleanupExpiredCodes() {
    const currentTime = nowSeconds();

    for (const [code, record] of authorizationCodes.entries()) {
      if (record.expiresAt <= currentTime) {
        authorizationCodes.delete(code);
      }
    }
  }

  return {
    registerClient(registration) {
      const clientId = randomId("client");
      const currentTime = nowSeconds();
      const client = {
        clientId,
        clientName: registration.clientName,
        redirectUris: registration.redirectUris,
        grantTypes: registration.grantTypes,
        responseTypes: registration.responseTypes,
        scope: registration.scope,
        tokenEndpointAuthMethod: registration.tokenEndpointAuthMethod,
        applicationType: registration.applicationType,
        clientIdIssuedAt: currentTime
      };

      clients.set(clientId, client);
      return client;
    },

    getClient(clientId) {
      return clients.get(String(clientId || "")) || null;
    },

    createAuthorizationCode(record) {
      cleanupExpiredCodes();
      const code = randomId("code");
      authorizationCodes.set(code, {
        ...record,
        expiresAt: nowSeconds() + config.oauth.codeTtlSeconds
      });
      return code;
    },

    consumeAuthorizationCode(code) {
      cleanupExpiredCodes();
      const record = authorizationCodes.get(String(code || ""));

      if (!record) {
        return null;
      }

      authorizationCodes.delete(String(code || ""));
      return record.expiresAt > nowSeconds() ? record : null;
    }
  };
}
