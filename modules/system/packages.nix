{ pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      wget
      fzf
      git
      fastfetch
      gcc
      clang-tools
      wl-clipboard
      gnumake
      tree
      soteria
      slurp
      v4l-utils
      xdg-utils
      gsettings-desktop-schemas
      proton-ge-custom
      xwayland-satellite
      nodejs	
    ];

#  programs.kdeconnect = {
#  enable = true;
#  package = pkgs.gnomeExtensions.gsconnect;
# };

  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
};
 
}

