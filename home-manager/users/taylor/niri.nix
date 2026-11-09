{
  wayland.windowManager.niri.settings = {
    _children = [
    {
      window-rule._children = [
        {match._props = {app-id="Alacritty";};}
        {default-column-width = {proportion = 0.6666;};}
      ];
    }
    ];
    environment = {
      NFSM_SOCKET = "/run/user/1000/nfsm.sock";
      EDITOR = "nvim";
    };
  };
}
