{ inputs,pkgs, lib, config, ... }:
{
  imports = [
    inputs.stylix.homeModules.stylix
  ];
  stylix = {
  enable = true;
#  # base16Scheme = "${pkgs.base16-schemes}/share/themes/black-metal-gorgoroth.yaml";
#  # base16Scheme = "${pkgs.base16-schemes}/share/themes/vesper.yaml";
#  # base16Scheme = "${pkgs.base16-schemes}/share/themes/black-metal.yaml";
#  # base16Scheme = "${pkgs.base16-schemes}/share/themes/mocha.yaml";
#  # base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
#  # base16Scheme = "${pkgs.base16-schemes}/share/themes/terracotta.yaml";
  base16Scheme = ./schemes/matugen-scheme.yaml; 
  #image = ../../../wallpapers/landscape/main.jpg;
  polarity = "dark";
#
  targets = {
    kitty.enable = true;
    btop.enable = true;
    neovim = {
      enable = false;
      colors.enable = false;
      plugin.enable = false;
    };
    #waybar.enable = true;
    wayle.enable = true;
    gtk.enable = false;
    floorp = {
      enable = false;
      profileNames = [
        "taylor"
      ];
    };
    firefox.enable = true;
    spicetify.enable = false;
    rofi.enable = true;
    swaylock.enable = true;
    yazi.enable = true;
    #nixcord.enable = true;
    nixvim.enable = false;
    wpaperd.enable = false;
  };
#
#  cursor = {
#    package = pkgs.volantes-cursors;
#    name = "volantes_cursors";
#    size = 24;
#  };
#
#  fonts = {
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
  };
  home.file = 
  let
    colors = config.lib.stylix.colors.withHashtag;
  in 
  {
    ".config/nvim/lua/stylixcolorscheme.lua".text = ''
      return {
        base00 = "${colors.base00}",
        base01 = "${colors.base01}",
        base02 = "${colors.base02}",
        base03 = "${colors.base03}",
        base04 = "${colors.base04}",
        base05 = "${colors.base05}",
        base06 = "${colors.base06}",
        base07 = "${colors.base07}",
        base08 = "${colors.base08}",
        base09 = "${colors.base09}",
        base0A = "${colors.base0A}",
        base0B = "${colors.base0B}",
        base0C = "${colors.base0C}",
        base0D = "${colors.base0D}",
        base0E = "${colors.base0E}",
        base0F = "${colors.base0F}",
      }
    '';
  };
} 
