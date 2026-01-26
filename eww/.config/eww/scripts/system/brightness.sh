#!/bin/bash

# Get current brightness
get_brightness() {
    local brightness icon
    brightness=$(brightnessctl -m | cut -d',' -f4 | tr -d '%')
    
    if [[ "$brightness" -lt 25 ]]; then
        icon="󰃞"
    elif [[ "$brightness" -lt 50 ]]; then
        icon="󰃟"
    elif [[ "$brightness" -lt 75 ]]; then
        icon="󰃝"
    else
        icon="󰃠"
    fi
    
    echo "{\"brightness\": $brightness, \"icon\": \"$icon\"}"
}

# Output initial state
get_brightness

# Monitor brightness changes via inotify on backlight
BACKLIGHT_PATH="/sys/class/backlight"
DEVICE=$(ls "$BACKLIGHT_PATH" 2>/dev/null | head -1)

if [[ -n "$DEVICE" ]]; then
    inotifywait -m -e modify "$BACKLIGHT_PATH/$DEVICE/brightness" 2>/dev/null | while read -r; do
        get_brightness
    done
else
    # Fallback: poll every 2 seconds if inotify fails
    while true; do
        sleep 2
        get_brightness
    done
fi
