{inputs,pkgs,self,config,...}:{  
  imports = [
    inputs.matugen.nixosModules.default
  ];
    home.file.".config/matugen/config.toml".text = ''
      [config]
      mode = "dark"

      [templates.stylix]
      input_path = "/etc/nixos/home-manager/users/common/style/templates/matugen-template.yaml"
      output_path = "/etc/nixos/home-manager/users/common/style/schemes/matugen-scheme.yaml"

      [templates.wayle]
      input_path = "/etc/nixos/home-manager/users/common/style/templates/wayle-template.toml"
      output_path = "/etc/nixos/home-manager/users/common/style/schemes/wayle-scheme.toml"
    '';
             }
