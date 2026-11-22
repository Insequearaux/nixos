{config,...}:{
  wayland.windowManager.niri = 
  let 
  colors = config.lib.stylix.colors.withHashtag;
  in
  {
    settings = {
layout = {
  focus-ring = {
    active-color = colors.base0D;
    inactive-color = colors.base02;
  };
};     
    };
  };
             }
