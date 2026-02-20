{ pkgs, inputs, ... }:

{
  # Use the package directly from the flake input (Guaranteed to exist)
  boot.kernelPackages = inputs.nix-cachyos-kernel.packages.${pkgs.system}.linuxPackages_cachyos;

  # Enable the Binary Cache (MANDATORY)
  nix.settings = {
    substituters = [
      "https://xddxdd.cachix.org"
    ];
    trusted-public-keys = [
      "xddxdd.cachix.org-1:ay1HJyNDYmlSwj5NXQG065C8LfoqqKaTNCyzeixGjf8="
    ];
  };
}
