import { HttpError } from "./errors.js";

function normalizePath(value) {
  return String(value || "")
    .replace(/^\/+/, "")
    .replace(/\\/g, "/")
    .trim();
}

function startsWithAny(value, prefixes = []) {
  return prefixes.some((prefix) => value.startsWith(prefix));
}

function includesAny(value, fragments = []) {
  return fragments.some((fragment) => value.includes(fragment));
}

export function validateRepoAllowed(repo, policy) {
  const allowed = policy.allowedRepos || [];
  if (!allowed.includes(repo)) {
    throw new HttpError(403, `Repo not allowed: ${repo}`, { allowedRepos: allowed });
  }
}

export function validateFilesAllowed(files, policy) {
  const allowedPaths = policy.allowedPaths || [];
  const blockedPaths = policy.blockedPaths || [];
  const maxFiles = Number(policy.maxFiles || 10);
  const maxDiffLines = Number(policy.maxDiffLines || 3000);

  if (!Array.isArray(files) || files.length === 0) {
    throw new HttpError(400, "files must be a non-empty array");
  }

  if (files.length > maxFiles) {
    throw new HttpError(400, `Too many files: ${files.length}`, { maxFiles });
  }

  let diffLines = 0;

  for (const file of files) {
    const filePath = normalizePath(file.path);
    if (!filePath) {
      throw new HttpError(400, "Each file needs a non-empty path");
    }

    if (!startsWithAny(filePath, allowedPaths)) {
      throw new HttpError(403, `Path not allowed: ${filePath}`, { allowedPaths });
    }

    if (startsWithAny(filePath, blockedPaths) || includesAny(filePath, blockedPaths)) {
      throw new HttpError(403, `Path blocked: ${filePath}`, { blockedPaths });
    }

    const content = String(file.content ?? "");
    diffLines += content.split(/\r?\n/).length;
  }

  if (diffLines > maxDiffLines) {
    throw new HttpError(400, `Estimated diff too large: ${diffLines} lines`, { maxDiffLines });
  }

  const findings = quickSecretScan(files);
  if (findings.length > 0) {
    throw new HttpError(400, "Secret scan failed", { findings });
  }

  return {
    fileCount: files.length,
    estimatedDiffLines: diffLines
  };
}

export function quickSecretScan(files) {
  const patterns = [
    { name: "private_key", regex: /-----BEGIN (RSA |EC |OPENSSH |)?PRIVATE KEY-----/i },
    { name: "github_pat", regex: /github_pat_[A-Za-z0-9_]{20,}/ },
    { name: "ghp_token", regex: /ghp_[A-Za-z0-9]{20,}/ },
    { name: "aws_access_key", regex: /AKIA[0-9A-Z]{16}/ },
    { name: "openai_key", regex: /sk-[A-Za-z0-9]{20,}/ },
    { name: "slack_token", regex: /xox[baprs]-[A-Za-z0-9-]{10,}/ }
  ];

  const findings = [];

  for (const file of files) {
    const path = normalizePath(file.path);
    const content = String(file.content ?? "");

    for (const pattern of patterns) {
      if (pattern.regex.test(content)) {
        findings.push({
          path,
          pattern: pattern.name
        });
      }
    }
  }

  return findings;
}

export function validateSinglePathAllowed(repo, path, policy) {
  validateRepoAllowed(repo, policy);

  const normalized = normalizePath(path);
  if (!normalized) {
    throw new HttpError(400, "path is required");
  }

  const blockedPaths = policy.blockedPaths || [];
  if (startsWithAny(normalized, blockedPaths) || includesAny(normalized, blockedPaths)) {
    throw new HttpError(403, `Path blocked: ${normalized}`, { blockedPaths });
  }

  return normalized;
}

export function defaultBaseBranch(policy) {
  return policy.defaultBaseBranch || "main";
}

export function defaultDraftPr(policy) {
  return policy.defaultDraftPr !== false;
}
