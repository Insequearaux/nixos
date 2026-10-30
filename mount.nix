{inputs,config,...}:
let
  etspasswd = config.age.secrets.etspasswd.path;
  engrpasswd = config.age.secrets.engrpasswd.path;
  defineMount = device: passwd: {
    device = device;
    fsType = "cifs";
    options = [
      "credentials=${passwd}"
    ];
  };
in
{
  imports = [
    inputs.agenix.nixosModules.default
  ];

  age = {
    secrets.etspasswd = {
    file = ./secrets/etspasswd.age;
    owner = "ets-c837622227";
  };
    secrets.engrpasswd = {
      file = ./secrets/engrpasswd.age;
      owner = "ets-c837622227";
    };
    identityPaths = ["/home/ets-c837622227/.ssh/id_ed25519"];
  };

fileSystems."/mnt/labs-fog" =  defineMount "//labs-fog/fog" etspasswd;
fileSystems."/mnt/udrive" = defineMount "//nasstore2/other/ets-c837622227/home" etspasswd;
fileSystems."/mnt/top" = defineMount "//engr.colostate.edu/top" etspasswd;
fileSystems."/mnt/Software" = defineMount "//nasstore2/software" etspasswd;
fileSystems."/mnt/Student-Employees" = defineMount "//nasstore2/ens/Student-Employees" etspasswd;
fileSystems."/mnt/engrudrive" = defineMount "//nasstore/students/UNGRAD/ECE/c837622227/home" engrpasswd;

}
