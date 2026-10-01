# Dripost MCP and API examples

Small examples for scheduling social posts through [Dripost](https://dripost.com) from an AI assistant or your own code.

- **MCP server:** `https://mcp.dripost.com/mcp` (streamable HTTP, OAuth sign-in). Connect it to Claude or ChatGPT as a custom connector. It has 10 tools: see the workspace and channels, list and get posts, list media, create, update, delete, publish and retry posts, and import media from a link.
- **REST API:** `https://dripost.com/api/v1`, documented as OpenAPI at <https://dripost.com/docs/api>. Authenticate with a workspace API key (`dp_…`) as a bearer token.

## Rules that apply to every example

- A new key or connection can read and make **drafts**. Scheduling and publishing need the separate "post" permission, which the workspace owner ticks on purpose.
- Nothing goes out immediately because an AI said so: "publish now" from an app needs a person's approval on dripost.com, any time an app sets must be at least 10 minutes away, and a post an AI wrote or changed waits 10 minutes before it is sent.
- Dripost posts to X as text only.
- Videos Dripost uploads to YouTube stay private until Google has audited the app; you can change the privacy on YouTube.

## Examples

| File | What it does |
| --- | --- |
| [`examples/list-channels.sh`](examples/list-channels.sh) | List your workspace and connected channels |
| [`examples/create-draft.sh`](examples/create-draft.sh) | Create a draft for several platforms |
| [`examples/schedule-post.mjs`](examples/schedule-post.mjs) | Schedule a post with Node (needs the post permission) |
| [`CONNECT.md`](CONNECT.md) | Connect the MCP server to Claude and ChatGPT |

Keep your key out of the code: every example reads `DRIPOST_API_KEY` from the environment.

Made by [Dripost](https://dripost.com). MIT licence.
