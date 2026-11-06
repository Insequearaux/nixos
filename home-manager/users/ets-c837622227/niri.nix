{pkgs,...}:
{

  wayland.windowManager.niri = {
    settings = {
      _children = [
      {
        output = {

          _args = ["DP-4"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {position = {
                        _props = {x=3000;y=456;}; 
                      };}
          ];
        };
      }{
        output = {

          _args = ["DP-5"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {position = {
                        _props = {x=1080;y=456;}; 
                      };}
          ];
        };
      }{
        output = {

          _args = ["DP-6"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {transform = "270";}
          {position = {
                        _props = {x=4920;y=0;}; 
                      };}
          ];
        };
      }{
        output = {

          _args = ["HDMI-A-4"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {transform = "90";}
          {position = {
                        _props = {x=0;y=0;}; 
                      };}
          ];
        };
      }
    {
      window-rule._children = [
        {match._props = {app-id="Alacritty";};}
        {default-column-width = {proportion = 0.540;};}
      ];
    }
    ];
    environment = {
      NFSM_SOCKET = "/run/user/1001/nfsm.sock";
    };
    };
    extraConfig = ''
      spawn-at-startup "waylandar-widget"
      '';
  };
  }
