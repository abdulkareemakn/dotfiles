#!/usr/bin/env bash

# Configuration
WALLPAPER_DIR="$HOME/Pictures/Wallpapers/hyprland"
CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"
INTERVAL=600  # 10 minutes in seconds
MONITOR="eDP-1"  # Change this to your monitor name

# Function to generate hyprpaper config with all wallpapers preloaded
generate_config() {
    local initial_wallpaper="$1"
    
    # Preload all wallpapers
    for wallpaper in "$WALLPAPER_DIR"/*.{png,jpg,jpeg,webp}; do
        # Check if file exists (handles case where no files match)
        [ -f "$wallpaper" ] || continue
        echo "preload = $wallpaper" >> "$CONFIG_FILE"
    done
    
    echo "" >> "$CONFIG_FILE"
    
    # Set initial wallpaper
    echo "wallpaper = $MONITOR, $initial_wallpaper" >> "$CONFIG_FILE"
}

# Function to get all wallpapers in array
get_wallpapers() {
    local -n arr=$1
    arr=()
    for wallpaper in "$WALLPAPER_DIR"/*.{png,jpg,jpeg,webp}; do
        [ -f "$wallpaper" ] && arr+=("$wallpaper")
    done
}

# Function to change wallpaper
change_wallpaper() {
    local wallpaper="$1"
    hyprctl hyprpaper wallpaper "$MONITOR,$wallpaper"
}

# Main function
main() {
    # Get all wallpapers
    declare -a wallpapers
    get_wallpapers wallpapers
    
    
    # Generate config with first wallpaper as initial
    generate_config "${wallpapers[0]}"
    
    hyprpaper &
    
    # Rotation loop
    current_index=0
    
    while true; do
        # Change to current wallpaper
        change_wallpaper "${wallpapers[$current_index]}"
        
        # Move to next wallpaper
        current_index=$(( (current_index + 1) % ${#wallpapers[@]} ))
        
        # Wait for interval
        sleep "$INTERVAL"
    done
}

# Run main function
main
