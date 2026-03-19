import crypto from "crypto";
import fs from "fs";
import path from "path";
import { HttpError } from "./errors.js";

function required(name) {
  const value = process.env[name];
  if (!value) {
    throw new HttpError(500, `Missing required environment variable: ${name}`);
  }
  return value;
}

function optional(name, fallback = "") {
  return process.env[name] || fallback;
}

function optionalNumber(name, fallback) {
  const rawValue = optional(name, String(fallback));
  const parsedValue = Number(rawValue);

  if (!Number.isFinite(parsedValue)) {
    throw new HttpError(500, `Environment variable ${name} must be numeric`);
  }

  return parsedValue;
}

function normalizeAbsoluteUrl(value, sourceLabel) {
  try {
    return new URL(String(value || "")).toString();
  } catch {
    throw new HttpError(500, `${sourceLabel} must contain only absolute URLs`);
  }
}

function optionalAbsoluteUrlList(name) {
  const rawValue = optional(name, "").trim();
  if (!rawValue) {
    return [];
  }

  const values = rawValue
    .split(/\r?\n/)
    .flatMap((line) => line.split(","))
    .map((value) => value.trim())
    .filter(Boolean)
    .map((value) => normalizeAbsoluteUrl(value, `Environment variable ${name}`));

  return [...new Set(values)];
}

function normalizeMultilineSecret(value) {
  const rawValue = String(value || "");
  if (!rawValue) {
    return "";
  }

  return rawValue.replace(/\\n/g, "\n");
}

function createInternalSharedSecret() {
  return crypto.randomBytes(24).toString("hex");
}

export function loadConfig() {
  const policyFile = optional("POLICY_FILE", "./policy.json");
  const resolvedPolicyFile = path.resolve(process.cwd(), policyFile);

  if (!fs.existsSync(resolvedPolicyFile)) {
    throw new HttpError(500, `Policy file not found: ${resolvedPolicyFile}`);
  }

  const rawPolicy = fs.readFileSync(resolvedPolicyFile, "utf8");
  const policy = JSON.parse(rawPolicy);

  const privateKeyRaw = required("GITHUB_PRIVATE_KEY");
  const githubPrivateKey = normalizeMultilineSecret(privateKeyRaw);
  const configuredMcpSharedSecret = optional("MCP_SHARED_SECRET", "");
  const configuredOauthJwtPrivateKey = normalizeMultilineSecret(optional("OAUTH_JWT_PRIVATE_KEY", ""));

  return {
    port: Number(optional("PORT", "3000")),
    nodeEnv: optional("NODE_ENV", "development"),
    serviceName: optional("SERVICE_NAME", "aswe-mcp-writer"),
    serviceVersion: optional("SERVICE_VERSION", "0.2.0"),
    publicBaseUrl: optional("PUBLIC_BASE_URL", ""),
    railwayPublicDomain: optional("RAILWAY_PUBLIC_DOMAIN", ""),
    mcpBasePath: optional("MCP_BASE_PATH", "/mcp"),
    oauthBasePath: optional("OAUTH_BASE_PATH", "/oauth"),
    mcpProtocolVersion: optional("MCP_PROTOCOL_VERSION", "2025-03-26"),
    mcpSharedSecret: configuredMcpSharedSecret || createInternalSharedSecret(),
    mcpSharedSecretProvided: Boolean(configuredMcpSharedSecret),
    github: {
      appId: required("GITHUB_APP_ID"),
      installationId: required("GITHUB_INSTALLATION_ID"),
      privateKey: githubPrivateKey
    },
    oauth: {
      devSubject: optional("OAUTH_DEV_SUBJECT", ""),
      allowedRedirectUris: optionalAbsoluteUrlList("OAUTH_ALLOWED_REDIRECT_URIS"),
      defaultScope: optional("OAUTH_DEFAULT_SCOPE", "openid mcp"),
      codeTtlSeconds: optionalNumber("OAUTH_CODE_TTL_SECONDS", 600),
      tokenTtlSeconds: optionalNumber("OAUTH_TOKEN_TTL_SECONDS", 3600),
      registrationEnabled: optional("OAUTH_DCR_ENABLED", "true").toLowerCase() !== "false",
      jwtPrivateKey: configuredOauthJwtPrivateKey,
      jwtPrivateKeyConfigured: Boolean(configuredOauthJwtPrivateKey),
      jwtPrivateKeySource: configuredOauthJwtPrivateKey
        ? "OAUTH_JWT_PRIVATE_KEY"
        : (githubPrivateKey ? "GITHUB_PRIVATE_KEY" : "generated_ephemeral")
    },
    policy
  };
}

