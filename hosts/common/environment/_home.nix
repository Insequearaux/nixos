{lib,inputs,self,config,...}:
{
options.myHomeUsers = lib.mkOption {
    type = with lib.types; listOf str;
    default = [];
  };
  config.home-manager.users =
    let
      mkNameValuePair = name: {
        name = name;
        value = getImports name; 
      };
      allusers = config.myHomeUsers;
      getImports = user: {
        imports = [
          (inputs.import-tree (self + /home-manager/users/common))
          (inputs.import-tree (self + /home-manager/users/${user}))
        ];
      };
      userConfigs = builtins.listToAttrs ( map mkNameValuePair allusers );
    in
      userConfigs;
    #home manager bruh moment
    config.users.users = 
    let
      setNormalUser = name: {
        name = name;
        value = {
          isNormalUser = true; 
        };
      };
      allusers = config.myHomeUsers;
      userConfigs = builtins.listToAttrs ( map setNormalUser allusers );
    in
      userConfigs;

    config.home-manager.extraSpecialArgs = {
      inputs = inputs;
      self = self;
    };
}
