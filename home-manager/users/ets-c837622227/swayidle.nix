
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
      "graphical.target"
      "graphical-session.target"
    ];
      events = {     
        "before-sleep" = lock;
        "lock" = lock;
        #"after-resume" = monitorsOn;
      };
      timeouts = [
        {
          timeout = 500;
          command = "sleep 2m && " + monitorsOff;
          #resumeCommand = monitorsOn;
        }
        {
          timeout = 600;
          command = "${lock} --grace 5 --fade-in 1";
        }
      ];
    };
#    systemd.user.services.swayidle = {
#      Unit = {
#        After = [ "graphical-session.target" ];
#        PartOf = [ "graphical-session.target" ];
#        WantedBy = [ "graphical-session.target" ];
#      };
#    };
  }
