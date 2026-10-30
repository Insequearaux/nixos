{inputs,...}:

{
  imports = [
    inputs.agenix.packages.x86_64-linux.default
  ];

  age.secrets.etspasswd = {
    file = ./secrets/etspasswd.age;
    owner = "ets-c837622227";
  };

fileSystems."/mnt/labs-fog" = {
  device = "//labs-fog.engr.colostate.edu";
    fsType = "cifs";
    credentials="/run/agenix/etspasswd";
};


}
