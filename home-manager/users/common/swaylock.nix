{pkgs,...}:
{
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;

    settings = {
      screenshots = true;
      clock = true;
      indicator = true;
      effect-blur = "10x5";
      effect-scale = 1.1;
      indicator-caps-lock = true;
      hide-keyboard-layout = true;
      effect-vignette = "0.5:1";
      ring-color = "#66008833";
      text-color = "#4400ddff";
      text-clear-color = "#4400ddff";
      text-ver-color = "#4400ddff";
      text-caps-lock-color = "#4400ddff";
      ring-wrong-color = "#bf3e7466";
      ring-clear-color = "#28849c33";
      ring-caps-lock-color= "#b511b280";
      key-hl-color = "#4400ff33";

    };
  };
}
