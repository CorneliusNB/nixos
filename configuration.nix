{ config, pkgs, ...  }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/system/users.nix
    ./modules/system/packages.nix
    ./modules/system/desktop.nix
    ./modules/system/zsh.nix
    ./modules/system/bootloader.nix
    ./modules/system/security.nix
    ./modules/system/distrobox.nix
    ./modules/system/services.nix
    ./modules/system/flatpak.nix
    ./modules/system/stylix.nix
    ./modules/system/browser.nix
    ./modules/system/direnv.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}
