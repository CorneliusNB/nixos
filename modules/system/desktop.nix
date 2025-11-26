{ pkgs, ... }: {
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  services.resolved.enable = true;
  services.xserver.enable = true;
#  services.displayManager.gdm.enable = true;
#  services.desktopManager.gnome.enable = true;

  services.displayManager.ly.enable = true;
  programs.niri.enable = true;  
  
  services.xserver.excludePackages = with pkgs; [ xterm ];
#  environment.gnome.excludePackages = with pkgs; [
#  gnome-tour
#  epiphany
#  gnome-console
#  ];

  time.timeZone = "Asia/Jakarta";
  i18n.defaultLocale = "en_US.UTF-8";
  services.xserver.xkb.layout = "us";
}
