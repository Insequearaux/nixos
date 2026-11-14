{pkgs,lib,inputs,...}:  let
    yazi =lib.getExe pkgs.yazi;
    alacritty = lib.getExe pkgs.alacritty;
    yazidesktop = pkgs.makeDesktopItem { name = "yaziopen";
      desktopName = "yaziopen";
      exec = "${alacritty} --title filePicker -e ${yazi}" ;
      terminal = false;};
  in {
  home = {
    sessionVariables = {
    #  GDK_DEBUG = "portals";
    #  GTK_USE_PORTAL = 1;
    };
  };
home.packages = [
yazidesktop
];
xdg = {
#  mime = {
#    enable = false;
#  };
#  mimeApps = {
#    enable = false;
#    defaultApplications =
#    {
#      "inode/directory" = "yaziopen.desktop";
#    };
#  };
  portal = {
    enable = true;
    xdgOpenUsePortal = true;
#    extraPortals = with pkgs; lib.mkForce [
#      xdg-desktop-portal-termfilechooser 
#      xdg-desktop-portal
#      xdg-desktop-portal-wlr
#      #inputs.yazi-picker.packages.${pkgs.system}.portal
#    ];
#
#    config.common = {
#      "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
#    };
  };
#  configFile."xdg-desktop-portal-wlr/config" = {
#      enable = true;
#      text = lib.generators.toINI {} {
#        screencast = { 
#          chooser_type = "simple";
#          chooser_cmd = "${pkgs.wlr-utils}/bin/wlr-chooser";
#        };
#      };
#    };
#   configFile."xdg-desktop-portal-termfilechooser/config" = {
#        enable = false;
#        force = true;
#        text =  ''
#        [filechooser]
#        cmd=${pkgs.xdg-desktop-portal-termfilechooser}/share/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh
#        default_dir=$HOME
#        env=TERMCMD=alacritty --title="filePicker" -e ${pkgs.yazi}
#        open_mode=suggested
#        save_mode=suggested
#        '';
#   };
#  # termfilechooser = {
#    #   enable = true;
#    #   settings = {
#      #     filechooser = {
#        #       cmd = "${pkgs.xdg-desktop-portal-termfilechooser}}/share/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh";
#        #       default_dir = "$HOME";
#        #     };
#      #   };
#    # };
#  # config = {
#    #   niri = {
#      #     default = [ "niri" "gtk" ];
#      #     "org.freedesktop.impl.portal.FileChooser" = [ "xdg-desktop-portal-termfilechooser" ];
#      #   };
#    # };
##};
  };
}
