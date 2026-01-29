#!/bin/bash

# Open the app that sent the notification

hints="$1"
app="$2"

# Extract desktop-entry from hints (format: "desktop-entry=org.app.Name|urgency=1")
desktop_entry=$(echo "$hints" | grep -oP 'desktop-entry=\K[^|]+' || true)

if [[ -n "$desktop_entry" ]]; then
    gtk-launch "$desktop_entry" 2>/dev/null && exit 0
    gtk-launch "${desktop_entry}.desktop" 2>/dev/null && exit 0
fi

# Fallback: try app name
if [[ -n "$app" ]]; then
    command -v "$app" &>/dev/null && hyprctl dispatch exec "$app" && exit 0
    app_lower=$(echo "$app" | tr '[:upper:]' '[:lower:]')
    command -v "$app_lower" &>/dev/null && hyprctl dispatch exec "$app_lower" && exit 0
fi
