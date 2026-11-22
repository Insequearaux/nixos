 {
  nixpkgs.config.allowUnfree = true;
  home = {
    sessionVariables = {
      EDITOR = "nvim";
    };
  };
}
