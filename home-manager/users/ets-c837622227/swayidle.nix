{pkgs,...}:{
  services.swayidle = 
    let 
    swaylock = "${pkgs.swaylock-effects}/bin/swaylock";
  niri = "${pkgs.niri}/bin/niri";
    lock = swaylock;
    monitorsOn = "${nm} power-on-monitors";
    monitorsOff = "${nm} power-off-monitors";
    nm = "${niri} msg action";
    loginctl = "${pkgs.systemd}/bin/loginctl}";
    systemctl = "${pkgs.systemd}/bin/systemctl}";
    in {
    enable = true;
    systemdTargets = [
      "niri-session.target"
    ];
      events = {     
        "before-sleep" = "${lock}";
        "lock" = lock;
        "after-resume" = monitorsOn;
      };
      timeouts = [
        {
          timeout = 600;
          command = "${lock} --grace 5 --fade-in 1";
        }
        {
          timeout = 1800;
          command = monitorsOff;
          resumeCommand = monitorsOn;
        }
      ];
    };
  }

