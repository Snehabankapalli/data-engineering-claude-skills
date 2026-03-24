Build a complete MCP (Model Context Protocol) server for: $ARGUMENTS

MCP servers expose tools, resources, and prompts that Claude can use natively. Build this so Claude can interact with data pipelines, Snowflake, or APIs directly in conversation.

Output this structure:
```
mcp-server-<name>/
├── server.py          # FastMCP server (Python)
├── tools/
│   ├── __init__.py
│   └── <tool>.py      # One file per tool group
├── config.py          # Settings from env vars (no hardcoded values)
├── requirements.txt
├── .env.example
└── README.md          # How to add to Claude Desktop config
```

Implementation standards:
- Use FastMCP (pip install fastmcp)
- Every @mcp.tool() has a clear docstring — this is what Claude reads to decide when to call it
- Input validation before any external call — reject invalid inputs early with clear messages
- Never include credentials or sensitive data in tool responses
- Return structured data (dict/list), not raw strings
- Add rate limiting for external API tools
- Log all tool invocations with sanitized parameters

For Snowflake tools: enforce read-only (reject INSERT/UPDATE/DELETE/DROP), use DictCursor, limit to 1000 rows by default.

Include the Claude Desktop config JSON block:
```json
{
  "mcpServers": {
    "<server-name>": {
      "command": "python",
      "args": ["/path/to/server.py"],
      "env": { "KEY": "value" }
    }
  }
}
```

Default: Python + FastMCP. If TypeScript is specified, use @modelcontextprotocol/sdk with Zod for input validation.
