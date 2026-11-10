{
programs.zsh = {
	enable = true;
        enableCompletion = false;
        autosuggestion.enable = false;
        syntaxHighlighting.enable = false;

        shellAliases = {



        };
        
        zplug = {
          enable = true;
          plugins =  [
            #{ name = "zsh-users/zsh-autosuggestions"; }
          ];
        };
	initContent = "fastfetch\nexport EDITOR=nvim\nPS1=\"[%n@%m:%~]$ \"";
};

}

