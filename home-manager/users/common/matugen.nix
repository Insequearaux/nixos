{inputs,pkgs,self,...}:{  
  imports = [
    inputs.matugen.nixosModules.default
  ];
  programs.matugen = {
    enable = false;
    package = pkgs.matugen;
    variant = "dark";
    templates.base16 = {
      input_path = "./scheme.yaml";
      output_path = "./matugenscheme.yaml";
    };   
  };           
           }
