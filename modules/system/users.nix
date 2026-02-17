{ pkgs, ... }: {
  users.users.cornel = {
    isNormalUser = true;
    description = "cornel";
    extraGroups = [ "adbusers" "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
  };
  nix.settings.trusted-users = [ "root" "cornel" ]; 
}
