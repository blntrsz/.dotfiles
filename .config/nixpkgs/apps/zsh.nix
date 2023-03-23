{}:
{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      up = "ansible-playbook ~/.config/ansible/local.yml --ask-become-pass";
      hup = "home-manager switch";
      gs = "git status";
      v = "vim";
      vim = "nvim";
      dot = "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME";
      ds = "dot status";
    };
    history = {
      size = 10000;
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "vi-mode" ];
      theme = "robbyrussell";
    };
    initExtra = ''
      bindkey ^R history-incremental-search-backward
      bindkey -s ^F "tmux-sessionizer\n"

      export PATH=$HOME/bin:$PATH
      export PATH=$HOME/.local/bin:$PATH
    '';
  };
}

