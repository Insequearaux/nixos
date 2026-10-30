{inputs,...}:

{
  imports = [
    inputs.agenix.nixosModules.default
  ];

  age = {
    secrets.etspasswd = {
    file = ./secrets/etspasswd.age;
    owner = "ets-c837622227";
  };
    identityPaths = ["/home/ets-c837622227/.ssh/id_ed25519"];
  };

fileSystems."/mnt/labs-fog" = {
  device = "//labs-fog/fog";
    fsType = "cifs";
    options = [
    "credentials=/run/agenix/etspasswd"

    ];
};


}
