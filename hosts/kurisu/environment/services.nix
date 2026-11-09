{pkgs,...}:{

  services = {

    libinput.enable = true;
    logind.settings.Login = {
      HandleLidSwitch = "suspend-then-hibernate";
      HandleLidSwitchExternalPower = "lock"; 
    };
    thermald = {
      enable = true;
    };
    upower.enable = true;
    power-profiles-daemon.enable = true;
    fprintd.enable = true;
  };
  powerManagement.enable = true;
  boot = {
    kernelParams = [
      "amdgpu.vm_update_mode=3"
        "pcie_port_pm=off"
    ];
  };
  systemd.sleep = {
    settings.Sleep = { 
    HibernateDelaySec = "1h"; 
    SuspendState = "mem";
  };
  };
  security.pam.services = {
    sudo.fprintAuth = true;
    swaylock = {
  text = ''
    auth sufficient pam_unix.so try_first_pass likeauth nullok
    auth sufficient pam_fprintd.so
    auth include login
  '';
};
};
} 
