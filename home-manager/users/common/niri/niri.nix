{pkgs, ...}:
{

  wayland.windowManager.niri = {

    enable = true;	

    extraConfig = ''
      include "${./animations.kdl}" 
      include "${./binds.kdl}" 
      include "${./input.kdl}" 
      include "${./layout.kdl}" 
      include "${./rules.kdl}" 
      spawn-at-startup "blueman-applet"
      spawn-at-startup "nfsm"
      prefer-no-csd
      spawn-sh-at-startup "wl-paste --watch cliphist store"
      spawn-at-startup "systemctl restart --user swayidle"
      '';
    settings = {
      screenshot-path  = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";

    
    environment = {
      EDITOR = "nvim";
    };
      _children = [
    {
      window-rule._children = [
        {match._props = {app-id="Alacritty"; title="filePicker";};}
        {open-floating = true;}
      ];
    }



      ];

      binds = {
        "Mod+N" = {
          spawn = ["floorp"];
        };
        "Mod+Shift+N" = {
          spawn-sh = ["kitty -e nvim"];
        };
        "Mod+Period" = {
          spawn = ["emote"];
        };
        "Mod+Shift+S" = {
          spawn-sh = ["grim -g \"$(slurp)\" - | satty -f -"];
        };
        "Mod+Shift+V" = {
          spawn-sh = ["cliphist list | rofi -dmenu | cliphist decode | wl-copy"];#["rofi -modi clipboard:./rofi-cliphist -show clipboard -show-icons"];
        };
        "Mod+E" = {
          spawn-sh = ["kitty -e yazi"];
        };
        "Mod+Space" = {
          spawn = ["rofi" "-show" "drun"];
        };
        "Mod+Shift+C" = {
          spawn = ["waylandar-dashboard"];
        };
        "Mod+Shift+Tab".toggle-overview = [];
      };
    };
  };


}
