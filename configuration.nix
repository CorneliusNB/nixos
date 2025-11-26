{ config, pkgs, ...  }:

{
  hardware.bluetooth.enable = true;
  hardware.amdgpu.opencl.enable = true;
  boot.kernelPackages = pkgs.linuxPackages_cachyos-rc;
  imports = [
    ./hardware-configuration.nix
    ./modules/system/users.nix
    ./modules/system/packages.nix
    ./modules/system/desktop.nix
    ./modules/system/bootloader.nix
    ./modules/system/services.nix
  ];

  chaotic.mesa-git.enable = true;
  nixpkgs.config.allowUnfree = true;
  nix.gc.automatic = true;
  nix.gc.dates = "weekly";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";
}
