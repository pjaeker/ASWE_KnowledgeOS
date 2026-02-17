export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="de">
      <body style={{ fontFamily: "system-ui, sans-serif", margin: 0 }}>
        <div style={{ padding: 16, borderBottom: "1px solid #ddd", display: "flex", gap: 12 }}>
          <a href="/">Home</a>
          <a href="/chat">Chat</a>
          <a href="/keystatic">Keystatic</a>
        </div>
        <div style={{ padding: 16 }}>{children}</div>
      </body>
    </html>
  );
}
