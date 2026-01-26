#!/bin/bash

# Get battery status
get_battery() {
    local capacity status icon charging
    
    if [[ -d /sys/class/power_supply/BAT0 ]]; then
        capacity=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo "0")
        status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null || echo "Unknown")
    elif [[ -d /sys/class/power_supply/BAT1 ]]; then
        capacity=$(cat /sys/class/power_supply/BAT1/capacity 2>/dev/null || echo "0")
        status=$(cat /sys/class/power_supply/BAT1/status 2>/dev/null || echo "Unknown")
    else
        echo '{"capacity": 100, "status": "Full", "icon": "󰁹", "charging": false, "class": "full"}'
        return
    fi
    
    charging="false"
    if [[ "$status" == "Charging" ]]; then
        charging="true"
        icon="󰂄"
    elif [[ "$status" == "Full" ]]; then
        icon="󰁹"
    elif [[ "$capacity" -lt 10 ]]; then
        icon="󰂎"
    elif [[ "$capacity" -lt 20 ]]; then
        icon="󰁺"
    elif [[ "$capacity" -lt 30 ]]; then
        icon="󰁻"
    elif [[ "$capacity" -lt 40 ]]; then
        icon="󰁼"
    elif [[ "$capacity" -lt 50 ]]; then
        icon="󰁽"
    elif [[ "$capacity" -lt 60 ]]; then
        icon="󰁾"
    elif [[ "$capacity" -lt 70 ]]; then
        icon="󰁿"
    elif [[ "$capacity" -lt 80 ]]; then
        icon="󰂀"
    elif [[ "$capacity" -lt 90 ]]; then
        icon="󰂁"
    else
        icon="󰂂"
    fi
    
    # Determine CSS class
    local class="normal"
    if [[ "$status" == "Charging" ]]; then
        class="charging"
    elif [[ "$capacity" -lt 15 ]]; then
        class="critical"
    elif [[ "$capacity" -lt 30 ]]; then
        class="warning"
    elif [[ "$capacity" -gt 90 ]]; then
        class="full"
    fi
    
    echo "{\"capacity\": $capacity, \"status\": \"$status\", \"icon\": \"$icon\", \"charging\": $charging, \"class\": \"$class\"}"
}

# Output state in a loop (battery doesn't have good event system)
while true; do
    get_battery
    sleep 30
done
