{pkgs,...}:
{
  programs.kitty = {
  enable = true;
  shellIntegration.enableZshIntegration = true;
  settings = {
    enable_audio_bell = false;
    background_opacity = "0.00";
    dynamic_background_opacity = true;
    confirm_os_window_close = 0;
    paste_actions = "quote-urls-at-prompt";
  };
  };
}

