#!/bin/sh
# Creates a draft for Instagram and LinkedIn. A draft needs only the default (drafts) permission.
set -eu
curl -sS -X POST https://dripost.com/api/v1/posts \
  -H "Authorization: Bearer $DRIPOST_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "text": "Our new studio opens on Saturday.",
    "platforms": ["INSTAGRAM", "LINKEDIN"],
    "hashtags": ["newstudio", "opening"]
  }'
echo
