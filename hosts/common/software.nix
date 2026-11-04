{pkgs,inputs,...}:
let
system = pkgs.system;
in
{
imports = [
inputs.spicetify-nix.nixosModules.default
inputs.nix-index-database.nixosModules.default
inputs.waveforms.nixosModule
inputs.agenix.nixosModules.default
];

environment.systemPackages = with pkgs; [
slack
neovim
vim
alacritty
home-manager
swaybg
gimp
xdg-utils
swaylock-effects
libreoffice
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
satty
cava
kdePackages.dolphin
cifs-utils
inputs.agenix.packages.x86_64-linux.default
inputs.nfsm-flake.packages.${system}.nfsm
inputs.nfsm-flake.packages.${system}.nfsm-cli
jdk
waylandar
];
nixpkgs.overlays = [ inputs.waylandar.overlays.default ];

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
