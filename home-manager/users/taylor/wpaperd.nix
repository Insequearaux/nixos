{self,...}:{
  services.wpaperd = {
      enable = true;
      settings = {
	eDP-1 = {
		path = "${self}/home-manager/wallpapers/lanscape/main.jpg";
      };
    };
};
}
