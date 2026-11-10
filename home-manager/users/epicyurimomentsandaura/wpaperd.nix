{self,...}:{
  services.wpaperd = {
      enable = true;
      settings = {
	eDP-1 = {
		path = "${self}/wallpapers/main.jpg";
      };
    };
};
}
