{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    chromium
    alacritty
    git
    wayvnc
    fzf
    brightnessctl
    pulseaudioFull
    swayosd
    swww
    nwg-look
    glib
  ];
}
