## This script demonstrates how to interact with the ASWE KnowledgeOS MCP-Server using PowerShell

$headers = @{
  Authorization = "Bearer aswe-mcp-2026-very-long-random-string-7Kf9pQ2xN8mR"
  "Content-Type" = "application/json"
}

Invoke-RestMethod -Method Get -Uri "https://asweknowledgeos-production.up.railway.app/healthz"

## List available tools

Invoke-RestMethod -Method Get -Uri "https://asweknowledgeos-production.up.railway.app/tools"

## Example: List the contents of the "meta/" directory in the "pjaeker/ASWE_KnowledgeOS" repository on the "main" branch

$headers = @{
  Authorization = "Bearer aswe-mcp-2026-very-long-random-string-7Kf9pQ2xN8mR"
  "Content-Type" = "application/json"
}

$body = @{
  tool = "list_tree"
  args = @{
    repo = "pjaeker/ASWE_KnowledgeOS"
    path = "meta/"
    ref  = "main"
  }
} | ConvertTo-Json -Depth 6

Invoke-RestMethod `
-Method Post `
  -Uri "https://asweknowledgeos-production.up.railway.app/mcp" `
-Headers $headers `
  -Body $body

## Verifying read_file execution

$body = @{
  tool = "read_file"
  args = @{
    repo = "pjaeker/ASWE_KnowledgeOS"
    path = "meta/README.md"
    ref  = "main"
  }
} | ConvertTo-Json -Depth 6

Invoke-RestMethod `
-Method Post `
  -Uri "https://asweknowledgeos-production.up.railway.app/mcp" `
-Headers $headers `
  -Body $body

## Verifying Branch Creation

$branchName = "chatgpt/test-branch-01"

$body = @{
  tool = "create_branch"
  args = @{
    repo = "pjaeker/ASWE_KnowledgeOS"
    base = "main"
    name = $branchName
  }
} | ConvertTo-Json -Depth 6

Invoke-RestMethod `
  -Method Post `
  -Uri "https://asweknowledgeos-production.up.railway.app/mcp" `
  -Headers $headers `
  -Body $body
