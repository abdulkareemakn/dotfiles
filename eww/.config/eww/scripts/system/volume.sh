#!/bin/bash

# Icons using printf for proper Unicode
ICON_MUTE=$(printf '\ueee8')     # mute
ICON_LOW=$(printf '\uf027')      # low volume
ICON_HIGH=$(printf '\uf028')     # high volume

# Get current volume state
get_volume() {
    local vol muted icon
    vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null | awk '{print int($2 * 100)}')
    muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null | grep -q MUTED && echo "true" || echo "false")
    
    if [[ "$muted" == "true" ]]; then
        icon="$ICON_MUTE"
    elif [[ "$vol" -eq 0 ]]; then
        icon="$ICON_MUTE"
    elif [[ "$vol" -lt 50 ]]; then
        icon="$ICON_LOW"
    else
        icon="$ICON_HIGH"
    fi
    
    echo "{\"volume\": $vol, \"muted\": $muted, \"icon\": \"$icon\"}"
}

# Output initial state
get_volume

# Monitor for changes using pactl
pactl subscribe 2>/dev/null | grep --line-buffered "sink" | while read -r; do
    get_volume
done
