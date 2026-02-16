
{ pkgs, ... }: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    fira-code
    fira-code-symbols
    font-awesome
    # Replace the old nerdfonts with specific nerd-fonts packages
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.hack
    # Add other specific nerd fonts you need, or use the line below for all fonts
    # ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
    noto-fonts
    noto-fonts-color-emoji
  ];
}
