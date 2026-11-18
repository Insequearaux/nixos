{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    #waveforms.url =  "path:/home/ets-c837622227/Documents/waveforms-flake/waveforms-flake";
    nix-index-database.url = "github:nix-community/nix-index-database";
    agenix.url = "github:ryantm/agenix";
    waylandar.url = "github:samjoshuadud/waylandar";
    nfsm-flake = {
      url = "github:gvolpe/nfsm";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    easy-hosts.url = "github:tgirlcloud/easy-hosts";
    import-tree.url = "github:denful/import-tree";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixos-hardware = {
      url = "github:NixOs/nixos-hardware";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager.url = "github:nix-community/home-manager";
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    korimer-flake = {
      url = "github:Korimer/nix-s-os/unden";
      inputs.nfsm-flake.follows = "nfsm-flake";
    };
    bootvine = {
      url = "git+https://codeberg.org/wvhulle/bootvine";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    yazi-picker.url = "github:kkllffaa/yazi-picker";
    matugen = {
      url = "github:InioX/matugen";
    };
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    self = {};
  };


  outputs = inputs: 

    inputs.flake-parts.lib.mkFlake {inherit inputs;} {

      imports = [
        inputs.easy-hosts.flakeModule
        inputs.home-manager.flakeModules.home-manager
      ];
      flake = self: 
      let
      mkUser = username: inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux"; 
      modules = [
        (inputs.import-tree ./home-manager/users/common)
        (inputs.import-tree ./home-manager/users/${username})
      ];
      extraSpecialArgs = {
        self = inputs.self;
        inherit inputs;
      };
  };
      in
      {
        inherit inputs;
        inherit self;
        homeConfigurations = {
          "ets-c837622227@clay" = mkUser "ets-c837622227";
          "taylor@kurisu" = mkUser "taylor";
	  "epicyurimomentsandaura@girl-in-shell" = mkUser "epicyurimomentsandaura";
	};
      };

      easy-hosts = {
        shared = {
          modules = [
            (inputs.import-tree ./hosts/common)
          ];
          specialArgs = {
            self = inputs.self;
          };
        };
        hosts =  {
          clay = {
            modules = [
              (inputs.import-tree ./hosts/clay)
            ];
          };
          girl-in-shell = {
            modules = [
              (inputs.import-tree ./hosts/girl-in-shell)
            ];
          };
          kurisu = {
            modules = [
              (inputs.import-tree ./hosts/kurisu)
            ];
          };
        };
      };
    };
}
