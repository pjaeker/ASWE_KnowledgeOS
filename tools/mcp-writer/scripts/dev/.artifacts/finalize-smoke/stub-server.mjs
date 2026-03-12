import { createApp } from "../../../../src/server.js";

const port = Number(process.env.STUB_PORT || "4310");
const config = {
  serviceName: "aswe-mcp-writer",
  serviceVersion: "0.2.0",
  nodeEnv: "test",
  publicBaseUrl: "",
  railwayPublicDomain: "",
  mcpBasePath: "/mcp",
  oauthBasePath: "/oauth",
  mcpProtocolVersion: "2025-03-26",
  mcpSharedSecret: "test-secret",
  policy: {
    allowedRepos: ["pjaeker/ASWE_KnowledgeOS"],
    allowedPaths: ["meta/", "blackboard/", "handbook/", "templates-harness/"],
    blockedPaths: [".github/workflows/", "infra/", "secrets/", ".env"],
    defaultBaseBranch: "main",
    defaultDraftPr: true,
    maxFiles: 10,
    maxDiffLines: 3000
  }
};

const app = createApp({ config, github: {} });
const server = app.listen(port, () => {
  console.log(`stub-listening:${port}`);
});

process.on("SIGTERM", () => server.close(() => process.exit(0)));
process.on("SIGINT", () => server.close(() => process.exit(0)));

