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
  const configuredMcpSharedSecret = optional("MCP_SHARED_SECRET", "");
  const oauthJwtPrivateKey = normalizeMultilineSecret(optional("OAUTH_JWT_PRIVATE_KEY", ""));

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
      privateKey: normalizeMultilineSecret(privateKeyRaw)
    },
    oauth: {
      devSubject: optional("OAUTH_DEV_SUBJECT", ""),
      defaultScope: optional("OAUTH_DEFAULT_SCOPE", "openid mcp"),
      codeTtlSeconds: optionalNumber("OAUTH_CODE_TTL_SECONDS", 600),
      tokenTtlSeconds: optionalNumber("OAUTH_TOKEN_TTL_SECONDS", 3600),
      registrationEnabled: optional("OAUTH_DCR_ENABLED", "true").toLowerCase() !== "false",
      jwtPrivateKey: oauthJwtPrivateKey
    },
    policy
  };
}

