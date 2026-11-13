{inputs,config,...}:
let
  etspasswd = config.age.secrets.etspasswd.path;
  defineMount = device: passwd: {
    device = device;
    fsType = "cifs";
    options = [
      "credentials=${passwd}"
      "uid=1000"
      "gid=100"
      #"noauto"
      "nofail"
      "x-systemd.automount"
      "x-systemd.device-timeout=5s"
      "x-systemd.idle-timeout=60min"
    ];
  };
in
{
  systemd.network.wait-online.enable = false;
  imports = [
    inputs.agenix.nixosModules.default
  ];

  age = {
    secrets.etspasswd = {
    file = "${inputs.self}/secrets/etspasswd.age";
    owner = "taylor";
  };
  };
fileSystems."/mnt/udrive" = defineMount "//nasstore2.engr.colostate.edu/other/ets-c837622227/home" etspasswd;

}
