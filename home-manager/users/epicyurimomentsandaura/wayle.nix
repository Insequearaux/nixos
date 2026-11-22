{pkgs,lib,...}:{
  services.wayle = {
    enable = true;
    package = pkgs.wayle;
    settings = {
      bar = {
        background-opacity = lib.mkForce 40;
        rounding = "full";
        shadow = "drop";
        scale = 0.75;
        button-variant = "basic";
        button-bg-opacity = lib.mkForce 0;
        layout = [
        {
          monitor = "*";
          show = true;
          left = [
            "media"
              "volume"
              "bluetooth"
              "cava"
          ];
          center = [
            "clock"
              "niri-workspaces"
          ];
          right = [
            "network"
            "systray"
            "brightness"
          ];
        }
        ];
      };
      styling = {
        theme-provider = "wayle";
        theming-monitor = "DP-4";
      };
      modules = {
        battery = {
          icon-show = false;
          label-show = false;
        };
        niri-workspaces = {
          display-mode = "icon";
          label-strategy = "index";
          app-icons-show = true;
        };
      };
    };
  };
           } 

