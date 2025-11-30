{ inputs, config, pkgs, ... }: {
  home.username = "yoki";
  home.homeDirectory = "/home/yoki";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
  programs.zoxide.enable = true;
  programs.zoxide.enableBashIntegration= true;
  programs.bash.enable = true;


  imports = [
    inputs.flatpaks.homeManagerModules.nix-flatpak
    ./modules/home/fonts.nix
    ./modules/home/waybar.nix
    ./modules/home/kitty.nix
    ./modules/home/packages.nix
    ./modules/home/helix.nix
    ./modules/home/chromium.nix
    ./modules/home/flatpak.nix
    ./modules/home/niri.nix
    ./modules/home/variables.nix
  ];
}
