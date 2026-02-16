{ config, pkgs, ... }:  {
  xdg.configFile."niri/config.kdl".source = ../../dotfiles/niri/config.kdl;

  home.file.".config/niri/scripts/lock-and-suspend.sh" = {
    source = ../../dotfiles/niri/scripts/lock-and-suspend.sh;
    executable = true;
  };

      home.file.".config/niri/scripts/lock-and-turn-off-screen.sh" = {
        source = ../../dotfiles/niri/scripts/lock-and-turn-off-screen.sh;
        executable = true;
      };
}