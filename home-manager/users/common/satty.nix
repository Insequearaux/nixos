{pkgs,...}:
{
  home.file.".config/satty/overrides.css".source = ./satty.css;
  programs.satty = {
    enable = true;
    package = pkgs.satty;
    settings ={

      general= {
        corner-roundness = 12;
        no-window-decoration = true;
        actions-on-escape = ["save-to-clipboard" "exit"];
      };

    };

  };


}
