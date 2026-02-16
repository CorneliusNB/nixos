#!/usr/bin/env bash
# Lock the screen with Swaylock and suspend immediately

# Run swaylock in the background with your settings
swaylock \
  --image ~/Pictures/wallpaper/fallen_angel.png \
  --ring-color 00000000 \
  --ring-clear-color 00000000 \
  --ring-caps-lock-color 00000000 \
  --ring-ver-color 00000000 \
  --ring-wrong-color 00000000 \
  --line-color 00000000 \
  --line-clear-color 00000000 \
  --line-caps-lock-color 00000000 \
  --line-ver-color 00000000 \
  --line-wrong-color 00000000 \
  --separator-color 00000000 \
  --inside-color 00000000 \
  --inside-clear-color 00000000 \
  --inside-caps-lock-color 00000000 \
  --inside-ver-color 00000000 \
  --inside-wrong-color 00000000 \
  --text-color 00000000 \
  --text-clear-color 00000000 \
  --text-ver-color 00000000 \
  --text-wrong-color 00000000 \
  --indicator-radius 30 \
  --indicator-thickness 5 &

# Give swaylock a moment to start
sleep 2

# Suspend the system
systemctl suspend

