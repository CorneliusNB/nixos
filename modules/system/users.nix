{ pkgs, ... }: {
  users.users.timsurreal = {
    isNormalUser = true;
    description = "timsurreal";
    extraGroups = [ "networkmanager" "wheel" "tty" "dialout"];
  };
}
