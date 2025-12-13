{ pkgs, ... }: {
  home.packages = with pkgs; [
    ripgrep
    obsidian
    spotify
    obs-studio
    papirus-icon-theme
    zoxide
    s-tui
    stress
    lm_sensors
    conky
    powertop
    vesktop
    onlyoffice-desktopeditors
    transmission_4-gtk
    nwg-look
    vicinae
    swayosd
    vlc
    spotify-player
    pcmanfm
    unzip
    gscreenshot
    pavucontrol
    swww
    waypaper
    zoom-us
    yazi
    networkmanagerapplet
    discordo
    vscode-fhs
    lazygit
  ];
}

