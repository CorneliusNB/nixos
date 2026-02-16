{ pkgs, lib, config, ... }:

{
  programs.waybar = {
    enable = true;
    style = lib.mkAfter (builtins.readFile ../../dotfiles/waybar/style.css);

    settings = [
      {
        layer = "top";
        position = "top";
        height = 24; # Force the bar to be thin

        modules-left = [ "niri/workspaces" "niri/window" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "battery" "tray" ];

        "niri/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "●";
            default = "○";
          };
        };

        "niri/window" = {
          max-length = 40;
        };

        clock = {
          format = "{:%H:%M  %d/%m}";
          tooltip-format = "{:%Y-%m-%d | %H:%M}";
        };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-muted = "󰝟 Muted";
          format-icons = {
            default = ["" "" ""];
          };
          on-click = "pavucontrol";
        };

        network = {
          format-wifi = "  {essid}";
          format-ethernet = "󰈀  Eth";
          format-disconnected = "󰤮  Disc";
          tooltip-format = "{ifname} via {gwaddr}";
        };

        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-charging = "󰂄 {capacity}%";
          format-icons = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
        };

        tray = {
          spacing = 10;
        };
      }
    ];
  };
}
