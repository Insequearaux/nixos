{pkgs,inputs,...}:

{
imports = [
inputs.spicetify-nix.nixosModules.default
inputs.nix-index-database.nixosModules.nix-index
];

environment.systemPackages = with pkgs; [
slack
neovim
vim
alacritty
home-manager
swaybg
swaylock-effects
xwayland-satellite
thunderbird
ferdium
wpaperd
blueman
remmina
emote
wtype
wl-clipboard
git
direnv
grim
slurp
cava
cosmic-files
cifs-utils
inputs.agenix.packages.x86_64-linux.default
];

programs.xwayland.enable = true;
programs.steam.enable = true;

programs.nix-index-database.comma.enable = true;

programs.nh = {
  enable = true;
  clean.enable = true;
  clean.extraArgs = "--keep-since 14d --keep 6";
};


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

programs.spicetify = 
	let
		spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
	in
	{
	enable = true;
	theme = spicePkgs.themes.bloom;
	colorScheme = "violet";
	enabledExtensions = with spicePkgs.extenstions; [
		
	];
	enabledCustomApps = with spicePkgs.apps; [
		lyricsPlus
	];


	};

}
