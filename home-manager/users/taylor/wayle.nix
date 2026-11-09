{pkgs,...}:{
  services.wayle = {
    enable = true;
    package = pkgs.wayle;
    settings = {
      bar = {
        background-opacity = 40;
        rounding = "full";
        shadow = "drop";
        button-variant = "basic";
        button-bg-opacity = 0;
        scale = 0.85;
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
            "battery"
            "brightness"
          ];
        }
        ];
      };
      styling = {
        theme-provider = "matugen";
        theming-monitor = "DP-4";
        palette = {
          bg = "#1e2030";
          surface = "#222436";
          elevated = "#2f334d";
          fg = "#c8d3f5";
          fg-muted = "#828bb8";
          primary = "#82aaff";
          red = "#ff757f";
          yellow = "#ffc777";
          green = "#c3e88d";
          blue = "#86e1fc";
        };
      };
      modules = {
        battery = {
          icon-show = true;
          label-show = true;
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
