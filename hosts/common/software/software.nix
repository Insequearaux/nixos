{pkgs,inputs,...}:
{
  imports = [
    inputs.spicetify-nix.nixosModules.default
      inputs.nix-index-database.nixosModules.default
      #inputs.waveforms.nixosModule
      #inputs.agenix.nixosModules.default
  ];
  environment.systemPackages = with pkgs; [
    slack
    gimp
    ferdium
    remmina
    waylandar
    libreoffice  
    prismlauncher
    fastfetch
  ];

  programs = {
    steam = {
      enable = true;
    };
    firefox = {
      enable = true;
    };
    spicetify = 
    let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
    in
    {
      enable = true;
      theme = spicePkgs.themes.bloom;
      colorScheme = "violet";
      enabledExtensions = with spicePkgs.extensions; [

      ];
      enabledCustomApps = with spicePkgs.apps; [
        lyricsPlus
      ];


    };
    thunderbird = {
      enable = true;
    };
  };
  nixpkgs.overlays = [ inputs.waylandar.overlays.default ];
}
