{}:
{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      up = "sudo nixos-rebuild switch";
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
  };
}

