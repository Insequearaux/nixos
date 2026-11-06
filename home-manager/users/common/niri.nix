{pkgs, ...}:
{

  wayland.windowManager.niri = {

    enable = true;	

    settings = {


      binds = {
        "Mod+N" = {
          spawn = ["firefox"];
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
          spawn-sh = ["alacritty -e yazi"];
        };
        "Mod+Space" = {
          spawn = ["rofi" "-show" "drun"];
        };
        "Mod+Shift+C" = {
          spawn = ["waylandar-dashboard"];
        };
      };
    };
    extraConfig = ''
      include "${./niri.kdl}" 
      spawn-at-startup "blueman-applet"
      spawn-at-startup "nfsm"
      prefer-no-csd
      spawn-sh-at-startup "wl-paste --watch cliphist store"
      '';
  };


}
