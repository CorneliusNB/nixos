# home.nix
{ lib, ... }: {

  services.flatpak.update.auto.enable = false;
  services.flatpak.uninstallUnmanaged = false;

  services.flatpak.packages = [
    "org.vinegarhq.Sober"
   "com.stremio.Stremio"
  ];

}
