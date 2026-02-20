{
  description = "Modular NixOS + Home Manager config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    # CachyOS Kernel
    nix-cachyos-kernel = {
      url = "github:xddxdd/nix-cachyos-kernel/release";
      # inputs.nixpkgs.follows = "nixpkgs"; # KEEP DISABLED for cache hit
    };

    # Styling
    stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Flatpak
    nix-flatpak.url = "github:gmodena/nix-flatpak?ref=latest"; 

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, stylix, nix-flatpak, nix-cachyos-kernel, home-manager, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        # 1. Apply the Overlay from your snippet
        ({ config, pkgs, ... }: {
          nixpkgs.overlays = [
            inputs.nix-cachyos-kernel.overlays.pinned
          ];
        })

        # 2. Your Configs
        ./configuration.nix
        
        # 3. Other Modules
        stylix.nixosModules.stylix
        nix-flatpak.nixosModules.nix-flatpak
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.users.cornel = import ./home.nix;
        }
      ];
    };
  };
}
