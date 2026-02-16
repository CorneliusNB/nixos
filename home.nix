{ config, pkgs, ... }: {
  home.username = "cornel";
  home.homeDirectory = "/home/cornel";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  imports = [
    ./modules/home/zsh.nix
    ./modules/home/neovim.nix
    ./modules/home/vscode.nix
    ./modules/home/variables.nix
    ./modules/home/packages.nix
    ./modules/home/services.nix
    ./modules/home/micmute.nix
    ./modules/home/waybar.nix
    ./modules/home/alacritty.nix
    ./modules/home/fuzzel.nix
    ./modules/home/fonts.nix
    ./modules/home/dunst.nix
    ./modules/home/niri.nix
  ];
}
