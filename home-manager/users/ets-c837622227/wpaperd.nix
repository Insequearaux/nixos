{self,...}:{
  services.wpaperd = {
      enable = true;
      settings = {
        DP-5 = {
          path = "${self}/home-manager/wallpapers/landscape/main.jpg";
        };
        DP-6 = {
          path = "${self}/home-manager/wallpapers/portrait/side.jpg";
        };
        DP-4 = {
          path = "${self}/home-manager/wallpapers/landscape/main.jpg";
        };
        HDMI-A-4 = {
          path = "${self}/home-manager/wallpapers/portrait/side.jpg";
        };
	any = {
		path = "${self}/home-manager/wallpapers";
      };
    };
};
}
