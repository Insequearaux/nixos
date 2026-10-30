{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    waveforms.url =  "path:/home/ets-c837622227/Documents/waveforms-flake/waveforms-flake";
    nix-index-database.url = "github:nix-community/nix-index-database";
  };


  outputs = inputs: {
	nixosConfigurations.clay = inputs.nixpkgs.lib.nixosSystem {
		modules = [
                  ./configuration.nix
                  inputs.waveforms.nixosModule
                  ({ config, pkgs, ... }: {
                    users.users.ets-c837622227.extraGroups = [ "plugdev" ];
                   })
                ];
		specialArgs = {
			inputs = inputs;
		};

	};
  };
}
