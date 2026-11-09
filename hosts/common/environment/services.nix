{pkgs,...}:
{
  services = {
    upower = {
      enable = true;
    };

    openssh = {
      enable = true;
    };

    xrdp = {
      enable = true;
      defaultWindowManager = "niri";
      openFirewall = true;
    };

    xserver.enable = true;
    displayManager.sddm.enable = true;

  # Configure keymap in X11
 xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  printing.enable = true;

  # Enable sound with pipewire.
  pulseaudio.enable = false;

  pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    # jack.enable = true;

   
  };
 # mtr.enable = true;
 # gnupg.agent = {
 #    enable = true;
 #    enableSSHSupport = true;
 # };

  };
  networking = {
    # Enable networking
    networkmanager.enable = true;
    firewall = {
      allowedUDPPorts = [21027 22000];
      allowedTCPPorts = [22000 3389];
    };
    extraHosts = ''
    10.1.224.83 clay
    '';
  };
  security.rtkit.enable = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


    # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

 
  # Set your time zone.
  time.timeZone = "America/Denver";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  nix.settings.experimental-features = [ "nix-command" "flakes" "pipe-operators"];
  # Enable touchpad support (enabled default in most desktopManager).
  # services.libinput.enable = true;




  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "26.05"; # Did you read the comment?


}
