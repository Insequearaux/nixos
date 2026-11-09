{
  wayland.windowManager.niri.settings = {
    layout = {
      gaps = 12;
      struts = {
        top = -10;
      };
    };
    _children = [
    {
      window-rule._children = [
        {match._props = {app-id="Alacritty";};}
        {default-column-width = {proportion = 0.64;};}
        {match._props = {app-id="Spotify";};}
        {min-height = 200;}
      ];
    }
    ];
    environment = {
      NFSM_SOCKET = "/run/user/1000/nfsm.sock";
    };
  };
}
