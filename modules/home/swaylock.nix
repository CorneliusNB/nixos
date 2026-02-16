{ pkgs, ... }: {
  programs.swaylock = {
    package = pkgs.swaylock-effects;
  };
}