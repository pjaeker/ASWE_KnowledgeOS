import assert from "node:assert/strict";
import crypto from "node:crypto";
import { once } from "node:events";
import express from "express";
import { toErrorPayload } from "../src/errors.js";
import { createOAuthService } from "../src/oauth/server.js";

const ALLOWLISTED_REDIRECT_URI = "https://chat.openai.com/aip/callback";
const CHATGPT_CONNECTOR_REDIRECT_URI = "https://chatgpt.com/connector/oauth/test-connector";
const BLOCKED_REDIRECT_URI = "https://example.com/callback";
const STABLE_TEST_JWT_PRIVATE_KEY = crypto
  .generateKeyPairSync("rsa", { modulusLength: 2048 })
  .privateKey.export({
    type: "pkcs8",
    format: "pem"
  })
  .toString();

function createTestConfig(overrides = {}) {
  const oauthOverrides = overrides.oauth || {};
  const githubOverrides = overrides.github || {};

  return {
    serviceName: "aswe-mcp-writer-test",
    publicBaseUrl: "",
    railwayPublicDomain: "",
    mcpBasePath: "/mcp",
    oauthBasePath: "/oauth",
    github: {
      privateKey: "",
      ...githubOverrides
    },
    oauth: {
      devSubject: "dev-user",
      allowedRedirectUris: [ALLOWLISTED_REDIRECT_URI],
      defaultScope: "openid mcp.read",
      codeTtlSeconds: 600,
      tokenTtlSeconds: 3600,
      registrationEnabled: true,
      jwtPrivateKey: "",
      ...oauthOverrides
    }
  };
}

async function withOAuthServer(configOverrides, run) {
  const config = createTestConfig(configOverrides);
  const { router } = createOAuthService(config);
  const app = express();
  app.use(express.json());
  app.use(express.urlencoded({ extended: false }));
  app.use(config.oauthBasePath, router);
  app.use((error, req, res, next) => {
    const statusCode = error?.statusCode || 500;
    res.status(statusCode).json(toErrorPayload(error));
  });

  const server = app.listen(0);
  await once(server, "listening");
  const address = server.address();
  const baseUrl = `http://127.0.0.1:${address.port}`;

  try {
    await run({ baseUrl });
  } finally {
    await new Promise((resolve, reject) => {
      server.close((error) => {
        if (error) {
          reject(error);
          return;
        }

        resolve();
      });
    });
  }
}

async function registerClient(baseUrl, redirectUri = ALLOWLISTED_REDIRECT_URI) {
  const response = await fetch(`${baseUrl}/oauth/register`, {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      client_name: "ChatGPT Connector",
      redirect_uris: [redirectUri],
      scope: "openid mcp.read",
      grant_types: ["authorization_code"],
      response_types: ["code"],
      token_endpoint_auth_method: "none"
    })
  });

  return {
    response,
    json: await response.json()
  };
}

function authorizeBody({ clientId, redirectUri = ALLOWLISTED_REDIRECT_URI }) {
  return authorizeBodyWithPkce({
    clientId,
    redirectUri,
    codeChallenge: "challenge-123"
  });
}

function authorizeBodyWithPkce({
  clientId,
  redirectUri = ALLOWLISTED_REDIRECT_URI,
  codeChallenge
}) {
  return new URLSearchParams({
    client_id: clientId,
    redirect_uri: redirectUri,
    response_type: "code",
    scope: "openid mcp.read",
    state: "state-123",
    nonce: "nonce-123",
    code_challenge: codeChallenge,
    code_challenge_method: "S256",
    decision: "approve"
  });
}

function createPkcePair() {
  const codeVerifier = crypto.randomBytes(32).toString("base64url");
  const codeChallenge = crypto
    .createHash("sha256")
    .update(codeVerifier)
    .digest("base64url");

  return { codeVerifier, codeChallenge };
}

function extractAuthorizationCode(location) {
  if (!location) {
    return "";
  }

  return new URL(location).searchParams.get("code") || "";
}

const cases = [
  {
    name: "register accepts an allowlisted redirect URI",
    async run() {
      await withOAuthServer({}, async ({ baseUrl }) => {
        const { response, json } = await registerClient(baseUrl);

        assert.equal(response.status, 201);
        assert.equal(typeof json.client_id, "string");
        assert.deepEqual(json.redirect_uris, [ALLOWLISTED_REDIRECT_URI]);
      });
    }
  },
  {
    name: "register and authorize accept an exact allowlisted chatgpt.com connector callback",
    async run() {
      await withOAuthServer(
        {
          oauth: {
            allowedRedirectUris: [ALLOWLISTED_REDIRECT_URI, CHATGPT_CONNECTOR_REDIRECT_URI]
          }
        },
        async ({ baseUrl }) => {
          const { response, json } = await registerClient(baseUrl, CHATGPT_CONNECTOR_REDIRECT_URI);

          assert.equal(response.status, 201);
          assert.deepEqual(json.redirect_uris, [CHATGPT_CONNECTOR_REDIRECT_URI]);

          const authorizeResponse = await fetch(`${baseUrl}/oauth/authorize`, {
            method: "POST",
            headers: {
              Accept: "application/json",
              "Content-Type": "application/x-www-form-urlencoded"
            },
            redirect: "manual",
            body: authorizeBody({
              clientId: json.client_id,
              redirectUri: CHATGPT_CONNECTOR_REDIRECT_URI
            })
          });

          assert.equal(authorizeResponse.status, 302);
          const location = authorizeResponse.headers.get("location");
          assert.equal(typeof location, "string");
          assert.match(location, /^https:\/\/chatgpt\.com\/connector\/oauth\/test-connector\?/);
          assert.match(location, /[?&]code=/);
        }
      );
    }
  },
  {
    name: "register rejects a non-allowlisted redirect URI",
    async run() {
      await withOAuthServer({}, async ({ baseUrl }) => {
        const { response, json } = await registerClient(baseUrl, BLOCKED_REDIRECT_URI);

        assert.equal(response.status, 400);
        assert.equal(json.error.message, "redirect_uris must contain only allowlisted absolute URLs");
      });
    }
  },
  {
    name: "authorize rejects a redirect URI outside the deployment allowlist",
    async run() {
      await withOAuthServer({}, async ({ baseUrl }) => {
        const { json: registration } = await registerClient(baseUrl);

        const response = await fetch(`${baseUrl}/oauth/authorize`, {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          body: authorizeBody({
            clientId: registration.client_id,
            redirectUri: BLOCKED_REDIRECT_URI
          })
        });

        const json = await response.json();
        assert.equal(response.status, 400);
        assert.equal(json.error.message, "redirect_uri is not allowlisted for this deployment");
      });
    }
  },
  {
    name: "authorize remains blocked when OAUTH_DEV_SUBJECT is empty",
    async run() {
      await withOAuthServer(
        {
          oauth: {
            devSubject: ""
          }
        },
        async ({ baseUrl }) => {
          const { json: registration } = await registerClient(baseUrl);

          const response = await fetch(`${baseUrl}/oauth/authorize`, {
            method: "POST",
            headers: {
              Accept: "application/json",
              "Content-Type": "application/x-www-form-urlencoded"
            },
            body: authorizeBody({
              clientId: registration.client_id
            })
          });

          const json = await response.json();
          assert.equal(response.status, 503);
          assert.equal(
            json.error.message,
            "OAUTH_DEV_SUBJECT must be configured to issue authorization codes"
          );
        }
      );
    }
  },
  {
    name: "registered client_id survives service recreation when OAUTH_JWT_PRIVATE_KEY is stable",
    async run() {
      const oauthConfig = {
        oauth: {
          jwtPrivateKey: STABLE_TEST_JWT_PRIVATE_KEY,
          allowedRedirectUris: [ALLOWLISTED_REDIRECT_URI, CHATGPT_CONNECTOR_REDIRECT_URI]
        }
      };
      let clientId = "";

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const { response, json } = await registerClient(baseUrl, CHATGPT_CONNECTOR_REDIRECT_URI);

        assert.equal(response.status, 201);
        clientId = json.client_id;
      });

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const pkce = createPkcePair();
        const authorizeResponse = await fetch(`${baseUrl}/oauth/authorize`, {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          redirect: "manual",
          body: authorizeBodyWithPkce({
            clientId,
            redirectUri: CHATGPT_CONNECTOR_REDIRECT_URI,
            codeChallenge: pkce.codeChallenge
          })
        });

        assert.equal(authorizeResponse.status, 302);
        const location = authorizeResponse.headers.get("location");
        assert.equal(typeof location, "string");
        assert.match(location, /^https:\/\/chatgpt\.com\/connector\/oauth\/test-connector\?/);
        assert.ok(extractAuthorizationCode(location));
      });
    }
  },
  {
    name: "registered client_id survives service recreation when GITHUB_PRIVATE_KEY fallback is stable",
    async run() {
      const oauthConfig = {
        github: {
          privateKey: STABLE_TEST_JWT_PRIVATE_KEY
        },
        oauth: {
          allowedRedirectUris: [ALLOWLISTED_REDIRECT_URI, CHATGPT_CONNECTOR_REDIRECT_URI]
        }
      };
      let clientId = "";

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const { response, json } = await registerClient(baseUrl, CHATGPT_CONNECTOR_REDIRECT_URI);

        assert.equal(response.status, 201);
        clientId = json.client_id;
      });

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const pkce = createPkcePair();
        const authorizeResponse = await fetch(`${baseUrl}/oauth/authorize`, {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          redirect: "manual",
          body: authorizeBodyWithPkce({
            clientId,
            redirectUri: CHATGPT_CONNECTOR_REDIRECT_URI,
            codeChallenge: pkce.codeChallenge
          })
        });

        assert.equal(authorizeResponse.status, 302);
        const location = authorizeResponse.headers.get("location");
        assert.equal(typeof location, "string");
        assert.match(location, /^https:\/\/chatgpt\.com\/connector\/oauth\/test-connector\?/);
        assert.ok(extractAuthorizationCode(location));
      });
    }
  },
  {
    name: "authorization code survives service recreation when OAUTH_JWT_PRIVATE_KEY is stable",
    async run() {
      const oauthConfig = {
        oauth: {
          jwtPrivateKey: STABLE_TEST_JWT_PRIVATE_KEY,
          allowedRedirectUris: [ALLOWLISTED_REDIRECT_URI, CHATGPT_CONNECTOR_REDIRECT_URI]
        }
      };
      let clientId = "";
      let authorizationCode = "";
      let codeVerifier = "";

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const registration = await registerClient(baseUrl, CHATGPT_CONNECTOR_REDIRECT_URI);
        const pkce = createPkcePair();
        const authorizeResponse = await fetch(`${baseUrl}/oauth/authorize`, {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          redirect: "manual",
          body: authorizeBodyWithPkce({
            clientId: registration.json.client_id,
            redirectUri: CHATGPT_CONNECTOR_REDIRECT_URI,
            codeChallenge: pkce.codeChallenge
          })
        });

        assert.equal(authorizeResponse.status, 302);
        clientId = registration.json.client_id;
        codeVerifier = pkce.codeVerifier;
        authorizationCode = extractAuthorizationCode(authorizeResponse.headers.get("location"));
        assert.ok(authorizationCode);
      });

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const tokenResponse = await fetch(`${baseUrl}/oauth/token`, {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          body: new URLSearchParams({
            grant_type: "authorization_code",
            client_id: clientId,
            redirect_uri: CHATGPT_CONNECTOR_REDIRECT_URI,
            code: authorizationCode,
            code_verifier: codeVerifier
          })
        });
        const json = await tokenResponse.json();

        assert.equal(tokenResponse.status, 200);
        assert.equal(typeof json.access_token, "string");
        assert.equal(typeof json.id_token, "string");
      });
    }
  },
  {
    name: "authorization code survives service recreation when GITHUB_PRIVATE_KEY fallback is stable",
    async run() {
      const oauthConfig = {
        github: {
          privateKey: STABLE_TEST_JWT_PRIVATE_KEY
        },
        oauth: {
          allowedRedirectUris: [ALLOWLISTED_REDIRECT_URI, CHATGPT_CONNECTOR_REDIRECT_URI]
        }
      };
      let clientId = "";
      let authorizationCode = "";
      let codeVerifier = "";

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const registration = await registerClient(baseUrl, CHATGPT_CONNECTOR_REDIRECT_URI);
        const pkce = createPkcePair();
        const authorizeResponse = await fetch(`${baseUrl}/oauth/authorize`, {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          redirect: "manual",
          body: authorizeBodyWithPkce({
            clientId: registration.json.client_id,
            redirectUri: CHATGPT_CONNECTOR_REDIRECT_URI,
            codeChallenge: pkce.codeChallenge
          })
        });

        assert.equal(authorizeResponse.status, 302);
        clientId = registration.json.client_id;
        codeVerifier = pkce.codeVerifier;
        authorizationCode = extractAuthorizationCode(authorizeResponse.headers.get("location"));
        assert.ok(authorizationCode);
      });

      await withOAuthServer(oauthConfig, async ({ baseUrl }) => {
        const tokenResponse = await fetch(`${baseUrl}/oauth/token`, {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          body: new URLSearchParams({
            grant_type: "authorization_code",
            client_id: clientId,
            redirect_uri: CHATGPT_CONNECTOR_REDIRECT_URI,
            code: authorizationCode,
            code_verifier: codeVerifier
          })
        });
        const json = await tokenResponse.json();

        assert.equal(tokenResponse.status, 200);
        assert.equal(typeof json.access_token, "string");
        assert.equal(typeof json.id_token, "string");
      });
    }
  },
  {
    name: "authorization code remains single-use within the same process",
    async run() {
      await withOAuthServer(
        {
          oauth: {
            jwtPrivateKey: STABLE_TEST_JWT_PRIVATE_KEY
          }
        },
        async ({ baseUrl }) => {
          const registration = await registerClient(baseUrl);
          const pkce = createPkcePair();
          const authorizeResponse = await fetch(`${baseUrl}/oauth/authorize`, {
            method: "POST",
            headers: {
              Accept: "application/json",
              "Content-Type": "application/x-www-form-urlencoded"
            },
            redirect: "manual",
            body: authorizeBodyWithPkce({
              clientId: registration.json.client_id,
              codeChallenge: pkce.codeChallenge
            })
          });
          const authorizationCode = extractAuthorizationCode(authorizeResponse.headers.get("location"));

          const exchangeToken = async () => fetch(`${baseUrl}/oauth/token`, {
            method: "POST",
            headers: {
              Accept: "application/json",
              "Content-Type": "application/x-www-form-urlencoded"
            },
            body: new URLSearchParams({
              grant_type: "authorization_code",
              client_id: registration.json.client_id,
              redirect_uri: ALLOWLISTED_REDIRECT_URI,
              code: authorizationCode,
              code_verifier: pkce.codeVerifier
            })
          });

          const firstTokenResponse = await exchangeToken();
          const firstJson = await firstTokenResponse.json();
          assert.equal(firstTokenResponse.status, 200);
          assert.equal(typeof firstJson.access_token, "string");

          const secondTokenResponse = await exchangeToken();
          const secondJson = await secondTokenResponse.json();
          assert.equal(secondTokenResponse.status, 400);
          assert.equal(
            secondJson.error_description,
            "Authorization code is missing, expired, or already used."
          );
        }
      );
    }
  }
];

let failures = 0;

for (const testCase of cases) {
  try {
    await testCase.run();
    console.log(`PASS ${testCase.name}`);
  } catch (error) {
    failures += 1;
    console.error(`FAIL ${testCase.name}`);
    console.error(error?.stack || error?.message || String(error));
  }
}

if (failures > 0) {
  process.exit(1);
}

console.log(`PASS ${cases.length}/${cases.length} OAuth redirect allowlist checks`);
