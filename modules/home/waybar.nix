{ ... }: {

  programs.waybar = {
    enable = true;
    # Ensures style.css is read from the current directory
    style = builtins.readFile ./style.css;
    
    settings = [{
      layer = "bottom";
      spacing = 10;

      modules-left = [ "niri/workspaces" ];
      modules-center = [ "clock" ];
      modules-right = [
        "bluetooth"
        "pulseaudio"
        "network"
        "battery"
      ];

      clock = {
        tooltip = true;
        tooltip-format = "{calendar}";
        calendar = {
          mode = "year";
          mode-mon-col = 3;
          on-scroll = 1;
          format = {
            today = "<span color='#ff79c6'><b><u>{}</u></b></span>"; # Dracula Pink for today
          };
        };
      };

      bluetooth = {
        tooltip = false;
        on-click = "blueman-manager";
        format = "";
        format-off = "󰂲";
        format-on = "";
        format-connected = "󰂱";
      };

      pulseaudio = {
        tooltip = false;
        on-click = "foot pulsemixer";
        format = "{icon}";
        format-muted = "󰝟";
        format-icons = {
          default = [
            "󰕿"
            "󰖀"
            "󰕾"
          ];
        };
      };

      "niri/workspaces" = {
          disable-scroll = true;
          all-outputs = true;
          on-click = "activate";
          format = "{icon}";
          format-icons = {
            active = "†";
            default = "·";
          };
          sort-by-number = true;
        };

      network = {
        tooltip = false;
        on-click = "kitty nmtui";
        format-wifi = " {icon}";
        format-ethernet = " ";
        format-disconnected = "󰌙";
        format-icons = [
          "󰤯"
          "󰤟"
          "󰤢"
          "󰤢"
          "󰤨"
        ];
      };

      battery = {
        tooltip = false;
        states = {
          warning = 15;
          critical = 5;
        };
        format = "{capacity}%";
        format-charging = "󱐋 {capacity}%";
        format-plugged = "󱐋 {capacity}%";
        format-icons = [
          "󰂎"
          "󰁺"
          "󰁻"
          "󰁼"
          "󰁽"
          "󰁾"
          "󰁿"
          "󰂀"
          "󰂁"
          "󰂂"
          "󰁹"
        ];
      };
    }];
  };
}
