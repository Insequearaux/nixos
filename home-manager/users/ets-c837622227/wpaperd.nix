{self,...}:{
  services.wpaperd = {
      enable = true;
      settings = {
        DP-5 = {
          path = "${self}/wallpapers/main.jpg";
        };
        DP-6 = {
          path = "${self}/wallpapers/side.jpg";
        };
        DP-4 = {
          path = "${self}/wallpapers/main.jpg";
        };
        HDMI-A-4 = {
          path = "${self}/wallpapers/side.jpg";
        };
	any = {
		path = "${self}/wallpapers";
      };
    };
};
}
