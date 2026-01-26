#!/bin/bash

# Get initial workspace data
get_workspaces() {
    hyprctl workspaces -j | jq -c 'sort_by(.id)'
}

get_active() {
    hyprctl activeworkspace -j | jq -c '.id'
}

# Output initial state
echo "{\"workspaces\": $(get_workspaces), \"active\": $(get_active)}"

# Listen for workspace events
socat -u UNIX-CONNECT:"$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" - | while read -r line; do
    case "$line" in
        workspace*|createworkspace*|destroyworkspace*|moveworkspace*|renameworkspace*|urgent*)
            echo "{\"workspaces\": $(get_workspaces), \"active\": $(get_active)}"
            ;;
    esac
done
