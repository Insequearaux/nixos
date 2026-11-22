{pkgs,inputs,...}:{
imports = [
  inputs.matugen.nixosModules.default
];
environment.systemPackages = with pkgs; [
  inputs.matugen.packages.x86_64-linux.default
];
             }
