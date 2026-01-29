#!/bin/bash

# ╔══════════════════════════════════════════════════════════════════════════╗
# ║                    NOTIFICATION LISTENER                                  ║
# ╚══════════════════════════════════════════════════════════════════════════╝
#
# Watches for new notifications and updates eww directly.
# Tiramisu should be started separately: tiramisu -j >> /tmp/tiramisu.json

TIRAMISU_FILE="/tmp/tiramisu.json"
ACTIVE_FILE="/tmp/eww-notifications-active.json"
AUTO_DISMISS_SECS=10

# Initialize
echo '[]' > "$ACTIVE_FILE"
echo "started"  # Signal to deflisten that we're running

update_eww() {
    local data
    data=$(cat "$ACTIVE_FILE")
    eww update notifications="$data" 2>/dev/null
}

# Process new notification
process_notification() {
    local line="$1"
    local id="notif-$(date +%s%N)"
    
    # Read current and add new notification
    local updated
    updated=$(jq --argjson notif "$line" --arg id "$id" \
        '[$notif + {id: $id}] + .' "$ACTIVE_FILE")
    
    echo "$updated" > "$ACTIVE_FILE"
    update_eww
    
    # Schedule auto-dismiss
    (
        sleep "$AUTO_DISMISS_SECS"
        ~/.config/eww/scripts/notifications/dismiss.sh "$id"
    ) &
}

# Clear tiramisu file to start fresh, watch only new lines
> "$TIRAMISU_FILE"

# Use inotifywait for instant response
inotifywait -m -e modify "$TIRAMISU_FILE" 2>/dev/null | while read -r; do
    # Read the last line from the file
    line=$(tail -n1 "$TIRAMISU_FILE")
    [[ -z "$line" ]] && continue
    process_notification "$line"
done
