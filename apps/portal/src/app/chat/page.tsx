'use client';

import { useState } from 'react';

type Msg = { role: 'user' | 'assistant'; content: string };

export default function ChatPage() {
  const [messages, setMessages] = useState<Msg[]>([]);
  const [input, setInput] = useState('');

  async function send() {
    const userMsg: Msg = { role: 'user', content: input };
    setMessages((m) => [...m, userMsg]);
    setInput('');

    const res = await fetch('/api/chat', {
      method: 'POST',
      headers: { 'content-type': 'application/json' },
      body: JSON.stringify({ messages: [...messages, userMsg] }),
    });

    const data = await res.json();
    setMessages((m) => [...m, { role: 'assistant', content: data.text || JSON.stringify(data) }]);
  }

  return (
    <main>
      <h1>Chat</h1>
      <div style={{ display: 'grid', gap: 12, maxWidth: 900 }}>
        <div style={{ border: '1px solid #ddd', padding: 12, minHeight: 240 }}>
          {messages.map((m, i) => (
            <div key={i} style={{ marginBottom: 10 }}>
              <b>{m.role}:</b> {m.content}
            </div>
          ))}
        </div>
        <textarea value={input} onChange={(e) => setInput(e.target.value)} rows={4} />
        <button onClick={send} disabled={!input.trim()}>Send</button>
      </div>
    </main>
  );
}
