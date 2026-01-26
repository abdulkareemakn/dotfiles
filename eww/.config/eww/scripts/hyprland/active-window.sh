#!/bin/bash

# Get active window title
get_window() {
    hyprctl activewindow -j | jq -r '.title // "Desktop"' | cut -c1-50
}

# Output initial state
get_window

# Listen for window events
socat -u UNIX-CONNECT:"$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" - | while read -r line; do
    case "$line" in
        activewindow*|closewindow*|windowtitle*)
            get_window
            ;;
    esac
done
