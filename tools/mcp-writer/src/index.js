import { loadConfig } from "./config.js";
import { GitHubClient } from "./github.js";
import { createApp } from "./server.js";

const config = loadConfig();
const github = new GitHubClient(config.github);
const app = createApp({ config, github });

app.listen(config.port, () => {
  console.log(`ASWE MCP writer listening on port ${config.port}`);
});
