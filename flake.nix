{
  description = "Modular NixOS + Home Manager config";

  inputs = {
    # System Packages
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    # CachyOS Kernel (Do not add 'follows' here to keep binary cache working)
    nix-cachyos-kernel = {
      url = "github:xddxdd/nix-cachyos-kernel/release";
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
        ({ config, pkgs, ... }: {
          nixpkgs.overlays = [
            inputs.nix-cachyos-kernel.overlays.pinned
          ];
        })

        ./configuration.nix
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
