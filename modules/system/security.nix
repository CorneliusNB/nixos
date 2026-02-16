{ pkgs, ... }: {
  security.sudo.extraRules = [
    {
      users = [ "cornel" ];
      commands = [
        { command = "/usr/bin/tee"; options = [ "NOPASSWD" ]; }
        { command = "${pkgs.coreutils}/bin/tee"; options = [ "NOPASSWD" ]; }
        { command = "/run/current-system/sw/bin/tee"; options = [ "NOPASSWD" ]; }
      ];
    }
  ];
}
