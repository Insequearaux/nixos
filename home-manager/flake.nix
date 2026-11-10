{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    home_manager.url = "github:nix-community/home-manager";
    import-tree.url = "github:denful/import-tree";
    flake-parts.url = "github:hercules-ci/flake-parts"; 
    self = {};
  };


  outputs = inputs: 
let
  mkUser = username: inputs.home_manager.lib.homeManagerConfiguration {
    pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux"; 
    modules = [
      (inputs.import-tree ./users/common)
      (inputs.import-tree ./users/${username})
    ];
    extraSpecialArgs = {
    self = inputs.self;
  };
  };
in
  {
	homeConfigurations = {
          "ets-c837622227@clay" = mkUser "ets-c837622227";
          "taylor@kurisu" = mkUser "taylor";
	  "epicyurimomentsandaura@girl-in-shell" = mkUser "epicyurimomentsandaura";
	};
  };
}
