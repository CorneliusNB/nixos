{ config, pkgs, ... }:
{
 programs.chromium = {
    enable = true;
    extensions = [
      { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; } # ublock origin lite
      { id = "hfjbmagddngcpeloejdejnfgbamkjaeg"; } # vimium c
    ];
  };
}
