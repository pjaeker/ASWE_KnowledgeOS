import { NextRequest } from 'next/server';
import { Octokit } from '@octokit/rest';
import policy from '../../../../../../meta/AgenticSWE_KnowledgeOS_Portal_ToolPolicy_20260217_V1.json';
import { validateWriteRequest } from '../../../lib/writeGates';

export const runtime = 'nodejs';

function getOctokit(): Octokit {
  // NOTE: token creation (GitHub App Installation Token) is intentionally not implemented here.
  // Provide GITHUB_TOKEN (fine-grained) for dev, or implement app auth later.
  const token = process.env.GITHUB_TOKEN;
  if (!token) throw new Error('Missing GITHUB_TOKEN');
  return new Octokit({ auth: token });
}

export async function POST(req: NextRequest) {
  const body = await req.json();
  const unified_diff = body.unified_diff as string;
  const pr_title = body.pr_title as string;
  const pr_body = body.pr_body as string;

  const gate = validateWriteRequest({ unified_diff, pr_title, pr_body }, policy.write_gates);
  if (!gate.ok) return Response.json({ ok: false, error: gate.error }, { status: 400 });

  // Stub: return what would be used to create branch/commit/PR.
  // Implementation detail is added later with GitHub App auth + patch apply on server.
  return Response.json({ ok: true, files: gate.files, note: 'PR creation not yet implemented in this stub.' });
}
