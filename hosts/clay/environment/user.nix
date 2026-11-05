{  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."ets-c837622227" = {
    isNormalUser = true;
    description = "taylor";
    extraGroups = [ "networkmanager" "wheel" "plugdev" ];
  };
  networking.hostName = "clay"; # Define your hostname.
}
