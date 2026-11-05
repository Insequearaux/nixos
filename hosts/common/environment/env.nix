{pkgs,inputs,...}:
let
system = pkgs.system;
in
{
  environment.systemPackages = with pkgs; [
      home-manager
      xdg-utils
      xwayland-satellite
      blueman
      emote
      wtype
      wl-clipboard
      direnv
      grim
      slurp
      cava
      kdePackages.dolphin
      cifs-utils
      inputs.agenix.packages.x86_64-linux.default
      inputs.nfsm-flake.packages.${system}.nfsm
      inputs.nfsm-flake.packages.${system}.nfsm-cli
      jdk
      ];
  programs = {
    xwayland = {
      enable = true;
    };
    nix-index-database.comma = {
      enable = true;
    };
    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 14d --keep 6";
    };
    git = {
      enable = true;
    };
    neovim = {
      enable = true;
    };
    vim = {
      enable = true;
    };
    niri = {
      enable = true;
    };
  };

hardware.bluetooth = {

	enable = true;
	powerOnBoot = true;
	settings = {
		General = {
			Experimental = true;
		};
	};

};

services.blueman.enable = true;
  fonts = {
    enableDefaultPackages = true;
    packages = [pkgs.nerd-fonts.droid-sans-mono];
    fontconfig = {
      useEmbeddedBitmaps = true;
      defaultFonts = {
        serif = [ "DroidSansMono" ];
        sansSerif = [ "DroidSansMono" ];
        monospace = [ "DroidSansMono" ];
      };
    };
  };





}
