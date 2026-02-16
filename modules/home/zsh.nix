{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    autosuggestion.strategy = [ "history" ];
    defaultKeymap = "emacs";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = ""; # We leave this empty since p10k is loaded manually
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "z";
        src = pkgs.zsh-z;
        file = "share/zsh-z/zsh-z.plugin.zsh";
      }
    ];

    shellAliases = {
      c = "code . 2>/dev/null";
      # codex = "~/.npm-global/bin/codex";
    };

    initContent = ''
      # Initialize fzf
      source ${pkgs.fzf}/share/fzf/key-bindings.zsh
      source ${pkgs.fzf}/share/fzf/completion.zsh

      # Load p10k configuration if exists
      [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

    '';
  };
}
