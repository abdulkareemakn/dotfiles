#!/bin/bash

# Get network status
get_network() {
    local interface ssid signal icon class
    
    # Check WiFi first
    interface=$(nmcli -t -f DEVICE,TYPE device | grep wifi | cut -d: -f1 | head -1)
    
    if [[ -n "$interface" ]]; then
        ssid=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)
        if [[ -n "$ssid" ]]; then
            signal=$(nmcli -t -f active,signal dev wifi | grep '^yes' | cut -d: -f2)
            
            if [[ "$signal" -lt 25 ]]; then
                icon="󰤟"
            elif [[ "$signal" -lt 50 ]]; then
                icon="󰤢"
            elif [[ "$signal" -lt 75 ]]; then
                icon="󰤥"
            else
                icon="󰤨"
            fi
            class="connected"
            echo "{\"ssid\": \"$ssid\", \"signal\": $signal, \"icon\": \"$icon\", \"class\": \"$class\", \"connected\": true}"
            return
        fi
    fi
    
    # Check Ethernet
    eth_interface=$(nmcli -t -f DEVICE,TYPE,STATE device | grep ethernet | grep connected | cut -d: -f1 | head -1)
    if [[ -n "$eth_interface" ]]; then
        echo '{"ssid": "Ethernet", "signal": 100, "icon": "󰈀", "class": "connected", "connected": true}'
        return
    fi
    
    # Disconnected
    echo '{"ssid": "Disconnected", "signal": 0, "icon": "󰤭", "class": "disconnected", "connected": false}'
}

# Output initial state and poll every 5 seconds
while true; do
    get_network
    sleep 5
done
