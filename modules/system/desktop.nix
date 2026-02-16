{ pkgs, ... }: {
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  services.resolved.enable = true;

  services.xserver.enable = true;
  # services.xserver.displayManager.gdm.enable = true;
  services.displayManager.ly.enable = true;
  programs.niri.enable = true;
  programs.xwayland.enable = true;

  time.timeZone = "Asia/Jakarta";
  i18n.defaultLocale = "en_US.UTF-8";
  services.xserver.xkb.layout = "us";

  programs.openvpn3.enable = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
}
