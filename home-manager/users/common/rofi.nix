{pkgs,...}:
{

programs.rofi = {
  enable = true;
  theme = "purple";
 
  package = pkgs.rofi;
  settings = {
  location = 0;

  };
};

}
