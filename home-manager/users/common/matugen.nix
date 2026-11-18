{inputs,pkgs,self,...}:{  
  imports = [
    inputs.matugen.nixosModules.default
  ];
  programs.matugen = {
    enable = true;
    variant = "dark";
    jsonFormat = "hex";
    #palette = "default";   

      config = {
        wallpaper.set = false;
        reload_apps = true;
        reload_apps_list = {
          kitty = true;
          wayle = true;
        };
      };
  templates = {

  };
  };           
           }
