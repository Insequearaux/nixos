{
  services.hypridle = {
    enable = true;
    
    settings = 
    let 
    lock = "swaylock";
    monitorsOn = "${nm} power-on-monitors";
    monitorsOff = "${nm} power-off-monitors";
    nm = "niri msg action";
    in {
      general = {
        lock_cmd = lock;
        before_sleep_cmd = lock;
        after_sleep_cmd = monitorsOn + " && " + lock + " --grace 0";
      };
      listener = [
        {
          timeout = 600;
          on-timeout = lock;

        }
        {
          timeout = 1200;
          on-timeout = monitorsOff;
          on-resume = monitorsOn;
        }
      ];
    };
  };
}
