{ config, pkgs, ... }:
{
programs.helix = {
  package = pkgs.evil-helix;
  enable = true;
  settings = {
    theme = "catppuccin_latte";
  };
  };
}
