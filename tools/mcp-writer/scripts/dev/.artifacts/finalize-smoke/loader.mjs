import { pathToFileURL } from "node:url";

const stubUrl = pathToFileURL("C:/Users/PJ/.codex/worktrees/0eff/ASWE_KnowledgeOS/tools/mcp-writer/scripts/dev/.artifacts/finalize-smoke/express-stub.mjs").href;

export async function resolve(specifier, context, defaultResolve) {
  if (specifier === "express") {
    return {
      url: stubUrl,
      shortCircuit: true
    };
  }

  return defaultResolve(specifier, context, defaultResolve);
}
