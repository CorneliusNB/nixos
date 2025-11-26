{ config, pkgs, ... }: 

{
  programs.ghostty = {
    enable = false;
    settings = { 
      theme = "Catppuccin Latte";
      window-theme = "system";
      mouse-hide-while-typing = true;
      scrollback-limit = 1000000;
      keybind = [ 
        "ctrl+n=new_window"
        "ctrl+h=goto_split:left"
        "ctrl+j=goto_split:bottom"
        "ctrl+k=goto_split:top"
        "ctrl+l=goto_split:right"
      ];
    }; 
  };
}
