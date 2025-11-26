{ pkgs, ... }: {
  programs.dconf.enable = true;
  services.blueman.enable = true;
  services.scx.enable = true;
  services.scx.scheduler = "scx_bpfland";
  services.printing.enable = true;
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    wireplumber.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

  };
  services.flatpak.enable = true;
  services.power-profiles-daemon.enable = true;
    xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
    
    config = {
      common = {
        default = [ "wlr" "gtk" ];
     };
  };
  };
  
  networking.firewall = rec {
  allowedTCPPortRanges = [ { from = 1714; to = 1764; } ];
  allowedUDPPortRanges = allowedTCPPortRanges;
  };
	
}
