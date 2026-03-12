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

export function loadConfig() {
  const policyFile = optional("POLICY_FILE", "./policy.json");
  const resolvedPolicyFile = path.resolve(process.cwd(), policyFile);

  if (!fs.existsSync(resolvedPolicyFile)) {
    throw new HttpError(500, `Policy file not found: ${resolvedPolicyFile}`);
  }

  const rawPolicy = fs.readFileSync(resolvedPolicyFile, "utf8");
  const policy = JSON.parse(rawPolicy);

  const privateKeyRaw = required("GITHUB_PRIVATE_KEY");
  const privateKey = privateKeyRaw.includes("\n")
    ? privateKeyRaw.replace(/\\n/g, "\n")
    : privateKeyRaw;
  const mcpSharedSecret = optional("MCP_SHARED_SECRET", "");

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
    mcpSharedSecret,
    github: {
      appId: required("GITHUB_APP_ID"),
      installationId: required("GITHUB_INSTALLATION_ID"),
      privateKey
    },
    policy
  };
}
