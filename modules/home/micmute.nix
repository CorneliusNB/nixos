{ config, pkgs, ... }:
let
  micmuteLedScript = pkgs.writeShellScript "micmute-led-sync.sh" ''
    #!/usr/bin/env bash
    LED_PATH="/sys/class/leds/platform::micmute/brightness"
    sync_led() {
      STATE=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')
      if [ "$STATE" = "yes" ]; then
        echo 1 | sudo tee "$LED_PATH" >/dev/null
      else
        echo 0 | sudo tee "$LED_PATH" >/dev/null
      fi
    }
    sync_led
    pactl subscribe | grep --line-buffered "source" | while read -r _; do
      sync_led
    done
  '';
in
{
  # User systemd service
  systemd.user.services.micmuteLedSync = {
    Unit = {
      Description = "Sync mic mute LED on startup";
      After = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${micmuteLedScript}";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}