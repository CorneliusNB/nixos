{ pkgs, ... }: {
  users.users.yoki = {
    isNormalUser = true;
    description = "yoki";
    extraGroups = [ "networkmanager" "wheel" "tty" "dialout"];
  };
}
