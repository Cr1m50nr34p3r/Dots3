#!/usr/bin/env bash
set -euo pipefail
ssid=$(nmcli device wifi | sed -n '1!p' | grep -vw '^*' | rofi -dmenu -p 'Select Wifi:' | awk '{print $1}')
password=$(echo "" | rofi -dmenu -p -P 'Password: ')
nmcli device wifi connect $ssid password $password
