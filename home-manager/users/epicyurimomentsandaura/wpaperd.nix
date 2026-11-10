{self,...}:{
  services.wpaperd = {
      enable = true;
      settings = {
	HDMI-A-1 = {
		path = "${self}/wallpapers/main.jpg";
      };
	DP-2 = {
		path = "${self}/wallpapers/main.jpg";
      };
    };
};
}

