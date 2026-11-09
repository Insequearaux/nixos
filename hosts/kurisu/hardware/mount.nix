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
      "noauto"
      "nofail"
      "x-systemd.idle-timeout=60"
    ];
  };
in
{
  imports = [
    inputs.agenix.nixosModules.default
  ];

  age = {
    secrets.etspasswd = {
    file = "${inputs.self}/secrets/etspasswd.age";
    owner = "taylor";
  };
    identityPaths = ["/home/taylor/.ssh/id_ed25519"];
  };
#fileSystems."/mnt/udrive" = defineMount "//nasstore2/other/ets-c837622227/home" etspasswd;

}
