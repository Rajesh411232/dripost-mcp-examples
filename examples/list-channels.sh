#!/bin/sh
# Lists the workspace and its connected channels. Needs DRIPOST_API_KEY (a dp_… key).
set -eu
curl -sS -H "Authorization: Bearer $DRIPOST_API_KEY" https://dripost.com/api/v1/workspace
echo
curl -sS -H "Authorization: Bearer $DRIPOST_API_KEY" https://dripost.com/api/v1/channels
echo
