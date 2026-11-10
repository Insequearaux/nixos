{
  services.syncthing = {
    enable = true;
    settings = {
      devices = {
        "minakami" = { id = "UUGFBW4-CPMJP34-AXV42HL-32A4J4V-GWFHAZZ-ZPGAIAQ-5PISOIF-SIA43AV"; };
        "kurisu" = { id = "3UXTM3O-OXMARZG-LJNNM3L-Y22G5T2-L6HMYWP-YUCSX2B-KHSLPCC-WWNMGAW"; };
        "girl-in-shell" = { id = "73STM7S-CZTUNBB-CDUNB7D-A2VR7OE-5Z47KEF-FVVEOBT-32WYLHJ-SMHVLQN"; };
        "clay" = {id = "Y6R7EPD-YB5KI7Q-PQ433EA-LJWUYRY-KCECFRY-RPXERF5-MIPAW7Z-55DTVQ3"; }; 
      };
      folders = {
        "music" = {
          path = "~/Music";
          devices = ["clay" "minakami" "kurisu" "girl-in-shell"];
          id = "pmmqc-swphr";
        };
        "share" = {
          path = "~/share";
          devices = ["clay" "minakami" "kurisu" "girl-in-shell"];
          id = "mhseg-kcfz5";
        };
        ".config" = {
          path = "~/.config";
          devices = ["clay" "kurisu"];
          id = "dotconfig";
          ignorePatterns = [
          "!/nvim"
          "!/home-manager"
          "*" 
          ];
        };
        "nixos" = {
          path = "/etc/nixos";
          devices = ["clay" "kurisu"];
          id = "etcnixoscfg";
        };
      };
    };




  };
}
