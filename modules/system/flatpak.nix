{ config, pkgs, ... }: {
  # Enable Flatpak service
  services.flatpak.enable = true;

  # Configure packages
  services.flatpak.packages = [
    "com.stremio.Stremio"
    "org.vinegarhq.Sober"
    "us.zoom.Zoom"
  ];

  # Update packages at boot/activation (optional)
  services.flatpak.update.onActivation = true;
}
