import crypto from "crypto";
import jwt from "jsonwebtoken";
import { HttpError } from "./errors.js";

const API_BASE = "https://api.github.com";

function encodePath(pathValue) {
  return String(pathValue)
    .split("/")
    .filter(Boolean)
    .map(encodeURIComponent)
    .join("/");
}

function parseRepo(repo) {
  const [owner, name] = String(repo || "").split("/");
  if (!owner || !name) {
    throw new HttpError(400, "repo must be in the form owner/name");
  }
  return { owner, name };
}

function sha256(value) {
  return crypto.createHash("sha256").update(value).digest("hex");
}

export class GitHubClient {
  constructor(config) {
    this.appId = config.appId;
    this.installationId = config.installationId;
    this.privateKey = config.privateKey;
    this.cachedToken = null;
    this.cachedTokenExpiresAt = 0;
    this.privateKeyFingerprint = sha256(this.privateKey);
  }

  createAppJwt() {
    const now = Math.floor(Date.now() / 1000);
    return jwt.sign(
      {
        iat: now - 60,
        exp: now + 9 * 60,
        iss: this.appId
      },
      this.privateKey,
      { algorithm: "RS256" }
    );
  }

  async getInstallationToken() {
    const now = Date.now();
    if (this.cachedToken && now < this.cachedTokenExpiresAt - 60_000) {
      return this.cachedToken;
    }

    const appJwt = this.createAppJwt();
    const response = await fetch(
      `${API_BASE}/app/installations/${this.installationId}/access_tokens`,
      {
        method: "POST",
        headers: {
          "Accept": "application/vnd.github+json",
          "Authorization": `Bearer ${appJwt}`,
          "User-Agent": "aswe-mcp-writer"
        }
      }
    );

    const payload = await response.json().catch(() => ({}));

    if (!response.ok) {
      throw new HttpError(
        response.status,
        "Failed to create GitHub installation token",
        payload
      );
    }

    this.cachedToken = payload.token;
    this.cachedTokenExpiresAt = Date.parse(payload.expires_at || new Date(Date.now() + 30 * 60_000).toISOString());
    return this.cachedToken;
  }

  async request(repo, apiPath, options = {}) {
    const token = await this.getInstallationToken();
    const response = await fetch(`${API_BASE}${apiPath}`, {
      method: options.method || "GET",
      headers: {
        "Accept": "application/vnd.github+json",
        "Authorization": `Bearer ${token}`,
        "User-Agent": "aswe-mcp-writer",
        ...(options.body ? { "Content-Type": "application/json" } : {}),
        ...(options.headers || {})
      },
      body: options.body ? JSON.stringify(options.body) : undefined
    });

    const payload = await response.json().catch(() => ({}));
    if (!response.ok) {
      throw new HttpError(response.status, `GitHub API request failed: ${options.method || "GET"} ${apiPath}`, payload);
    }
    return payload;
  }

  async getBranchHeadSha(repo, branch) {
    const { owner, name } = parseRepo(repo);
    const branchData = await this.request(
      repo,
      `/repos/${owner}/${name}/branches/${encodeURIComponent(branch)}`
    );
    return branchData.commit?.sha;
  }

  async createBranch({ repo, base, name }) {
    const { owner, name: repoName } = parseRepo(repo);
    const baseSha = await this.getBranchHeadSha(repo, base);

    if (!baseSha) {
      throw new HttpError(404, `Could not resolve base branch SHA for ${base}`);
    }

    const payload = await this.request(
      repo,
      `/repos/${owner}/${repoName}/git/refs`,
      {
        method: "POST",
        body: {
          ref: `refs/heads/${name}`,
          sha: baseSha
        }
      }
    );

    return {
      repo,
      base,
      name,
      sha: payload.object?.sha || baseSha,
      ref: payload.ref
    };
  }

  async commitFiles({ repo, branch, message, files }) {
    const { owner, name } = parseRepo(repo);

    const headRef = await this.request(
      repo,
      `/repos/${owner}/${name}/git/ref/heads/${encodePath(branch)}`
    );

    const parentCommitSha = headRef.object?.sha;
    if (!parentCommitSha) {
      throw new HttpError(404, `Could not resolve branch head for ${branch}`);
    }

    const parentCommit = await this.request(
      repo,
      `/repos/${owner}/${name}/git/commits/${parentCommitSha}`
    );

    const baseTreeSha = parentCommit.tree?.sha;
    if (!baseTreeSha) {
      throw new HttpError(500, "Could not resolve base tree SHA");
    }

    const treeEntries = files.map((file) => ({
      path: file.path,
      mode: "100644",
      type: "blob",
      content: String(file.content ?? "")
    }));

    const newTree = await this.request(
      repo,
      `/repos/${owner}/${name}/git/trees`,
      {
        method: "POST",
        body: {
          base_tree: baseTreeSha,
          tree: treeEntries
        }
      }
    );

    const newCommit = await this.request(
      repo,
      `/repos/${owner}/${name}/git/commits`,
      {
        method: "POST",
        body: {
          message,
          tree: newTree.sha,
          parents: [parentCommitSha]
        }
      }
    );

    await this.request(
      repo,
      `/repos/${owner}/${name}/git/refs/heads/${encodePath(branch)}`,
      {
        method: "PATCH",
        body: {
          sha: newCommit.sha,
          force: false
        }
      }
    );

    return {
      repo,
      branch,
      message,
      commitSha: newCommit.sha,
      treeSha: newTree.sha,
      changedFiles: files.map((file) => file.path)
    };
  }

  async openPr({ repo, base, head, title, body, draft = true }) {
    const { owner, name } = parseRepo(repo);

    const pr = await this.request(
      repo,
      `/repos/${owner}/${name}/pulls`,
      {
        method: "POST",
        body: {
          title,
          head,
          base,
          body,
          draft
        }
      }
    );

    return {
      repo,
      number: pr.number,
      url: pr.html_url,
      title: pr.title,
      state: pr.state,
      draft: pr.draft
    };
  }

  async readFile({ repo, path, ref }) {
    const { owner, name } = parseRepo(repo);
    const encodedPath = encodePath(path);

    const data = await this.request(
      repo,
      `/repos/${owner}/${name}/contents/${encodedPath}?ref=${encodeURIComponent(ref)}`
    );

    if (Array.isArray(data)) {
      throw new HttpError(400, `Path is a directory, not a file: ${path}`);
    }

    const content = data.encoding === "base64"
      ? Buffer.from(data.content || "", "base64").toString("utf8")
      : String(data.content || "");

    return {
      repo,
      path,
      ref,
      sha: data.sha,
      size: data.size,
      content
    };
  }

  async listTree({ repo, path = "", ref = "main" }) {
    const { owner, name } = parseRepo(repo);
    const branchData = await this.request(
      repo,
      `/repos/${owner}/${name}/branches/${encodeURIComponent(ref)}`
    );

    const treeSha = branchData.commit?.commit?.tree?.sha || branchData.commit?.sha;
    if (!treeSha) {
      throw new HttpError(404, `Could not resolve tree for ref ${ref}`);
    }

    const treeData = await this.request(
      repo,
      `/repos/${owner}/${name}/git/trees/${treeSha}?recursive=1`
    );

    const prefix = String(path || "").replace(/^\/+/, "");
    const entries = (treeData.tree || [])
      .filter((entry) => {
        if (!prefix) return true;
        return String(entry.path || "").startsWith(prefix);
      })
      .map((entry) => ({
        path: entry.path,
        type: entry.type,
        sha: entry.sha,
        size: entry.size || 0,
        mode: entry.mode
      }));

    return {
      repo,
      ref,
      path: prefix,
      entries
    };
  }
}
