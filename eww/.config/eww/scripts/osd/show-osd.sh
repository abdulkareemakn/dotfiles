#!/bin/bash

# Auto-hide script for OSD overlays with debounce
# Usage: ./show-osd.sh <window-name> [duration]

WINDOW_NAME="${1:-volume-osd}"
DURATION="${2:-1.5}"
PIDFILE="/tmp/eww-osd-${WINDOW_NAME}.pid"

# Kill any existing timer for this OSD
if [[ -f "$PIDFILE" ]]; then
    oldpid=$(cat "$PIDFILE" 2>/dev/null)
    if [[ -n "$oldpid" ]]; then
        kill "$oldpid" 2>/dev/null
    fi
    rm -f "$PIDFILE"
fi

# Open the OSD
eww open "$WINDOW_NAME" 2>/dev/null

# Start new timer in background
(
    sleep "$DURATION"
    eww close "$WINDOW_NAME" 2>/dev/null
) &

# Save the PID
echo $! > "$PIDFILE"
