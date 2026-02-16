{ pkgs, ... }: {
  services.mysql.enable = true;
  services.mysql.package = pkgs.mariadb;
  services.power-profiles-daemon.enable = true;
  services.tailscale.enable = true;
  services.flatpak.enable = true;
  services.gvfs.enable = true;
  programs.npm.enable = true;
}
