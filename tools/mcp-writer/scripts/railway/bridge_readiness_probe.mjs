#!/usr/bin/env node

import crypto from "crypto";
import fs from "fs";
import path from "path";
import process from "process";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const DEFAULTS = {
  clientName: "ChatGPT Connector",
  redirectUri: "https://chat.openai.com/aip/callback",
  scope: "openid mcp.read",
  readRepo: "pjaeker/ASWE_KnowledgeOS",
  readPath: "blackboard/"
};

const TOKEN_RESPONSE_KEYS = ["access_token", "id_token", "refresh_token"];
const REDIRECT_QUERY_KEYS = ["code", "state"];

function printUsage() {
  console.log(`Usage:
  node tools/mcp-writer/scripts/railway/bridge_readiness_probe.mjs --base-url <url> [options]

Options:
  --base-url <url>       Required base URL of the deployed writer
  --out-dir <path>       Optional artifact directory
  --plan-only            Print the planned probe set and exit
  --probe-dcr            Include dynamic client registration probe
  --full-auth            Run DCR + authorization code + token + MCP initialize
  --read-smoke           After acquiring or receiving a token, call list_tree
  --access-token <token> Reuse an existing access token instead of running full auth
  --client-name <name>   OAuth client name for DCR
  --redirect-uri <uri>   Redirect URI for DCR and authorization flow
  --scope <scope>        Requested scope (default: "${DEFAULTS.scope}")
  --read-repo <repo>     Repo for list_tree smoke (default: "${DEFAULTS.readRepo}")
  --read-path <path>     Path for list_tree smoke (default: "${DEFAULTS.readPath}")
  --help                 Show this message

Examples:
  node tools/mcp-writer/scripts/railway/bridge_readiness_probe.mjs --base-url https://writer.example.com
  node tools/mcp-writer/scripts/railway/bridge_readiness_probe.mjs --base-url https://writer.example.com --full-auth --read-smoke
  node tools/mcp-writer/scripts/railway/bridge_readiness_probe.mjs --base-url https://writer.example.com --access-token <token> --read-smoke
`);
}

function failUsage(message) {
  if (message) {
    console.error(message);
    console.error("");
  }
  printUsage();
  process.exit(2);
}

function readOption(argv, index, name) {
  const value = argv[index + 1];
  if (!value || value.startsWith("--")) {
    failUsage(`Missing value for ${name}`);
  }
  return value;
}

function parseArgs(argv) {
  const options = {
    baseUrl: "",
    outDir: "",
    planOnly: false,
    probeDcr: false,
    fullAuth: false,
    readSmoke: false,
    accessToken: "",
    clientName: DEFAULTS.clientName,
    redirectUri: DEFAULTS.redirectUri,
    scope: DEFAULTS.scope,
    readRepo: DEFAULTS.readRepo,
    readPath: DEFAULTS.readPath
  };

  for (let index = 0; index < argv.length; index += 1) {
    const arg = argv[index];

    switch (arg) {
      case "--base-url":
        options.baseUrl = readOption(argv, index, arg);
        index += 1;
        break;
      case "--out-dir":
        options.outDir = readOption(argv, index, arg);
        index += 1;
        break;
      case "--access-token":
        options.accessToken = readOption(argv, index, arg);
        index += 1;
        break;
      case "--client-name":
        options.clientName = readOption(argv, index, arg);
        index += 1;
        break;
      case "--redirect-uri":
        options.redirectUri = readOption(argv, index, arg);
        index += 1;
        break;
      case "--scope":
        options.scope = readOption(argv, index, arg);
        index += 1;
        break;
      case "--read-repo":
        options.readRepo = readOption(argv, index, arg);
        index += 1;
        break;
      case "--read-path":
        options.readPath = readOption(argv, index, arg);
        index += 1;
        break;
      case "--plan-only":
        options.planOnly = true;
        break;
      case "--probe-dcr":
        options.probeDcr = true;
        break;
      case "--full-auth":
        options.fullAuth = true;
        options.probeDcr = true;
        break;
      case "--read-smoke":
        options.readSmoke = true;
        break;
      case "--help":
      case "-h":
        printUsage();
        process.exit(0);
        break;
      default:
        failUsage(`Unknown argument: ${arg}`);
        break;
    }
  }

  if (!options.baseUrl) {
    failUsage("--base-url is required");
  }

  return options;
}

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

function joinUrl(left, right) {
  return `${stripTrailingSlash(left)}${ensureLeadingSlash(right)}`;
}

function formatTimestamp(date) {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");
  const hours = String(date.getHours()).padStart(2, "0");
  const minutes = String(date.getMinutes()).padStart(2, "0");
  const seconds = String(date.getSeconds()).padStart(2, "0");
  return `${year}${month}${day}-${hours}${minutes}${seconds}`;
}

function ensureDir(targetPath) {
  fs.mkdirSync(targetPath, { recursive: true });
}

function writeText(filePath, value) {
  ensureDir(path.dirname(filePath));
  fs.writeFileSync(filePath, String(value ?? ""), "utf8");
}

function parseJsonSafely(bodyText) {
  if (!String(bodyText || "").trim()) {
    return null;
  }

  try {
    return JSON.parse(bodyText);
  } catch {
    return null;
  }
}

function headersToObject(headers) {
  const result = {};

  for (const [key, value] of headers.entries()) {
    result[key] = value;
  }

  return result;
}

function headersToText(headerMap) {
  return Object.entries(headerMap)
    .map(([key, value]) => `${key}: ${value}`)
    .join("\n");
}

function toProbeResult({ name, required, method, url, expectedStatus }) {
  return {
    name,
    required: Boolean(required),
    method,
    url,
    expectedStatus,
    status: null,
    passed: false,
    notes: []
  };
}

function redactUrlQuery(urlValue, keys) {
  try {
    const parsedUrl = new URL(String(urlValue || ""));
    for (const key of keys) {
      if (parsedUrl.searchParams.has(key)) {
        parsedUrl.searchParams.set(key, "<redacted>");
      }
    }
    return parsedUrl.toString();
  } catch {
    return String(urlValue || "");
  }
}

function sanitizeTokenBody(jsonBody, fallbackBody) {
  if (!jsonBody || typeof jsonBody !== "object" || Array.isArray(jsonBody)) {
    return fallbackBody;
  }

  const clone = JSON.parse(JSON.stringify(jsonBody));
  for (const key of TOKEN_RESPONSE_KEYS) {
    if (key in clone) {
      clone[key] = "<redacted>";
    }
  }

  return JSON.stringify(clone, null, 2);
}

function mentionsRedirectAllowlist(bodyText) {
  return String(bodyText || "").includes("allowlisted");
}

function defaultSanitizeArtifacts({ name, headerMap, bodyText, jsonBody }) {
  const sanitizedHeaders = { ...headerMap };
  let sanitizedBody = bodyText;

  if (name === "authorize-approve" && sanitizedHeaders.location) {
    sanitizedHeaders.location = redactUrlQuery(
      sanitizedHeaders.location,
      REDIRECT_QUERY_KEYS
    );
  }

  if (name === "token") {
    sanitizedBody = sanitizeTokenBody(jsonBody, bodyText);
  }

  return {
    headerMap: sanitizedHeaders,
    bodyText: sanitizedBody
  };
}

async function invokeProbe({
  index,
  name,
  method,
  url,
  expectedStatus = [],
  headers = {},
  body = undefined,
  required = false,
  redirect = "follow",
  outDir,
  assertion = () => [],
  sanitizeArtifacts = defaultSanitizeArtifacts
}) {
  const result = toProbeResult({ name, required, method, url, expectedStatus });
  const prefix = `${String(index).padStart(2, "0")}-${name}`;
  const statusPath = path.join(outDir, `${prefix}.status.txt`);
  const headersPath = path.join(outDir, `${prefix}.headers.txt`);
  const bodyPath = path.join(outDir, `${prefix}.body.txt`);
  const errorPath = path.join(outDir, `${prefix}.error.txt`);

  let responseBody = "";
  let headerMap = {};
  let jsonBody = null;

  try {
    const controller = new AbortController();
    const timeout = setTimeout(() => controller.abort(), 20_000);

    const request = {
      method,
      headers,
      redirect,
      signal: controller.signal
    };

    if (body !== undefined && body !== null && !["GET", "HEAD"].includes(method)) {
      request.body = body;
    }

    const response = await fetch(url, request);
    clearTimeout(timeout);

    responseBody = await response.text();
    headerMap = headersToObject(response.headers);
    jsonBody = parseJsonSafely(responseBody);
    result.status = response.status;

    const artifacts = sanitizeArtifacts({
      name,
      headerMap,
      bodyText: responseBody,
      jsonBody
    });

    writeText(statusPath, String(response.status));
    writeText(headersPath, headersToText(artifacts.headerMap));
    writeText(bodyPath, artifacts.bodyText);

    if (expectedStatus.length > 0 && !expectedStatus.includes(response.status)) {
      result.notes.push(
        `Expected HTTP status in [${expectedStatus.join(", ")}], got ${response.status}.`
      );
    }

    const assertionNotes = await assertion(response, headerMap, responseBody, jsonBody);
    if (Array.isArray(assertionNotes)) {
      result.notes.push(...assertionNotes.filter(Boolean));
    } else if (assertionNotes) {
      result.notes.push(String(assertionNotes));
    }
  } catch (error) {
    const message =
      error?.cause?.message ? `${error.message} :: ${error.cause.message}` : error.message;
    writeText(statusPath, "REQUEST_ERROR");
    writeText(headersPath, "");
    writeText(bodyPath, "");
    writeText(errorPath, message);
    result.notes.push(`Request failed: ${message}`);
  }

  result.passed = result.notes.length === 0;

  return {
    result,
    headerMap,
    bodyText: responseBody,
    jsonBody
  };
}

function writeSkippedProbe({ index, name, method, url, required, outDir, note }) {
  const result = toProbeResult({
    name,
    required,
    method,
    url,
    expectedStatus: []
  });
  const prefix = `${String(index).padStart(2, "0")}-${name}`;
  writeText(path.join(outDir, `${prefix}.status.txt`), "SKIPPED");
  writeText(path.join(outDir, `${prefix}.headers.txt`), "");
  writeText(path.join(outDir, `${prefix}.body.txt`), "");
  writeText(path.join(outDir, `${prefix}.error.txt`), note);
  result.notes.push(note);
  result.passed = false;
  return result;
}

function createPkcePair() {
  const codeVerifier = crypto.randomBytes(32).toString("base64url");
  const codeChallenge = crypto
    .createHash("sha256")
    .update(codeVerifier)
    .digest("base64url");

  return { codeVerifier, codeChallenge };
}

function buildPlan(options, outDir) {
  const plan = {
    baseUrl: stripTrailingSlash(options.baseUrl),
    outDir,
    required: [
      "/healthz",
      "/.well-known/oauth-protected-resource",
      "/oauth/.well-known/openid-configuration",
      "/oauth/.well-known/oauth-authorization-server",
      "/oauth/jwks",
      "POST /mcp without token"
    ],
    optional: []
  };

  if (options.probeDcr) {
    plan.optional.push("POST /oauth/register");
  }

  if (options.fullAuth) {
    plan.optional.push("POST /oauth/authorize with PKCE approval");
    plan.optional.push("POST /oauth/token");
    plan.optional.push("POST /mcp initialize with Bearer token");
  }

  if (options.accessToken) {
    plan.optional.push("POST /mcp initialize with provided Bearer token");
  }

  if (options.readSmoke) {
    plan.optional.push("POST /mcp tools/call list_tree");
  }

  return plan;
}

function resultNotesContain(result, pattern) {
  const notes = Array.isArray(result?.notes) ? result.notes : [];
  return notes.some((note) => pattern.test(String(note || "")));
}

function getResultByName(results, name) {
  return results.find((result) => result.name === name) || null;
}

function getFailedProbeNames(results, predicate = () => true) {
  return results
    .filter((result) => !result.passed && predicate(result))
    .map((result) => result.name);
}

function classifyBootstrapSummary(results, options) {
  const coreBootstrapProbeNames = [
    "healthz",
    "protected-resource",
    "openid-configuration",
    "oauth-authorization-server",
    "jwks",
    "mcp-missing-token"
  ];
  const dcrBlockedByRedirectAllowlist = results.some(
    (result) =>
      result.name === "dcr-register" && resultNotesContain(result, /OAUTH_ALLOWED_REDIRECT_URIS|allowlist/i)
  );
  const authorizeBlockedByRedirectAllowlist = results.some(
    (result) =>
      result.name === "authorize-approve" &&
      resultNotesContain(result, /OAUTH_ALLOWED_REDIRECT_URIS|allowlist/i)
  );
  const authorizeBlockedByDevSubject = results.some(
    (result) => result.name === "authorize-approve" && resultNotesContain(result, /OAUTH_DEV_SUBJECT/i)
  );
  const dcrResult = getResultByName(results, "dcr-register");
  const coreBootstrapGreen = coreBootstrapProbeNames.every(
    (name) => getResultByName(results, name)?.passed === true
  );
  const failedRequiredProbeNames = getFailedProbeNames(results, (result) => result.required);
  const failedOptionalProbeNames = getFailedProbeNames(results, (result) => !result.required);

  let primary = "green";
  let reason = "All requested bridge bootstrap probes passed.";

  if (dcrBlockedByRedirectAllowlist || authorizeBlockedByRedirectAllowlist) {
    primary = "allowlist-mismatch";
    reason = `The exact redirect URI '${options.redirectUri}' is not currently allowlisted in OAUTH_ALLOWED_REDIRECT_URIS.`;
  } else if (authorizeBlockedByDevSubject) {
    primary = "missing-dev-subject";
    reason =
      "OAUTH_DEV_SUBJECT is missing, so the development authorization bootstrap cannot issue authorization codes.";
  } else if (options.probeDcr && dcrResult && !dcrResult.passed && coreBootstrapGreen) {
    primary = "dcr-interop-gap";
    reason =
      `Core discovery/bootstrap probes are green, but POST /oauth/register still failed for redirect URI '${options.redirectUri}'.`;
  } else if (failedRequiredProbeNames.length > 0 || failedOptionalProbeNames.length > 0) {
    primary = "other-oauth-bootstrap-gap";
    reason =
      "At least one requested OAuth/bootstrap probe failed outside the redirect allowlist and OAUTH_DEV_SUBJECT guardrails.";
  }

  return {
    primary,
    reason,
    coreBootstrapGreen,
    failedRequiredProbeNames,
    failedOptionalProbeNames,
    flags: {
      dcrBlockedByRedirectAllowlist,
      authorizeBlockedByRedirectAllowlist,
      authorizeBlockedByDevSubject,
      dcrInteropGap: primary === "dcr-interop-gap",
      otherOauthBootstrapGap: primary === "other-oauth-bootstrap-gap"
    }
  };
}

function extractAuthorizationCode(locationHeader) {
  try {
    return new URL(String(locationHeader || "")).searchParams.get("code") || "";
  } catch {
    return "";
  }
}

function mainReadSmokeBody(options) {
  return JSON.stringify(
    {
      jsonrpc: "2.0",
      id: 2,
      method: "tools/call",
      params: {
        name: "list_tree",
        arguments: {
          repo: options.readRepo,
          path: options.readPath
        }
      }
    },
    null,
    0
  );
}

async function main() {
  const options = parseArgs(process.argv.slice(2));
  const outDir = path.resolve(
    options.outDir ||
      path.join(__dirname, ".artifacts", "bridge-readiness", formatTimestamp(new Date()))
  );

  if (options.planOnly) {
    console.log(JSON.stringify(buildPlan(options, outDir), null, 2));
    return;
  }

  ensureDir(outDir);

  const baseUrl = stripTrailingSlash(options.baseUrl);
  const oauthRoot = joinUrl(baseUrl, "/oauth");
  const mcpUrl = joinUrl(baseUrl, "/mcp");

  const results = [];
  let step = 1;
  let accessToken = options.accessToken;
  let clientId = "";
  let authorizationCode = "";
  let codeVerifier = "";
  let dcrRegistration = null;

  results.push(
    (
      await invokeProbe({
        index: step++,
        name: "healthz",
        method: "GET",
        url: joinUrl(baseUrl, "/healthz"),
        expectedStatus: [200],
        required: true,
        outDir,
        assertion: (response, headerMap, bodyText, jsonBody) => {
          const notes = [];

          if (!jsonBody) {
            notes.push("Expected JSON body from /healthz.");
            return notes;
          }

          if (jsonBody.ok !== true) {
            notes.push("Expected /healthz to return ok=true.");
          }

          return notes;
        }
      })
    ).result
  );

  results.push(
    (
      await invokeProbe({
        index: step++,
        name: "protected-resource",
        method: "GET",
        url: joinUrl(baseUrl, "/.well-known/oauth-protected-resource"),
        expectedStatus: [200],
        required: true,
        outDir,
        assertion: (response, headerMap, bodyText, jsonBody) => {
          const notes = [];

          if (!jsonBody) {
            notes.push("Expected protected-resource metadata JSON.");
            return notes;
          }

          if (jsonBody.resource !== mcpUrl) {
            notes.push(`resource should equal '${mcpUrl}'.`);
          }

          if (!Array.isArray(jsonBody.authorization_servers)) {
            notes.push("authorization_servers should be an array.");
          } else if (!jsonBody.authorization_servers.includes(oauthRoot)) {
            notes.push(`authorization_servers should include '${oauthRoot}'.`);
          }

          return notes;
        }
      })
    ).result
  );

  results.push(
    (
      await invokeProbe({
        index: step++,
        name: "openid-configuration",
        method: "GET",
        url: joinUrl(baseUrl, "/oauth/.well-known/openid-configuration"),
        expectedStatus: [200],
        required: true,
        outDir,
        assertion: (response, headerMap, bodyText, jsonBody) => {
          const notes = [];

          if (!jsonBody) {
            notes.push("Expected OpenID metadata JSON.");
            return notes;
          }

          if (jsonBody.issuer !== oauthRoot) {
            notes.push(`issuer should equal '${oauthRoot}'.`);
          }

          if (!jsonBody.authorization_endpoint) {
            notes.push("authorization_endpoint is missing.");
          }

          if (!jsonBody.token_endpoint) {
            notes.push("token_endpoint is missing.");
          }

          return notes;
        }
      })
    ).result
  );

  results.push(
    (
      await invokeProbe({
        index: step++,
        name: "oauth-authorization-server",
        method: "GET",
        url: joinUrl(baseUrl, "/oauth/.well-known/oauth-authorization-server"),
        expectedStatus: [200],
        required: true,
        outDir,
        assertion: (response, headerMap, bodyText, jsonBody) => {
          const notes = [];

          if (!jsonBody) {
            notes.push("Expected OAuth authorization-server JSON.");
            return notes;
          }

          if (jsonBody.issuer !== oauthRoot) {
            notes.push(`issuer should equal '${oauthRoot}'.`);
          }

          return notes;
        }
      })
    ).result
  );

  results.push(
    (
      await invokeProbe({
        index: step++,
        name: "jwks",
        method: "GET",
        url: joinUrl(baseUrl, "/oauth/jwks"),
        expectedStatus: [200],
        required: true,
        outDir,
        assertion: (response, headerMap, bodyText, jsonBody) => {
          const notes = [];

          if (!jsonBody) {
            notes.push("Expected JWKS JSON.");
            return notes;
          }

          if (!Array.isArray(jsonBody.keys) || jsonBody.keys.length === 0) {
            notes.push("Expected at least one JWK.");
          }

          return notes;
        }
      })
    ).result
  );

  results.push(
    (
      await invokeProbe({
        index: step++,
        name: "mcp-missing-token",
        method: "POST",
        url: mcpUrl,
        expectedStatus: [401],
        required: true,
        outDir,
        headers: {
          Accept: "application/json, text/event-stream",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          jsonrpc: "2.0",
          id: 1,
          method: "initialize",
          params: {}
        }),
        assertion: (response, headerMap) => {
          const notes = [];
          if (!headerMap["www-authenticate"]) {
            notes.push("Missing WWW-Authenticate header on unauthorized MCP request.");
          }
          return notes;
        }
      })
    ).result
  );

  if (options.probeDcr) {
    const dcrProbe = await invokeProbe({
      index: step++,
      name: "dcr-register",
      method: "POST",
      url: joinUrl(baseUrl, "/oauth/register"),
      expectedStatus: [201],
      required: Boolean(options.fullAuth),
      outDir,
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        client_name: options.clientName,
        redirect_uris: [options.redirectUri],
        scope: options.scope,
        grant_types: ["authorization_code"],
        response_types: ["code"],
        token_endpoint_auth_method: "none"
      }),
      assertion: (response, headerMap, bodyText, jsonBody) => {
        const notes = [];

        if (response.status === 400 && mentionsRedirectAllowlist(bodyText)) {
          notes.push("DCR redirect URI rejected by deployment allowlist; OAUTH_ALLOWED_REDIRECT_URIS may be unset or missing this callback.");
          return notes;
        }

        if (!jsonBody) {
          notes.push("Expected DCR response JSON.");
          return notes;
        }

        if (!jsonBody.client_id) {
          notes.push("Expected client_id in DCR response.");
        }

        return notes;
      }
    });

    results.push(dcrProbe.result);
    clientId = String(dcrProbe.jsonBody?.client_id || "");
    dcrRegistration = {
      attempted: true,
      succeeded: Boolean(clientId),
      clientId: clientId || null,
      clientName: String(dcrProbe.jsonBody?.client_name || options.clientName || ""),
      redirectUris: Array.isArray(dcrProbe.jsonBody?.redirect_uris)
        ? dcrProbe.jsonBody.redirect_uris
        : [],
      tokenEndpointAuthMethod: dcrProbe.jsonBody?.token_endpoint_auth_method || null
    };
  }

  if (!dcrRegistration) {
    dcrRegistration = {
      attempted: Boolean(options.probeDcr),
      succeeded: false,
      clientId: null,
      clientName: options.clientName,
      redirectUris: [],
      tokenEndpointAuthMethod: null
    };
  }

  if (options.fullAuth) {
    if (!clientId) {
      results.push(
        writeSkippedProbe({
          index: step++,
          name: "authorize-approve",
          method: "POST",
          url: joinUrl(baseUrl, "/oauth/authorize"),
          required: true,
          outDir,
          note: "Skipped because DCR did not produce a usable client_id."
        })
      );
    } else {
      const pkce = createPkcePair();
      codeVerifier = pkce.codeVerifier;
      const oauthState = crypto.randomBytes(16).toString("hex");
      const nonce = crypto.randomBytes(16).toString("hex");

      const authorizeProbe = await invokeProbe({
        index: step++,
        name: "authorize-approve",
        method: "POST",
        url: joinUrl(baseUrl, "/oauth/authorize"),
        expectedStatus: [302],
        required: true,
        outDir,
        redirect: "manual",
        headers: {
          Accept: "text/html, application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: new URLSearchParams({
          client_id: clientId,
          redirect_uri: options.redirectUri,
          response_type: "code",
          scope: options.scope,
          state: oauthState,
          nonce,
          code_challenge: pkce.codeChallenge,
          code_challenge_method: "S256",
          decision: "approve"
        }).toString(),
        assertion: (response, headerMap, bodyText, jsonBody) => {
          const notes = [];
          const location = String(headerMap.location || "");

          if (response.status === 400 && mentionsRedirectAllowlist(bodyText)) {
            notes.push("Authorization redirect URI rejected by deployment allowlist; OAUTH_ALLOWED_REDIRECT_URIS may be unset or missing this callback.");
            return notes;
          }

          if (response.status === 503) {
            notes.push("Authorization bootstrap unavailable; OAUTH_DEV_SUBJECT may be unset.");
            return notes;
          }

          if (!location) {
            notes.push("Expected redirect Location header from /oauth/authorize.");
            return notes;
          }

          const returnedCode = extractAuthorizationCode(location);
          if (!returnedCode) {
            notes.push("Expected authorization code in redirect Location header.");
          }

          return notes;
        }
      });

      results.push(authorizeProbe.result);
      authorizationCode = extractAuthorizationCode(authorizeProbe.headerMap.location);
    }

    if (!authorizationCode || !codeVerifier) {
      results.push(
        writeSkippedProbe({
          index: step++,
          name: "token",
          method: "POST",
          url: joinUrl(baseUrl, "/oauth/token"),
          required: true,
          outDir,
          note: "Skipped because authorization code flow did not complete."
        })
      );
    } else {
      const tokenProbe = await invokeProbe({
        index: step++,
        name: "token",
        method: "POST",
        url: joinUrl(baseUrl, "/oauth/token"),
        expectedStatus: [200],
        required: true,
        outDir,
        headers: {
          Accept: "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: new URLSearchParams({
          grant_type: "authorization_code",
          client_id: clientId,
          redirect_uri: options.redirectUri,
          code: authorizationCode,
          code_verifier: codeVerifier
        }).toString(),
        assertion: (response, headerMap, bodyText, jsonBody) => {
          const notes = [];

          if (!jsonBody) {
            notes.push("Expected token response JSON.");
            return notes;
          }

          if (!jsonBody.access_token) {
            notes.push("Expected access_token in token response.");
          }

          if (options.scope.split(/\s+/).includes("openid") && !jsonBody.id_token) {
            notes.push("Expected id_token when requesting openid scope.");
          }

          return notes;
        }
      });

      results.push(tokenProbe.result);
      accessToken = String(tokenProbe.jsonBody?.access_token || "");
    }
  }

  if (accessToken) {
    results.push(
      (
        await invokeProbe({
          index: step++,
          name: "mcp-initialize",
          method: "POST",
          url: mcpUrl,
          expectedStatus: [200],
          required: true,
          outDir,
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
            Authorization: `Bearer ${accessToken}`
          },
          body: JSON.stringify({
            jsonrpc: "2.0",
            id: 1,
            method: "initialize",
            params: {}
          }),
          assertion: (response, headerMap, bodyText, jsonBody) => {
            const notes = [];

            if (!jsonBody) {
              notes.push("Expected MCP initialize JSON-RPC response.");
              return notes;
            }

            if (jsonBody.jsonrpc !== "2.0") {
              notes.push("Expected jsonrpc='2.0' in initialize response.");
            }

            if (!jsonBody.result?.protocolVersion) {
              notes.push("Expected protocolVersion in initialize result.");
            }

            return notes;
          }
        })
      ).result
    );
  } else if (options.accessToken || options.fullAuth) {
    results.push(
      writeSkippedProbe({
        index: step++,
        name: "mcp-initialize",
        method: "POST",
        url: mcpUrl,
        required: true,
        outDir,
        note: "Skipped because no usable access token is available."
      })
    );
  }

  if (options.readSmoke) {
    if (!accessToken) {
      results.push(
        writeSkippedProbe({
          index: step++,
          name: "mcp-read-smoke",
          method: "POST",
          url: mcpUrl,
          required: true,
          outDir,
          note: "Skipped because no usable access token is available for list_tree."
        })
      );
    } else {
      results.push(
        (
          await invokeProbe({
            index: step++,
            name: "mcp-read-smoke",
            method: "POST",
            url: mcpUrl,
            expectedStatus: [200],
            required: true,
            outDir,
            headers: {
              Accept: "application/json",
              "Content-Type": "application/json",
              Authorization: `Bearer ${accessToken}`
            },
            body: mainReadSmokeBody(options),
            assertion: (response, headerMap, bodyText, jsonBody) => {
              const notes = [];

              if (!jsonBody) {
                notes.push("Expected JSON-RPC read response.");
                return notes;
              }

              if (jsonBody.jsonrpc !== "2.0") {
                notes.push("Expected jsonrpc='2.0' in read response.");
              }

              if (jsonBody.error) {
                notes.push(
                  `Expected successful list_tree response, got error: ${jsonBody.error.message || "unknown"}`
                );
              }

              if (!jsonBody.result) {
                notes.push("Expected result object in list_tree response.");
              }

              return notes;
            }
          })
        ).result
      );
    }
  }

  const classification = classifyBootstrapSummary(results, options);
  const summary = {
    baseUrl,
    outDir,
    input: {
      clientName: options.clientName,
      redirectUri: options.redirectUri,
      scope: options.scope,
      readRepo: options.readRepo,
      readPath: options.readPath
    },
    mode: {
      probeDcr: options.probeDcr,
      fullAuth: options.fullAuth,
      readSmoke: options.readSmoke,
      accessTokenProvided: Boolean(options.accessToken)
    },
    classification,
    flags: {
      ...classification.flags
    },
    dcrRegistration,
    chatgptCustomClient: {
      ready: Boolean(dcrRegistration.clientId),
      clientId: dcrRegistration.clientId,
      tokenEndpointAuthMethod: dcrRegistration.tokenEndpointAuthMethod,
      redirectUri: options.redirectUri,
      note: dcrRegistration.clientId
        ? "If ChatGPT UI DCR still misbehaves, reuse this public client_id with the static 'Benutzerdefinierter OAuth-Client' path."
        : ""
    },
    passed: results.filter((result) => result.passed).length,
    failed: results.filter((result) => !result.passed).length,
    results
  };

  writeText(path.join(outDir, "summary.json"), JSON.stringify(summary, null, 2));
  console.log(JSON.stringify(summary, null, 2));

  if (results.some((result) => result.required && !result.passed)) {
    process.exitCode = 1;
  }
}

main().catch((error) => {
  console.error(error?.stack || error?.message || String(error));
  process.exit(1);
});
