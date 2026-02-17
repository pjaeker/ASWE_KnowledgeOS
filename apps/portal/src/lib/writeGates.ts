export type WriteGatePolicy = {
  allowlist_paths: string[];
  blocklist_paths: string[];
  limits: { max_files: number; max_diff_lines: number; max_bytes: number };
  allowed_extensions: string[];
};

export type WriteRequest = { unified_diff: string; pr_title: string; pr_body: string };

function globToRegExp(glob: string): RegExp {
  // very small glob -> regex: ** -> .*, * -> [^/]* 
  const escaped = glob.replace(/[.+^${}()|[\]\\]/g, '\\$&');
  const re = '^' + escaped.replace(/\*\*\//g, '(?:.*/)?').replace(/\*\*/g, '.*').replace(/\*/g, '[^/]*') + '$';
  return new RegExp(re);
}

function extractFilesFromDiff(diff: string): string[] {
  const files: string[] = [];
  const re = /^\+\+\+ b\/(.+)$/gm;
  let m;
  while ((m = re.exec(diff)) !== null) files.push(m[1].trim());
  return Array.from(new Set(files));
}

export function validateWriteRequest(req: WriteRequest, policy: WriteGatePolicy): { ok: true; files: string[] } | { ok: false; error: string } {
  const bytes = Buffer.byteLength(req.unified_diff, 'utf8');
  if (bytes > policy.limits.max_bytes) return { ok: false, error: `diff too large: ${bytes} bytes` };

  const lines = req.unified_diff.split(/\r?\n/).length;
  if (lines > policy.limits.max_diff_lines) return { ok: false, error: `diff too large: ${lines} lines` };

  const files = extractFilesFromDiff(req.unified_diff);
  if (files.length === 0) return { ok: false, error: 'no files found in diff' };
  if (files.length > policy.limits.max_files) return { ok: false, error: `too many files: ${files.length}` };

  const allow = policy.allowlist_paths.map(globToRegExp);
  const block = policy.blocklist_paths.map(globToRegExp);

  for (const f of files) {
    if (block.some((r) => r.test(f))) return { ok: false, error: `blocked path: ${f}` };
    if (!allow.some((r) => r.test(f))) return { ok: false, error: `not allowlisted: ${f}` };
    const ext = f.includes('.') ? '.' + f.split('.').pop() : '';
    if (!policy.allowed_extensions.includes(ext)) return { ok: false, error: `blocked extension: ${f}` };
  }

  // PR body must contain required sections (very lightweight check)
  const required = ['## Summary', '## Risk Class', '## Files Touched', '## Rollback Plan'];
  for (const r of required) {
    if (!req.pr_body.includes(r)) return { ok: false, error: `PR body missing section: ${r}` };
  }

  return { ok: true, files };
}
