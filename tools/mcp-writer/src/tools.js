import {
  validateFilesAllowed,
  validateRepoAllowed,
  validateSinglePathAllowed,
  defaultBaseBranch,
  defaultDraftPr
} from "./policy.js";
import { HttpError } from "./errors.js";

export function toolDefinitions(policy) {
  return [
    {
      name: "read_file",
      description: "Read a single file from an allowed repo/ref",
      input: {
        repo: "owner/name",
        path: "string",
        ref: "string (optional)"
      }
    },
    {
      name: "list_tree",
      description: "List tree entries under a repo path for a ref",
      input: {
        repo: "owner/name",
        path: "string (optional)",
        ref: "string (optional)"
      }
    },
    {
      name: "create_branch",
      description: "Create a new branch from a base branch",
      input: {
        repo: "owner/name",
        base: "string (optional)",
        name: "string"
      }
    },
    {
      name: "commit_files",
      description: "Commit one or more text files to an existing branch",
      input: {
        repo: "owner/name",
        branch: "string",
        message: "string",
        files: [
          {
            path: "string",
            content: "utf-8 string"
          }
        ]
      }
    },
    {
      name: "open_pr",
      description: "Open a draft PR from head branch to base",
      input: {
        repo: "owner/name",
        base: "string (optional)",
        head: "string",
        title: "string",
        body: "string (optional)",
        draft: "boolean (optional)"
      }
    }
  ];
}

export async function runTool({ tool, args, github, policy }) {
  switch (tool) {
    case "read_file": {
      validateRepoAllowed(args.repo, policy);
      const path = validateSinglePathAllowed(args.repo, args.path, policy);
      return github.readFile({
        repo: args.repo,
        path,
        ref: args.ref || defaultBaseBranch(policy)
      });
    }

    case "list_tree": {
      validateRepoAllowed(args.repo, policy);
      return github.listTree({
        repo: args.repo,
        path: args.path || "",
        ref: args.ref || defaultBaseBranch(policy)
      });
    }

    case "create_branch": {
      validateRepoAllowed(args.repo, policy);
      if (!args.name) {
        throw new HttpError(400, "name is required");
      }
      return github.createBranch({
        repo: args.repo,
        base: args.base || defaultBaseBranch(policy),
        name: args.name
      });
    }

    case "commit_files": {
      validateRepoAllowed(args.repo, policy);

      if (!args.branch) {
        throw new HttpError(400, "branch is required");
      }
      if (!args.message) {
        throw new HttpError(400, "message is required");
      }

      const validation = validateFilesAllowed(args.files, policy);

      const result = await github.commitFiles({
        repo: args.repo,
        branch: args.branch,
        message: args.message,
        files: args.files
      });

      return {
        ...result,
        validation
      };
    }

    case "open_pr": {
      validateRepoAllowed(args.repo, policy);
      if (!args.head) {
        throw new HttpError(400, "head is required");
      }
      if (!args.title) {
        throw new HttpError(400, "title is required");
      }

      return github.openPr({
        repo: args.repo,
        base: args.base || defaultBaseBranch(policy),
        head: args.head,
        title: args.title,
        body: args.body || "",
        draft: typeof args.draft === "boolean" ? args.draft : defaultDraftPr(policy)
      });
    }

    default:
      throw new HttpError(404, `Unknown tool: ${tool}`, {
        availableTools: toolDefinitions(policy).map((t) => t.name)
      });
  }
}
