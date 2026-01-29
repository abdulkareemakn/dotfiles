#!/bin/bash

# Dismiss notification by ID

ACTIVE_FILE="/tmp/eww-notifications-active.json"
ID="$1"

[[ -z "$ID" ]] && exit 1
[[ ! -f "$ACTIVE_FILE" ]] && exit 0

# Remove notification with matching ID
updated=$(jq --arg id "$ID" 'map(select(.id != $id))' "$ACTIVE_FILE")
echo "$updated" > "$ACTIVE_FILE"

# Update eww
eww update notifications="$updated" 2>/dev/null
