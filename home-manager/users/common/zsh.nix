{
programs.zsh = {
	enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases = {



        };
        
        zplug = {
          enable = true;
          plugins =  [
            { name = "zsh-users/zsh-autosuggestions"; }
          ];
        };
	initContent = "fastfetch\nexport EDITOR=nvim\nPS1=\"[%n@%m:%~$]\"";
};

}
