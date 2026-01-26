#!/bin/bash

# Get download speed
# Monitors all active network interfaces

get_download_speed() {
    local interface rx_bytes_old rx_bytes_new speed speed_formatted icon
    
    # Find active interface (prefer wifi, fallback to ethernet)
    interface=$(ip route | grep default | awk '{print $5}' | head -1)
    
    if [[ -z "$interface" ]]; then
        echo '{"speed": 0, "formatted": "0 B/s", "icon": "󰇚", "active": false}'
        return
    fi
    
    # Get initial bytes
    rx_bytes_old=$(cat /sys/class/net/"$interface"/statistics/rx_bytes 2>/dev/null || echo 0)
    sleep 1
    rx_bytes_new=$(cat /sys/class/net/"$interface"/statistics/rx_bytes 2>/dev/null || echo 0)
    
    # Calculate speed (bytes per second)
    speed=$((rx_bytes_new - rx_bytes_old))
    
    # Format speed
    if [[ $speed -lt 1024 ]]; then
        speed_formatted="${speed} B/s"
        icon="󰇚"
    elif [[ $speed -lt 1048576 ]]; then
        speed_formatted="$(echo "scale=1; $speed/1024" | bc) KB/s"
        icon="󰇚"
    elif [[ $speed -lt 1073741824 ]]; then
        speed_formatted="$(echo "scale=1; $speed/1048576" | bc) MB/s"
        icon="󰇚"
    else
        speed_formatted="$(echo "scale=1; $speed/1073741824" | bc) GB/s"
        icon="󰇚"
    fi
    
    # Determine if actively downloading (more than 10KB/s)
    local active="false"
    if [[ $speed -gt 10240 ]]; then
        active="true"
    fi
    
    echo "{\"speed\": $speed, \"formatted\": \"$speed_formatted\", \"icon\": \"$icon\", \"active\": $active}"
}

# Continuous output
while true; do
    get_download_speed
done
