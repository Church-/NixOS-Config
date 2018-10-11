programs.git = {
      enable = true;
      userName = "Noah H.";
      userEmail = "turing.thesis@gmail.com";
      aliases = {
        co = "checkout";
      };
      extraConfig = {
        log = {
          decorate = "full";
        };
        rebase = {
          autostash = true;
        };
        pull = {
          rebase = true;
        };
        stash = {
          showPatch = true;
        };
        "color \"status\"" = {
          added = "green";
          changed = "yellow bold";
          untracked = "red bold";
        };
      };
};