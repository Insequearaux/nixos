{...}:

{
imports=[./nvidia.nix];


programs.niri.enable = true;
programs.xwayland.enable = true;


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
}
