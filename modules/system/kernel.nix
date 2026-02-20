{ pkgs, lib, ... }:

{
  # ---------------------------------------------------------
  # 1. Select the CachyOS Kernel
  # ---------------------------------------------------------
  # This package becomes available because we import the module 
  # in flake.nix (see step 2 below).
  boot.kernelPackages = pkgs.linuxPackages_cachyos;

  # Option: Use the LTO-optimized version (check availability first)
  # boot.kernelPackages = pkgs.linuxPackages_cachyos-lto;


  # ---------------------------------------------------------
  # 2. Binary Cache Configuration (CRITICAL)
  # ---------------------------------------------------------
  # Since you are on Stable, you MUST use this cache to avoid 
  # compiling the kernel from source (which takes hours).
  nix.settings = {
    substituters = [
      "https://xddxdd.cachix.org"
    ];
    trusted-public-keys = [
      "xddxdd.cachix.org-1:ay1HJyNDYmlSwj5NXQG065C8LfoqqKaTNCyzeixGjf8="
    ];
  };
}
