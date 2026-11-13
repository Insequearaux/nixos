{
programs.zsh = {
	enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases = {

        };
        
        zplug = {
          enable = false;
          plugins =  [
            #{ name = "zsh-users/zsh-autosuggestions"; }
          ];
        };
	initContent = ''
          fastfetch
          export EDITOR=nvim
          PS1="[%n@%m:%~]$ "
          bindkey "^[[1;5C" forward-word
          bindkey "^[[1;5D" backward-word
          '';
};

}

