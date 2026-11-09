{pkgs,...}:{

services = {

  libinput.enable = true;
  logind.settings.Login = {
    HandleLidSwitch = "suspend";
    HandleLidSwitchExternalPower = "lock"; 
  };
  thermald = {
    enable = true;
  };
  upower.enable = true;
  power-profiles-daemon.enable = true;
};
powerManagement.enable = true;
boot = {
  kernelParams = [
    "amdgpu.vm_update_mode=3"
      "pcie_port_pm=off"
  ];
};
}
