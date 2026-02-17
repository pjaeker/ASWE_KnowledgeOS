import { NextRequest } from 'next/server';
import OpenAI from 'openai';

export const runtime = 'nodejs';

const client = new OpenAI({ apiKey: process.env.OPENAI_API_KEY });

export async function POST(req: NextRequest) {
  const body = await req.json();
  const messages = body.messages || [];

  const input = messages.map((m: any) => ({ role: m.role, content: [{ type: 'text', text: m.content }] }));

  const resp = await client.responses.create({
    model: 'gpt-5',
    input,
  });

  const text = resp.output_text || '';
  return Response.json({ text });
}
