{ inputs,pkgs, lib, ... }:
{
  imports = [
    inputs.stylix.homeModules.default
  ];
  stylix.enable = true;
#  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/black-metal-gorgoroth.yaml";
#  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/vesper.yaml";
#  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/black-metal.yaml";
#  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/mocha.yaml";
#  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
#  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/terracotta.yaml";
  stylix.image = ../../wallpapers/landscape/main.jpg;
  stylix.polarity = "dark";
#
  stylix.targets = {
    kitty.enable = true;
    btop.enable = true;
    neovim.enable = true;
    #waybar.enable = true;
    wayle.enable = true;
    gtk.enable = false;
    floorp.enable = false;
    rofi.enable = true;
    swaylock.enable = true;
    yazi.enable = true;
  };
#
#  stylix.cursor = {
#    package = pkgs.volantes-cursors;
#    name = "volantes_cursors";
#    size = 24;
#  };
#
#  stylix.fonts = {
#    serif = {
#      package = pkgs.poppins;
#      name = "Poppins";
#    };
#    sansSerif = {
#      package = pkgs.poppins;
#      name = "Poppins";
#    };
#    monospace = {
#      package = pkgs.maple-mono.truetype;
#      name = "Maple Mono";
#    };
#    emoji = {
#      package = pkgs.noto-fonts-emoji;
#      name = "Noto Color Emoji";
#    };
#  };
} 
