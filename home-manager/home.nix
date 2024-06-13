{ config, pkgs, ... }:
{

  home.username = "tan_t";
  home.homeDirectory = "/home/tan_t";
  home.stateVersion = "23.11";
  home.packages = with pkgs; [
    bat
    docker
    zsh
    zsh-autosuggestions
    zsh-completions
    zsh-history-substring-search
    zsh-syntax-highlighting
    fzf
    inconsolata-nerdfont
    cloudflared
    python311
    nodejs
    bun
    felix-fm
  ];

  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "tan-t";
    userEmail = "lee30x@gmail.com";
  };

  programs.neovim = {
    enable = true;
  };

  home.file."./.config/nvim/" = {
   source = ~/workspace/dotfiles/nvim;
   recursive = true;
  };

  programs.ripgrep.enable = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
    initExtra = ''
      source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

      # nix-profileにpathを通す
      if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


      # zsh-history-substring-search
      source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
      bindkey '^[[A' history-substring-search-up
      bindkey '^[[B' history-substring-search-down


      # vim for zsh
      bindkey -v

      # ctrl-rでhistoryをfzfを使って表示
      function select-history() {
        BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
        CURSOR=$#BUFFER
      }
      zle -N select-history
      bindkey '^r' select-history
    '';
  };

  programs.starship.enable = true;

  xdg.configFile."starship.toml".source = ./starship.toml;

  programs.zellij.enable = true;

  home.file."./.config/zellij/config.kdl" = {
   source = ./zellij-config.kdl;
  };

}
