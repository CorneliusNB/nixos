{ pkgs, ... }: {
  services.dunst = {
    settings = {
      global = {
        width = 300;
        height = 300;
        offset = "30x50";
        transparency = 1;
        timeout = 5;
        ignore_timeout = false;
        frame_width = 0;
      };
      
      urgency_low = {
        timeout = 3;
      };
      
      urgency_normal = {
        timeout = 5;
      };
      
      urgency_critical = {
        timeout = 10;
      };
    };
  };
}
