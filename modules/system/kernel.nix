{ pkgs, lib, ... }:

{
  # 1. Select the Kernel
  # Using the path from your snippet:
  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest-lto;

  # 2. Binary Cache (Crucial)
  # Using the cache from your snippet:
  nix.settings = {
    substituters = [
      "https://attic.xuyh0120.win/lantian"
    ];
    trusted-public-keys = [
      "lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc="
    ];
  };
}
