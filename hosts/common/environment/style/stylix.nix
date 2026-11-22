{inputs,...}:{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  
  stylix = {
    #image = ../../wallpapers/landscape/main.jpg;
    base16Scheme = /etc/nixos/home-manager/users/common/style/schemes/matugen-scheme.yaml; 
    polarity = "dark";

    targets = {
      nixos-icons.enable = true;
#      spicetify.enable= false;
      console.enable = true;
  };
  };
}
