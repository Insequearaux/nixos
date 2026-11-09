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
    my-home-manager.url = "path:./home-manager/";
    self = {};
  };


  outputs = inputs: 

    inputs.flake-parts.lib.mkFlake {inherit inputs;} {

      imports = [
        inputs.easy-hosts.flakeModule
        inputs.home-manager.flakeModules.home-manager
      ];

     flake = {homeConfigurations = inputs.my-home-manager.homeConfigurations;};
      easy-hosts = {
        shared = {
          modules = [
            (inputs.import-tree ./hosts/common)
          ];
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
