{ pkgs, ... }: {
  users.users.cornel = {
    isNormalUser = true;
    description = "cornel";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
  };
}
