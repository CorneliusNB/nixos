{ ... }: {

  programs.waybar = {
    enable = true;
    # Assumes style.css is in the same directory as this .nix file
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
            today = "<u>{}</u>";
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
        format-muted = "";
        format-icons = {
          default = [
            ""
            ""
            ""
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
        format = "{icon} {capacity}%";
        format-charging = "󰂄 {capacity}%";
        format-plugged = "󰂄 {capacity}%";
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
