{pkgs,lib,...}:  let
    yazi =lib.getExe pkgs.yazi;
    alacritty = lib.getExe pkgs.alacritty;
    yazidesktop = pkgs.makeDesktopItem { name = "yaziopen";
      desktopName = "yaziopen";
      exec = "${alacritty} -e ${yazi}";
      terminal = true;};
  in {
  home = {
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

home.packages = [
yazidesktop
];

xdg.mimeApps = {
  enable = true;
  defaultApplications =

   {
    "inode/directory" = "${yazidesktop}";
  };
};
}
