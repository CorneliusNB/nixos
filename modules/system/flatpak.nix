{ config, pkgs, ... }: {
  # Enable Flatpak service
  services.flatpak.enable = true;

  # Configure packages
  services.flatpak.packages = [
    "org.vinegarhq.Sober"
  ];

  # Update packages at boot/activation (optional)
  services.flatpak.update.onActivation = true;
}
