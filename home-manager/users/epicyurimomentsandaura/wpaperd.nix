{self,...}:{
  services.wpaperd = {
      enable = true;
      settings = {
	HDMI-A-1 = {
		path = "${self}/home-manager/wallpapers/landscape/main.jpg";
      };
	DP-2 = {
		path = "${self}/home-manager/wallpapers/landscape/main.jpg";
      };
    };
};
}

