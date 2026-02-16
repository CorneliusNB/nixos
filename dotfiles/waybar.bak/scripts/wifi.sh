#!/bin/bash

wifi_info=$(nmcli -t -f active,ssid,signal dev wifi | grep '^yes')
strength=$(echo "$wifi_info" | cut -d: -f3)
ssid=$(echo "$wifi_info" | cut -d: -f2)

if [[ -z "$strength" || -z "$ssid" ]]; then
  echo '{"text": "󰤯", "tooltip": "Disconnected"}'
elif ((strength >= 80)); then
  echo '{"text": "󰤨", "tooltip": "'"$ssid ($strength%)"'"}'
elif ((strength >= 60)); then
  echo '{"text": "󰤥", "tooltip": "'"$ssid ($strength%)"'"}'
elif ((strength >= 40)); then
  echo '{"text": "󰤢", "tooltip": "'"$ssid ($strength%)"'"}'
elif ((strength >= 20)); then
  echo '{"text": "󰤟", "tooltip": "'"$ssid ($strength%)"'"}'
else
  echo '{"text": "󰤯", "tooltip": "'"$ssid ($strength%)"'"}'
fi
