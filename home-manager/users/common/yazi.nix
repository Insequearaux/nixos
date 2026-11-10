{pkgs,...}:{
  programs.yazi = {
   enable = true;
   settings = {
     mgr = {
     show_hidden = true;
     };
   };
   keymap = {
    mgr = {
     prepend_keymap = [
        {
          on = ["T"];
          run = "shell \'alacritty --working-directory \"$PWD\" &\' --orphan";
          desc = "open alacritty in current dir";
        }
        {
          on = ["!"];
          run = "shell \"$SHELL\" --block";
          desc = "Open $SHELL here";
        }
        {
          on = ["<enter>"];
          run = "plugin smart-enter";
          desc = "smart enter";
        }
        {
          on = ["p"];
          run = "plugin smart-paste";
          desc = "smart paste";
        }       {
          on = ["f"];
          run = "plugin jump-to-char";
          desc = "jump to char";
        }
     ];
    };
   };
   plugins = {
      git = {
        package = pkgs.yaziPlugins.git;
        setup = true;
      };
       mediainfo = {
        package = pkgs.yaziPlugins.mediainfo;
        setup = true;
      };     zoom = {
        package = pkgs.yaziPlugins.zoom;
        setup = false;
      };
      smart-enter = {
        package = pkgs.yaziPlugins.smart-enter;
        setup = false;
      };
      smart-paste = {
        package = pkgs.yaziPlugins.smart-paste;
        setup = false;
      };
      smart-filter = {
        package = pkgs.yaziPlugins.smart-filter;
        setup = false;
      };
      jump-to-char = {
        package = pkgs.yaziPlugins.jump-to-char;
        setup = false;
      };
      ouch = {
        package = pkgs.yaziPlugins.ouch;
        setup = false;
      };
      convert = {
        package = pkgs.yaziPlugins.convert;
        setup = false;
      };
       mount = {
        package = pkgs.yaziPlugins.mount;
        setup = false;
      }; 
       sudo = {
        package = pkgs.yaziPlugins.sudo;
        setup = false;
      };
      wl-clipboard = {
        package = pkgs.yaziPlugins.wl-clipboard;
        setup = false;
      };
      split-tabs = {
        package = pkgs.yaziPlugins.split-tabs;
        setup = false;
      };
      allmytoes = {
        package = pkgs.yaziPlugins.allmytoes;
        setup = true;
      };
      office = {
        package = pkgs.yaziPlugins.office;
        setup = false;
      };
      bypass = {
        package = pkgs.yaziPlugins.bypass;
        setup = false;
      };
   };
   };
  }

