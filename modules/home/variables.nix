{ ... }: {
  home.sessionVariables = {
    EDITOR = "hx";
    VISUAL = "hx";
    GDK_BACKEND = "wayland";
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    XDG_SESSION_TYPE = "wayland";
    NIXOS_OZONE_WL = "1";
    XDG_CURRENT_DESKTOP = "wlroots";
  };
}
