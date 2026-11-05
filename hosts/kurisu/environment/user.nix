{  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."taylor" = {
    isNormalUser = true;
    description = "taylor";
    extraGroups = [ "networkmanager" "wheel" "plugdev" ];
  };
  networking.hostName = "kurisu"; # Define your hostname.
}
