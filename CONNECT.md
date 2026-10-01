# Connect Dripost's MCP server

Server URL: `https://mcp.dripost.com/mcp`. Sign-in is OAuth, so there is no key to paste. Claude and ChatGPT have both connected and run a tool call against it.

## Claude

Add a custom connector (remote MCP server) and enter the URL above. Anthropic's guide: <https://support.claude.com/en/articles/11175166-getting-started-with-custom-connectors-using-remote-mcp>.

## ChatGPT

Add the URL as a connector in developer mode. OpenAI's guide: <https://developers.openai.com/api/docs/guides/developer-mode>.

## After you connect

Ask for a draft first. The connection starts as drafts only; scheduling and publishing need the "post" permission, and anything going out right away needs your approval on dripost.com. Full details: <https://dripost.com/docs/api>.
